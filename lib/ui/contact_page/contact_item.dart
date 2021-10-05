import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  //attribut
  String contactName;
  String contactNumber;

  ContactItem({
    required this.contactName,
    required this.contactNumber,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 12,
        bottom: 12,
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            child: Text(
              contactName.substring(0, 1),
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 8,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  contactName,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  contactNumber,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
