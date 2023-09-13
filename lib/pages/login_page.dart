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
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Expanded(
                flex: 8,
                child: Image.network(
                  "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Ja tem cadastro?",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Faça seu login e make the change_",
          style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 50,
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
                    style: TextStyle(color: Colors.white),
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
                    style: TextStyle(color: Colors.white),
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
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            alignment: Alignment.center,
            color: Color.fromARGB(255, 143, 70, 185),
            height: 30,
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 30,
            child: const Text(
              "Esqueci minha senha",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 30,
            child: const Text(
              "Criar conta",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 150,
          )
        ]),
      ),
    );
  }
}
