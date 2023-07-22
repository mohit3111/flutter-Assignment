import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/Constants/AppColors.dart';
import 'package:flutter_task/screens/HomeScreen/Components/CardView.dart';

import '../../../Models/CardDataModel.dart';

class HorizontalScrollView extends StatelessWidget {
  HorizontalScrollView(
      {super.key,
      required this.title,
      required this.onTapViewAll,
      required this.cardData});

  final String title;
  final List<CardDataModel> cardData;
  Function onTapViewAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            const Spacer(),
            TextButton(
                onPressed: () {
                  onTapViewAll();
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "View All",
                      style: TextStyle(fontSize: 12, color: AppColors.subTitle),
                    ),
                    Icon(Icons.arrow_forward,
                        color: AppColors.subTitle, size: 16),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        cards()
      ],
    );
  }

  Widget cards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardView(data: cardData[0]),
          CardView(data: cardData[1]),
          CardView(data: cardData[2]),
        ],
      ),
    );
  }
}
