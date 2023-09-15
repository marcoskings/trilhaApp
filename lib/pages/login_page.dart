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
          Text(
            "Faça seu login e make the change_",
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
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 0),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.purple,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.purple,
                )),
                hintText: "E-mail",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            height: 30,
            child: const TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 0),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.purple,
                )),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.purple,
                )),
                hintText: "Senha",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.purple,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Colors.purple,
                ),
              ),
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
            height: 30,
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.purple),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  "Entrar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
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
                color: Color.fromARGB(255, 61, 133, 196),
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
                color: Color.fromARGB(255,176, 78, 118),
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
