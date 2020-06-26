import 'package:flutter/material.dart';

class CostomDrawer extends StatelessWidget {
  _buildDrawerOptions(
    Icon icon,
    String title,
    Function onTap,
  ) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: onTap(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          _buildDrawerOptions(Icon(Icons.dashboard), 'ホーム画面', () {}),
          _buildDrawerOptions(Icon(Icons.settings), '設定', () {}),
          _buildDrawerOptions(Icon(Icons.account_circle), 'プロフィール編集', () {}),
          Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: _buildDrawerOptions(Icon(Icons.directions_run), 'ログアウト',
                    () {} // ignore: unnecessary_statements
                    )),
          ),
        ],
      ),
    );
  }
}