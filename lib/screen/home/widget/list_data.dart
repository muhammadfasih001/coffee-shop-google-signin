import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  final List<Map<String, dynamic>> categorryPageListItem = [
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categorryPageListItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 1),
                        color: Colors.grey.shade400,
                        blurRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "${categorryPageListItem.elementAt(index)["images"]}",
                                  width: 140,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xffCF9F69),
                                ),
                                child: Text(
                                  "Discount Sales",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
