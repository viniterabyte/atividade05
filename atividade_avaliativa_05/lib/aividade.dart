import 'package:flutter/material.dart';

class Colaboradores extends StatefulWidget {
  @override
  _ColaboradoresState createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  final ListaColaboradores = [
     {'nome': 'Juliana Alburquerque' , 'funcao': 'Coordenadora de apoio' , 'numero' : '(81)99731-8333' , 'email': 'julianaalbuquerque@gmail.com' , 'imagen': 'Ela.png'},
     {'nome': 'Angela Taís' , 'funcao': 'Chefe de obras' , 'numero' : '(81)99762-9832' , 'email': 'angelatais@gmail.com' , 'imagen': 'Ela.png'},
     {'nome': 'Carlos Alexandre' , 'funcao': 'Suporte' , 'numero' : '(81)99631-2343' , 'email': 'carlosalexandre@gmail.com' , 'imagen': 'Ele.png'},
     {'nome': 'Ana Beatriz' , 'funcao': 'Atendente' , 'numero' : '(81)99746-2398' , 'email': 'anabeatriz@gmail.com' , 'imagen': 'Ela.png'},
  
  ];
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment .spaceBetween,
            children: [
              Text(
                "Colaboradores",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 4, 95, 170)),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: ListaColaboradores.length,
      itemBuilder: (context, i){
        var dados = ListaColaboradores[i];
        return Column(
          children: [
            Row(
              children: [
                
                Image.asset("assets/"+dados['imagen'].toString(), width: 100, ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dados['nome'].toString(),
                    style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.bold,
                      ),
                      ),
                    Text(dados['funcao'].toString(),
                    style: TextStyle(fontSize: 18),
                    ),
                    Text(dados['numero'].toString(),
                    style: TextStyle(fontSize: 18),
                    ),
                    Text(dados['email'].toString(),
                    style: TextStyle(fontSize: 18),
                    ),  
                  ],
                ),
              ],
            ),
            Divider(color: Color.fromARGB(255, 127, 127, 127))
          ],
        );
      },
      
                ),
              ),
            ])),
        );
    }
}