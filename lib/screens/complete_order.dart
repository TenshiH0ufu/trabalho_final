import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompleteOrder extends StatefulWidget {
  final String image;
  final String nome;
  final double valor;

  const CompleteOrder(
      {super.key,
      required this.image,
      required this.nome,
      required this.valor});

  @override
  State<CompleteOrder> createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder> {
  
  int quantidade = 1;

    void aumentar() {
    setState(() {
      quantidade++;
    });
  }

  void diminuir() {
    if (quantidade >= 1) {
      setState(() {
        quantidade--;
        });
    }
    }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    
    return Column(children: [
      Container(
        height: height * 0.375,
        width: width,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.035, left: width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.push("/home");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        Text(
                          "Voltar",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ClipOval(
              child: Image.asset(
                widget.image,
                height: height * 0.25,
                width: width * 0.25,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      Container(
        height: height * 0.625,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(width * 0.0375),
          child: Column(
            children: [
              Text(
                "${widget.nome}",
                style: TextStyle(
                  fontSize: width * 0.04,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: width * 0.01),
                    child: ElevatedButton(
                      onPressed: () {
                        diminuir();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01, right: width * 0.01),
                    child: Text(
                      "$quantidade",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.01, right: width * 0.02),
                    child: ElevatedButton(
                      onPressed: () {
                        aumentar();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.orange[50],
                      ),
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.03, right: width * 0.01),
                    child: Text(
                      "R\$${widget.valor * quantidade}",
                      style: TextStyle(
                        fontSize: width * 0.0275,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.25,
              ),
              ElevatedButton(
                onPressed: () {
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
                    "Adicionar ao carrinho",
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
