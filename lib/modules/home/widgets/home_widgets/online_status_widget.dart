import 'package:flutter/material.dart';

class OnlineStatusWidget extends StatelessWidget {
  final bool isOnline;

  OnlineStatusWidget({required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 3, bottom: 3),
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
