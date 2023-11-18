import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LichenPediaVariant extends StatefulWidget {
  @override
  _LichenPediaVariantState createState() => _LichenPediaVariantState();
}

class _LichenPediaVariantState extends State<LichenPediaVariant> {
  final int _currentIndex = 1;
  void _onArrowDownPressed(GlobalKey scrollkey) {
    Scrollable.ensureVisible(scrollkey.currentContext!,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  Map<String, GlobalKey> scrollKeys = {
    "Cutaneous": GlobalKey(),
    "Planopilaris": GlobalKey(),
    "Nails": GlobalKey(),
    "Pigmentosus": GlobalKey(),
    "Eruption": GlobalKey(),
    "Mucosal": GlobalKey(),
    "List": GlobalKey(),
  };

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
          padding: EdgeInsets.only(top: h * 0.05, right: w * 0.5),
          child: SvgPicture.asset(
            'assets/svgs/#2 - lichenpedia.svg',
            width: w * 0.1,
            height: h * 0.047,
          ),
        ),
        elevation: 0,
        toolbarHeight: 80.0,
      ),

      // Body
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: h - 200,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35 * scaleFactor,
                        key: scrollKeys["List"],
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: FittedBox(
                            child: Center(
                              child: Text(
                                'Variants of Lichen Planus',
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w900),
                                textAlign: TextAlign
                                    .center, // Center align the text within the Text widget
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35 * scaleFactor),
                      GestureDetector(
                        onTap: () {
                          _onArrowDownPressed(scrollKeys["Cutaneous"]!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 45.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Cutaneous Lichen Planus',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25 * scaleFactor,
                      ),
                      GestureDetector(
                        onTap: () {
                          _onArrowDownPressed(scrollKeys["Planopilaris"]!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 45.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Lichen Planopilaris',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25 * scaleFactor,
                      ),
                      GestureDetector(
                        onTap: () {
                          _onArrowDownPressed(scrollKeys["Nails"]!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 45.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Lichen Planus of the Nails',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25 * scaleFactor),
                      GestureDetector(
                        onTap: () {
                          _onArrowDownPressed(scrollKeys["Pigmentosus"]!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 45.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Lichen Planus Pigmentosus',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25 * scaleFactor),
                      GestureDetector(
                        onTap: () {
                          _onArrowDownPressed(scrollKeys["Eruption"]!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 45.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Lichen drug eruption',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25 * scaleFactor),
                      GestureDetector(
                        onTap: () {
                          _onArrowDownPressed(scrollKeys["Mucosal"]!);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 45, right: 45.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  'Mucosal Lichen Planus',
                                  style: TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0, right: 45),
                        child: Container(
                          // Adjust the padding
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Go back',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 22 * scaleFactor),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xFFFF7F50)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color: Colors.white,
                                      width: 2.0), // Add the white border here
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 45 * scaleFactor),
              SizedBox(
                height: 25,
                key: scrollKeys["Cutaneous"],
              ),
              const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 35.0, right: 35),
                    child: FittedBox(
                      child: Text(
                        'Cutaneous Lichen Planus',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50 * scaleFactor),
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'The hallmarks of cutaneous LP are purple or violet, polygonal, shiny, flat-topped, firm, papules, and plaques with white streaks (Wickham striae) (40). Wickham striae are best visualized by dermscopy. The cutaneous lesions may vary in size from several millimeters to more than one centimeter.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25 * scaleFactor),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0, right: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '· Papules and polygonal plagues are shiny, flat-topped, and firm on palpation.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '· The plagues are crossed by fine white lines called Wickham striae',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '· Hypertrophic lichen planus can be a scaly and pruritic rash.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '· Atrophic lichen planus is a rare annular variant with an atrophic centre.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '· Annular lichen planus describes the development of violaceous plaques with central clearing often involving penis, scrotum, and intretriginous areas.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(
                    'Sub-Types of Cutaneous Lichen Planus',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    '1. Annular Lichen Planus',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0, right: 35),
                  child: Text(
                    'Characterized by a ring-shaped or annular plaques on the skin',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/annular1.png', 'assets/imgs/annular2.png'],
                    ['assets/imgs/annular2.png', 'assets/imgs/annular1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    '2. Hypertrophic Lichen Planus',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0, right: 35),
                  child: Text(
                    'Lesions are thick and more raised compared to the usual form.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/hyper1.png', 'assets/imgs/hyper2.png'],
                    ['assets/imgs/hyper2.png', 'assets/imgs/hyper1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                height: 25,
                key: scrollKeys["Planopilaris"],
              ),
              const Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(left: 35.0, right: 35),
                    child: FittedBox(
                      child: Text(
                        'Lichen Planopilaris',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lichen Planopilaris (LPP) presents as tiny red spiny follicular papules and extending smooth areas on the scalp or less often, elsewhere on the hair-bearing regions body areas. ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0),
                  child: Text(
                    'Sub-Types of Lichen Planopilaris',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    '1.	Frontal Fibrosing Alopecia (FFA)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0, right: 35),
                  child: Text(
                    'Affects the front hairline and forehead, causing hairline recession.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/plano1.png', 'assets/imgs/plano2.png'],
                    ['assets/imgs/plano2.png', 'assets/imgs/plano1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0),
                  child: Text(
                    '2.	Graham-Little Syndrome',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 55.0, right: 35),
                  child: Text(
                    'Involves small, follicular papules and scarring hair loss, often on the scalp, face, and trunk.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/graham1.png', 'assets/imgs/graham2.png'],
                    ['assets/imgs/graham2.png', 'assets/imgs/graham1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                height: 25,
                key: scrollKeys["Nails"],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 35),
                  child: Text(
                    'Lichen Planus of the Nails',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lichen Planus may affect one or more nails, sometimes in the absence of skin involvement. Lichen Planus thins the nail plate, which may become grooved and ridged. The nail may darken, thicken or lift off the nail bed (onycholysis). Sometimes, the cuticle is destroyed and forms a scar (pterygium). The nails may shed or stop growing altogether, and they may rarely, completely disappear (anonychia). An important clinical feature of nail LP is the occurrence of a dorsal pterygium.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/nails1.png', 'assets/imgs/nails2.png'],
                    ['assets/imgs/nails2.png', 'assets/imgs/nails1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 25,
                key: scrollKeys["Pigmentosus"],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 35),
                  child: Text(
                    'Lichen Planus Pigmentosus',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Often referred to as "Lichen planus pigmentosus inversus," is a rare variant of lichen planus that primarily affects the skin and is characterized by the development of hyperpigmented (dark) patches or lesions. Unlike the classic lichen planus, which presents with red or violaceous papules, lichen planus pigmentosus leads to brown or gray-brown macules, usually on sun-exposed areas of the body. These macules do not have the typical itching seen in classic lichen planus.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/pigmen1.png', 'assets/imgs/pigmen2.png'],
                    ['assets/imgs/pigmen2.png', 'assets/imgs/pigmen1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 45),
              SizedBox(
                height: 25,
                key: scrollKeys["Eruption"],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 35),
                  child: Text(
                    'Lichenoid Drug Eruptions',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Often mimic idiopathic lichen planus although there can be features that may help to distinguish them, which may include: symmetrical rash on the trunk and limbs, predominantly in sun-exposed areas. Asymptomatic or itchy; pink, brown, or purple; flat, slightly scaly patches most often arise on the trunk. The oral mucosa (oral lichenoid reaction) and other sites are also sometimes affected. Many drugs can rarely cause lichenoid eruptions such as gold, hydroxychloroquine, and captopril.',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/drugs1.png', 'assets/imgs/drugs2.png'],
                    ['assets/imgs/drugs2.png', 'assets/imgs/drugs1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 65),
              SizedBox(
                height: 15,
                key: scrollKeys["Mucosal"],
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 35.0, right: 35),
                  child: Text(
                    'Mucosal Lichen Planus',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                    textAlign: TextAlign
                        .center, // Center align the text within the Text widget
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(left: 45, right: 45.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Often known as Oral Lichen Planus, the typical lesions are painful and persistent erosions (erosive LP) or diffuse erythema and peeling of the mucosa (desquamative LP). Common features of this variant also include a common pattern of painless white streaks in a lacy or fern-like pattern (Wickham striae) and localized inflammation of the gums adjacent to amalgam fillings.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200 * scaleFactor,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    ['assets/imgs/mucosal1.png', 'assets/imgs/mucosal2.png'],
                    ['assets/imgs/mucosal2.png', 'assets/imgs/mucosal1.png'],
                    // Add more items for additional slides
                  ].map((itemList) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: itemList.map((item) {
                            return SizedBox(
                              width: 190 * scaleFactor,
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                              ),
                            );
                          }).toList(),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 45.0, right: 45),
                child: Container(
                  // Adjust the padding
                  child: ElevatedButton(
                    onPressed: () {
                      _onArrowDownPressed(scrollKeys["List"]!);
                    },
                    child: Text(
                      'Go back to the list',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFF7F50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                              color: Colors.white,
                              width: 2.0), // Add the white border here
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100)
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
