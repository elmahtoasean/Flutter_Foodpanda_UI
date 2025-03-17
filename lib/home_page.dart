import 'package:flutter/material.dart';
// import 'package:flutter_ui_design/main.dart'

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 230, 233),
      appBar: AppBar(
        title: Text("Food Panda",style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                Image.asset("assets/foodpanda.png", height: 80),
                SizedBox(height: 10),
                Text(
                  "Are you hungry? Order Now...",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                SizedBox(height: 20),
                Text(
                  "SET MENU",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                MenuItemCard(icon: Icons.local_pizza, title: "Pizza"),
                MenuItemCard(icon: Icons.fastfood, title: "Burger"),
                MenuItemCard(icon: Icons.local_drink, title: "Juice"),
                MenuItemCard(icon: Icons.rice_bowl, title: "Fried Rice"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItemCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuItemCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
