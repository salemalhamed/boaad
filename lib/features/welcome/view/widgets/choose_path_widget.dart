import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChoosePathWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color? color;
  const ChoosePathWidget({
    super.key,
    required this.icon,
    required this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: change to dynamic name
        Get.toNamed('/test');
      },
      child: Container(
        width: 140,
        height: 180,
        decoration: BoxDecoration(
          color: color ?? Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 56,
              color: Colors.white,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
