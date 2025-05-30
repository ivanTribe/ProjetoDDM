import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> usuarioKey = new GlobalKey();
  TextEditingController emailController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: usuarioKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Digite seu email',
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.email)
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira um email';
                  } else {
                    //validar email que nao termina com @
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: senhaController,
                decoration: InputDecoration(labelText: 'Digite sua senha'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Insira uma senha';
                  } else {
                    //adicionar qualquer outra coisa
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (usuarioKey.currentState!.validate()) {
                    String email = emailController.text;
                    int senha = int.parse(senhaController.text);
                    print(email + '' + senha.toString());

                    showDialog(
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: Text('Alerta'),
                            content: Text(email + "" + senha.toString()),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Ok'),
                              ),
                            ],
                          ),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
