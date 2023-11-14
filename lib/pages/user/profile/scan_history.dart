import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ScanHistory extends StatefulWidget {
  @override
  _ScanHistory createState() => _ScanHistory();
}

FirebaseAuth auth = FirebaseAuth.instance;
User? user = auth.currentUser;

class LichenCheckEntry {
  final Map<String, dynamic> additionalInfo;
  final Map<String, dynamic> symptoms;
  final Map<String, dynamic> results;

  LichenCheckEntry({
    required this.additionalInfo,
    required this.symptoms,
    required this.results,
  });
}

Color primaryforegroundColor = const Color(0xFFFF7F50);

class _ScanHistory extends State<ScanHistory> {
  int _currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    double scaleFactor = h / 1080;

    return Scaffold(
      backgroundColor: Color(0xFFFFF4E9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFFF4E9),
        title: Padding(
          padding: EdgeInsets.only(top: h * 0.04, right: w * 0.45),
          child: SvgPicture.asset(
            'assets/svgs/profileSection/profileAppBars/scan_history(copy).svg',
            width: w * 0.1,
            height: h * 0.8,
          ),
        ),
        elevation: 0,
        toolbarHeight: 80.0,
      ),

      // Body
      // Body
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: 
                FutureBuilder<List<LichenCheckEntry>>(
              future: getLichenCheckEntries(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Error: ${snapshot.error}");
                } else {
                  final entries = snapshot.data ?? [];

                  return Column(
                    children: entries.map((entry) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: 200 * scaleFactor,
                                width: 200 * scaleFactor,
                                child: Image.network(
                                  'assets/imgs/lichenpedia_image1.png',
                                ),
                              ),
                              SizedBox(
                                height: 200 * scaleFactor,
                                width: 200 * scaleFactor,
                                child: Image.asset(
                                  'assets/imgs/lichenpedia_image2.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }
              },
            )),
      ),

      // Floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _lichenCheckBtn(context),

      // Bottom navigation bar
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  Container _lichenCheckBtn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Make the container a circle
        border: Border.all(
          color: const Color(0xFFFF7F50), // Set the border color
          width: 3.0, // Set the border width
        ),
      ),
      child: FloatingActionButton(
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/lichenCheck');
          },
          icon: SvgPicture.asset(
            'assets/svgs/bottomNavBar/LichenCheck_icon.svg',
            width: 32, // Set the width to adjust the size of the icon
            height: 32, // Set the height to adjust the size of the icon
          ),
        ),
        backgroundColor: Color(0xFFFFF4E9),
        onPressed: () {},
      ),
    );
  }

  BottomNavigationBar _bottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF66D7D1),
      selectedItemColor: Colors.white,
      unselectedItemColor: Color.fromARGB(94, 0, 0, 0),
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/bottomNavBar/Home_icon.svg',
            width: 32,
            height: 32,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/bottomNavBar/Lichenpedia_icon.svg',
            width: 32,
            height: 32,
          ),
          label: 'Lichenpedia',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add, size: 32),
          label: 'LichenCheck',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/bottomNavBar/LichenHub_icon.svg',
            width: 32,
            height: 32,
          ),
          label: 'LichenHub',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/bottomNavBar/UserProfile_icon.svg',
            width: 32,
            height: 32,
          ),
          label: 'Profile',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/lichenpedia');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/lichenCheck');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/lichenHub');
            break;
          case 4:
            Navigator.pushReplacementNamed(context, '/profile');
            break;
        }
      },
    );
  }

  void checkCurrentUser() {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;

    if (user != null) {
      print(user);
    } else {
      print("User is not logged in.");
    }
  }

  Future<List<LichenCheckEntry>> getLichenCheckEntries() async {
    if (user == null) {
      return [];
    }

    try {
      final userDocRef =
          FirebaseFirestore.instance.collection('users').doc(user?.uid);
      final inputsCollection = userDocRef.collection('LichenCheck_inputs'); 
      final querySnapshot = await inputsCollection.get();

      return querySnapshot.docs.map((doc) {
        return LichenCheckEntry(
          additionalInfo: doc['additional_info'] ?? {},
          symptoms: doc['symptoms'] ?? {},
          results: doc['results'] ?? {},
        );
      }).toList();
    } catch (e) {
      print('Error fetching LichenCheck entries: $e');
      return [];
    }
  }

  Future<Map<String, String>> getUserData() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      try {
        DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(user.uid)
            .get();

        if (userSnapshot.exists) {
          String firstName = userSnapshot.get('first_name') ?? '';
          String lastName = userSnapshot.get('last_name') ?? '';
          String email = userSnapshot.get('email') ?? '';
          return {
            'firstName': firstName,
            'lastName': lastName,
            'email': email,
          };
        }
      } catch (e) {
        print("Error fetching user data: $e");
      }
    }

    return {
      'firstName': '',
      'lastName': '',
      'email': '',
    };
  }
}
