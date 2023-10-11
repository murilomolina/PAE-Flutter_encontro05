import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pokemonapi/pages/second_page.dart';
import 'package:pokemonapi/widgets/botao_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          BotaoWidget(
            texto: 'ESCOLHER POKEMON ALEATÓRIO',
            funcao: () async {
              Random random = Random();
              int seletor = random.nextInt(200);
              var url = 'https://pokeapi.co/api/v2/pokemon/$seletor';
              var respostaAPI = await http.get(Uri.parse(url));
              final Map<String, dynamic> data = json.decode(respostaAPI.body);
              final String name = data['name'];  
              final List<dynamic> types = data['types'];
              List<String> tipo = types.map((type) => type['type']['name'].toString()).toList();        
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage(
                  apiResponse: 
                  '''
                  Nome do Pokemon: $name
                  Tipo de Pokemon: ${tipo.join(', ')}
                  URL: $url
                  '''
                ),
                ),
              );
            },
          ),
        ]
      ),
    );
  }
}
