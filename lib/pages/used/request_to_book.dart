
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3445/pages/used/driver_page.dart';
import 'package:intl/intl.dart';
import 'check_out_details.dart';
import 'choose_your_friendly_guide.dart';

class RequestToBook extends StatefulWidget {
  final String ID;
  final String PointID, CategoryName, CategoryID, PointName,carkind,tourName,tourRate,photo,rate,locationName,price;

  RequestToBook({
    required this.ID,
    required this.PointID,
    required this.CategoryName,
    required this.CategoryID,
    required this.PointName,
    required this.carkind,
    required this.tourName,
    required this.tourRate,
    required this.photo,
    required this.locationName,
    required this.rate,
    required this.price

  });

  @override
  State<RequestToBook> createState() => _RequestToBookState();
}

class _RequestToBookState extends State<RequestToBook> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
        _selectTime(context);
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  String get _formattedDate {
    if (_selectedDate == null) return 'Select Date';
    return DateFormat('EEEE, d MMMM, yyyy').format(_selectedDate!);
  }

  String get _formattedTime {
    if (_selectedTime == null) return 'Select Time';
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, _selectedTime!.hour, _selectedTime!.minute);
    return DateFormat('h:mm a').format(dt);
  }

  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 1) {
        _counter--;
      }
    });
  }
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
          'Request to book',
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),

      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 10),
              _buildLocationCard(),
              SizedBox(height: 20),
              _buildTripDetails(),
              SizedBox(height: 20),
              InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChooseYourFriendlyGuide(
                          ID: widget.ID,
                          PointID: widget.PointID,
                          PointName: widget.PointName,
                          CategoryName: widget.CategoryName,
                          CategoryID:widget.CategoryID,
                          carkind: widget.carkind,
                          photo: widget.photo,
                          rate: widget.rate,
                            price: widget.price,
                            locationName:widget.locationName
                        )));
                  },
                  child: _buildTourGuideSelection()),


              SizedBox(height: 20),
              InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DriverPage(
                          ID: widget.ID,
                          PointID: widget.PointID,
                          PointName: widget.PointName,
                          CategoryName: widget.CategoryName,
                          CategoryID:widget.CategoryID, tourName: widget.tourName, tourRate:widget.tourRate,
                          photo: widget.photo,
                          price: widget.price,
                          rate: widget.rate, locationName: widget.locationName,


                        )));
                  },
                  child: _buildCarAndDriverSelection()),
              SizedBox(height: 20),
              _buildFooter(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
         // margin: EdgeInsets.fromLTRB(12, 0, 7, 20),
          child: Row(
            children: [
              _buildBackButton(),
              SizedBox(width: 10),
              Text(
                'Request to book',
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),

      ],
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

  Widget _buildLocationCard() {
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

  Widget _buildTripDetails() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xA1000000)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Trip',
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
        //  _buildDetailRow('Date', 'Sun, 16 June, 12PM'),
          InkWell(
               onTap:  () {
                 _selectDate(context);

               } ,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    width: 50.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF5F9FC)),
                    ),
                    child: Text(
                      'Date',
                      style: GoogleFonts.getFont(
                        'Josefin Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF5F9FC)),
                    ),
                    child: Text(

                      "${_formattedDate?? "Sun, 16 June,"}" +" ${_formattedTime??" 12PM"}",
                      style: GoogleFonts.getFont(
                        'Jomhuria',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color(0x57000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 10),
          _buildDetailRow('Guests', '2 guests'),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.josefinSans(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: (){
                _incrementCounter();
              },
              child: Text(
                "+",
                style: GoogleFonts.jomhuria(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(width: 4,),
            Text(
              "$_counter" + " Guests",
              style: GoogleFonts.jomhuria(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                color: Color(0x57000000),
              ),
            ),
            SizedBox(width: 4,),
            InkWell(
              onTap: (){
                _decrementCounter();
              },
              child: Text(
                "-",
                style: GoogleFonts.jomhuria(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildCarAndDriverSelection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xA1000000)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.carkind == ""?'Choose a car and a driver': "Car: "+ widget.carkind ??"" ,
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.carkind == ""?  "You haven't selected anyone yet. Choose if you want a unique and comfortable experience and an excellent driver to help you move comfortably."
            : "",
            style: GoogleFonts.jomhuria(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0x57000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTourGuideSelection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xA1000000)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          widget.tourName == ""?
          Text(
           'Choose your friendly tour guide'  ,

            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
          ):
          Row(
            children: [
              Text(
                widget.tourName == ""?'Choose your friendly tour guide': "Name: "+"${ widget.tourName ??""}"  ,

                style: GoogleFonts.josefinSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10,),
              Row(
                children: [

                  Text(
                    widget.tourRate == ""?"": "${widget.tourRate}"  ,

                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.star,color: Colors.yellow,)

                ],
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            widget.tourName == ""? "You haven't selected anyone yet Click and choose if you want to experience a new adventure": "",
            style: GoogleFonts.jomhuria(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0x57000000),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 27, vertical: 19),
          child: Text(
            widget.carkind == ""?"You haven't selected anyone yet. Click and choose if you want to experience a new adventure.": "",
            style: GoogleFonts.jomhuria(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0x57000000),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CheckOutDetails(
                    ID: widget.ID,
                    PointID: widget.PointID,
                    PointName: widget.PointName,
                    CategoryName: widget.CategoryName,
                    CategoryID:widget.CategoryID,
                    carkind: widget.carkind,
                    photo: widget.photo,
                    rate: widget.rate,
                    price: widget.price,
                    tourName:widget.tourName,
                    guestNumber: _counter,

                    locationName:widget.locationName

                )));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              gradient: LinearGradient(
                begin: Alignment(-1, 0),
                end: Alignment(1, 0),
                colors: [Color(0xFF577CC3), Color(0xFF5471BD), Color(0xFF6357AE)],
                stops: [0, 0.134, 1],
              ),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Check out details',
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

      ],
    );
  }
}
