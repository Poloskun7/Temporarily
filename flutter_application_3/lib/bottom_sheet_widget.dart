import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  BottomSheetWidget({super.key, required this.item});
  Map<dynamic, dynamic> item = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 500,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Адрес: ${item['address']}"),
                      ElevatedButton(
                        child: const Text('Close BottomSheet'),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
              );
  }
}