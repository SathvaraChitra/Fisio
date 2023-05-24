import 'package:flutter/material.dart';

class IntroListTile extends StatelessWidget {
  const IntroListTile({
    Key? key, required this.title, required this.subtitle, required this.iconPath,
  }) : super(key: key);

  final String title, subtitle, iconPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: CircleAvatar(backgroundImage: AssetImage(iconPath,/*package: 'Fisio'*/), radius: 20),
      leading: SizedBox(
        //color: Colors.red,
          height: 40,
          width: 40,
          child: Image.asset(iconPath)),
      title: Text(title),
      subtitle: Text(subtitle, maxLines: 2, overflow: TextOverflow.ellipsis),
    );
  }
}