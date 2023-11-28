import 'package:fasih_test/components/app_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GridData extends StatefulWidget {
  const GridData({super.key});

  @override
  State<GridData> createState() => _GridDataState();
}

class _GridDataState extends State<GridData> {
  final List<Map<String, dynamic>> categorryPageGridItem = [
    {
      "title": "Cappuccino",
      "subtitle": "with chocolate",
      "price": "\$4.16",
      "rating": "4.7",
      "images": "assets/images/c1.png",
    },
    {
      "title": "Cappuccino",
      "subtitle": "chocolate",
      "price": "\$5.16",
      "rating": "5.0",
      "images": "assets/images/c2.png",
    },
    {
      "title": "Cappuccino",
      "subtitle": "chocolate",
      "price": "\$8.16",
      "rating": "4.0",
      "images": "assets/images/c3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          mainAxisExtent: 250,
        ),
        itemCount: categorryPageGridItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    color: Colors.grey.shade400,
                    blurRadius: 1,
                  )
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "${categorryPageGridItem.elementAt(index)["images"]}",
                            width: 140,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 18,
                        top: 18,
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 60,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffCF9F69),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.star,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  Text(
                                    "${categorryPageGridItem.elementAt(index)["rating"]}",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "${categorryPageGridItem.elementAt(index)["title"]}",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "${categorryPageGridItem.elementAt(index)["subtitle"]}",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "${categorryPageGridItem.elementAt(index)["price"]}",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppLightColor.gcolor,
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
