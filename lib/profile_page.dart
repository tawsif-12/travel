import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Book Tickets", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        actions: [
          TextButton(onPressed: () {}, child: const Text("Edit", style: TextStyle(color: Colors.blue)))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/travello_logo2.png")),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("New-York", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text("Premium status", style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Row(
                children: [
                  Icon(FluentSystemIcons.ic_fluent_trophy_filled, color: Colors.blue),
                  SizedBox(width: 10),
                  Expanded(child: Text("You've got a new award\nYou have 95 flights in a year")),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text("Accumulated miles", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("192802", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Miles accrued - 11 June 2022", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildMileEntry("23 042", "Miles", "Dhaka co", "Received from"),
                  _buildMileEntry("24", "Miles", "aust", "Received from"),
                  _buildMileEntry("52 340", "Miles", "du", "Received from"),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text("How to get more miles", style: TextStyle(color: Colors.blue)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMileEntry(String miles, String unit, String source, String receivedFrom) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(miles, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(unit, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(source, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(receivedFrom, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
