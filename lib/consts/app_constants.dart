import 'package:lumine/modals/categories_model.dart';
import 'package:lumine/services/assets_menager.dart';

class AppConstants {
  static const String imageUrl = 'https://m.media-amazon.com/images/I/71nj3JM-igL._AC_UF894,1000_QL80_.jpg';

  static List<String> bannersImages = [
    "${AssetsMenager.imagePath}/banners/skriptarnica.jpg",
    "${AssetsMenager.imagePath}/banners/skriptarnica2.jpg",
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
        id: "${AssetsMenager.imagePath}/categories/book.png",
        name: "Books",
        image: "${AssetsMenager.imagePath}/categories/book.png"),
    CategoriesModel(
        id: "${AssetsMenager.imagePath}/categories/stationery.png",
        name: "Stationery",
        image: "${AssetsMenager.imagePath}/categories/stationery.png"),
    CategoriesModel(
        id: "${AssetsMenager.imagePath}/categories/t-shirt.png",
        name: "Merch",
        image: "${AssetsMenager.imagePath}/categories/t-shirt.png"),
  ];
}