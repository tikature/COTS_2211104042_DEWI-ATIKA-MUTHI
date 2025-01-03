import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../design_system/colors.dart';
import '../../../design_system/typography.dart';
import '../controller/promo_controller.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PromoController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Promo', style: AppTypography.h3),
            backgroundColor: AppColors.primaryGreen,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.star, color: AppColors.primaryOrange),
                    SizedBox(width: 8),
                    Text('121 XP to your next treasure',
                        style: AppTypography.body2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Promo menarik buat kamu', style: AppTypography.h4),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.promoImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(controller.promoImages[index],
                          width: 200),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
