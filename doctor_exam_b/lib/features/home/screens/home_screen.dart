import 'package:doctor_exam_b/features/home/widgets/my_profile.dart';
import 'package:doctor_exam_b/features/home/widgets/patient.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/images/product_arena.png",
                  width: 120,
                  height: 45,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/images/logout.jpg",
                  width: 120,
                  height: 45,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            MyProfile(),
            Patient(),
          ],
        ),
      ),
    );
  }
}
