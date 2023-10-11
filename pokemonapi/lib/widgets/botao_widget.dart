import 'package:flutter/material.dart';

class BotaoWidget extends StatelessWidget {
  final String texto;
  final Function() funcao;
  const BotaoWidget({super.key, required this.texto, required this.funcao});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: funcao,
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ), 
      child: Text(
        texto, 
        style: const TextStyle(color: Colors.white),
      )
      );
  }
}