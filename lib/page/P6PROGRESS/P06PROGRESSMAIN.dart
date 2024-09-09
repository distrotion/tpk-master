// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class P06PROGRESSMAIN extends StatefulWidget {
  const P06PROGRESSMAIN({super.key});

  @override
  State<P06PROGRESSMAIN> createState() => _P06PROGRESSMAINState();
}

class _P06PROGRESSMAINState extends State<P06PROGRESSMAIN> {
  @override
  Widget build(BuildContext context) {
    return P06PROGRESSMAINBody();
  }
}

class P06PROGRESSMAINBody extends StatefulWidget {
  const P06PROGRESSMAINBody({super.key});

  @override
  State<P06PROGRESSMAINBody> createState() => _P06PROGRESSMAINBodyState();
}

class _P06PROGRESSMAINBodyState extends State<P06PROGRESSMAINBody> {
  bool _isOldPasswordObscured = true;
  bool _isNewPasswordObscured = true;
  bool _isConfirmPasswordObscured = true;

  void _toggleOldPasswordVisibility() {
    setState(() {
      _isOldPasswordObscured = !_isOldPasswordObscured;
    });
  }

  void _toggleNewPasswordVisibility() {
    setState(() {
      _isNewPasswordObscured = !_isNewPasswordObscured;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordObscured = !_isConfirmPasswordObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: const [Colors.blueAccent, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Old Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isOldPasswordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleOldPasswordVisibility,
                        ),
                      ),
                      obscureText: _isOldPasswordObscured,
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'New Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isNewPasswordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleNewPasswordVisibility,
                        ),
                      ),
                      obscureText: _isNewPasswordObscured,
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'New Password Confirm',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isConfirmPasswordObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _toggleConfirmPasswordVisibility,
                        ),
                      ),
                      obscureText: _isConfirmPasswordObscured,
                    ),
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red,
                      minimumSize: Size(260, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text('Change Password'),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
