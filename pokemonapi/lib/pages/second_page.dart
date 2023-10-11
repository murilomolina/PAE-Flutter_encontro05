import 'package:flutter/material.dart';
import 'package:pokemonapi/widgets/botao_widget.dart';

class SecondPage extends StatelessWidget {
  final String apiResponse;
  const SecondPage({required this.apiResponse,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Navegação + Pacotes + API'),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(apiResponse, style: const TextStyle(fontWeight: FontWeight.bold),),
                BotaoWidget(
                  texto: 'Voltar para Página Inicial',
                  funcao: (){
                    Navigator.pop(context);
                })
              ],)
          ),
        )
      );
  }
}
// 