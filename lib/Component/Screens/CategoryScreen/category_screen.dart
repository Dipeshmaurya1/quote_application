import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Utils/ListOF_Category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

bool changeToggle = false;

Set<String> _selected = {'ListView'};

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotation Nation'),
        actions: [

          SegmentedButton(
            // style: ButtonStyle(),
            multiSelectionEnabled: false,
            segments: [
              ButtonSegment<String>(
                  value: 'ListView',
                  // label: Text(
                  //   'ListView',
                  //   style: TextStyle(fontSize: 20),
                  // ),
                  icon: const Icon(Icons.list_alt,size: 30,)),
              ButtonSegment<String>(
                value: 'GridView',
                // label: Text('GridView', style: TextStyle(fontSize: 20)),
                icon: const Icon(Icons.apps_rounded,size: 30,),
              ),
            ],
            selected: _selected,
            onSelectionChanged: (Set<String> newselection) {
              setState(() {
                _selected = newselection;
                changeToggle = !changeToggle;
              });
            },
          ),
          // IconButton(
          //     onPressed: () {
          //
          //       changeToggle = !changeToggle;
          //     },
          //     icon: Icon(Icons.grid_on_outlined))
        ],
      ),
      body:
      (changeToggle)
          ? GridView.builder(
              itemCount: Quote_Type_Categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1),
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(5),
                // padding: EdgeInsets.all(15),
                height: h * 0.10,
                width: w * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: HomeScreenColorlist[
                      index % HomeScreenColorlist.length],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Quote_Type_Categories[index]['home_Icon'],
                      size: 40,
                      color: Quote_Type_Categories[index]['home_color'],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      Quote_Type_Categories[index]['home_Text'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : ListView.builder(
              itemCount: Quote_Type_Categories.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: (){

                },
                child: Card(
                  child: Container(
                    height: h * 0.10,
                    width: w * 0.5,
                    decoration: BoxDecoration(
                      color: HomeScreenColorlist[
                          index % HomeScreenColorlist.length],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Quote_Type_Categories[index]['home_Icon'],
                          size: 40,
                          color: Quote_Type_Categories[index]['home_color'],
                        ),
                        SizedBox(
                          width: w * 0.06,
                        ),
                        Text(
                          Quote_Type_Categories[index]['home_Text'],
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

List HomeScreenColorlist = [
  Color(0xffB2EDFD),
  Color(0xffC3F6BC),
  Color(0xffFFE9A6),
  Color(0xffDBCCFD),
];
