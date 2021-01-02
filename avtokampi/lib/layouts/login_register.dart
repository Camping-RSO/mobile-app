import 'package:avtokampi/controllers/api_controller.dart';
import 'package:avtokampi/globals.dart' as globals;
import 'package:avtokampi/layouts/navigation_home_screen.dart';
import 'package:avtokampi/models/Uporabnik.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {

    LoginScreen() {
        apiController = ApiController();
        globals.currentUser = null;
        globals.dataLoaded = false;
    }

    Duration get loginTime => Duration(milliseconds: 2250);
    ApiController apiController;

    Future<String> _onLogin(LoginData data) {
        print('Name: ${data.name}, Password: ${data.password}');
        Uporabnik user = null;
        for (Uporabnik uporabnik in globals.uporabniki) {
            if (uporabnik.email == data.name || uporabnik.ime == data.name) {
                user = uporabnik;
            }
        }
        return Future.delayed(loginTime).then((_) {
            if (user == null) {
                return 'Wrong username or password!';
            }
            globals.currentUser = user;
            return null;
        });
    }

    Future<String> _onRegister(LoginData data) {
        print('Name: ${data.name}, Password: ${data.password}');
        return Future.delayed(loginTime).then((_) {
                return 'Something went wrong!';
        });
    }

    Future<String> _recoverPassword(String name) async {
        print('Name: $name');
        final Email email = Email(
            body: 'Vaše geslo je: lalala',
            subject: 'Pozabljeno geslo',
            recipients: ['$name'],
            isHTML: false,
        );
        await FlutterEmailSender.send(email);
        return Future.delayed(loginTime).then((_) {
            return null;
        });
    }

    @override
    Widget build(BuildContext context) {
        return FlutterLogin(
            title: 'KAMPIRAJ!',
            onLogin: _onLogin,
            onSignup: _onRegister,
            onSubmitAnimationCompleted: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => NavigationHomeScreen(),
                ));
            },
            onRecoverPassword: _recoverPassword,
            messages: LoginMessages(
                usernameHint: 'Uporabniško ime',
                passwordHint: 'Geslo',
                confirmPasswordHint: 'Potrdi geslo',
                loginButton: 'PRIJAVA',
                signupButton: 'REGISTRACIJA',
                forgotPasswordButton: 'Pozabljeno geslo',
                recoverPasswordButton: 'POMOČ',
                goBackButton: 'NAZAJ',
                recoverPasswordDescription: "Vpišite svoje uporabniško ime (email) in poslali vam bomo vaše geslo.",
                recoverPasswordIntro: "Pozabljeno geslo?",
                recoverPasswordSuccess: "Email je bil uspešno poslan!",
                confirmPasswordError: 'Gesli se ne ujemata!'),
        );
    }
}
