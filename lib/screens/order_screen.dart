import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  double total = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: height * 0.2,
          width: width,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.08, left: width * 0.07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.push("/home");
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back, color: Colors.black),
                          Text(
                            "Voltar",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                          "Minha cesta",
                          style: TextStyle(
                            fontSize: width * 0.06,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: height * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(width * 0.0375),
            child: Column(
              children: [
                SizedBox(height: height * 0.65),
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: width * 0.01, right: width * 0.01),
                      child: Text(
                        "R\$ ${total.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(width * 0.3, height * 0.065),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                        child: Text(
                          "Adicionar ao carrinho",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
