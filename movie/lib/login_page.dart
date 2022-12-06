import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/criar_conta_page.dart';
import 'package:movie/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _senha = '';

  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff28282c),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(color: Color(0xffFFFFFF)),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Email',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (txt) {
                      _email = txt;
                      print(_email);
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                      hintText: 'Digite seu email',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Senha',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (txt) {
                      _senha = txt;
                      print(_senha);
                    },
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Digite sua senha',
                      hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Esqueceu a senha ?'),
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.grey),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 48,
                child: ElevatedButton(
                  child: Text(
                    'Continuar',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff64C661),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    if (_email == 'costavitor.8@hotmail.com' &&
                        _senha == 'senha') {
                      print('Acesso permitido');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width * 0.64,
                child: Row(
                  children: [
                    Text(
                      'Não tem uma conta ?',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Registre-se',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          color: Color(0xff925FF0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      onPressed: () {
                        if (!currentFocus.hasPrimaryFocus) {
                          currentFocus.unfocus();
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => CriarConta())));
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
