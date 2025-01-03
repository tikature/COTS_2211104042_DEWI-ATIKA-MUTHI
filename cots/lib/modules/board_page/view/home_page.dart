import 'package:flutter/material.dart';
import '../../../design_system/colors.dart';
import '../../../design_system/typography.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: AppTypography.h3),
        backgroundColor: AppColors.primaryGreen,
      ),
      body: Center(child: Text('Home Page Content')),
    );
  }
}
