import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cotidianis_pdm/Content/my_notes.dart';
import 'package:cotidianis_pdm/Content/my_events.dart';
import 'package:cotidianis_pdm/Content/my_lists.dart';
import 'package:cotidianis_pdm/Theme/buff.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import '../Theme/steel_blue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int tabslenght = 3;
  late TabController _tabController;
  final CollectionReference users = FirebaseFirestore.instance.collection("Users");
  late Animation<double> _animation;
  late AnimationController _animationController;
  //String username = users.doc(username).get();
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );
    final curvedAnimation = CurvedAnimation(
        curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    super.initState();
    _tabController = TabController(length: tabslenght, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    //String userid = FirebaseAuth.instance.currentUser!.uid.toString();
    //users.doc(userid).get({'UserName': });
    //String username = users.doc().get();
    return Scaffold(
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'RobotoSlab',
              color: LightSteelBlue.lSteelBlue[50]),
        ),
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Buff.buff[900],
            unselectedLabelColor: Buff.buff[50],
            labelColor: Buff.buff[200],
            tabs: const [
              Tab(
                text: ("Mi Agenda"),
                icon: Icon(Icons.calendar_month_rounded),
              ),
              Tab(
                text: "Mis Listas",
                icon: Icon(Icons.view_list_rounded),
              ),
              Tab(
                text: "Mis Notas",
                icon: Icon(Icons.library_books_rounded),
              ),
            ]),
        backgroundColor: LightSteelBlue.lSteelBlue[700],
      ),
      drawer: Drawer(
        backgroundColor: LightSteelBlue.lSteelBlue[500],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 10),
            DrawerHeader(
              decoration: BoxDecoration(
                color: LightSteelBlue.lSteelBlue[500],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /*Icon(Icons.confirmation_num_outlined,// TODO: Cambiar por una imagen
                  PRUEBA DE IMAGEN
                  size: 60,),*/
                  CircleAvatar(
                    backgroundColor: Buff.buff[100],
                    radius: 35,
                    child: Text(
                      "MaP", //TODO: vava ser la foto de perfil del usuario
                      style: TextStyle(
                          fontSize: 20,
                          color: Buff.buff[500]),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   " ",
                      //   //users.doc().get({username}).toString(),
                      //   style: TextStyle(
                      //       fontSize: 25,
                      //       color: Buff.buff[100]),
                      // ),
                      Text(
                        user.email!,
                        style: TextStyle(
                            fontSize: 22,
                            color: Buff.buff[100]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Ver Perfil',
                textScaleFactor: 1.5,
                style: TextStyle(color: Buff.buff, fontFamily: 'RobotoSlab'),
              ),
              onTap: () {
                // TODO:Update the state of the app
                Navigator.pop(context);
                Navigator.of(context).pushNamed("/EditProfile");
              },
            ),
            ListTile(
              title: const Text(
                'Equipos de trabajo',
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Buff.buff,
                    fontFamily: 'RobotoSlab'),
              ),
              onTap: () {
                // TODO:Update the state of the app
                //Navigator.push(context, )
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/Teams');
              },
            ),
            ListTile(
              title: const Text(
                'Configuración',
                style: TextStyle(color: Colors.grey, fontFamily: 'RobotoSlab'),
                textScaleFactor: 1.5,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Preferencias',
                style: TextStyle(color: Colors.grey, fontFamily: 'RobotoSlab'),
                textScaleFactor: 1.5,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Text(
                'Cerrar Sesion',
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Buff.buff,
                    fontFamily: 'RobotoSlab'),
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          const MyEvents(),
          MyLists(),
          MyNotes(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionBubble(
        items: <Bubble>[
          Bubble(
            title: "Lista",
            iconColor: Buff.buff.shade800,
            bubbleColor: Buff.buff.shade200,
            icon: Icons.library_books_rounded,
            titleStyle: TextStyle(fontSize: 18, color:  Buff.buff.shade800,),
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Nota",
            iconColor: Buff.buff.shade800,
            bubbleColor: Buff.buff.shade200,
            icon: Icons.note_rounded,
            titleStyle: TextStyle(fontSize: 18, color:  Buff.buff.shade800,),
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            title: "Evento",
            iconColor: Buff.buff.shade800,
            bubbleColor: Buff.buff.shade200,
            icon: Icons.calendar_month_rounded,
            titleStyle: TextStyle(fontSize: 18, color:  Buff.buff.shade800,),
            onPress: () {
              _animationController.reverse();
            },
          ),
        ],
        animation: _animation,
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        iconColor: Colors.white,
        iconData: Icons.add,
        backGroundColor: Buff.buff,
      ),
    );
  }
}
