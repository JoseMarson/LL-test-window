import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          title,
                          style: AppTheme.textStyles.card3E4Title,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 200,
                    height: 54,
                    margin: EdgeInsets.only(left: 16),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Entre em contato com o ',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: ' Suporte LocalLog',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
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
