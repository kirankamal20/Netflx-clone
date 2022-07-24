
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatelessWidget {
  final String text;
  const CustomAppbar({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
          // Flexible(
          //     fit: FlexFit.tight,
          //     child: SizedBox(width: Get.context!.width * 0.66)),
          Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 20,
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
