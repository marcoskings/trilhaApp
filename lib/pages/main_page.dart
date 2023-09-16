import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: Text("Dados Cadastrais"),
                    ),
                    onTap: (){},
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: Text("Temos de usuário e privacidade"),
                ),
                onTap: () {},
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: Text("Configurações"),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text("Login efetuado"),
      ),
    );
  }
}
