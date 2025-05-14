
import 'package:flutter/material.dart';
import 'livestock.dart';
import 'records.dart';
import 'reports.dart';
import 'settings.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FarmWise Dashboard')),
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/logo.png', height: 100),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              children: [
                _DashboardTile(title: 'Livestock', icon: Icons.pets, screen: LivestockScreen()),
                _DashboardTile(title: 'Records', icon: Icons.book, screen: RecordsScreen()),
                _DashboardTile(title: 'Reports', icon: Icons.bar_chart, screen: ReportsScreen()),
                _DashboardTile(title: 'Settings', icon: Icons.settings, screen: SettingsScreen()),
              ],
            ),
          ),
        ],
      ),

        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: [
          _DashboardTile(title: 'Livestock', icon: Icons.pets, screen: LivestockScreen()),
          _DashboardTile(title: 'Records', icon: Icons.book, screen: RecordsScreen()),
          _DashboardTile(title: 'Reports', icon: Icons.bar_chart, screen: ReportsScreen()),
          _DashboardTile(title: 'Settings', icon: Icons.settings, screen: SettingsScreen()),
        ],
      ),
    );
  }
}

class _DashboardTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget screen;

  const _DashboardTile({required this.title, required this.icon, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: Colors.green),
              SizedBox(height: 8),
              Text(title, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
