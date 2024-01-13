import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailComposeScreen extends StatefulWidget {
  const EmailComposeScreen({super.key});

  @override
  State<EmailComposeScreen> createState() => _EmailComposeScreenState();
}

class _EmailComposeScreenState extends State<EmailComposeScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Compose Email'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CupertinoTextField(
                placeholder: 'From',
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              CupertinoTextField(
                placeholder: 'To',
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              CupertinoTextField(
                placeholder: 'Subject',
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 16.0),
              CupertinoTextField(
                placeholder: 'Compose your email',
                maxLines: 10,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 16.0),
              CupertinoButton(
                color: Colors.blue,
                child: const Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Message sent successfully'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Navigator.pop(context);
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
