import 'package:flutter/material.dart';
import 'global_page.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    dynamic res = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 580,
            child: ListView.builder(
              itemCount: Global.all_items.length,
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 100,
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
                            '${Global.all_items[i]['image']}',
                            height: 65,
                          ),
                          Text('${Global.all_items[i]['price']} ₹'),
                        ],
                      ),
                      Text('${Global.all_items[i]['name']}'),
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
                                      if (Global.all_items[i]['count'] <= 1) {
                                        Global.all_items[i]['count'] = 1;
                                      } else {
                                        Global.all_items[i]['count']--;
                                        Global.total_count--;
                                        Global.total_price=Global.total_price-Global.all_items[i]['price'];
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
                              Text('${Global.all_items[i]['count']}'),
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
                                      Global.all_items[i]['count']++;
                                      Global.total_count++;
                                      Global.total_price=Global.total_price+Global.all_items[i]['price'];
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
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Global.all_items[i]['bool'] = true;
                            Global.all_items.remove(Global.all_items[i]);
                            Global.list_count--;
                            Global.total_count = 0;
                            Global.total_price = 0;

                            for (int i = 0;
                                i < Global.all_items.length;
                                i++) {
                              Global.total_count = Global.total_count +
                                  Global.all_items[i]['count'];
                              Global.total_price = Global.total_price +
                                  (Global.all_items[i]['count'] *
                                      Global.all_items[i]['price']);
                            }
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Total Items :"),
                      Text("${Global.total_count.toInt()}"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Total Amount :"),
                      Text("${Global.total_price.toInt()}"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
