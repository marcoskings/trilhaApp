import 'package:flutter/material.dart';
import 'package:trilhaapp/service/gerar_numero_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numeroGerado = 0;
  int vezesClicado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp home"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Text(
                "Ação do Usuário",
                style: Theme.of(context).textTheme.bodyMedium,
                ),
            ),
            Container(
              color:  Colors.orange,
              height: 100,
              width: 100,
              child: Text(
                "O botão foi clicado $vezesClicado",
                style: Theme.of(context).textTheme.bodyMedium,
                ),
            ),
            Container(
              color: Colors.indigo,
              width: double.infinity,
              child: Text(
                "O número foi gerado $numeroGerado",
                style: Theme.of(context).textTheme.titleMedium,
                ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                        child: Text(
                          "Nome:",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.lightBlue,
                        child: Text(
                          "Marcos Reis",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.green,
                        child: Text(
                          "21",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              vezesClicado = vezesClicado + 1;
              numeroGerado = GeradorNumeroA.gerarNumero(20);
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}
