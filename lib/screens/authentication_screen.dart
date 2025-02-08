import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    bool validateForm(String? value) {
      if (value == null || value.isEmpty) {
        return false;
      }
      RegExp regExp = RegExp(r'^[a-zA-Z]+$');
      return regExp.hasMatch(value);
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.6,
              width: width,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform.translate(
                    offset: Offset(0, height * 0.07),
                    child: Image.asset(
                      "assets/frutas2.png",
                      height: height * 0.5,
                      width: width * 0.4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Image.asset(
                      "assets/sombra.png",
                      height: height * 0.025,
                      width: width * 0.4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(width * 0.0375),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Qual é seu primeiro nome?",
                      style: TextStyle(
                        fontSize: width * 0.025,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          child: TextFormField(
                            controller: controller,
                            validator: (String? value) {
                              if (!validateForm(value)) {
                                return "Insira um nome válido";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width:
                                        2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey,
                                    width:
                                        2),
                              ),
                              hintText: "Nome",
                              fillColor: Colors.grey[200],
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.045,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.push("/home", extra: controller.text);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(width * 0.2, height * 0.065),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Comece a encomendar",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
