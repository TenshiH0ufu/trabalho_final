import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Salada extends StatefulWidget {
  final double height;
  final double width;
  final double valor;
  final String image;
  final String nome;
  final Color cor;

  const Salada(
      {super.key,
      required this.height,
      required this.width,
      required this.valor,
      required this.image,
      required this.nome,
      required this.cor});

  @override
  State<Salada> createState() => _SaladaState();
}

class _SaladaState extends State<Salada> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.cor,
        borderRadius: BorderRadius.circular(15),
      ),
      height: widget.height * 0.225,
      width: widget.width * 0.375,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: widget.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.heart_broken,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          ClipOval(
            child: Image.asset(
              widget.image,
              height: widget.height * 0.1,
              width: widget.height * 0.1,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: widget.height * 0.01,
          ),
          Text(
            widget.nome,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.width * 0.02,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: widget.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "R\$${widget.valor}",
                style: TextStyle(
                  fontSize: widget.width * 0.03,
                  color: Colors.orange,
                  decoration: TextDecoration.none,
                ),
              ),
              Container(
                height: widget.height * 0.03,
                width: widget.width * 0.055,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange[50],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    context.push("/complete", extra: {
                      'image': widget.image,
                      'nome': widget.nome,
                      'valor': widget.valor
                    });
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
            ],
          ),
        ],
      ),
    );
  }
}
