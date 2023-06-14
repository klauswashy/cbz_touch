import 'package:flutter/material.dart';

import '../custom_icons_icons.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: const Color(0xffE21C32),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.cbz_home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.cbz_botton_nav_buy,
              color: Colors.white,
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.cbz_transact,
              color: Colors.white,
              size: 50,
            ),
            label: 'Transact',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.cbz_buy,
              color: Colors.white,
            ),
            label: 'Buy',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.cbz_botton__settings,
              color: Colors.white,
            ),
            label: 'Settings',
          ),
        ],
      ),
      backgroundColor: const Color(0xffEDF1F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/card.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: const Row(
                      children: [
                        Image(
                          image: AssetImage("assets/cbz_cbz-logo.png"),
                          width: 100,
                        )
                      ],
                    ),
                  ),
                  const Expanded(child: Text("")),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                        "*******20349",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          const Text(
                            "ZWL 0.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                CustomIcons.cbz_balance_refresher,
                                color: Colors.white,
                              ))
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {},
                            // ignore: prefer_const_constructors
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                              size: 18,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Icon(
                            CustomIcons.cbz_transfer,
                            color: Colors.black,
                          )),
                    ),
                    const Text("Transact")
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Icon(
                            CustomIcons.cbz_buy,
                            color: Colors.black,
                          )),
                    ),
                    const Text("Buy")
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Icon(
                            CustomIcons.cbz_pay,
                            color: Colors.black,
                          )),
                    ),
                    const Text("Pay")
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  color: Colors.black.withOpacity(0.5),
                  height: 0.5,
                  thickness: 0.5,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                // ignore: prefer_const_constructors
                child: Row(
                  children: const [
                    Text(
                      "Financial History",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white, // Example background color
                    ),
                    child: const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage("assets/cbz_zesa.png"),
                          width: 100,
                        ),
                      ),
                      title: Text(
                        "Zesa",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Prepared Top Up",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        "-ZWL48000.00",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white, // Example background color
                    ),
                    child: const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage("assets/cbz_transact.png"),
                          width: 100,
                        ),
                      ),
                      title: Text(
                        "Transfer",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "RTGS Transfer",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        "+ZWL148000.00",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white, // Example background color
                    ),
                    child: const ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          image: AssetImage("assets/cbz_dstv.png"),
                          width: 100,
                        ),
                      ),
                      title: Text(
                        "Bill Payment",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "DSTV Payement",
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        "-ZWL148.00",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
