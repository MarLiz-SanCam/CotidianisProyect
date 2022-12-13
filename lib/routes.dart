//Archivo de rutas
import 'package:cotidianis_pdm/Pages/edit_profile.dart';
import 'package:cotidianis_pdm/Pages/first_screen.dart';
import 'package:cotidianis_pdm/Pages/home_screen.dart';
import 'package:cotidianis_pdm/Pages/login_screen.dart';
import 'package:cotidianis_pdm/Pages/recover_pass.dart';
import 'package:cotidianis_pdm/Pages/register_screen.dart';
import 'package:cotidianis_pdm/Pages/teams.dart';
import 'package:flutter/cupertino.dart';

import 'Content/add_Team_Form.dart';

Map<String, WidgetBuilder> buildAppRoutes(){
  return{
    '/FirstScreen': (BuildContext context) => const FirstScreen(),
    '/RegisterScrn': (BuildContext context) => const RegisterScrn(),
    '/LogInScrn': (BuildContext context) => const LogInScrn(),
    '/HomeScrn': (BuildContext context) => const HomeScreen(),
    '/PasswordRecovery': (BuildContext context) => const PassRecover(),
    '/EditProfile': (BuildContext context) => const EditProfile(),
    '/Teams': (BuildContext context) => const Teams(),
    '/AddTeam': (BuildContext context) => const AddTeam(),
  };
}