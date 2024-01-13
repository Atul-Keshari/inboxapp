import 'package:flutter/material.dart';

class ReceivedEmailScreen extends StatelessWidget {
  final String sender;
  final String title;
  final String time;
  final String content;
  ReceivedEmailScreen({
    required this.sender,
    required this.title,
    required this.time,
    required this.content,
  });
  Widget email_row(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(""),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sender,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'To me',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Received Email'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              // Handle delete action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: email_row(context),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    content,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
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
