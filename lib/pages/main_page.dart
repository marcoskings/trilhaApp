import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/pagina1.dart';
import 'package:trilhaapp/pages/pagina2.dart';
import 'package:trilhaapp/pages/pagina3.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int posicaoPagina = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: const Text("Dados Cadastrais"),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DadosCadastraisPage(),
                        ),
                      );
                    },
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Text("Temos de usuário e privacidade"),
                ),
                onTap: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Text("Configurações"),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            posicaoPagina = value;
          });
        },
        children: const [
          Pagina1(),
          Pagina2(),
          Pagina3(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          controller.jumpToPage(value);
        },
        currentIndex: posicaoPagina,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "page1",),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "page2",),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "page3",)
        ],
      ),
    );
  }
}
