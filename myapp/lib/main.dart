import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '버튼 종류',
    home: Scaffold(
      appBar: AppBar(
        title: Text('버튼 종류'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  late BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return Center(
      child: Column(
        children: <Widget>[
          InkWell(
            child: Image.asset(
                'https://files.slack.com/files-pri/T02DEDTJZ1R-F02GABHH338/image.png',
                width: 120,
                height: 120),
            onTap: () => showMessage('ImageButton'),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }

  void showMessage(String msg) {
    final snackbar = SnackBar(content: Text(msg));

    Scaffold.of(ctx)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackbar);
  }
}
