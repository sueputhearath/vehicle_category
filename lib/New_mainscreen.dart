import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class NewMainScreen extends StatefulWidget {
  const NewMainScreen({Key? key}) : super(key: key);

  @override
  State<NewMainScreen> createState() => _NewMainScreenState();
}

const colors = [
  Colors.deepOrange,
  Colors.deepOrange,
  Colors.deepOrange,
  Colors.deepOrange,
];

class _NewMainScreenState extends State<NewMainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  // late TabBarView _tabBarViewController;

  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(_handleTabSelection);
    // tabController.addListener(() {
    //   setState(() => _tabIndex = tabController.index);
    //
    // });
    //   setState(() {
    //     _tabIndex=tabController.index;
    //   })
  }

  _handleTabSelection() {
    setState(() {
      _tabIndex = tabController.index;
    });
    print("Selected Index: " + tabController.index.toString());
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.5),
              //     spreadRadius: 3,
              //     blurRadius: 7,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
            ),
            width: double.infinity,
            height: 240,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello ,dara',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Flexible(
                            child: Text(
                              'what would you like to Eat?',
                              // maxLines: 3,
                              // overflow: TextOverflow.ellipsis,
                              // softWrap: false,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 2, color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'search...',
                    // border: InputBorder),
                  )),
                ),
              ]),
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.all(12),
            // decoration: BoxDecoration(
            //   borderRadius: const BorderRadius.all(Radius.circular(20)),
            //   border: Border.all(width: 2),
            // ),
            child: TabBar(
              indicatorWeight: 0,
              controller: tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.0,
                ),
                color: colors[_tabIndex],
              ),
              labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
              unselectedLabelColor: Colors.black,
              splashBorderRadius: BorderRadius.circular(20),
              padding: EdgeInsets.all(3),
              tabs: <Widget>[
                Tab(text: 'Meals'),
                Tab(text: 'Slides'),
                Tab(text: 'Snacks'),
                Tab(text: 'Drinks'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(controller: tabController, children: <Widget>[
              new Container(
                // child:Center(child: Text('Meal',style: TextStyle(color: Colors.black),)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          'Today Specail Offer ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 3,
                          child: Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                                // color: Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.network(
                                  'https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029_1280.jpg',
                                  width: 200,
                                  height: 140,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Yummies specail bugure',
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        'Now',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          'N1,800',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Add to cart',
                                            style: TextStyle(
                                                color: Colors.deepOrangeAccent),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            // surfaceTintColor: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                            ),
                                            side: BorderSide(
                                                width: 2,
                                                color: Colors.deepOrangeAccent),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 120),
                            child: Text(
                              'Popular Now',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Text('SEE FULL MENU'),
                              Icon(Icons.play_arrow)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 180,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Card(
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 150,
                              height: 200,
                              // margin: EdgeInsets.all(10),
                              // child: Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Align(
                              //       alignment: Alignment.topRight,
                              //       child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              //         children: [
                              //           Icon(Icons.favorite_outline,color: Colors.deepOrangeAccent,),
                              //         ],
                              //       )),
                              // ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg',
                                            ),
                                            radius: 50,
                                            // radius: BorderRadius.circular(30),
                                            //    child: Image.network('https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_1280.jpg',width: 150,height: 150,))
                                          ),
                                          Text('Beef Salad'),
                                          Text(
                                            'N1,200',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.favorite_outline,
                                          color: Colors.deepOrange,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              new Container(
                child: Center(
                    child: Text(
                  'Meal',
                  style: TextStyle(color: Colors.black),
                )),
              ),
              new Container(
                child: Center(
                    child: Text(
                  'Meal',
                  style: TextStyle(color: Colors.black),
                )),
              ),
              new Container(
                child: Center(
                    child: Text(
                  'Meal',
                  style: TextStyle(color: Colors.black),
                )),
              )
            ]),
          )
        ],
      ),
    );
  }
}
