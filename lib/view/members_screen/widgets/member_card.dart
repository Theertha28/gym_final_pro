import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class MemberCard extends StatelessWidget {
  final String name;
  final String id;
  final String membership;
  final String expiryDate;
  final String imageUrl;

  MemberCard({
    super.key,
    required this.name,
    required this.id,
    required this.membership,
    required this.expiryDate,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0.1),
      //  shadowColor: Colors.grey,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.cormorantGaramond(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        id,
                        style: GoogleFonts.ibarraRealNova(
                            color: Colors.grey, letterSpacing: 1),
                      ),
                      Text(
                        membership,
                        style: GoogleFonts.cormorantGaramond(
                            color: Colors.grey, letterSpacing: 1),
                      ),
                      Text(
                        'Expires on $expiryDate',
                        style: GoogleFonts.cormorantGaramond(
                            color: Colors.amber, letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call),
                    color: Colors.green,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Brand(
                      Brands.whatsapp,
                      size: 25,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                    color: Colors.blue,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.sync),
                    color: Colors.orange,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete),
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
