import 'package:flutter/material.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfFE9EBEA),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 18.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Badge(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  ),
                  label: Text("1"),
                ),
                SizedBox(
                  width: 10,
                ),
                Badge(
                  child: Icon(
                    Icons.message_outlined,
                    size: 30,
                  ),
                  label: Text("9+"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
            child: Container(
              width: 500,
              height: 200,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/shop2.jpg',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 0.0,
            ),
            child: Row(
              children: [
                Container(
                  width: 410,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfFE9EBEA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.dashboard_customize_rounded,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text('Category',
                                style: TextStyle(
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfFE9EBEA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.watch,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text('Watch',
                                style: TextStyle(
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfFE9EBEA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.man,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Man',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfFE9EBEA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.woman,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Women',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfFE9EBEA),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Icon(
                                  Icons.child_care,
                                  size: 40,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Child',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best sale product',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 210,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          'assets/images/montre.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'montre',
                            ),
                            Icon(Icons.favorite_border_outlined),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Montre classe pour homme',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$100',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                                child: Icon(
                              Icons.add_shopping_cart,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 210,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          'assets/images/pull.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'pull',
                            ),
                            Icon(Icons.favorite_border_outlined),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Pull d'hiver pour homme",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$100',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                                child: Icon(
                              Icons.add_shopping_cart,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 150,
                  height: 210,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 100,
                        child: Image.asset(
                          'assets/images/robe.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'robe',
                            ),
                            Icon(Icons.favorite_border_outlined),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Robe classe pour les soirées',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$100',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                                child: Icon(
                              Icons.add_shopping_cart,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
