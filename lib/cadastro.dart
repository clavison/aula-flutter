// ignore_for_file: avoid_print

import 'package:aula_flutter/components/myButton.dart';
import 'package:aula_flutter/components/myTextInput.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();

  validateName(String value) {
    if (value.isEmpty) {
      return 'Por favor, insira seu nome';
    }
  }

  validadeEmail(String value) {
    if (!value.contains('@')) {
      return 'E-mail inválido';
    }
  }

  saveButton() {
    if (_formKey.currentState!.validate()) {
      print('Nome: ${txtName.text}');
      print('E-mail: ${txtEmail.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextInput(labelText: 'Nome', validator:(value)=>validateName(value!), txtController: txtName),
              const SizedBox(height: 10),
              MyTextInput(labelText: 'Email', validator: (value) => validadeEmail(value!), txtController: txtEmail),
              const SizedBox(height: 10),
              MyButton(labelText: 'Enviar', pressed: saveButton)
            ],
          ),
        ),
      ),
    );
  }
}
