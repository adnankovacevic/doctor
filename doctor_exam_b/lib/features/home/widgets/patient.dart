import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Patient extends StatelessWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Patient list for today"),
          ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/doctor.png"),
                          fit: BoxFit.fill),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "My Profile",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.outfit(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
