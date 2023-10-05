// Importa el paquete Flutter necesario
import 'package:flutter/material.dart';

// Define una clase 'Counter' que extiende StatefulWidget
class Counter extends StatefulWidget {
  // Override del método 'createState' para crear una instancia de '_CounterState'
  @override
  State<Counter> createState() => _CounterState();
}

// Define la clase '_CounterState' que extiende State<Counter>
class _CounterState extends State<Counter> {
  // Declara una variable 'counter' para rastrear el valor del contador
  int counter = 0;

  // Define una función 'incrementCounter' para incrementar el contador
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  // Define una función 'decrementCounter' para decrementar el contador
  void decrementCounter() {
    setState(() {
      counter--;
    });
  }

  // Override del método 'build' para construir la interfaz de usuario
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'), // Título de la barra de la aplicación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $counter', // Muestra el valor del contador
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: incrementCounter, // Acción al presionar el botón de incremento
                  tooltip: 'Increment', // Texto emergente al mantener el puntero sobre el botón
                  child: Icon(Icons.add), // Icono del botón de incremento
                ),
                SizedBox(width: 10), // Espacio entre botones
                FloatingActionButton(
                  onPressed: decrementCounter, // Acción al presionar el botón de decremento
                  tooltip: 'Decrement', // Texto emergente al mantener el puntero sobre el botón
                  child: Icon(Icons.remove), // Icono del botón de decremento
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Función principal donde se ejecuta la aplicación
void main() {
  runApp(MaterialApp(
    home: Counter(), // Inicializa la aplicación con el widget 'Counter'
  ));
}
