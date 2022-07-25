import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class formRegistration extends StatefulWidget {
  const formRegistration({Key? key}) : super(key: key);

  @override
  State<formRegistration> createState() => _formRegistrationState();
}

class _formRegistrationState extends State<formRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Registrasi"),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                    controller: ctrUsername,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'username',
                    )),
                Container(
                  height: 20,
                ),
                TextField(
                    controller: ctrPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'password',
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("jenis kelamin"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: id,
                        onChanged: (value) {
                          setState(() {
                            id = 1;
                          });
                        }),
                    Text("laki-laki"),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: id,
                        onChanged: (value) {
                          setState(() {
                            id = 2;
                          });
                        }),
                    Text("perempuan"),
                  ],
                ),
                Container(
                  width: 200,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 33, 177, 230)),
                    onPressed: () {},
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
