import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'app_styles.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  _TicketsPageState createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        title: Text("Tickets", style: Styles.headLineStyle2),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          tabs: const [
            Tab(text: "Upcoming"),
            Tab(text: "Previous"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTicketCard(),
          Center(child: Text("No previous tickets", style: Styles.headLineStyle3)),
        ],
      ),
    );
  }

  Widget _buildTicketCard() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("NYC", style: Styles.headLineStyle2),
                    Text("New-York", style: Styles.textStyle),
                  ],
                ),
                const Icon(FluentSystemIcons.ic_fluent_airplane_filled),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("LDN", style: Styles.headLineStyle2),
                    Text("London", style: Styles.textStyle),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(color: Colors.grey.shade300),
            const SizedBox(height: 10),
            _buildTicketInfo("Date", "1 MAY"),
            _buildTicketInfo("Departure time", "08:00 AM"),
            _buildTicketInfo("Number", "23"),
            const SizedBox(height: 10),
            Divider(color: Colors.grey.shade300),
            const SizedBox(height: 10),
            _buildTicketInfo("Passenger", "Tawsif"),
            _buildTicketInfo("Passport", "5221 364869"),
            const SizedBox(height: 10),
            Divider(color: Colors.grey.shade300),
            const SizedBox(height: 10),
            _buildTicketInfo("Number of E-ticket", "364738 28274478"),
            _buildTicketInfo("Booking code", "B2SG28"),
            const SizedBox(height: 10),
            Divider(color: Colors.grey.shade300),
            const SizedBox(height: 10),
            _buildTicketInfo("Payment method", "VISA *** 2462"),
            _buildTicketInfo("Price", "\$249.99"),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketInfo(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styles.textStyle.copyWith(color: Colors.grey)),
          Text(value, style: Styles.headLineStyle3),
        ],
      ),
    );
  }
}
