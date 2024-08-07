import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var pass = '';
    var name = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        width: 400,
        height: 700,
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.black)),
        child: Column(
          children: [
            //enter your name
            TextFormField(
              controller: name,
              // onChanged: (value) => name = value,
              decoration: const InputDecoration(
                  label: Text(
                    'name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  prefix: Icon(Icons.verified_user)),
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
                border:
                    const OutlineInputBorder(borderSide: BorderSide(width: 1)),
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
                      content: Text('name: ${name.text} & password: $pass'));
                  ScaffoldMessenger.of(context).showSnackBar(m);
                },
                child: const Text('send')),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      )),
    );
  }
}
