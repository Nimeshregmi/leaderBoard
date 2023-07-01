
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage  {
  double width = Get.width;
  double height = Get.height;
  static const Urrl = "assets/images/avatarimg.png";
  Widget profile({String url = Urrl, String name = 'Null', int marks = 0}) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 12)],
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(14),
        ),
        child: VStack(alignment: MainAxisAlignment.start, crossAlignment: CrossAxisAlignment.center, [
          SizedBox(
            height: height * .015,
          ),
          CircleAvatar(
            radius: width * .09,
            backgroundImage: NetworkImage(url),
          ),
          SizedBox(
            height: height * .015,
          ),
          name.text.bold.size(14).make(),
          SizedBox(
            height: height * .004,
          ),
          "$marks Marks".text.size(14).bold.make()
        ])).w(width * .27).h(height * .18);
  }

  
}
