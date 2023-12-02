import 'package:flutter/material.dart';
import 'models/Organ.dart';
import 'OrganDetailPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biologia in Realitatea Augmentata',
      home: OrganListPage(),
    );
  }
}

class OrganListPage extends StatelessWidget {
  final List<Organ> organs = [
  Organ(
    name: 'Inima',
    imageAsset: 'assets/inima.png',
    model3DPath: 'assets/inima.glb',
    details: '  Inima este un organ vital situat în cavitatea toracică, în partea stângă a pieptului. Este un organ muscular cu rol central în sistemul circulator al corpului uman și are multiple funcții esențiale pentru menținerea vieții. Iată câteva detalii despre inimă:\n\n'
        'Structură: Inima este un organ de mărimea unui pumn și are aproximativ forma unei pere cu vârful îndreptat în jos și spre stânga. Ea este alcătuită din patru camere principale: două atrii (atriul drept și atrul stâng) și două ventricule (ventriculul drept și ventriculul stâng).\n'
        'Funcție principală: Inima servește ca o pompă pentru a asigura circulația sângelui în întregul corp. Ea pompează sângele oxigenat în artere și apoi printr-un sistem de vase sanguine către toate țesuturile și organele corpului pentru a le furniza oxigen și substanțe nutritive esențiale.\n'
        'Aprovizionare cu sânge: Inima însăși trebuie să fie aprovizionată cu sânge și oxigen pentru a funcționa corespunzător. Aceasta este furnizată de două artere coronariene principale - artera coronariană dreaptă și artera coronariană stângă.\n'
        'Este important să aveți grijă de sănătatea inimii dvs. prin adoptarea unui stil de viață sănătos, inclusiv alimentație echilibrată, exerciții fizice regulate și evitarea factorilor de risc cunoscuți pentru bolile de inimă. Dacă aveți preocupări cu privire la sănătatea inimii, consultați întotdeauna un medic sau un cardiolog pentru evaluare și sfaturi.',
  ),
  Organ(
    name: 'Plamanii',
    imageAsset: 'assets/plaman.png',
    model3DPath: 'assets/plaman.glb',
    details: '   Plămânii sunt organe esențiale în sistemul respirator și au rolul de a furniza oxigenul necesar organismului.\n\n'
        'Detalii despre plamanii se gasesc in locurile in care te astepti mai putin\n\n',
  ),
  Organ(
    name: 'Ficat',
    imageAsset: 'assets/ficat.png',
    model3DPath: 'assets/ficat.glb',
    details: '   Ficatul este un organ vital cu multiple funcții, inclusiv detoxifierea organismului și producerea bilei.\n\n'
        'Ficatul este pentru cei care-l merita.\n\n'
        'Nu toti au ficat bun, iti garantez eu.\n\n',
  ),
  Organ(
    name: 'Rinichi',
    imageAsset: 'assets/rinichi.png',
    model3DPath: 'assets/rinichi.glb',
    details:  '   Rinichii au un rol important în filtrarea sângelui și menținerea echilibrului chimic al corpului.\n\n'
        'Rinichi sunt organele alea de care nu am idee biologica, dar cam stiu la ce pret pot sa le gasesc.\n\n'
        'Btw, daca ai nevoie ... stiu eu un baiat care te aranjaza. Tu doar sa ii zici ce marime porti.\n\n',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organele vitale', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: organs.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrganDetailPage(organ: organs[index]),
                ),
              );
            },
            child: Card(
              elevation: 5,
              margin: EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 150,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Image.asset(
                          organs[index].imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              organs[index].name,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 16),
                            Text(
                              organs[index].details,
                              style: TextStyle(fontSize: 16),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
