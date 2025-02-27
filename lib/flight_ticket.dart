import 'package:flutter/material.dart';
import 'app_styles.dart';

class FlightTicket extends StatelessWidget {
  const FlightTicket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue.shade900,
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NYC", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white70)),
                ],
              ),
              const Icon(Icons.flight_takeoff, color: Colors.white),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("LDN", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("London", style: Styles.headLineStyle4.copyWith(color: Colors.white70)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text("8H 30M", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const SizedBox(height: 10),
          Divider(color: Colors.white),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white70)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white70)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                  Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white70)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
