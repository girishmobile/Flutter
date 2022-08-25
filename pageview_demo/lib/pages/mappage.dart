import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pageview_demo/helpers/appcolors.dart';
import 'package:pageview_demo/widgets/mainappbar.dart';


const LatLng SOURCE_LOCATION = LatLng(22.989200, 72.505630);
const LatLng DEST_LOCATION = LatLng(23.112659, 72.547752);
const double CAMERA_ZOOM = 16.0;
const double CAMERA_TIL = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -120;

class MapPage extends StatefulWidget {
  MapPage({Key? key}) : super(key: key);
  _MapPageState createState() => _MapPageState();
}
class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor? sourceIcon;
  BitmapDescriptor? destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPostion = PIN_VISIBLE_POSITION;
  LatLng currentLocation = LatLng(22.989200, 72.505630);

  LatLng destinationLocation = LatLng(23.112659, 72.547752);
  static const _initialCameraPosition = CameraPosition(
    target: SOURCE_LOCATION,
    zoom: CAMERA_ZOOM,
  );
  GoogleMapController? _googleMapController;
  final LatLng _center = const LatLng(28.535517, 77.391029);
  
@override
void dispose(){
  _googleMapController?.dispose();
  super.dispose();
}
  @override
  void initState() {
    super.initState();
    //set up the initial location
    this.setInitialLocation();
    // set up the marker icons
    this.SetSourceAndDestinationIcons();
  }
  void SetSourceAndDestinationIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5), 'assets/red_pin.png');
    print('asys');
    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5), 'assets/yellow_pin.png');

  }
  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.latitude);
    destinationLocation =
        LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }
  void onMapCreated(GoogleMapController controller)
  {
    _controller.complete(controller);

  }
  void showPinOnMap() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("sourcePin"),
        position: currentLocation,
        icon: sourceIcon!,
      ));
      _markers.add(Marker(
          markerId: MarkerId("destinationPin"),
          position: destinationLocation,
          icon: destinationIcon!,
          onTap: () {
            setState(() {
              this.pinPillPostion = PIN_INVISIBLE_POSITION;
            });
          }));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*CameraPosition initialCameraPosition = CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TIL,
      bearing: CAMERA_BEARING,
      target:  SOURCE_LOCATION
    );*/
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
            child: GoogleMap(
          initialCameraPosition: _initialCameraPosition,
          myLocationEnabled: true,
          compassEnabled: true,
          tiltGesturesEnabled: false,
          zoomControlsEnabled: false,
          markers: _markers,
          mapType: MapType.normal,
          onTap: (LatLng loc) {
            // use of tap
            setState(() {
              this.pinPillPostion = PIN_INVISIBLE_POSITION;
            });
          },
              onMapCreated: (controller) => _googleMapController = controller,


          /*onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            showPinOnMap();
          },*/
        )
        ),
        Positioned(
            top: 88,
            left: 0,
            right: 0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset.zero)
                  ]),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/boy.jpg'),
                            fit: BoxFit.cover),
                        border:
                            Border.all(color: AppColors.MAIN_COLOR, width: 1)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Roman just code',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Text(
                        'Mi connected',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.MAIN_COLOR),
                      )
                    ],
                  )),
                  Icon(
                    Icons.location_pin,
                    color: AppColors.MAIN_COLOR,
                    size: 40,
                  )
                ],
              ),
            )),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            bottom: this.pinPillPostion,
            child: Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset.zero)
                  ]),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                'assets/images1.jpg',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                bottom: -10,
                                right: -10,
                                child: Icon(
                                  Icons.highlight,
                                  color: AppColors.MEATS,
                                  size: 30,
                                ))
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Carnded de cardern',
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('Venta Por Liba'),
                              Text(
                                '2km de distance',
                                style: TextStyle(
                                    color: AppColors.MEATS, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.location_pin,
                          color: AppColors.MEATS,
                          size: 50,
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                      image: AssetImage('assets/boy.jpg'),
                                      fit: BoxFit.cover),
                                  border: Border.all(
                                      color: AppColors.MEATS, width: 4)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jose Butler',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text('Joe Root Autopastia\nDurevata Vieja #235')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: MainAppBar(
              showProfilepic: false,
            ))
      ],
    ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: () => _googleMapController?.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
}
