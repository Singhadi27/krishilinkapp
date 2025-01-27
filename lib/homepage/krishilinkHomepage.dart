import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // For the auto-scrolling banner
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:localvue/homepage/weather_page.dart';

import '../views/onboarding_screen.dart';
import 'MandiBhavPage.dart';
import 'contactus.dart';
import 'cropDoctor.dart';
import 'eccomerse/ecommersePage.dart';
import 'mytrade_page.dart';
import 'newspage.dart';
import 'add_trade_page.dart'; // Import AddTradePage


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String weather = 'Loading...'; // Default weather info
  String location = 'Fetching...'; // Default location info

  @override
  void initState() {
    super.initState();
    fetchWeatherAndLocation();
  }

  Future<void> fetchWeatherAndLocation() async {
    const weatherApiKey = 'ff073be2bd205fdd8debe474f5ac7a7a';
    const weatherUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=noida&appid=$weatherApiKey&units=metric';

    try {
      final weatherResponse = await http.get(Uri.parse(weatherUrl));
      if (weatherResponse.statusCode == 200) {
        final weatherData = json.decode(weatherResponse.body);
        setState(() {
          weather =
          '${weatherData['main']['temp']}°C, ${weatherData['weather'][0]['description']}';
          location = '${weatherData['name']}, ${weatherData['sys']['country']}';
        });
      } else {
        setState(() {
          weather = 'Error fetching weather';
        });
      }
    } catch (e) {
      setState(() {
        weather = 'Error fetching weather';
      });
    }
  }

  Future<void> signOut() async {
    try {
      await Amplify.Auth.signOut();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
      );
    } catch (e) {
      print('Error signing out: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.grain,
              color: Colors.green, // Set the color to green
            ),
            SizedBox(width: 10),
            Text(
              'KrishiLink',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
                fontFamily: 'Roboto',
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_on_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone, color: Colors.green), // Set the color here
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Farmer Name'), // Replace with actual user's name if available
              accountEmail: null, // Remove the email display
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/default_avatar.png'), // Default image
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log out"),
              onTap: signOut,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Weather and location info
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Weather: $weather',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Location: $location',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10), // Gap between weather and banner
            // Auto-scrolling banner with margins
            Container(
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  viewportFraction: 1.0,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
                items: [
                  'assets/banner01.png.jpg',
                  'assets/banner02.jpg',
                  'assets/onboardFarmer1.png',
                ].map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                        width: screenWidth - 32,
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            // Grid of buttons similar to AgriBazaar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildFeatureButton(Icons.add_shopping_cart, 'Add Crop'),
                  buildFeatureButton(Icons.store, 'Mandi Bhaav'),
                  buildFeatureButton(Icons.local_hospital, 'Crop Doctor'),
                  buildFeatureButton(Icons.store_mall_directory, 'Input Store'),
                  buildFeatureButton(Icons.health_and_safety, 'GAP'),
                  buildFeatureButton(Icons.wb_sunny, 'Weather Forecast'),
                  buildFeatureButton(Icons.calculate, 'Fertilizer Calculator'),
                  buildFeatureButton(Icons.calendar_today, 'Crop Calendar'),
                  buildFeatureButton(Icons.add_location, 'Add Farm'),
                  buildFeatureButton(Icons.agriculture, 'My Farm'),
                ],
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'MyTrade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Mandi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TradeDetailPage(tradeData: {})),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MandiBhavPage()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsPage()),
              );
              break;
          }
        },
      ),
    );
  }

  // Helper function to build feature buttons
  Widget buildFeatureButton(IconData icon, String label) {
    return GestureDetector(
        onTap: () {
      if (icon == Icons.add_shopping_cart) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddTradePage()),
        );
      }

      if (icon == Icons.wb_sunny) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WeatherPage()),
        );
      }

      if (icon == Icons.local_hospital) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CropDoctorPage()),
        );
      }

      if (icon == Icons.store) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MandiBhavPage()),
        );
      }

      if (icon == Icons.health_and_safety) {
        // Add your own logic here if needed
      }

      if (icon == Icons.calculate) {
        // Add your own logic here if needed
      }

      if (icon == Icons.calendar_today) {
        // Add your own logic here if needed
      }

      if (icon == Icons.add_location) {
        // Add your own logic here if needed
      }

      if (icon == Icons.agriculture) {
        // Add your own logic here if needed
      }

        },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.green,
            ),
            SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.green[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


