import 'package:flutter/material.dart';

class FarmerHome extends StatelessWidget {
  const FarmerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 146, 238, 151),
        title: const Text(
          'FarmSmart',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'assets/image/homefarmer.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100.0), // Adjust as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: buildIconButton(Icons.trending_up, 'Trending Rates'),
                  ),
                  InkWell(
                    onTap: () {},
                    child: buildIconButton(Icons.add, 'Post Item'),
                  ),
                  InkWell(
                    onTap: () {},
                    child: buildIconButton(Icons.list, 'Products List'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 146, 238, 151),
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home, size: 35),
                onPressed: () {},
              ),
              const SizedBox(width: 40), // The dummy child
              IconButton(
                icon: const Icon(Icons.person, size: 35),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 9, 151, 14),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Column buildIconButton(IconData icon, String text) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 146, 238, 151),
          radius: 30,
          child: Icon(
            icon,
            color: Colors.green,
            size: 50,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
