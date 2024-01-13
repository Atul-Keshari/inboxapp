// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // class EmailDescription extends StatelessWidget {
// //   final Email email;

// //   EmailDescription({required this.email});

// //   @override
// //   Widget build(BuildContext context) {
// //     return CupertinoPageScaffold(
// //       navigationBar: CupertinoNavigationBar(
// //         middle: Text('Email Details'),
// //       ),
// //       child: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Text(
// //                 email.title,
// //                 style: TextStyle(
// //                   fontSize: 22.0,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               SizedBox(height: 12.0),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text(
// //                     'From: ${email.from}',
// //                     style: TextStyle(
// //                       fontSize: 16.0,
// //                       color: Colors.grey[700],
// //                     ),
// //                   ),
// //                   Text(
// //                     'To: ${email.to}',
// //                     style: TextStyle(
// //                       fontSize: 16.0,
// //                       color: Colors.grey[700],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               SizedBox(height: 12.0),
// //               Text(
// //                 'Time: ${email.time}',
// //                 style: TextStyle(
// //                   fontSize: 16.0,
// //                   color: Colors.grey[700],
// //                 ),
// //               ),
// //               SizedBox(height: 12.0),
// //               Text(
// //                 'Content:',
// //                 style: TextStyle(
// //                   fontSize: 18.0,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //               SizedBox(height: 8.0),
// //               Text(
// //                 email.content,
// //                 style: TextStyle(fontSize: 16.0),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class Email {
// //   final String title;
// //   final String from;
// //   final String to;
// //   final String time;
// //   final String content;

// //   Email({
// //     required this.title,
// //     required this.from,
// //     required this.to,
// //     required this.time,
// //     required this.content,
// //   });
// // }

// // void main() {
// //   runApp(
// //     CupertinoApp(
// //       home: EmailDescription(
// //         email: Email(
// //           title: 'Meeting Tomorrow',
// //           from: 'John Doe',
// //           to: 'Jane Doe',
// //           time: '2:30 PM',
// //           content:
// //               'Let\'s schedule a meeting for tomorrow.\nWe need to discuss the upcoming project.',
// //         ),
// //       ),
// //     ),
// //   );
// // }

// import 'package:flutter/material.dart';

// class EmailDescription extends StatefulWidget {
//   const EmailDescription({super.key});

//   @override
//   State<EmailDescription> createState() => _EmailDescriptionState();
// }

// class _EmailDescriptionState extends State<EmailDescription> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Email Details'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.delete),
//             onPressed: () {
//               // Add your delete logic here
//               print('Delete button pressed');
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//         child: Column(
//           children: [
//             email_row(context),
//             mail_body(context),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Widget email_row(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 8.0),
//     child: Row(
//       children: [
//         CircleAvatar(
//           radius: 20,
//           backgroundImage: NetworkImage(""),
//         ),
//         SizedBox(width: 12.0),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "demo6@gmail.com",
//                 style: TextStyle(
//                   fontSize: 16.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 4.0),
//               Text(
//                 'To me',
//                 style: TextStyle(
//                   fontSize: 14.0,
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Text(
//           "11:40 AM",
//           style: TextStyle(
//             fontSize: 14.0,
//             color: Colors.grey[600],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget mail_body(BuildContext context) {
//   return Container(
//     child: Text('Sample Mail Content body'),
//   );
// }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sender,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
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
            SizedBox(height: 8.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(12.0),
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
