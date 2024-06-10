import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../class/review.dart';

// Ensure this path is correct

class ReviewPage extends StatefulWidget {
  final String ID;
  final String reviewID;

  ReviewPage({
    required this.ID,
    required this.reviewID,
  });

  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  final TextEditingController _commentController = TextEditingController();
  int _stars = 0;
  Map<String, dynamic>? userData;
  bool addreview = false;

  @override
  void initState() {
    getUserProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Review>>(
              future: getReviews(widget.reviewID),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                if (snapshot.data!.isEmpty) {
                  return Text('No reviews yet');
                }
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Review review = snapshot.data![index];
                    String Photo = review.photo;
                    String timestampStr = review.timestamp.toString() ?? '';
                    DateTime timestamp = DateTime.parse(timestampStr); // Adjusted for simplification

                    // Setting the locale manually (you can also set it globally)
                    timeago.setLocaleMessages('en_short', timeago.EnShortMessages());
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        //  width: MediaQuery.of(context).size.width-50,
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                        //margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Transparent background
                          borderRadius: BorderRadius.circular(30), // Adjust the radius for desired curvature
                          border: Border.all(
                            color: Colors.black, // Red border color
                            width: 0.5, // Width of the stroke
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image:   Photo == null || Photo == ""  ? DecorationImage(

                                              image:  AssetImage('assets/profile.png'),
                                              fit: BoxFit.cover,
                                            ):DecorationImage(

                                              image:  NetworkImage(Photo?? ''),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          alignment: Alignment.bottomCenter,

                                        ),
                                        SizedBox(width: 3,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(review.name ?? ''),
                                            Row(children: [
                                              Text(review.stars.toString() ?? ''),
                                              Icon(Icons.star,color: Colors.yellow,)
                                            ],)
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(timeago.format(timestamp, locale: 'en_short')),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text(review.comment ?? ''),
                              ],
                            )
                        ),
                      ),
                    );

                    /*ListTile(
                        title: Text(review.comment),
                        subtitle: Text('${review.stars} Stars'),
                        trailing: Text(review.timestamp.toIso8601String()),
                      );*/
                  },
                );
              },
            ),
          ),
          addreview ?  Padding(
            padding: const EdgeInsets.all(8.0),
            child: _reviewInputSection(),
          ):  ElevatedButton(
            onPressed: (){
              setState(() {
                addreview = true;
              });
            },
            child: Text('Submit Review'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
    );
  }

  Widget _reviewInputSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List<Widget>.generate(5, (index) {
            return IconButton(
              icon: Icon(
                index < _stars ? Icons.star : Icons.star_border,
                color: Colors.amber,
              ),
              onPressed: () {
                setState(() {
                  _stars = index + 1;
                });
              },
            );
          }),
        ),
        TextField(
          controller: _commentController,
          decoration: InputDecoration(
            labelText: 'Your Review',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: _submitReview,
          child: Text('Submit Review'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
        ),
      ],
    );
  }

  Future<List<Review>> getReviews(String reviewId) async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('Reviews')
        .doc(reviewId)
        .collection('Comments')
        .orderBy('timestamp', descending: true)
        .get();

    return snapshot.docs.map((doc) => Review.fromFirestore(doc)).toList();
  }

  void _submitReview() async {
    if (_stars == 0 || _commentController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please add a comment and a star rating.')));
      return;
    }

    await FirebaseFirestore.instance
        .collection('Reviews')
        .doc(widget.reviewID)
        .collection('Comments')
        .add({
      'userId': widget.ID,
      'comment': _commentController.text,
      'userPhoto': userData?['profilePicture'] ?? '',
      'name': userData?['name'] ?? '',
      'stars': _stars,
      'timestamp': FieldValue.serverTimestamp(),
    });

    _commentController.clear();
    setState(() {
      _stars = 0;
      addreview = false;
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Review submitted successfully')));
  }

  Future<Map<String, dynamic>?> fetchUserData(String uid) async {
    try {
      DocumentSnapshot userDoc =
      await FirebaseFirestore.instance.collection('users').doc(uid).get();

      if (userDoc.exists) {
        // Convert the DocumentSnapshot to a Map
        Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
        return userData;
      } else {
        print("No user found with uid: $uid");
        return null;
      }
    } catch (e) {
      print("Error fetching user data: $e");
      return null;
    }
  }

  void getUserProfile() async {
    userData = await fetchUserData(widget.ID);

    if (userData != null) {
      print("User Data: $userData");
      // Do something with userData, such as updating state or UI
    } else {
      print("Failed to fetch user data or user does not exist.");
    }
  }




}
