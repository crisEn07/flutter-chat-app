import 'package:chat/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:chat/services/auth_service.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: checkLoginState(context),
        builder: (context, snapshot) {
          return Center(
            child: Text('Espere...'),
          );
        },
      ),
    );
  }

  Future checkLoginState(BuildContext context) async {
    final autService = Provider.of<AuthService>(context, listen: false);

    final autenticado = await autService.isLoggenIn();
    if (autenticado) {
      //TODO conectar al socket server
      // Navigator.pushReplacementNamed(context, 'usuarios');
    Navigator.pushReplacement(
      context, 
      PageRouteBuilder(pageBuilder: (_,__,___)=> LoginPage(),
      transitionDuration: Duration(milliseconds: 0)
    )
      );
    } else {
      //Navigator.pushReplacementNamed(context, 'login');
    }
  }
}
