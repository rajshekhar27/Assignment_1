import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final VoidCallback onClose;

  CustomDrawer({required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.close, color: Colors.white),
              onPressed: onClose,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: EdgeInsets.all(16),
              children: [
                _buildDrawerItem(Icons.support, 'Emergency\nSupport'),
                _buildDrawerItem(Icons.report_problem, 'Complaint'),
                _buildDrawerItem(Icons.calendar_today, 'Leave'),
                _buildDrawerItem(Icons.restaurant, 'Mess\nManagement'),
                _buildDrawerItem(Icons.nightlife, 'Day / Night Out'),
                _buildDrawerItem(Icons.timer, 'Late Entry'),
                _buildDrawerItem(Icons.payment, 'My Payments'),
                _buildDrawerItem(Icons.local_shipping, 'Parcel'),
                _buildDrawerItem(Icons.how_to_vote, 'Polling'),
                _buildDrawerItem(Icons.pool, 'Amenities\nBooking'),
                _buildDrawerItem(Icons.ev_station, 'EV Slot\nBooking'),
                _buildDrawerItem(Icons.directions_bike, 'Vehicle Pass'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Icon(icon, size: 30, color: Colors.deepPurple),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
