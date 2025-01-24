import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_final_pro/utils/color_constants.dart';
import 'package:gym_final_pro/view/members_screen/widgets/member_card.dart';

class MembersScreen extends StatelessWidget {
  MembersScreen({super.key});

  final _formKey = GlobalKey<FormState>(); // Key to validate the form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Members',
          style: GoogleFonts.cormorantGaramond(
              color: ColorConstants.mainWhite,
              fontWeight: FontWeight.w800,
              fontSize: 25),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          MemberCard(
            name: "Shristi Jain",
            id: "05451",
            membership: "Platinum Member",
            expiryDate: "27/08/2022",
            imageUrl: "https://via.placeholder.com/150",
          ),
          MemberCard(
            name: "Chetan Bahri",
            id: "05412",
            membership: "Platinum Member",
            expiryDate: "29/08/2022",
            imageUrl: "https://via.placeholder.com/150",
          ),
          MemberCard(
            name: "Surya Bhavsar",
            id: "05498",
            membership: "Gold Member",
            expiryDate: "1/09/2022",
            imageUrl: "https://via.placeholder.com/150",
          ),
          MemberCard(
            name: "Nitya Shenoy",
            id: "05245",
            membership: "Gold Member",
            expiryDate: "1/09/2022",
            imageUrl: "https://via.placeholder.com/150",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              backgroundColor: Colors.black, // To make it match the app theme
              builder: (context) => Container(
                    padding: const EdgeInsets.all(20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Add Member',
                              style: GoogleFonts.cormorantGaramond(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'ID',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an ID';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Membership Type',
                              labelStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter membership type';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    // Handle save functionality here
                                  }
                                },
                                child: Text('Save'),
                                style: ElevatedButton.styleFrom(
                                  //    primary: Colors.amber,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 5,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context); // Close bottom sheet
                                },
                                child: Text('Cancel'),
                                style: ElevatedButton.styleFrom(
                                  //   primary: Colors.grey[700],
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
