import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddOpinionPageContent extends StatefulWidget {
  const AddOpinionPageContent({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  final Function onSave;
  @override
  State<AddOpinionPageContent> createState() => _AddOpinionPageContentState();
}

class _AddOpinionPageContentState extends State<AddOpinionPageContent> {
  var barkebabName = '';
  var kebabName = '';
  var rating = 5.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'podaj nazwę lokalu'),
              onChanged: (newValue) {
                setState(() {
                  barkebabName = newValue;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'podaj nazwę kebaba'),
              onChanged: (newValue) {
                setState(() {
                  kebabName = newValue;
                });
              },
            ),
            Slider(
              onChanged: (newValue) {
                setState(() {
                  rating = newValue;
                });
              },
              value: rating,
              min: 1.0,
              max: 6.0,
              divisions: 10,
              label: rating.toString(),
            ),
            ElevatedButton(
                onPressed: barkebabName.isEmpty || kebabName.isEmpty
                    ? null
                    : () {
                        FirebaseFirestore.instance.collection('kebab').add({
                          'name': barkebabName,
                          'nazwa kebaba': kebabName,
                          'rating': rating,
                        });
                        widget.onSave();
                      },
                child: const Text('dodaj'))
          ],
        ),
      ),
    );
  }
}
