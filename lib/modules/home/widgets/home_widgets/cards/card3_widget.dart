import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class Card3Widget extends StatelessWidget {
  final String title;

  Card3Widget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundCard3,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 16),
                    child: Text(
                      title,
                      style: AppTheme.textStyles.card3E4Title,
                    ),
                  ),
                  Container(
                    width: 161,
                    height: 34,
                    margin: EdgeInsets.only(top: 5, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Entre em contato com o ',
                                  style: AppTheme.textStyles.card3Description),
                              TextSpan(
                                  text: ' Suporte LocalLog',
                                  style: AppTheme.textStyles.card3E4Title),
                              WidgetSpan(
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                  image: AssetImage('assets/images/card3.png'),
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
