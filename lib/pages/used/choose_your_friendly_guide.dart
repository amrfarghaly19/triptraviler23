import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled3445/pages/used/request_to_book.dart';

class ChooseYourFriendlyGuide extends StatefulWidget {
  final String ID;
  final String PointID, CategoryName, CategoryID, PointName,photo,
      carkind,rate,locationName,price;

  ChooseYourFriendlyGuide({
    required this.ID,
    required this.PointID,
    required this.CategoryName,
    required this.CategoryID,
    required this.PointName,
    required this.carkind,
    required this.photo,
    required this.rate,
    required this.locationName,
    required this.price

  });

  @override
  State<ChooseYourFriendlyGuide> createState() =>
      _ChooseYourFriendlyGuideState();
}

class _ChooseYourFriendlyGuideState extends State<ChooseYourFriendlyGuide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildBackButton(),
          ),
        ),
        title: Text(
          'Choose your friendly guide',
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(6, 8.2, 5.8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildGuideGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFFFFFF)),
        borderRadius: BorderRadius.circular(30),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      width: 20,
      height: 20,
      padding: EdgeInsets.all(10),
      child: SvgPicture.asset(
        'assets/vectors/back_11_x2.svg',
        width: 10,
        height: 19,
      ),
    );
  }

  Widget _buildGuideGrid() {
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('tourguide').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final guides = snapshot.data!.docs;
          return GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: guides.map((doc) {
              final data = doc.data() as Map<String, dynamic>;
              return InkWell(
                onTap: () {
                  _showBottomSheet(
                      context,
                      data['name'],
                      data['age'].toString(),
                      data['image'],
                      data['info'],
                      data['rate']

                  );
                },
                child: _buildGuideTile(
                  data['name'],
                  data['age'].toString(),
                  data['image'],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }

  Widget _buildGuideTile(String name, String age, String? imagePath) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF000000)),
        borderRadius: BorderRadius.circular(9),
        image: imagePath != null
            ? DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imagePath),
        )
            : null,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 105, 8, 0),
        child: Text(
          '$name\n$age',
          style: GoogleFonts.jomhuria(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(0xFF000000),
            height: 1.3,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, String name, String age,
      String? imagePath, String info, String rate) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (imagePath != null)
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imagePath),
                        ),
                      ),
                    ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        rate,
                        style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Icon(Icons.star, color: Colors.yellow,)
                    ],
                  ),
                  Text(
                    age,
                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Text(
                    info,
                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xFF000000),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              RequestToBook(
                                ID: widget.ID,
                                PointID: widget.PointID,
                                PointName: widget.PointName,
                                CategoryName: widget.CategoryName,
                                CategoryID: widget.CategoryID,
                                carkind: widget.carkind,
                                photo: widget.photo,
                                rate: widget.rate,
                                locationName: widget.locationName,
                                tourRate:name,
                                tourName:rate,
                                price: widget.price,

                              )));
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 15, 7),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          gradient: LinearGradient(
                            begin: Alignment(-1, 0),
                            end: Alignment(1, 0),
                            colors: [
                              Color(0xFF577CC3),
                              Color(0xFF5471BD),
                              Color(0xFF6357AE)
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: GoogleFonts.jockeyOne(
                              fontWeight: FontWeight.w400,
                              fontSize: 32,
                              color: Color(0xFFF5F9FC),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 100,)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
