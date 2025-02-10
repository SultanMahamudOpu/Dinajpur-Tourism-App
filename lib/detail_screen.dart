import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'place_model.dart';
import 'app_styles.dart';

class DetailScreen extends StatelessWidget {
  final Place place;

  const DetailScreen({required this.place});

  Future<void> _openMap() async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=${place.lat},${place.lng}';

    // Ensure we can launch the URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Show error if URL can't be launched
      throw 'Could not open the map.';
    }
  }


  Future<void> _callNumber(String number) async {
    final url = 'tel:$number';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Standard AppBar with back button and title.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 4,
        title: Text(
          'Place Details',
          style: AppStyles.appBarTitleStyle,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppStyles.primaryGradient,
            boxShadow: [AppStyles.appBarShadow],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header image with gradient overlay and place name.
            Stack(
              children: [
                Image.asset(
                  place.image,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Gradient overlay at the bottom for text readability.
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black54, Colors.transparent],
                      ),
                    ),
                  ),
                ),
                // Place name at the bottom left.
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Text(
                    place.name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 4,
                          color: Colors.black45,
                          offset: Offset(1, 1),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Main content area.
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // "About this Place" Card with adaptive text color.
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About this Place",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[800],
                            ),
                          ),
                          Divider(color: Colors.grey),
                          SizedBox(height: 8),
                          Text(
                            place.description,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white70
                                  : Colors.black87,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.3,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Police Station Card.
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.local_police, color: Colors.blue),
                      title: Text('Police Station'),
                      subtitle: Text(place.policePhone),
                      trailing: IconButton(
                        icon: Icon(Icons.call, color: Colors.green),
                        onPressed: () => _callNumber(place.policePhone),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Fire Service Card.
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.local_fire_department, color: Colors.red),
                      title: Text('Fire Service'),
                      subtitle: Text(place.fireServicePhone),
                      trailing: IconButton(
                        icon: Icon(Icons.call, color: Colors.green),
                        onPressed: () => _callNumber(place.fireServicePhone),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Modern styled button to open map.
                  ElevatedButton.icon(
                    onPressed: _openMap,
                    icon: Icon(Icons.map),
                    label: Text('View on Map'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppStyles.accentColor,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
