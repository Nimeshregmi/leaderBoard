import 'package:flutter/material.dart';
import 'package:velocity/profile.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class Cardds extends StatefulWidget {
  const Cardds({super.key});
  @override
  State<Cardds> createState() => _CarddsState();
}

class _CarddsState extends State<Cardds> {
  ProfilePage profileP = Get.put(ProfilePage());
  static const String url = 'https://th.bing.com/th/id/OIP.T2LTkkG72enyA5mEB9jNPgHaD2?pid=ImgDet&rs=1';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
            width: width,
            height: height,
            child: HStack(alignment: MainAxisAlignment.end, [
              "Leaderboard".text.xl3.bold.makeCentered(),
              SizedBox(
                width: width * .2,
              ),
              InkWell(onTap: () {}, child: const Icon(Icons.more_vert).px12()),
            ]),
          ),
        ),
        body: [
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: height * .23,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileP.profile(name: 'Anupam Bista', marks: 455, url: url),
                Container(
                  height: height * .23,
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 12)],
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 40, child: Image.asset('assets/images/topRank.png')),
                      VStack(alignment: MainAxisAlignment.start, crossAlignment: CrossAxisAlignment.center, [
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
                        'name'.text.bold.size(14).make(),
                        SizedBox(
                          height: height * .004,
                        ),
                        "... Marks".text.size(14).bold.make()
                      ]),
                    ],
                  ),
                ).w(width * .27).h(height),
                profileP.profile(name: 'Nimesh Regmi', marks: 355, url: url)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: height * .12,
                      decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.shade600, blurRadius: 12)], color: Colors.white),
                      child: Center(
                        child: Row(
                          children: [
                            (index + 1).toString().text.bold.xl2.make(),
                            const SizedBox(width: 11,),
                            CircleAvatar(
                              radius: width * .06,
                              backgroundImage:  NetworkImage(url),
                            ),
                            const SizedBox(width: 11,),
                            Container(padding: const EdgeInsets.only(right: 5), width: width*.4, child: "Anupam Bista".text.xl.bold.make(),),
                            Expanded( child: " Marks".text.base.xl.bold.make(),)
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ].vStack().px24());
  }
}
