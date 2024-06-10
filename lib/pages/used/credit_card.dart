
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6F0),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 49.3, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            _buildPaymentMethodsSection(),
            _buildPayNowButton(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackButtonWithTitle() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 33),
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
              'assets/vectors/back_13_x2.svg',
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
      margin: EdgeInsets.fromLTRB(1, 0, 0, 10),
      padding: EdgeInsets.fromLTRB(6, 5, 17, 6),
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
                image: AssetImage('assets/images/image_2.jpeg'),
              ),
            ),
            width: 100,
            height: 107,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '9WH3+HM6 Amsterdam, Netherlands',
                  style: GoogleFonts.getFont(
                    'Jockey One',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xA8000000),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Amsterdam Classic Boat ',
                  style: GoogleFonts.getFont(
                    'Josefin Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '5.0',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Color(0xFF475467),
                      ),
                    ),
                    SizedBox(width: 4),
                    SvgPicture.asset('assets/vectors/vector_30_x2.svg', width: 10, height: 9.9),
                    SvgPicture.asset('assets/vectors/vector_40_x2.svg', width: 10, height: 9.9),
                    SvgPicture.asset('assets/vectors/vector_20_x2.svg', width: 10, height: 9.9),
                    SvgPicture.asset('assets/vectors/vector_51_x2.svg', width: 10, height: 9.9),
                    SvgPicture.asset('assets/vectors/vector_49_x2.svg', width: 10, height: 9.9),
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
      margin: EdgeInsets.fromLTRB(1, 0, 0, 36),
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
          _buildPriceDetailRow('\$37 x 2 Guests', '\$74'),
          _buildPriceDetailRow('Private Driver', '\$25'),
          _buildPriceDetailRow('Tour Guide', '\$35'),
          _buildPriceDetailRow('Taxes & Fees', '\$5'),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.fromLTRB(12, 0, 2, 11),
            color: Color(0x6B000000),
            height: 3,
            width: double.infinity,
          ),
          Text(
            'Total (USD)                                                              \$139',
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

  Widget _buildPayNowButton() {
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
}
