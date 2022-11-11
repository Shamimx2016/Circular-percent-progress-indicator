import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Post",
    "Activity",
    "Setting",
    "Profile",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.add_box_outlined)),
      ),
      body: Container(
        margin: const EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((ctx, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: 80,
                      height: 45,
                      decoration: BoxDecoration(color: Colors.grey.shade300),
                      child: Center(
                        child: Text(
                          items[index],
                          style: GoogleFonts.laila(),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
