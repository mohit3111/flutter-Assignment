import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/Constants/AppColors.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});

  final IconData icon;
  final String title;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      constraints: BoxConstraints(maxWidth: 160),
      child: OutlinedButton(
        onPressed: () {onTap();},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.primary, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(icon, size: 20),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
