import 'package:fasih_test/components/app_color.dart';
import 'package:fasih_test/screen/home/widget/grid_data.dart';
import 'package:fasih_test/screen/home/widget/list_data.dart';
import 'package:fasih_test/screen/home/widget/row_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/profile2.png',
                      scale: 1.0,
                    ),
                  ),
                  trailing: badges.Badge(
                    badgeStyle: badges.BadgeStyle(
                        // badgeColor: Color(0xffCF9F69),
                        badgeColor: AppLightColor.bcolor),
                    badgeContent: const Text("3"),
                    position: badges.BadgePosition.topEnd(top: -10, end: -5),
                    showBadge: true,
                    ignorePointer: false,
                    badgeAnimation: const badges.BadgeAnimation.rotation(
                      animationDuration: Duration(seconds: 1),
                      loopAnimation: false,
                      curve: Curves.fastOutSlowIn,
                    ),
                    child: const FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                  title: Text(
                    "Muhammad Fasih",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "Welcome Back",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Coffee',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 25,
                    ),
                    suffix: FaIcon(
                      FontAwesomeIcons.slidersH,
                      color: AppLightColor.bcolor,
                      size: 20,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Color(0xffCF9F69),
                        width: 0.6,
                        style: BorderStyle.solid,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 0.6,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  "Categorries",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                  child: Row(
                    children: [
                      RowWidget(
                        name: "Cappuccino",
                        path: "assets/images/i1.png",
                        colors: AppLightColor.bcolor,
                        textColor: Colors.white,
                      ),
                      const RowWidget(
                        name: "Cold Brew",
                        path: "assets/images/i2.png",
                        textColor: Colors.black,
                      ),
                      const RowWidget(
                        name: "Espresso",
                        path: "assets/images/i3.png",
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Grid Item
              const GridData(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  "Specials offer",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //List Item
              const ListData(),
            ],
          ),
        ),
      ),
    );
  }
}
