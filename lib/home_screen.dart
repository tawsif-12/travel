import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'app_styles.dart';
import 'flight_ticket.dart';
import 'hotel_card.dart';
import 'search_page.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 40),

          _buildHeader(),

          const SizedBox(height: 25),

          _buildSearchBar(),

          const SizedBox(height: 25),

          _buildSectionHeader(context, "Upcoming Flights", false),

          const SizedBox(height: 15),

          _buildHorizontalScroll(
            children: List.generate(2, (_) => const FlightTicket()),
          ),

          const SizedBox(height: 25),

          _buildSectionHeader(context, "Hotels", true),

          const SizedBox(height: 15),

          _buildHorizontalScroll(
            children: [
              HotelCard(image: "assets/hotel_room.png", title: "Open Space"),
              HotelCard(image: "assets/hotel_room_1.png", title: "Global Wild"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good morning", style: Styles.headLineStyle3),
            const SizedBox(height: 5),
            Text("Traveller", style: Styles.headLineStyle1),
          ],
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/travello_logo2.png"),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
          const SizedBox(width: 10),
          Text("Search", style: Styles.headLineStyle4),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title, bool isHotelSection) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Styles.headLineStyle2),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchPage(showHotelsFirst: isHotelSection),
              ),
            );
          },
          child: Text(
            "View all",
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }

  Widget _buildHorizontalScroll({required List<Widget> children}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: children.map((widget) => Padding(padding: const EdgeInsets.only(right: 10), child: widget)).toList()),
    );
  }
}
