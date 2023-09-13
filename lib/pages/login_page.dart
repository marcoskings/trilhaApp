import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 100,
          ),
          const Icon(
            Icons.person,
            size: 150,
            color: Colors.green,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            height: 30,
            alignment: Alignment.center,
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Informe seu:",
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            height: 30,
            child: const Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Informe sua:",
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Text(
                    "Senha",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            color: Colors.green,
            height: 30,
            child: const Text(
              "Login",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 30,
            child: const Text(
              "Cadastro",
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
