import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/profile_details.dart';
import 'package:login/utils/colors.dart';
import 'package:login/widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  final NetworkImage networkImage;
  final String name;
  final int age;
  final String location;
  final String profession;

  const ProfilePage(
      {Key key,
      this.networkImage,
      this.name,
      this.age,
      this.location,
      this.profession})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
              decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(fit: BoxFit.cover, image: networkImage),
          )),
          Container(
            decoration: BoxDecoration(
                color: AppColor.primaryWhite,
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColor.primaryBlack,
                      AppColor.primaryWhite.withOpacity(0.0)
                    ])),
          ),
          Positioned(
              bottom: 162,
              left: 39,
              child: Text(
                name,
                style: TextStyle(
                  color: AppColor.primaryWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
          Positioned(
              bottom: 165,
              left: 239,
              child: Text(
                "($age)",
                style: TextStyle(
                  color: AppColor.primaryWhite,
                  fontSize: 18,
                ),
              )),
          Positioned(
              bottom: 146,
              left: 39,
              child: Text(
                ("$profession | $location"),
                style: TextStyle(
                  color: AppColor.primaryWhite,
                  fontSize: 14,
                ),
              )),
          Positioned(
              bottom: 75,
              left: 162,
              child: InkWell(
                onTap: (){
                  Get.to(ProfileDetails(
                    age: 28,
        name: "Suvekchya Shahi",
        profession: "Doctor",
        location: "Nepal",
        status: "Single",
        community: "Newar",
        dob: "1992-01-05",
        edu: "MD",
        height: 5.5,
        origin: "Butwal",
        residing: "USA",
        siblings: "Two",
        bio:
            "Hello my name is Suvechya Shahi. Hello my name is Suvechya ShahiHello my name is Suvechya ShahiHello my name is Suvechya ShahiHello my name is Suvechya Shahi",
        networkImage: NetworkImage(
            'https://images.unsplash.com/photo-1512310604669-443f26c35f52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80'),
                  ));
                },
                child: CustomIconButton(
                  icon: Icons.favorite,
                  iconColor: AppColor.primaryWhite,
                  color: AppColor.primaryRed,
                  borderColor: AppColor.primaryRed,
                  height: 55.03,
                  width: 55.03,
                  iconSize: 34,
                ),
              )),
          Positioned(
              bottom: 75,
              left: 103,
              child: CustomIconButton(
                icon: Icons.favorite,
                iconColor: AppColor.primaryWhite,
                color: AppColor.primaryWhite.withOpacity(0.0),
                borderColor: AppColor.primaryWhite,
                height: 35.19,
                width: 35.19,
                iconSize: 17,
              )),
          Positioned(
              bottom: 75,
              left: 241,
              child: CustomIconButton(
                icon: Icons.info_outline,
                iconColor: AppColor.primaryWhite,
                color: AppColor.primaryWhite.withOpacity(0.0),
                borderColor: AppColor.primaryWhite,
                height: 35.19,
                width: 35.19,
                iconSize: 17,
              )),
        ]),
      ),
    );
  }
}
