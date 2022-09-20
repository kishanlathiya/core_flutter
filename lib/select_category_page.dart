import 'package:flutter/material.dart';
import 'global_page.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Category"),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: Global.all_Categories.length,
          itemBuilder: (context, i) => Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 150,
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
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context)
                        .pushNamed('allProducts_page', arguments: i);
                  });
                },
                child: Ink(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "${Global.all_Categories[i]['category_image']}",
                        height: 100,
                      ),
                      SizedBox(width: 40),
                      Text(
                        "${Global.all_Categories[i]['category_name']}",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
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
