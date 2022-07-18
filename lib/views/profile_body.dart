import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          _showAlertDialog(context);
        },
        child: CircleAvatar(
          child: Text('АВ'),
          radius: 50,
        ),
      ),
    );
  }
}

void _showAlertDialog(BuildContext context) {
  Widget yesButton = ElevatedButton(
    child: Text('Да'),
    onPressed: () {},
  );
  Widget noButton = ElevatedButton(
    child: Text('Нет'),
    onPressed: () {},
  );

  AlertDialog alert = AlertDialog(
    title: Text('Сменить аватар'),
    actions: <Widget>[
      yesButton,
      noButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
