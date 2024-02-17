import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (index) {
        return Skeletonizer(
          child: Card(
            child: ListTile(
              title: Container(
                width: 150,
                height: 30.0,
                color: Colors.grey[300],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 30.0,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        width: 100,
                        height: 30.0,
                        color: Colors.grey[300],
                      ),
                      SizedBox(width: 20),
                      SizedBox(height: 10),
                      Container(
                        width: 100,
                        height: 30.0,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    height: 30.0,
                    color: Colors.grey[300],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
