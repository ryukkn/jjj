import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LichenPediaVault extends StatefulWidget {
  @override
  _LichenPediaVaultState createState() => _LichenPediaVaultState();
}

class _LichenPediaVaultState extends State<LichenPediaVault> {
  final int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double scaleFactor = h / 1080;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF4E9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFF4E9),
        title: Padding(
          padding: EdgeInsets.only(top: h * 0.02, right: w * 0.42),
          child: SvgPicture.asset(
            'assets/svgs/#2 - lichenpedia.svg',
            width: w * 0.1,
            height: h * 0.6,
          ),
        ),
        elevation: 0,
        toolbarHeight: 80.0,
      ),

      // Body
      body: Container(
        height: double.infinity,
        child: Center(
          child: Column(
            children: [
              const Text(
                'Video Vault',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'ABeeZee',
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  launchUrlString(
                      'https://www.youtube.com/watch?v=Jm6RvAuIhEw');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/imgs/videovault_1.jpg'),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Lichen planus - causes, symptoms, diagnosis, treatment, pathology',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Youtube - Osmosis from Elsevier',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              Text(
                                'January 17, 2019',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  launchUrlString(
                      'https://www.youtube.com/watch?v=zvAIGEk24so');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/imgs/videovault_2.jpg',
                        // Adjust the height as needed
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Lichen planus - Daily Do\'s of Dermatology',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Text(
                                'Youtube - Doctorpedia',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              Text(
                                'July 5, 2019',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  launchUrlString(
                      'https://www.youtube.com/watch?v=G_wIaActuB0');
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/imgs/videovault_3.jpg',
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Lichen Planus Webcast with Dr. James Sciubba',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Youtube - Texas A&M College of Dentistry',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'October 21, 2016',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                    EdgeInsets.symmetric(
                        horizontal: 20, vertical: 22 * scaleFactor),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xFFFF7F50)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                          color: Colors.white,
                          width: 2.0), // Add the white border here
                    ),
                  ),
                ),
                child: const Text(
                  'Go back',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),

      // Floating action button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _lichenCheckBtn(context),

      // Bottom navigation ba()
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
          icon: Icon(
            Icons.home,
            size: 30,
            color: Color(0xFFFF7F50),
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
        // Handle navigation to different pages based on the index
        switch (index) {
          case 0:
            Navigator.of(context)
                .pushNamed('/home'); // Navigate to the 'home' route
            break;
          case 1:
            // Navigator.of(context).pushNamed(
            //     '/lichenpedia'); // Navigate to the 'lichenpedia' route
            break;
          case 2:
            Navigator.of(context).pushNamed(
                '/lichencheck'); // Navigate to the 'lichencheck' route
            break;
          case 3:
            Navigator.of(context)
                .pushNamed('/lichenHub'); // Navigate to the 'lichenhub' route
            break;
          case 4:
            Navigator.of(context)
                .pushNamed('/profile'); // Navigate to the 'profile' route
            break;
        }
      },
    );
  }
}

Widget _buildTextWithDivider(String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          bottom: 6,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      if (text != 'Variants of Lichen Planus')
        const Divider(
          color: Colors.black,
        ),
    ],
  );
}
