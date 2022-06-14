
import 'package:dio/dio.dart';
import 'package:nftview/models/nft_model.dart';

class NFTService {
  Future<NFTModel> getNFT() async {
    try {
      var response = await Dio().get(
          'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
      return NFTModel.fromJson({"data": response.data});
    } on DioError catch (e) {
      print(e);
      return NFTModel.fromJson({});
    }
  }
}
