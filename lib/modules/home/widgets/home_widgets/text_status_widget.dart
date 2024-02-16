import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class TextStatusWidget extends StatelessWidget {
  final bool isOnline;

  TextStatusWidget({required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      isOnline
          ? TextSpan(
              text: 'Olá, ',
              style: AppTheme.textStyles.initialText,
              children: [
                TextSpan(
                  text: 'Thiago. ',
                  style: AppTheme.textStyles.onlineUserName,
                ),
                TextSpan(
                  text: 'As rotas disponíveis vão aparecer aqui.',
                  style: AppTheme.textStyles.initialText,
                ),
              ],
            )
          : TextSpan(
              text: 'Olá, ',
              style: AppTheme.textStyles.initialText,
              children: [
                TextSpan(
                  text: 'Thiago',
                  style: AppTheme.textStyles.initialText,
                ),
                TextSpan(
                  text: '. Fique online para receber rotas.',
                  style: AppTheme.textStyles.initialText,
                ),
              ],
            ),
    );
  }
}
