import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/profile_page.dart';
import 'package:login/utils/colors.dart';
// import 'package:login/widgets/custom_button.dart';
// import 'package:login/widgets/custom_input_field.dart';

class ProfileDetails extends StatelessWidget {
  final NetworkImage networkImage;
  final String bio;
  final String name;
  final int age;
  final String location;
  final String profession;
  final String status;
  final String community;
  final double height;
  final String dob;
  final String edu;
  final String origin;
  final String residing;
  final String siblings;

  const ProfileDetails(
      {Key key,
      this.networkImage,
      this.name,
      this.age,
      this.location,
      this.profession,
      this.bio,
      this.status,
      this.community,
      this.height,
      this.dob,
      this.edu,
      this.origin,
      this.residing,
      this.siblings})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 240,
                          width: Get.width,
                          decoration:
                              BoxDecoration(color: AppColor.primaryBlack),
                          child: Image(
                            image: networkImage,
                            fit: BoxFit.fitWidth,

                            // centerSlice: Rect.fromLTWH(500, 500, 1000, 1000),
                          ),
                        ),
                        Container(
                          height: 240,
                          width: 375,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment(0.0, 1),
                                  colors: [
                                AppColor.primaryWhite.withOpacity(0.0),
                                AppColor.primaryBlack.withOpacity(0.35),
                              ])),
                        ),
                        Card(
                            color: AppColor.primaryRed,
                            margin: EdgeInsets.fromLTRB(11.73, 245, 11.73, 0),
                            child: Container(
                              height: 72,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Positioned(
                                        child: Card(
                                      color: AppColor.primaryMaroon
                                          .withOpacity(0.0),
                                      margin: EdgeInsets.fromLTRB(270, 1, 1, 1),
                                      child: Container(
                                        height: 72,
                                        width: 72,
                                        padding:
                                            EdgeInsets.fromLTRB(20, 22, 20, 22),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 15,
                                          height: 15,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColor.primaryWhite),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Transform(
                                            alignment: Alignment.center,
                                            transform: Matrix4.rotationY(3.14),
                                            child: InkWell(
                                              child: Icon(
                                                Icons.person_add,
                                                color: AppColor.primaryWhite,
                                                size: 18,
                                              ),
                                              // color: AppColor.primaryWhite,
                                              onTap: () {
                                                Get.to(ProfilePage(
                                                  age: age,
                                                  location: location,
                                                  name: name,
                                                  networkImage: networkImage,
                                                  profession: profession,
                                                ));
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                                    Positioned(
                                        bottom: 30,
                                        left: 29,
                                        child: Text(
                                          name,
                                          style: TextStyle(
                                            color: AppColor.primaryWhite,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        )),
                                    Positioned(
                                        bottom: 33,
                                        left: 220,
                                        child: Text(
                                          "($age)",
                                          style: TextStyle(
                                            color: AppColor.primaryWhite,
                                            fontSize: 18,
                                          ),
                                        )),
                                    Positioned(
                                        bottom: 15,
                                        left: 28,
                                        child: Text(
                                          ("$profession | $location"),
                                          style: TextStyle(
                                            color: AppColor.primaryWhite,
                                            fontSize: 14,
                                          ),
                                        )),
                                  ]),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 5, 16, 1),
                child: Container(
                  // decoration: BoxDecoration(
                  //     border: Border.all()),
                  alignment: Alignment.topLeft,
                  height: 68,
                  width: 343,
                  child: Text(
                    bio,
                    style: TextStyle(color: AppColor.dirtyBlue, fontSize: 14),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    // decoration: BoxDecoration(
                    //     border: Border.all(color: AppColor.dirtyBlue)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(32, 1, 1, 1),
                      child: Icon(Icons.favorite,size: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 120,
                              child: Text(
                                "Status",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 12, color: AppColor.dirtyBlue),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            status,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: AppColor.dirtyBlue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 1, 1),
                    child: Icon(Icons.add_business,size: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          child: Text(
                            "Community",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            community,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: AppColor.dirtyBlue),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 1, 1, 1),
                    child: Icon(Icons.height,size: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          child: Text(
                            "Height",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            ("$height"),
                            style: TextStyle(
                                fontSize: 18, color: AppColor.dirtyBlue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 1, 1),
                    child: Icon(Icons.date_range,size: 15),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                        child: Container(
                          width: 120,
                          child: Text(
                            "Date Of Birth",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          dob,
                          style: TextStyle(
                              fontSize: 18, color: AppColor.dirtyBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 1, 1, 1),
                    child: Icon(Icons.work,size: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          child: Text(
                            "Profession",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            profession,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: AppColor.dirtyBlue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 1, 1),
                    child: Icon(Icons.cast_for_education,size: 15),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                        child: Container(
                          width: 120,
                          child: Text(
                            "Highest Education",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          edu,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 18, color: AppColor.dirtyBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 1, 1, 1),
                    child: Icon(Icons.location_city,size: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                          child: Container(
                            width: 120,
                            child: Text(
                              "Origin",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.dirtyBlue),
                            ),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            origin,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: AppColor.dirtyBlue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 1, 1),
                    child: Icon(Icons.location_history,size: 15),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                        child: Container(
                          width: 120,
                          child: Text(
                            "Residing",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          residing,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 18, color: AppColor.dirtyBlue),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 1, 1, 1),
                    child: Icon(Icons.people,size: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 20, 1, 1),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          child: Text(
                            "Siblings",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12, color: AppColor.dirtyBlue),
                          ),
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            (siblings),
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: AppColor.dirtyBlue),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
