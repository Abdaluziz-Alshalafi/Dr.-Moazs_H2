// import 'package:abdaluziz_hw_1/Views/CustomAppBar.dart';
import 'package:abdaluziz_hw_1/theme/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abdaluziz_hw_1/models/login_models.dart';
import 'package:abdaluziz_hw_1/theme/color.dart';
import 'package:abdaluziz_hw_1/views/Home_page.dart';
import 'package:abdaluziz_hw_1/widgets/Abdaluziz_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar.
      UserModel user = UserModel(
        id: '1',
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      );

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    const moonIcon = CupertinoIcons.moon_stars;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          const SizedBox(width: 20),
          IconButton(
            icon: const Icon(
              moonIcon,
              color: Colors.grey,
            ),
            onPressed: () {
              Themestyles().changeTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
                obscureText: false,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'name'),
                obscureText: false,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(labelText: 'password'),
                obscureText: true,
              ),
              SizedBox(
                height: 16,
              ),
              AbdaluzizButton(
                  voidCallback: () {},
                  name: "project",
                  shadowColor: AppColor.secandryColor),
            ],
          ),
        ),
      ),
    );
  }
}
