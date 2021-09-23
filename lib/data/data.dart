import 'package:smart_course_app/models/categorie_model.dart';
import 'package:smart_course_app/models/product_model.dart';
import 'package:smart_course_app/models/trending_productmodel.dart';

List<TrendingProductModel> getTrendingProducts() {
  // ignore: deprecated_member_use
  List<TrendingProductModel> trendingProducts = [];
  TrendingProductModel productModel = new TrendingProductModel();
  //1
  productModel.authorname = "By sagar kumar,";
  productModel.courseName = "Business analysis";
  productModel.noOfRating = 500;
  productModel.rating = 4;
  productModel.priceInDollars = 75;
  trendingProducts.add(productModel);
  productModel =TrendingProductModel();
  //2
  productModel.authorname = "By Chandan Singh";
  productModel.courseName = "C++";
  productModel.noOfRating = 3;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();
  //3
  productModel.authorname = "By Tapas Meher";
  productModel.courseName = "Python";
  productModel.noOfRating = 3;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();
  //4
  productModel.authorname = "By Diwakar Mandal";
  productModel.courseName = "Css";
  productModel.noOfRating = 301;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();
  //5
  productModel.authorname = "By Mohit singh";
  productModel.courseName = "c";
  productModel.noOfRating = 301;
  productModel.rating = 4;
  productModel.priceInDollars = 30;
  trendingProducts.add(productModel);
  productModel = new TrendingProductModel();
  return trendingProducts;
}

List<ProductModel> getProducts() {
  // ignore: deprecated_member_use
  List<ProductModel> products = [];
  ProductModel productModel = new ProductModel();
  //1
  productModel.productName = "Web Development";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();
  //1
  productModel.productName = "Web Development";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();
  //1
  productModel.productName = "Web Development";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();
  //1
  productModel.productName = "Web Development";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();
  //1
  productModel.productName = "Web Development";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 20;
  products.add(productModel);
  productModel = new ProductModel();
  //1
  productModel.productName = "Web Development";
  productModel.noOfRating = 4;
  productModel.imgUrl = "";
  productModel.rating = 4;
  productModel.priceInDollars = 57;
  products.add(productModel);
  productModel = new ProductModel();
  return products;
}

List<CategorieModel> getCategories() {
  List<CategorieModel> categories = [];
  CategorieModel categorieModel = new CategorieModel();
  //1
  categorieModel.categorieName = "Regular Gift";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "assets/categorie.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //2
  categorieModel.categorieName = "Box Gift";
  categorieModel.color1 = "0xff50F9B4";
  categorieModel.color2 = "0xff38CAE9";
  categorieModel.imgAssetPath = "assets/boxgift.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //3
  categorieModel.categorieName = "Chocolate";
  categorieModel.color1 = "0xffFFB397";
  categorieModel.color2 = "0xffF46AA0";
  categorieModel.imgAssetPath = "assets/choclate.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //4
  categorieModel.categorieName = "Gift with card";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "assets/categorie.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  //5
  categorieModel.categorieName = "Regular Gift";
  categorieModel.color1 = "0xff8EA2FF";
  categorieModel.color2 = "0xff557AC7";
  categorieModel.imgAssetPath = "assets/categorie.png";
  categories.add(categorieModel);
  categorieModel = new CategorieModel();
  return categories;
}
