import 'package:flutter/material.dart';
import 'package:flutter_task/Constants/AppColors.dart';
import 'package:flutter_task/Models/CardDataModel.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.data});

  final CardDataModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4,
      child: SizedBox(
        width: 242,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image
            Container(
              width: double.infinity,
              height: 140,
              color: AppColors.primary,
              child: Image.asset(data.image!),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.title!,
                    style: const TextStyle(
                        color: AppColors.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subTitle!,
                    style: const TextStyle(
                        color: AppColors.title,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.description!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: AppColors.subTitle),
                  ),
                  const SizedBox(height: 12,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
