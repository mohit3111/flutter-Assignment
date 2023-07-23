import 'package:flutter/material.dart';
import 'package:flutter_task/Constants/AppColors.dart';
import 'package:flutter_task/Models/CardDataModel.dart';

import '../../Components/PrimaryButton.dart';
import '../NavigationScreen.dart';
import 'Components/HorizontalScrollView.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: const [
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.dehaze_rounded,
            color: AppColors.subTitle,
          ),
          Spacer(),
          Icon(
            Icons.message_rounded,
            color: AppColors.subTitle,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.notifications_outlined,
            color: AppColors.subTitle,
          ),
          SizedBox(
            width: 12,
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hello, Priya!",
                        style: TextStyle(color: AppColors.title, fontSize: 20)),
                    Text(
                      "What do you wanna learn today?",
                      style: TextStyle(color: AppColors.subTitle, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      icon: Icons.book,
                      title: "Programs",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NavigationScreen(title: "Programs")),
                        );
                      },
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    PrimaryButton(
                      icon: Icons.help,
                      title: "Get Help",
                      onTap: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      icon: Icons.menu_book_rounded,
                      title: "Learn",
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    PrimaryButton(
                      icon: Icons.insert_chart,
                      title: "DD Tracks",
                      onTap: () {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                HorizontalScrollView(
                  title: "Programs For You",
                  onTapViewAll: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationScreen(
                              title: "Programs For You")),
                    );
                  },
                  cardData: CardDataModel.row_1,
                ),
                const SizedBox(
                  height: 14,
                ),
                HorizontalScrollView(
                  title: "Events and experiences",
                  onTapViewAll: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationScreen(
                              title: "Events and experiences")),
                    );
                  },
                  cardData: CardDataModel.row_2,
                ),
                const SizedBox(
                  height: 14,
                ),
                HorizontalScrollView(
                  title: "Lessons for you",
                  onTapViewAll: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const NavigationScreen(title: "Lessons for you")),
                    );
                  },
                  cardData: CardDataModel.row_3,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_filled)),
          BottomNavigationBarItem(
              label: "Learn", icon: Icon(Icons.messenger_outline)),
          BottomNavigationBarItem(label: "Hub", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
