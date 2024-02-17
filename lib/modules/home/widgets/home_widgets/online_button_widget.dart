import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';

class OnlineButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  OnlineButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Ficar online', style: TextStyle(color: Colors.white)),
            style: AppTheme.buttonOnline,
          ),
          SizedBox(height: 8),
          Text("Você pode desativar quando quiser parar."),
        ],
      ),
    );
  }
}
