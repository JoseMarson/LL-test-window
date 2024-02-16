import 'package:flutter/material.dart';

class OnlineStatusWidget extends StatelessWidget {
  final bool isOnline;

  OnlineStatusWidget({required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              color: !isOnline ? Colors.black : Colors.green,
              child: Text(
                !isOnline ? 'Offline' : 'Você está online',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
