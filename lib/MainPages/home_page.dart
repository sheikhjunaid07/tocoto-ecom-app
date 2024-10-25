import 'package:e_com_app/Components/option_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //surprise and cashback container
            Container(
                width: 300,
                height: 105,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 34, 46, 112),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("A Summer Surprise",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                          Text("Cashback 20%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold))
                        ]))),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OptionContainer(
                    onPressed: () {},
                    icon: Icon(Icons.electric_bolt_sharp),
                    text: "Flash Sale"),
                OptionContainer(
                    onPressed: () {},
                    icon: Icon(Icons.article_outlined),
                    text: "Bill"),
                OptionContainer(
                    onPressed: () {},
                    icon: Icon(Icons.videogame_asset),
                    text: "Game"),
                OptionContainer(
                    onPressed: () {},
                    icon: Icon(Icons.wallet_giftcard_outlined),
                    text: "Daily Gift"),
                OptionContainer(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz_outlined),
                    text: "More"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
