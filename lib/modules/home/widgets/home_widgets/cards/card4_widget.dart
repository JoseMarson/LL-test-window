import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class Card4Widget extends StatelessWidget {
  final String title;
  final String description;

  Card4Widget({
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundCard4,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: AppTheme.textStyles.card3E4Title,
                  ),
                  SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: description,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 8),
                        ),
                        WidgetSpan(
                          child: Icon(
                            Icons.arrow_forward,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 145,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/tshirt.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
