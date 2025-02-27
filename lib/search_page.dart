import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'app_styles.dart';

class SearchPage extends StatefulWidget {
  final bool showHotelsFirst;

  const SearchPage({Key? key, this.showHotelsFirst = false}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late bool isAirlineSelected;

  final List<Map<String, dynamic>> hotelList = [
    {"name": "Hotel Sunshine", "imagePath": "assets/hotel_room_view_1.png", "rating": 4.5},
    {"name": "Grand Palace", "imagePath": "assets/hotel_room_view_2.png", "rating": 4.0},
    {"name": "Luxury Stay", "imagePath": "assets/hotel_room_view_3.png", "rating": 5.0},
    {"name": "Ocean View", "imagePath": "assets/pool_view_1.png", "rating": 4.8},
  ];

  @override
  void initState() {
    super.initState();
    isAirlineSelected = !widget.showHotelsFirst;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 40),

          Text("What are you looking for?", style: Styles.headLineStyle1),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildToggleButton("Airline Tickets", isAirlineSelected, () {
                setState(() {
                  isAirlineSelected = true;
                });
              }),
              _buildToggleButton("Hotels", !isAirlineSelected, () {
                setState(() {
                  isAirlineSelected = false;
                });
              }),
            ],
          ),

          const SizedBox(height: 20),

          if (isAirlineSelected) _buildAirlineSearchSection() else _buildHotelSection(),
        ],
      ),
    );
  }

  Widget _buildToggleButton(String text, bool isSelected, VoidCallback onPressed) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected ? Colors.white : Colors.grey.shade300,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAirlineSearchSection() {
    return Column(
      children: [
        _buildSearchField("Departure", FluentSystemIcons.ic_fluent_airplane_regular),
        const SizedBox(height: 10),
        _buildSearchField("Arrival", FluentSystemIcons.ic_fluent_airplane_regular),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text("Find Tickets", style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ),
        ),
        const SizedBox(height: 30),
        _buildSectionHeader("Upcoming Flights"),
        const SizedBox(height: 15),
        _buildHorizontalScroll(
          children: [
            _buildFlightCard("20% discount on early booking. Don't miss."),
            _buildOfferCard("Discount for survey", "Take a survey about our services and get a discount", Colors.teal),
            _buildOfferCard("Take love", "😍🥰😘", Colors.redAccent),
          ],
        ),
      ],
    );
  }

  Widget _buildHotelSection() {
    return Column(
      children: [
        _buildSectionHeader("Hotels"),
        const SizedBox(height: 15),
        _buildHotelGrid(),
      ],
    );
  }

  Widget _buildSearchField(String hint, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey),
          const SizedBox(width: 10),
          Text(hint, style: Styles.headLineStyle4),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.headLineStyle2),
        Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
      ],
    );
  }

  Widget _buildHorizontalScroll({required List<Widget> children}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: children.map((widget) => Padding(padding: const EdgeInsets.only(right: 10), child: widget)).toList(),
      ),
    );
  }

  Widget _buildFlightCard(String text) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/plane_sit.jpg", height: 120, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(text, style: Styles.headLineStyle3),
        ],
      ),
    );
  }

  Widget _buildOfferCard(String title, String description, Color color) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const SizedBox(height: 5),
          Text(description, style: Styles.headLineStyle4.copyWith(color: Colors.white70)),
        ],
      ),
    );
  }

  Widget _buildHotelGrid() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemCount: hotelList.length,
      itemBuilder: (context, index) {
        return _buildHotelCard(
          hotelList[index]["name"],
          hotelList[index]["imagePath"],
          hotelList[index]["rating"],
        );
      },
    );
  }

  Widget _buildHotelCard(String name, String imagePath, double rating) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, height: 100, fit: BoxFit.cover),
          const SizedBox(height: 10),
          Text(name, style: Styles.headLineStyle3),
          const SizedBox(height: 5),
          Row(
            children: List.generate(rating.toInt(), (index) => const Icon(Icons.star, color: Colors.yellow, size: 16)) +
                List.generate(5 - rating.toInt(), (index) => const Icon(Icons.star_border, color: Colors.yellow, size: 16)),
          ),
        ],
      ),
    );
  }
}
