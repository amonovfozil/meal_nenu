import 'package:flutter/material.dart';

class AddPhotoUrl extends StatefulWidget {
  final TextEditingController InputPhotoUrl;
  final String title;
  AddPhotoUrl(this.InputPhotoUrl, this.title);

  @override
  State<AddPhotoUrl> createState() => _AddPhotoUrlState();
}

class _AddPhotoUrlState extends State<AddPhotoUrl> {
  var imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.grey)),
          alignment: Alignment.center,
          height: 90,
          width: 90,
          child: imageUrl != null
              ? Image.network(imageUrl, fit: BoxFit.cover)
              : Text(
                  'Rasm kiriting',
                  style: TextStyle(fontSize: 12),
                ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: TextField(
            controller: widget.InputPhotoUrl,
            decoration: InputDecoration(
                label: Text('${widget.title} manzilini kiriting')),
            onSubmitted: (value) {
              setState(() {
                imageUrl = value;
                print(value);
              });
            },
          ),
        ),
      ],
    );
  }
}
