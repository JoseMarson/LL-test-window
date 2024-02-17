import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class Card2Widget extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  Card2Widget({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundCard2,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: AppTheme.textStyles.card2Title,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 240,
                    height: 51,
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      description,
                      style: AppTheme.textStyles.card2Description,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 140,
              height: 105,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/foguete.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
