import 'package:flutter_application_2/model/usermodel.dart';
import 'package:flutter_application_2/service/apidata.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int index = 0;
  List<UserModel>? listofusers = [];
  late UserModel userModel = UserModel(
      id: 0,
      name: "No data",
      username: "No data",
      email: "No data",
      address: Address(
          city: "No data",
          geo: Geo(lat: "null", lng: "null"),
          street: "No Data",
          suite: "No data",
          zipcode: "No data"),
      phone: "No data",
      website: "No data",
      company: Company(name: "No data", catchPhrase: "No data", bs: "No data"));

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

  void getdata() async {
    listofusers = (await ApiData().getUserData());
    incr();
  }

  void incr() {
    if (index < listofusers!.length - 1) {
      index++;
      userModel = listofusers![index];
    }
    update();
  }

  void decr() {
    if (index > 0) {
      index--;
      userModel = listofusers![index];
    }

    update();
  }
}
