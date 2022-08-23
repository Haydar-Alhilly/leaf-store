// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_learning_app/item_page.dart';
import 'package:first_learning_app/order_page.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  itemDetail() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
                name: "BneQ SreenBar", urlImage: "asset/screenbar.jpg"),
          ),
        ),
      };
  itemDetail1() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
                name: "Iphone 12 Pro Max", urlImage: "asset/apple.jpg"),
          ),
        ),
      };
  itemDetail2() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ItemPage(name: "Hydra Prefume", urlImage: "asset/hydra.webp"),
          ),
        ),
      };
  itemDetail3() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
                name: "Pellikaan Watch",
                urlImage: "asset/In-Depth-Pellikan-Watches.jpg"),
          ),
        ),
      };
  itemDetail4() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ItemPage(name: "Almukhtar Curry", urlImage: "asset/image.webp"),
          ),
        ),
      };
  itemDetail5() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
                name: "G5 Odyssey Monitor", urlImage: "asset/moniter.webp"),
          ),
        ),
      };
  itemDetail6() => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(
                name: "NuPhy Air 75 Keyboard", urlImage: "asset/keyboard.jpg"),
          ),
        ),
      };

  Widget item(String name, int quantity, double price, String imagei, detail) =>
      Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Stack(
            children: [
              Container(
                height: 150,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  border: Border.all(width: 3, color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 130,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Quantity = $quantity",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$price\$",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: detail,
                child: Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.deepPurple),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(imagei),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );

  Widget heightSpace(double h) => SizedBox(height: h);

  final itemsImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpq9n0_-fZAw5oe-ebwQXbp0Bc-AMXE3fQ5Q&usqp=CAU',
    'https://www.apple.com/newsroom/images/product/iphone/standard/Apple_announce-iphone12pro_10132020_big.jpg.large.jpg',
    'http://cdn.shopify.com/s/files/1/0616/7494/6800/products/hydra-100ml-01-656.jpg?v=1644998647',
    'https://monochrome-watches.com/wp-content/uploads/2020/04/In-Depth-Pellikan-Watches.jpg',
    'https://cdn.shopify.com/s/files/1/0388/9545/2292/products/image.jpg?v=1590254954',
    'https://res.cloudinary.com/grover/image/upload/f_webp,q_auto/b_white,c_pad,dpr_2.0,h_500,w_520/f_auto,q_auto/v1632335748/xowy9dwlsuqooepkllik.png',
    'https://arun.sh/content/images/size/w300/2022/02/20220208_140602-4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Leaf Store',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 103, 58, 183),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/icons8-cart-64.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 700,
                height: 825,
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 100,
                        ),
                        item('BneQ ScreenBar', 1, 129.99, itemsImage[0],
                            itemDetail),
                        heightSpace(20),
                        item('Iphone 12 Pro Max', 1, 1420.50, itemsImage[1],
                            itemDetail1),
                        heightSpace(20),
                        item('Hydra Prefume', 2, 99.99, itemsImage[2],
                            itemDetail2),
                        heightSpace(20),
                        item('Pellikaan Watch', 1, 229.99, itemsImage[3],
                            itemDetail3),
                        heightSpace(20),
                        item('Almukhtar Curry', 10, 6.50, itemsImage[4],
                            itemDetail4),
                        heightSpace(20),
                        item('G5 Odyssey Monitor', 1, 339.99, itemsImage[5],
                            itemDetail5),
                        heightSpace(20),
                        item('NuPhy Air 75 Keyboard', 1, 120.0, itemsImage[6],
                            itemDetail6),
                        heightSpace(20),
                        Row(
                          children: [
                            SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              height: 70,
                              width: 225,
                              child: FloatingActionButton.extended(
                                heroTag: "btn1",
                                onPressed: () {},
                                label: Text(
                                  "Add more items",
                                  style: TextStyle(fontSize: 22),
                                ),
                                icon: Icon(
                                  Icons.add_shopping_cart,
                                  size: 30,
                                ),
                                backgroundColor: Colors.deepPurple,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            SizedBox(
                              height: 70,
                              width: 225,
                              child: FloatingActionButton.extended(
                                heroTag: "btn1",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OrderNowPage(),
                                    ),
                                  );
                                },
                                label: Text(
                                  "Order Now",
                                  style: TextStyle(fontSize: 22),
                                ),
                                icon: Icon(
                                  Icons.credit_card,
                                  size: 30,
                                ),
                                backgroundColor: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                        heightSpace(10)
                      ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
