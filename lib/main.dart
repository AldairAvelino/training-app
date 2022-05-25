import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white,),
              title: Text('Definições', style: TextStyle(color: Colors.white,),),
            ),
            ListTile(
              leading: Icon(Icons.alarm, color: Colors.white,),
              title: Text('Frase do Dia', style: TextStyle(color: Colors.white,),),
            ),
            ListTile(
              leading: Icon(Icons.update, color: Colors.white,),
              title: Text('Verificar Atualizações', style: TextStyle(color: Colors.white,),),
            ),
            ListTile(
              leading: Icon(Icons.info_outline, color: Colors.white,),
              title: Text('Sobre', style: TextStyle(color: Colors.white,),),
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new, color: Colors.white,),
              title: Text('Sair', style: TextStyle(color: Colors.white,),),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('YEAH SIR!'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            DataTable(
              columns: [
                DataColumn(
                  label: Text('Dia da Semana'),
                ),
                DataColumn(
                  label: Text('Actividade'),
                ),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(
                    Text('Domingo')
                  ),
                  DataCell(
                    Text('Basketball Train'),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Segunda')
                  ),
                  DataCell(
                    Text('Bike Train')
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Terça')
                  ),
                  DataCell(
                    Text('HouseGym Train')
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Quarta')
                  ),
                  DataCell(
                    Text('Basketball no ball')
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Quinta')
                  ),
                  DataCell(
                    Text('Run day')
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Sábado')
                  ),
                  DataCell(
                    Text('Basketball Game')
                  ),
                ])
              ]
            )
          ],
        ),
      ),
    );
  }

}
