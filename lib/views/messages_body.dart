import 'package:flutter/material.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4.0),
                child: FilterChip(
                  selected: false,
                  label: Text('News'),
                  onSelected: (bool value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FilterChip(
                  selected: true,
                  label: Text('Book'),
                  onSelected: (bool value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FilterChip(
                  selected: true,
                  label: Text('Games'),
                  onSelected: (bool value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FilterChip(
                  selected: false,
                  label: Text('Messages'),
                  onSelected: (bool value) {},
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FilterChip(
                  selected: false,
                  label: Text('People'),
                  onSelected: (bool value) {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: FilterChip(
                  onSelected: null,
                  selected: false,
                  label: Text('City'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
