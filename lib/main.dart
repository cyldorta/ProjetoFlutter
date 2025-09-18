import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CadastroPage(),
    );
  }
}

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool _obscureSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3F7),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Column(
                children: [
                  SizedBox(height: 32),
                  Text(
                    'Criar conta',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 24),
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.add, size: 40, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Foto de Perfil',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[700],
                    ),
                  ),
                  SizedBox(height: 32),
                  _buildTextField(Icons.person, 'Nome completo'),
                  SizedBox(height: 16),
                  _buildTextField(Icons.email, 'Email'),
                  SizedBox(height: 16),
                  TextField(
                    obscureText: _obscureSenha,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.yellow[700]),
                      labelText: 'Senha',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureSenha ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey[600],
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureSenha = !_obscureSenha;
                          });
                        },
                      ),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16),
                  _buildTextField(Icons.calendar_today, 'Data de nascimento'),
                  SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // ação criar conta
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text('Criar conta', style: TextStyle(fontSize: 20)),
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

  Widget _buildTextField(IconData icon, String label) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.yellow[700]),
        border: UnderlineInputBorder(),
      ),
    );
  }
}
