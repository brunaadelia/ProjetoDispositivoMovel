import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Imoveis Cadastrados'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: PopupMenuButton(
          icon: Icon(Icons.more_vert),
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Proprietario'),
              ),
            ),
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.receipt_long),
                title: Text('Ano'),
              ),
            ),
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.pin_drop_outlined),
                title: Text('Município'),
              ),
            ),
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.query_stats_rounded),
                title: Text('Tipo'),
              ),
            ),
            const PopupMenuItem(
              child: ListTile(
                leading: Icon(Icons.arrow_circle_down_sharp),
                title: Text('Ações'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(child: Text('Visualizar')),
            const PopupMenuItem(child: Text('Excluir')),
          ],
        ));
  }
}