import 'package:flutter/material.dart';


Widget Ui4Fulls(list) => Column(
  children: [
    for (final item in list)
      ListTile(
        title: Text(item.$2),
        leading: Icon(item.$1),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    const Padding(
      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(
        children: [
          Icon(Icons.person, size: 24, color: Colors.black87),
          SizedBox(width: 16),
          Text(
            'Profile',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          Spacer(),
          Text('English (US)'),
          SizedBox(width: 8),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    ),
    const SizedBox(height: 16),
    Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(
        children: [
          const Icon(Icons.dark_mode, size: 24, color: Colors.black87),
          const SizedBox(width: 16),
          const Text(
            'Dark Mode',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          const Spacer(),
          Switch(
            value: false,
            onChanged: (value) {},
          ),
        ],
      ),
    ),
  ],
);