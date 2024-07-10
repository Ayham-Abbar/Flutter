import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final bool loginWithUserName;
  final String message;
  final Function? onChang;
  const Login(
      {super.key,
      this.loginWithUserName = false,
      this.message = 'there was an error in the server',
      this.onChang});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var pass = '';
    var name = TextEditingController();
    return Column(
      children: [
        //enter your name
        TextFormField(
          controller: name,
          // onChanged: (value) => name = value,
          decoration: InputDecoration(
              label: Text(
                'Enter your ${widget.loginWithUserName ? 'User' : 'Email'}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              border:
                  const OutlineInputBorder(borderSide: BorderSide(width: 1)),
              prefix: const Icon(Icons.verified_user)),
        ),
        const SizedBox(
          height: 50,
        ),
        //enter your password
        TextFormField(
          obscureText: true,
          onChanged: (value) => pass = value,
          decoration: InputDecoration(
            label: const Text(
              'password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            border: const OutlineInputBorder(borderSide: BorderSide(width: 1)),
            prefix: Container(
                padding: const EdgeInsets.only(right: 15),
                child: const Icon(Icons.password)),
          ),
        ),
        const SizedBox(
          height: 50,
        ),

        ElevatedButton(
            onPressed: () {
              final m = SnackBar(
                  content: Text(
                      'name: ${name.text} & password: $pass & ${widget.message}'));
              ScaffoldMessenger.of(context).showSnackBar(m);
              if (widget.onChang != null) {
                widget.onChang!(pass);
              }
            },
            child: const Text('send')),
      ],
    );
  }
}
