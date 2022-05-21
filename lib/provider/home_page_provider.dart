import 'package:ateam_machine_test/models/product_model.dart';
import 'package:ateam_machine_test/widgets/modal_sheet.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  GlobalKey<ScaffoldState> scaffKey = GlobalKey<ScaffoldState>();
  Dio dio = Dio();
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  HomePageProvider() {
    dio.options.baseUrl = "https://fakestoreapi.com";
    _fetchData();
  }

  Future _fetchData() async {
    try {
      Response response = await dio.get("/products");
      if (response.statusCode == 200) {
        _products = (response.data as List)
            .map((e) => ProductModel.fromJson(e))
            .toList()
            .cast<ProductModel>();
      } else {
        ScaffoldMessenger.of(scaffKey.currentContext).showSnackBar(
            SnackBar(content: Text("Something Went Wrong. Try Again")));
      }
      notifyListeners();
    } catch (e) {
      ScaffoldMessenger.of(scaffKey.currentContext).showSnackBar(
          SnackBar(content: Text("Something Went Wrong. " + e.toString())));
    }
  }

  void showModalBottomSheetMenu(BuildContext context, int index) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.white,
        builder: (builder) => modalSheet(products[index]));
  }
}
