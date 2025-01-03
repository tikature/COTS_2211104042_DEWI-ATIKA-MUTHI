import 'package:flutter/material.dart';
import '../../../design_system/colors.dart';
import '../../../design_system/typography.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders', style: AppTypography.h3),
        backgroundColor: AppColors.primaryGreen,
      ),
      body: Center(child: Text('Order Page Content')),
    );
  }
}
