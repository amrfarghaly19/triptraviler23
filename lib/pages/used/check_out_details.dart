/*
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';

class CheckOutDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF7F6F0),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 8.2, 15, 8),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(12, 0, 7, 29.6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0.4),
                          width: 28.4,
                          height: 11.1,
                          child: SizedBox(
                            width: 28.4,
                            height: 11.1,
                            child: SvgPicture.asset(
                              'assets/vectors/image_22_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0.2, 0, 0),
                          child: SizedBox(
                            width: 66,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0.3, 5, 0.3),
                                  child: SizedBox(
                                    width: 16.8,
                                    height: 10.7,
                                    child: SvgPicture.asset(
                                      'assets/vectors/mobile_signal_4_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0.4),
                                  child: SizedBox(
                                    width: 15.1,
                                    height: 11,
                                    child: SvgPicture.asset(
                                      'assets/vectors/wifi_33_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: SizedBox(
                                    width: 24.1,
                                    height: 11.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/battery_33_x2.svg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4, 0, 4, 33),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 42.4, 15.8),
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
                            child: Container(
                              width: 44,
                              height: 33.9,
                              padding: EdgeInsets.fromLTRB(16, 8.5, 16, 8.5),
                              child: SizedBox(
                                width: 12,
                                height: 16.9,
                                child: SvgPicture.asset(
                                  'assets/vectors/back_14_x2.svg',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 22.7, 0, 0),
                            child: Text(
                              'check out details',
                              style: GoogleFonts.getFont(
                                'Open Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                    padding: EdgeInsets.fromLTRB(6, 5, 17, 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xA1000000)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/image_2.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                height: 107,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text(
                                    '9WH3+HM6 Amsterdam, Netherlands',
                                    style: GoogleFonts.getFont(
                                      'Jockey One',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xA8000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 3.7, 21),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xFFF5F9FC)),
                                  ),
                                  child: Text(
                                    'Amsterdam Classic Boat ',
                                    style: GoogleFonts.getFont(
                                      'Josefin Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 4.1, 0),
                                        child: Text(
                                          '5.0',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            height: 2.3,
                                            color: Color(0xFF475467),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                        width: 10,
                                        height: 9.9,
                                        child: SizedBox(
                                          width: 10,
                                          height: 9.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_1_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                        width: 10,
                                        height: 9.9,
                                        child: SizedBox(
                                          width: 10,
                                          height: 9.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_21_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                        width: 10,
                                        height: 9.9,
                                        child: SizedBox(
                                          width: 10,
                                          height: 9.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_46_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 5, 10),
                                        width: 10,
                                        height: 9.9,
                                        child: SizedBox(
                                          width: 10,
                                          height: 9.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_7_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 8, 0, 10),
                                        width: 10,
                                        height: 9.9,
                                        child: SizedBox(
                                          width: 10,
                                          height: 9.9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/vector_11_x2.svg',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 36),
                    padding: EdgeInsets.fromLTRB(8, 8, 15, 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xA1000000)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 208),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFFF5F9FC)),
                              ),
                              child: Text(
                                'Price details',
                                style: GoogleFonts.getFont(
                                  'Josefin Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(12, 0, 2, 11),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x6B000000),
                            ),
                            child: Container(
                              width: 297,
                              height: 3,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(17, 0, 0, 0),
                          child: Text(
                            'Total (USD)                                                              \$ 139',
                            style: GoogleFonts.getFont(
                              'Jomhuria',
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Color(0x99000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 6),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFF5F9FC)),
                        ),
                        child: Text(
                          'Add Coupon',
                          style: GoogleFonts.getFont(
                            'Josefin Sans',
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 103),
                    padding: EdgeInsets.fromLTRB(20, 7, 20, 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xA1000000)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Enter a coupon....',
                      style: GoogleFonts.getFont(
                        'Jockey One',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0x42000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        gradient: LinearGradient(
                          begin: Alignment(-1, 0),
                          end: Alignment(1, 0),
                          colors: <Color>[Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
                          stops: <double>[0, 0.134, 1],
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 19.7, 0),
                        child: Text(
                          'Pay Now',
                          style: GoogleFonts.getFont(
                            'Jockey One',
                            fontWeight: FontWeight.w400,
                            fontSize: 32,
                            color: Color(0xFFF5F9FC),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF000000),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Container(
                        width: 134,
                        height: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -10.5,
              top: 293.8,
              child: SizedBox(
                height: 168,
                child: Text(
"""                  '\$37 x 2 Guests                                                         \$ 74      
            Private Driver                                                          \$ 25
            Tour Guide                                                               \$ 35
            Taxes & Fees                                                            \$ 5',
                 """, style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0x99000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3445/pages/used/my_cart.dart';

import '../unused/successful.dart';
import 'credit_card.dart';

class CheckOutDetails extends StatefulWidget {
  final String ID;
  final String PointID, CategoryName, CategoryID, PointName,carkind,photo,rate,locationName,price,tourName;
  final int guestNumber;

  CheckOutDetails({
    required this.ID,
    required this.PointID,
    required this.CategoryName,
    required this.CategoryID,
    required this.PointName,
    required this.carkind,

    required this.photo,
    required this.locationName,
    required this.rate,
    required this.price,
    required this.guestNumber,
    required this.tourName

  });
  @override
  State<CheckOutDetails> createState() => _CheckOutDetailsState();
}

class _CheckOutDetailsState extends State<CheckOutDetails> {
int? guestPrice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
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
          'Check out details',
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 8.2, 15, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            _buildDetailsSection(),
            SizedBox(height: 20,),
            _buildPriceDetailsSection(),
          //  _buildCouponSection(),
            _buildTotalPriceSection(),
            _buildPayNowButton(),
            SizedBox(height: 60),
          //  _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButtonWithTitle() {
    return Container(
      margin: EdgeInsets.fromLTRB(4, 0, 4, 33),
      child: Row(
        children: [
          Container(
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
            width: 44,
            height: 33.9,
            padding: EdgeInsets.all(8.5),
            child: SvgPicture.asset(
              'assets/vectors/back_14_x2.svg',
              width: 12,
              height: 16.9,
            ),
          ),
          SizedBox(width: 20),
          Text(
            'check out details',
            style: GoogleFonts.getFont(
              'Open Sans',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFF000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsSection() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xA1000000)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.photo),
              ),
            ),
            width: 100,
            height: 100,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  widget.locationName??"",
                  style: GoogleFonts.josefinSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      widget.rate??"0",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Color(0xFF475467),
                      ),
                    ),
                    SizedBox(width: 4),
                    SvgPicture.asset('assets/vectors/vector_41_x2.svg', width: 10, height: 10),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceDetailsSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 0, 5, 36),
      padding: EdgeInsets.fromLTRB(8, 8, 15, 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xA1000000)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Price details',
            style: GoogleFonts.getFont(
              'Josefin Sans',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFF000000),
            ),
          ),
          SizedBox(height: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${widget.price} x ${widget.guestNumber} Guests',
                style: GoogleFonts.getFont(
                  'Jomhuria',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0x99000000),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '\$${(double.parse(widget.price) * widget.guestNumber).toStringAsFixed(2)}',
                  style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0x99000000),
                  ),
                ),
              ),
              SizedBox(height: 10), // Add some space between items
              Text(
                'Private Driver',
                style: GoogleFonts.getFont(
                  'Jomhuria',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0x99000000),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  widget.carkind =="" ?"0":'\$25',
                  style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0x99000000),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Tour Guide',
                style: GoogleFonts.getFont(
                  'Jomhuria',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0x99000000),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                 widget.tourName =="" ?"0":'\$35' ,
                  style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0x99000000),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Taxes & Fees',
                style: GoogleFonts.getFont(
                  'Jomhuria',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0x99000000),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '21 %',
                  style: GoogleFonts.getFont(
                    'Jomhuria',
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: Color(0x99000000),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.fromLTRB(12, 0, 2, 11),
            color: Color(0x6B000000),
            height: 3,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total (USD) ' ,
                style: GoogleFonts.getFont(
                  'Jomhuria',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0x99000000),
                ),
              ),
              Text(
                 '\$${(calculateTotal(widget.price, widget.guestNumber, widget.carkind, widget.tourName)).toStringAsFixed(2)}',
                style: GoogleFonts.getFont(
                  'Jomhuria',
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0x99000000),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
double calculateTotal(String price, int guestNumber, String carkind, String tourName) {
  // Calculate the subtotal
  double subtotal = (double.parse(price) * guestNumber) +
      double.parse(carkind.isEmpty ? "0" : "25") +
      double.parse(tourName.isEmpty ? "0" : "35");

  // Calculate the 21% of the subtotal
  double tax = subtotal * 0.21;

  // Calculate the final total
  double total = subtotal + tax;

  return total;
}

  Widget _buildCouponSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 6),
          child: Text(
            'Add Coupon',
            style: GoogleFonts.getFont(
              'Josefin Sans',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Color(0xFF000000),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5, 0, 5, 103),
          padding: EdgeInsets.fromLTRB(20, 7, 20, 6),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xA1000000)),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'Enter a coupon....',
            style: GoogleFonts.getFont(
              'Jockey One',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0x42000000),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTotalPriceSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 6),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total (USD) ' ,
            style: GoogleFonts.getFont(
              'Jomhuria',
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color(0x99000000),
            ),
          ),
          Text(
            '\$${(calculateTotal(widget.price, widget.guestNumber, widget.carkind, widget.tourName)).toStringAsFixed(2)}',
            style: GoogleFonts.getFont(
              'Jomhuria',
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: Color(0x99000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPayNowButton() {
    return InkWell(
      onTap: (){
        _showPaymentMethodsBottomSheet(context);
      },

      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            begin: Alignment(-1, 0),
            end: Alignment(1, 0),
            colors: <Color>[Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
            stops: <double>[0, 0.134, 1],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child: Text(
          'Pay Now',
          style: GoogleFonts.getFont(
            'Jockey One',
            fontWeight: FontWeight.w400,
            fontSize: 32,
            color: Color(0xFFF5F9FC),
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF000000),
          borderRadius: BorderRadius.circular(100),
        ),
        width: 134,
        height: 5,
      ),
    );
  }


  Widget _buildBackButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Color(0x1A000000), offset: Offset(0, 5), blurRadius: 5)],
      ),
      child: IconButton(
        icon: Transform.rotate(
          angle: 0,
          child: SvgPicture.asset('assets/vectors/back_6_x2.svg', width: 9.9, height: 10),
        ),
        onPressed: () {},
      ),
    );
  }

void _showPaymentMethodsBottomSheet(BuildContext context) {
  int _selectedMethodIndex = -1; // -1 indicates no method selected

  Widget _buildPaymentMethodTile(int index, String method, String assetPath, StateSetter setState) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedMethodIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: _selectedMethodIndex == index ? Colors.blue : Color(0xFFEFEFF4)),
          borderRadius: BorderRadius.circular(4),
          color: Color(0xFFF8F8F8),
        ),
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(assetPath, width: 30, height: 30),
                SizedBox(width: 10),
                Text(
                  method,
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color(0xFF262628),
                  ),
                ),
              ],
            ),
            if (_selectedMethodIndex == index)
              Icon(Icons.check, color: Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodsSection(StateSetter setState) {
    return Column(
      children: [
        _buildPaymentMethodTile(0, '**** **** **** 5967', 'assets/vectors/shape_6_x2.svg', setState),
        _buildPaymentMethodTile(1, 'Nada.hussam@bernice.info', 'assets/vectors/social_color_1_logo_paypal_x2.svg', setState),
        _buildPaymentMethodTile(2, '**** **** **** 3461', 'assets/vectors/shape_4_x2.svg', setState),
      ],
    );
  }

  Widget _buildPayNowButton() {
    return InkWell(
      onTap: (){
       /* Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Successful(


            )));
*/

        Navigator.pop(context);
        showBookingSuccessfulDialog(context);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            begin: Alignment(-1, 0),
            end: Alignment(1, 0),
            colors: <Color>[Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
            stops: <double>[0, 0.134, 1],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child: Text(
          'Pay Now',
          style: GoogleFonts.getFont(
            'Jockey One',
            fontWeight: FontWeight.w400,
            fontSize: 32,
            color: Color(0xFFF5F9FC),
          ),
        ),
      ),
    );
  }

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.75,
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
                    _buildPaymentMethodsSection(setState),
                    SizedBox(height: 20),
                    _buildPayNowButton(),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}

Widget _buildPriceDetailRow(String label, String amount) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: GoogleFonts.getFont(
          'Jomhuria',
          fontWeight: FontWeight.w400,
          fontSize: 24,
          color: Color(0x99000000),
        ),
      ),
      Text(
        amount,
        style: GoogleFonts.getFont(
          'Jomhuria',
          fontWeight: FontWeight.w400,
          fontSize: 24,
          color: Color(0x99000000),
        ),
      ),
    ],
  );
}



Widget _buildPaymentMethodsSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(0, -5),
              blurRadius: 10,
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(16, 10, 15, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1, 18),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF9B9B9B),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Container(
                  width: 57,
                  height: 6,
                ),
              ),
            ),
            _buildCreditCardSection(),
            _buildPayPalSection(),
            _buildAddCardButton(),
          ],
        ),
      ),
    ],
  );
}

Widget _buildCreditCardSection() {
  return Container(
    margin: EdgeInsets.fromLTRB(17, 0, 17, 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CREDIT CARD',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Color(0xFF262628),
          ),
        ),
        SizedBox(height: 13),
        _buildCreditCard('assets/vectors/shape_6_x2.svg', '**** **** **** 5967', false),
        SizedBox(height: 10),
        _buildCreditCard('assets/vectors/shape_4_x2.svg', '**** **** **** 3461', false),
      ],
    ),
  );
}

Widget _buildCreditCard(String asset, String number, bool isSelected) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: isSelected ? Color(0xFF605AB0) : Color(0xFFEFEFF4)),
      borderRadius: BorderRadius.circular(4),
      color: Color(0xFFF8F8F8),
    ),
    padding: EdgeInsets.fromLTRB(10, 17, 0, 17.7),
    child: Row(
      children: [
        SvgPicture.asset(asset, width: 30, height: 23.3),
        SizedBox(width: 10),
        Text(
          number,
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: Color(0xFF262628),
          ),
        ),
      ],
    ),
  );
}

Widget _buildPayPalSection() {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFF605AB0)),
      borderRadius: BorderRadius.circular(4),
      color: Color(0xFFF8F8F8),
    ),
    padding: EdgeInsets.fromLTRB(12.5, 14, 16, 14),
    child: Row(
      children: [
        SvgPicture.asset('assets/vectors/social_color_1_logo_paypal_x2.svg', width: 25.3, height: 30),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            'Nada.hussam@bernice.info',
            style: GoogleFonts.getFont(
              'Jockey One',
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0xB5000000),
            ),
          ),
        ),
        SvgPicture.asset('assets/vectors/check_x2.svg', width: 24, height: 24),
      ],
    ),
  );
}

Widget _buildAddCardButton() {
  return Container(
    margin: EdgeInsets.fromLTRB(17, 0, 17, 59),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF5679C2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.fromLTRB(27, 17, 0, 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/vectors/shape_1_x2.svg', width: 24, height: 24),
          Text(
            'Add Another Card',
            style: GoogleFonts.getFont(
              'Roboto Condensed',
              fontWeight: FontWeight.w600,
              fontSize: 17,
              letterSpacing: 0.4,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildPay2NowButton() {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      gradient: LinearGradient(
        begin: Alignment(-1, 0),
        end: Alignment(1, 0),
        colors: <Color>[Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
        stops: <double>[0, 0.134, 1],
      ),
    ),
    padding: EdgeInsets.symmetric(vertical: 12),
    alignment: Alignment.center,
    child: Text(
      'Pay Now',
      style: GoogleFonts.getFont(
        'Jockey One',
        fontWeight: FontWeight.w400,
        fontSize: 32,
        color: Color(0xFFF5F9FC),
      ),
    ),
  );
}

void showBookingSuccessfulDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: Colors.white,
        content: Container(
          padding: EdgeInsets.fromLTRB(22.2, 25, 20.2, 18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/vectors/shape_x2.svg',
                width: 96,
                height: 96,
              ),
              SizedBox(height: 18),
              Text(
                'Booking Successful',
                style: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xFF242E42),
                ),
              ),
              SizedBox(height: 19),
              Text(
                'Your private driver will be there half an hour before the scheduled time. Be ready',
                textAlign: TextAlign.center,
                style: GoogleFonts.jomhuria(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Color(0x63000000),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                      child: Text(
                      'Cancel',
                      style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xD1000000),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
      addToCart(
      userId: widget.ID,

      PointID: widget.PointID,
      CategoryName: widget.CategoryName,
      CategoryID: widget.CategoryID,
      PointName: widget.PointName,
      carkind: widget.carkind,
      photo: widget.photo,
      locationName: widget.locationName,
      rate: widget.rate,
      price: widget.price,
      guestNumber: widget.guestNumber,
      tourName: widget.tourName,
      date: DateTime.now(),
      );

                      Navigator.of(context).pop();

      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CartPage(
            Token: widget.ID,


          )));


                    },
                    child: Text(
                      'Done',
                      style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: Color(0xFF6257AE),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}


Future<void> addToCart({
  required String userId,

  required String PointID,
  required String CategoryName,
  required String CategoryID,
  required String PointName,
  required String carkind,
  required String photo,
  required String locationName,
  required String rate,
  required String price,
  required int guestNumber,
  required String tourName,
  required DateTime date
}) async {
  // Reference to the Firestore collection
  CollectionReference cartCollection = FirebaseFirestore.instance.collection('cart');

  // Create a unique ID for the cart item
  String cartItemId = cartCollection.doc().id;

  // Data to be saved
  Map<String, dynamic> cartData = {
    'ID': cartCollection.doc().id,
    'PointID': PointID,
    'CategoryName': CategoryName,
    'CategoryID': CategoryID,
    'PointName': PointName,
    'carkind': carkind,
    'photo': photo,
    'locationName': locationName,
    'rate': rate,
    'price': price,
    'guestNumber': guestNumber,
    'tourName': tourName,
    'date': date,
  };

  // Adding data to Firestore
  await cartCollection.doc(userId).collection('carts').doc(cartItemId).set(cartData);
  print('Cart item added successfully!');
}
}
