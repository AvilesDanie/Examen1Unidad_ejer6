import 'package:flutter/material.dart';
import '../controlador/calculo.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final CalculoController controller = CalculoController();

  String result = '';

  void buscarRango() {
    setState(() {
      int? num1 = int.tryParse(num1Controller.text);
      int? num2 = int.tryParse(num2Controller.text);

      if (num1 == null || num2 == null) {
        result = 'Por favor, introduce números válidos.';
      }
      else {
        result = controller.rango(num1, num2);
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cálculo de Intervalos',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade300, Colors.teal.shade900],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Introduce el primer número',
                  labelStyle: TextStyle(
                      color: Colors.orange
                  ),

                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.orange
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.orange
                    ),
                  ),
                ),
                style: TextStyle(
                    color: Colors.white
                ),
              ),



              SizedBox(height: 16),





              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Introduce el segundo número',
                  labelStyle: TextStyle(
                      color: Colors.orange
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.orange
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.orange
                    ),
                  ),
                ),
                style: TextStyle(
                    color: Colors.white
                ),
              ),



              SizedBox(height: 24),




              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: buscarRango,
                child: Text(
                  'Mostrar rango',
                  style: TextStyle(fontSize: 18),
                ),
              ),



              SizedBox(height: 24),



              Text(
                result,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 2.0,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
