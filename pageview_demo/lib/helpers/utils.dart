
import 'package:pageview_demo/helpers/appcolors.dart';
import 'package:pageview_demo/helpers/iconhelper.dart';
import 'package:pageview_demo/models/category.dart';
import 'package:pageview_demo/models/subcategory.dart';

class Utils {

  static List<Category> getMockedCategories(){
    return [
      Category(
        color: AppColors.MAIN_COLOR,
        icon: "assets/board1.png",
        imgName: "Lorepousome",
        name: "FRUIT",
        subCategories: [
          SubCategory(
            color: AppColors.MAIN_COLOR,
            name: 'Orange',
            imageName: 'orange_1',
            icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Banana',
              imageName: 'Banana',
              icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Grapes111',
              imageName: 'Graphs',
              icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Apple',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Kiwi',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Mango',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Guava',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
          SubCategory(
              color: AppColors.MAIN_COLOR,
              name: 'Coconut',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          )
        ]
      ),
      Category(
          color: AppColors.MEATS,
          icon: "assets/board1.png",
          imgName: "Lorepousome",
          name: "MEATS",
          subCategories: [SubCategory(
              color: AppColors.MEATS,
              name: 'Orange',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Banana',
                imageName: 'Banana',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Grapes',
                imageName: 'Graphs',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Apple',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Kiwi',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Mango',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Guava',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.MEATS,
                name: 'Coconut',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            )]
      ),
      Category(
          color: AppColors.SEEDS,
          icon: "assets/board1.png",
          imgName: "Lorepousome",
          name: "BENS",
          subCategories: [SubCategory(
              color: AppColors.SEEDS,
              name: 'Orange',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Banana',
                imageName: 'Banana',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Grapes',
                imageName: 'Graphs',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Apple',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Kiwi',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Mango',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Guava',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SEEDS,
                name: 'Coconut',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            )]
      ),
      Category(
          color: AppColors.VEG,
          icon: "assets/board1.png",
          imgName: "Lorepousome",
          name: "VEG",
          subCategories: [SubCategory(
              color: AppColors.VEG,
              name: 'Orange',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Banana',
                imageName: 'Banana',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Grapes',
                imageName: 'Graphs',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Apple',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Kiwi',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Mango',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Guava',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.VEG,
                name: 'Coconut',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            )]
      ),
      Category(
          color: AppColors.PASTRIES,
          icon: "assets/board1.png",
          imgName: "Lorepousome",
          name: "PASTRIES",
          subCategories: [SubCategory(
              color: AppColors.PASTRIES,
              name: 'Orange',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Banana',
                imageName: 'Banana',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Grapes',
                imageName: 'Graphs',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Apple',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Kiwi',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Mango',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Guava',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.PASTRIES,
                name: 'Coconut',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            )]
      ),
      Category(
          color: AppColors.SPICES,
          icon: "assets/board1.png",
          imgName: "Lorepousome",
          name: "SPICES",
          subCategories: [SubCategory(
              color: AppColors.SPICES,
              name: 'Orange',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Banana',
                imageName: 'Banana',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Grapes',
                imageName: 'Graphs',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Apple',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Kiwi',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Mango',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Guava',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.SPICES,
                name: 'Coconut',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            )]
      ),
      Category(
          color: AppColors.FRUITS,
          icon: "assets/board1.png",
          imgName: "Lorepousome",
          name: "BEAVRAGE",
          subCategories: [SubCategory(
              color: AppColors.FRUITS,
              name: 'Orange',
              imageName: 'orange_1',
              icon: IconFontHelper.FRUITS
          ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Banana',
                imageName: 'Banana',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Grapes',
                imageName: 'Graphs',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Apple',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Kiwi',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Mango',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Guava',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            ),
            SubCategory(
                color: AppColors.FRUITS,
                name: 'Coconut',
                imageName: 'orange_1',
                icon: IconFontHelper.FRUITS
            )]
      ),

    ];
  }
}