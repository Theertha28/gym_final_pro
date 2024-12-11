import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_final_pro/utils/color_constants.dart';
import 'package:gym_final_pro/view/members_screen/widgets/member_card.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({super.key});

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
              builder: (context) => Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          TextFormField(),
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
