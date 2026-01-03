import 'package:flutter/material.dart';

void main() {
  runApp(
    PageView(
      children: [
        // ---------- 1. SPLASH ----------
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF0B5394), Color(0xFF3A7BD5)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.flight_takeoff, color: Colors.white, size: 40),
                ),
                SizedBox(height: 20),
                Text("Travel",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Find Your Dream\nDestination With Us",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 16)),
              ],
            ),
          ),
        ),

        // ---------- 2. HOME ----------
        Container(
          padding: EdgeInsets.all(16),
          color: Color(0xFFEAF0FA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text("Hi, David 👋",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Explore the world", style: TextStyle(color: Colors.grey)),
                  ]),
                  CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      child: Icon(Icons.person, color: Colors.white)),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(12)),
                child: Row(children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Expanded(
                      child: Text("Search places",
                          style: TextStyle(color: Colors.grey))),
                  Icon(Icons.tune, color: Colors.grey),
                ]),
              ),
              SizedBox(height: 20),
              Text("Popular places",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    placeCard("Mount Fuji, Tokyo", "4.8",
                        "https://images.unsplash.com/photo-1501785888041-af3ef285b470?q=80&w=800"),
                    placeCard("Andes, South America", "4.5",
                        "https://images.unsplash.com/photo-1526778548025-fa2f459cd5c6?q=80&w=800"),
                  ],
                ),
              ),
            ],
          ),
        ),

        // ---------- 3. DETAIL ----------
        SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Image.network(
                  "https://images.unsplash.com/photo-1501785888041-af3ef285b470?q=80&w=1200",
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 20,
                  bottom: 20,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Andes Mountain",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text("South America  •  \$230",
                              style: TextStyle(color: Colors.white70)),
                        ]),
                  ),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Overview",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text("⏱ 8 hours    🌡 16°C    ⭐ 4.5",
                    style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10),
                Text(
                  "The Andes mountain range is known for its stunning beauty and diverse climate across its vast regions.",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  alignment: Alignment.center,
                  child: Text("Book Now", style: TextStyle(color: Colors.white)),
                ),
              ]),
            )
          ]),
        ),
      ],
    ),
  );
}

Widget placeCard(String name, String rate, String img) {
  return Container(
    width: 160,
    margin: EdgeInsets.only(right: 12),
    child: Column(children: [
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(fit: StackFit.expand, children: [
            Image.network(img, fit: BoxFit.cover),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Text(name,
                            style: TextStyle(color: Colors.white, fontSize: 11),
                            overflow: TextOverflow.ellipsis)),
                    Icon(Icons.star, color: Colors.amber, size: 12),
                    Text(rate,
                        style: TextStyle(color: Colors.white, fontSize: 11)),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    ]),
  );
}
