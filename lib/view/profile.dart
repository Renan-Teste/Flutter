import 'package:flutter/material.dart';
import 'package:password_manager/login/sign_in.dart';
import 'package:password_manager/view/login.dart';

class Profile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new ProfileState();
}

class ProfileState extends State<Profile>{

  @override
  Widget build(BuildContext context) {
    return _buildProfile();
  }

  Widget _buildProfile(){
    return Scaffold(
      body: _buildInfo(),
    );
  }

  Widget _buildInfo(){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue[600].withOpacity(0.4),
            Colors.blue[600].withOpacity(0.8)
          ]
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildSignOutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildSignOutButton(){
    return RaisedButton(
      onPressed: () async {
        AuthProvider() .signOutGoogle();
        Navigator.push(context, MaterialPageRoute(
           builder: (context) => Login(),
        ));
      },
      color: Colors.purple,
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Text('Sign Out'),
            )
          ],
        ),
      ),
    );
  }

}