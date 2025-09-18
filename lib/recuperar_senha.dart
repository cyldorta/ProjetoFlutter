import 'package:flutter/material.dart';

class RecuperarSenhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 380, // máxima largura do bloco branco
              ),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.directions_bus, size: 38),
                      SizedBox(width: 8),
                      Text(
                        'Mobi School',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22),
                  Container(
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(21),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Esqueceu a senha',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Digite o código de recuperação no campo abaixo e que lhe enviamos no e-mail',
                          style: TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 18),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Código de verificação',
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Nova senha',
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Confirme nova senha',
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 22),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // ação recuperar
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow[700],
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Recuperar',
                              style: TextStyle(fontSize: 20, fontFamily: 'Montserrat'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
