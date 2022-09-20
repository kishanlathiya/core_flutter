import 'package:flutter/material.dart';
import 'global_page.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({Key? key}) : super(key: key);

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("All Products"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('pdf_page');
            },
            icon: Icon(Icons.picture_as_pdf),
          ),
        ],
      ),
      body: Scrollbar(
        child: IndexedStack(
          index: res,
          children: [
            //Groceries
            ListView.builder(
              itemCount: Global.all_Groceries.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue.shade200,
                          Colors.blue.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.all_Groceries[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.all_Groceries[i]['price']} ₹'),
                        ],
                      ),
                      Text('${Global.all_Groceries[i]['name']}'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.all_Groceries[i]['count'] <=
                                          1) {
                                        Global.all_Groceries[i]['count'] = 1;
                                      } else {
                                        Global.all_Groceries[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.all_Groceries[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.all_Groceries[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.all_Groceries[i]['bool'] == true) {
                                    Global.all_items.add(Global.all_Groceries[i]);
                                    Global.list_count++;
                                  }
                                  Global.all_Groceries[i]['bool'] = false;
                                });
                              },
                              child: Text('ADD TO CART ->'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Clothes
            ListView.builder(
              itemCount: Global.all_Clothes.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue.shade200,
                          Colors.blue.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.all_Clothes[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.all_Clothes[i]['price']} ₹'),
                        ],
                      ),
                      Text('${Global.all_Clothes[i]['name']}'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.all_Clothes[i]['count'] <= 1) {
                                        Global.all_Clothes[i]['count'] = 1;
                                      } else {
                                        Global.all_Clothes[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.all_Clothes[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.all_Clothes[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.all_Clothes[i]['bool'] == true) {
                                    Global.all_items.add(Global.all_Clothes[i]);
                                    Global.list_count++;
                                  }
                                  Global.all_Clothes[i]['bool'] = false;
                                });
                              },
                              child: Text('ADD TO CART ->'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Toys
            ListView.builder(
              itemCount: Global.all_Toys.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue.shade200,
                          Colors.blue.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.all_Toys[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.all_Toys[i]['price']} ₹'),
                        ],
                      ),
                      Text('${Global.all_Toys[i]['name']}'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.all_Toys[i]['count'] <= 1) {
                                        Global.all_Toys[i]['count'] = 1;
                                      } else {
                                        Global.all_Toys[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.all_Toys[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.all_Toys[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.all_Toys[i]['bool'] == true) {
                                    Global.all_items.add(Global.all_Toys[i]);
                                    Global.list_count++;
                                  }
                                  Global.all_Toys[i]['bool'] = false;
                                });
                              },
                              child: Text('ADD TO CART ->'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Footwear
            ListView.builder(
              itemCount: Global.all_Footwears.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue.shade200,
                          Colors.blue.withOpacity(0.1),
                        ],
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            '${Global.all_Footwears[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.all_Footwears[i]['price']} ₹'),
                        ],
                      ),
                      Text('${Global.all_Footwears[i]['name']}'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (Global.all_Footwears[i]['count'] <=
                                          1) {
                                        Global.all_Footwears[i]['count'] = 1;
                                      } else {
                                        Global.all_Footwears[i]['count']--;
                                      }
                                    });
                                  },
                                  child: Text(
                                    '-',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text('${Global.all_Footwears[i]['count']}'),
                              SizedBox(width: 10),
                              SizedBox(
                                height: 30,
                                width: 33,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blue.shade300,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Global.all_Footwears[i]['count']++;
                                    });
                                  },
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue.shade200,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (Global.all_Footwears[i]['bool'] == true) {
                                    Global.all_items.add(Global.all_Footwears[i]);
                                    Global.list_count++;
                                  }
                                  Global.all_Footwears[i]['bool'] = false;
                                });
                              },
                              child: Text('ADD TO CART ->'))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.shopping_cart),
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed('cart_page');
          });
        },
      ),
    );
  }
}
