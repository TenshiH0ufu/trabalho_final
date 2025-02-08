import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trabalho_final/components/salada.dart';

class HomeScreen extends StatefulWidget {
  final String nome;
  const HomeScreen({super.key, required this.nome});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Container(
      height: height,
      color: Colors.grey[100],
      child: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Icon(size: height * 0.045, Icons.list),
              ),
              Padding(
                padding: EdgeInsets.only(right: width * 0.05),
                child: ElevatedButton(
                  onPressed: (){
                    context.push("/order");
                  },
                  child: Column(
                    children: [
                      Icon(
                        size: height * 0.045,
                        Icons.shopping_basket,
                        color: Colors.orange,
                      ),
                      Text(
                        "Minha cesta",
                        style: TextStyle(
                          fontSize: width * 0.025,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.6,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Olá ${widget.nome}, que combinação de salada de frutas você quer hoje?",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Form(
            key: formKey,
            child: Material(
              child: SizedBox(
                width: width * 0.85,
                child: TextFormField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Pesquisar por combinações",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width:
                                2), // Cor e espessura da borda quando o campo está habilitado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width:
                                2), // Cor e espessura da borda quando o campo está em foco
                      ),
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Text(
                  "Combos recomendados",
                  style: TextStyle(
                    fontSize: width * 0.055,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Salada(
                height: height,
                width: width,
                valor: 2000,
                image: "assets/comb1.png",
                nome: "Mel e limão",
                cor: Colors.white,
              ),
              Salada(
                height: height,
                width: width,
                valor: 8000,
                image: "assets/comb2.png",
                nome: "Manga e frutas vermelhas",
                cor: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Text(
                  "Quente",
                  style: TextStyle(
                    fontSize: width * 0.055,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Text(
                  "Combo",
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Text(
                  "Top",
                  style: TextStyle(
                    fontSize: width * 0.035,
                    color: Colors.grey,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: height * 0.225, 
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.025),
                      child: Salada(
                        height: height,
                        width: width,
                        valor: 10000,
                        image: "assets/quente1.png",
                        nome: "Salada de quinoa",
                        cor: const Color.fromARGB(53, 255, 235, 59) ,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.025, right: width * 0.025),
                      child: Salada(
                        height: height,
                        width: width,
                        valor: 10000,
                        image: "assets/quente2.png",
                        nome: "Salada tropical",
                        cor: const Color.fromARGB(53, 233, 30, 98),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.025, right: width * 0.05),
                      child: Salada(
                        height: height,
                        width: width,
                        valor: 10000,
                        image: "assets/quente3.png",
                        nome: "Salada de beterraba",
                        cor: const Color.fromARGB(53, 155, 39, 176),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
