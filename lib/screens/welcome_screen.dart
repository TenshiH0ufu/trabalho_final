import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Column(children: [
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
                "assets/frutas.png",
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
            children: [
              Text(
                "Obtenha a combinação de salada de frutas mais fresca",
                style: TextStyle(
                  fontSize: width * 0.025,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                "Entregamos a melhor e mais fresca salada de frutas da cidade. Peça um combo hoje!!!",
                style: TextStyle(
                  fontSize: width * 0.02,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: height * 0.045,
              ),
              ElevatedButton(
                onPressed: () => context.push("/authentication"),
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
                    "Vamos continuar",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
