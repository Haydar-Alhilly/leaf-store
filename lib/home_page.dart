// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'cart_page.dart';
import 'favorite_page.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;

  Widget buildCard(String imageLogo) => Container(
        width: 120,
        height: 120,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.purple.shade300,
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
            image: NetworkImage(imageLogo),
            fit: BoxFit.fill,
          ),
        ),
      );

  final imagesLogo = [
    'https://st2.depositphotos.com/1588812/11259/v/950/depositphotos_112594314-stock-illustration-vector-logo-clothing.jpg',
    'https://logopond.com/logos/5f7f8ccf2b7a7189bbaf491e18f5fe34.png',
    'https://cmkt-image-prd.freetls.fastly.net/0.1.0/ps/2387380/1160/772/m1/fpnw/wm0/template-for-preview-km-1-.jpg?1489139560&s=5c885495972fd12fae4365228b92c392',
    'https://media.istockphoto.com/vectors/beauty-design-cosmetic-accessories-for-makeup-vector-id509680442?k=20&m=509680442&s=170667a&w=0&h=wU53SedDVn4cR_T117RiVB_RJ75LluWU6NlzUy11EHk=',
    'https://st2.depositphotos.com/3382541/11091/v/380/depositphotos_110919970-stock-illustration-fresh-food-shopping-logo.jpg?forcejpeg=true',
    'https://marketplace.canva.com/EAFBZnzVKbU/1/0/1600w/canva-accessories-shop-logo-FbEQxCd3YOA.jpg',
    'https://st2.depositphotos.com/3927083/10774/v/950/depositphotos_107740296-stock-illustration-book-shop-logo.jpg',
  ];

  Widget buildCarouselImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(50),
          color: Colors.grey,
          image: DecorationImage(
            image: NetworkImage(urlImage),
            fit: BoxFit.fill,
          ),
        ),
      );

  final urlImages = [
    'https://img.freepik.com/premium-vector/spring-sale-with-cherry-blossom-cosmetic-ad-template-beauty-cosmetics-background_260787-839.jpg?w=2000',
    'https://thumbs.dreamstime.com/z/super-sale-smartphone-banner-mobile-phone-clearance-discount-poster-web-big-promotion-118039581.jpg',
    'https://img.ltwebstatic.com/images3_ach/2022/07/15/16578715995eecbe8b276e3658bedfa1b9b737e7ac.jpg',
    'http://techlekh.com/wp-content/uploads/2021/09/Sastodeal-The-Great-Electronics-Sale.jpg',
  ];

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ScrollingDotsEffect(
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.grey,
            dotHeight: 10,
            dotWidth: 10),
      );

  final verticalCardImage = [
    'https://img.freepik.com/free-vector/fast-food-black-background-poster_1284-14589.jpg?w=2000',
    'https://cdn.dribbble.com/users/675405/screenshots/6525189/background-20_4x.jpg?compress=1&resize=400x300',
    'https://cdn.olympiabeauty.co.uk/wp-content/uploads/2020/07/Health-Safety-In-Beauty-Wellness-Webinar-LI-scaled.jpg',
    'https://img.freepik.com/premium-vector/sakura-perfume-ads-realistic-style-perfume-glass-bottle-pink-background-with-sakura-flowers-great-advertising-poster-promoting-new-fragrance_260787-5.jpg?w=2000',
    'https://cdn2.vectorstock.com/i/1000x1000/26/81/bookshelf-background-bookcase-with-books-vector-34852681.jpg',
    'https://thumbs.dreamstime.com/b/electronic-devices-gadgets-symbol-vector-round-colorful-outlin-gadget-sign-dark-blue-background-73594851.jpg',
  ];

  Widget buildVerticalCard(verticalImage) => Container(
        width: 220,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink,
          image: DecorationImage(
              image: NetworkImage(verticalImage), fit: BoxFit.fitHeight),
        ),
      );

  Widget widthSpace(double w) => SizedBox(width: w);

  Widget heightSpace(double h) => SizedBox(height: h);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.stacked_line_chart_rounded,
                  color: Colors.deepPurple, size: 30),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("asset/businessman.jpg"),
            radius: 30,
          )
        ],
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Leaf Store',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
        backgroundColor: Color(0xfafafafa),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          heightSpace(10),
          CarouselSlider.builder(
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index];
              return buildCarouselImage(urlImage, index);
            },
            options: CarouselOptions(
                height: 300,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index)),
          ),
          heightSpace(20),
          buildIndicator(), //function for the dots under the images
          heightSpace(25),
          SizedBox(
            width: 500,
            height: 100,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              buildCard(imagesLogo[0]),
              buildCard(imagesLogo[1]),
              buildCard(imagesLogo[2]),
              buildCard(imagesLogo[3]),
              buildCard(imagesLogo[4]),
              buildCard(imagesLogo[5]),
              buildCard(imagesLogo[6]),
            ]),
          ),
          heightSpace(50),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            widthSpace(10),
            buildVerticalCard(verticalCardImage[0]),
            widthSpace(20),
            buildVerticalCard(verticalCardImage[1]),
          ]),
          heightSpace(20),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            widthSpace(10),
            buildVerticalCard(verticalCardImage[2]),
            widthSpace(20),
            buildVerticalCard(verticalCardImage[3]),
          ]),
          heightSpace(20),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            widthSpace(10),
            buildVerticalCard(verticalCardImage[4]),
            widthSpace(20),
            buildVerticalCard(verticalCardImage[5]),
          ]),
          heightSpace(10),
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              accountName: Text(
                "Haydar AlHilly",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "haidar09@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("asset/businessman.jpg")),
            ),
            ListTile(
              title: const Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'My Favorites',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
