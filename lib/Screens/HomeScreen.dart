import 'package:assisment_1/Screens/ProfileScreen.dart';
import 'package:assisment_1/widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //for drawer toggle
  bool isDrawerOpen = false;

  //for storing event count
  int Event_count=3;

  //today's menu
  final List<Map<String, String>> menuItems = [
    {
      'title': 'BREAKFAST:',
      'items': 'Poha, Upma, Idli, Dosa & more',
    },
    {
      'title': 'LUNCH:',
      'items': 'Veg Kolhapuri, Rice, Roti & more',
    },
    {
      'title': 'HIGH TEA:',
      'items': 'Paneer Pakoda , & many more',
    },
    {
      'title': 'HIGH TEA:',
      'items': 'Paneer Pakoda , & many more',
    },
    {
      'title': 'TEA:',
      'items': 'Paneer Pakoda , & many more',
    },
    {
      'title': 'HIGH TEA:',
      'items': 'Paneer Pakoda , & many more',
    },
    // You can add more meals here like Dinner, Snacks, etc.
  ];

  @override
  Widget build(BuildContext context) {
    //taking screen size
    Size mq = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      // Background color
                      Container(
                        height: mq.height,
                        width: mq.width,
                        decoration: const BoxDecoration(
                          color: Color(0XFF664DA0),
                        ),
                      ),

                      //screens[currentIndex],

                      // Profile, name, Help-Button and Notification-Button
                      Positioned(
                        top: mq.height * 0.03,
                        left: mq.width * 0.04,
                        right: mq.width * 0.04,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Profile image
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (builder){
                                    return ProfileScreen();
                                  }));
                                },
                                child: CircleAvatar(
                                  radius: mq.width * 0.08,
                                  backgroundColor: Colors.white,
                                  backgroundImage: const AssetImage("assets/Images/profile.png"),
                                ),
                              ),
                            ),

                            SizedBox(width: mq.width * 0.03),

                            // User info (wrapped with Flexible to prevent overflow)
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: mq.width * 0.035,
                                      color: const Color(0XFFFDFAFF),
                                    ),
                                  ),
                                  Text(
                                    "Harsh Jogi",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontSize: mq.width * 0.045,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0XFFFDFAFF),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "GHRU Boys Hostel",
                                          style: TextStyle(
                                            fontFamily: "Roboto",
                                            fontSize: mq.width * 0.03,
                                            color: const Color(0XFFFDFAFF),
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(width: mq.width * 0.005),
                                      Icon(
                                        Icons.open_in_new,
                                        size: mq.width * 0.04,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //Help Button
                            IconButton(
                              onPressed: () {
                                // Help button action
                              },
                              icon: Icon(
                                Icons.help_outline,
                                size: mq.width * 0.06,
                                color: Colors.white,
                              ),
                            ),

                            //Notifications
                            IconButton(
                              onPressed: () {
                                // Notification button action
                              },
                              icon: Icon(
                                Icons.notifications_outlined,
                                size: mq.width * 0.06,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //thought fo day text
                      Positioned(
                        top: mq.height*0.12,
                        left: mq.height*0.06,
                        child: Text("THOUGHT OF THE DAY", style: TextStyle(fontFamily: "Roboto", fontWeight: FontWeight.bold, fontSize: 16, color: Color(0XFFACB5BD)),),
                      ),

                      //Thoughts Details
                      Positioned(
                        top: mq.height*0.16,
                        left: mq.height*0.025,
                        right: mq.height*0.025,
                        child: Container(
                          height: mq.height*0.08,
                          width: mq.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0X33FFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry",style: TextStyle(color: Color(0X99FDFAFF)),),
                          ),
                        ),
                      ),

                      //Highlights facilities to customer
                      Positioned(
                        top: mq.height * 0.26,
                        left: mq.height * 0.025,
                        right: mq.height * 0.025,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  _buildCard(
                                    context,
                                    color: const Color(0xFFF9D878),
                                    title: 'Events\nStatus',
                                    value: '3',
                                    iconPath: 'assets/Images/Event.png',
                                  ),
                                  _buildCard(
                                    context,
                                    color: const Color(0xFF6247AA),
                                    title: 'Announcements',
                                    value: '0',
                                    iconPath: 'assets/Images/Anouncements.png',
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),

                              Row(
                                children: [
                                  _buildCard(
                                    context,
                                    color: const Color(0xFFD6C9F5),
                                    title: 'Approval\nStatus',
                                    value: '4',
                                    iconPath: 'assets/Images/Approve.png',
                                  ),
                                  _buildCard(
                                    context,
                                    color: const Color(0xFF6247AA),
                                    title: 'Complaint\nManagement',
                                    value: '0',
                                    iconPath: 'assets/Images/warning.png',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Drawer Icon Button
                      Positioned(
                        top: mq.height * 0.425,
                        right: mq.width * 0.005,
                        child: CircleAvatar(
                          backgroundColor: const Color(0XFF674D9F),
                          radius: mq.height * 0.035,
                          child: IconButton(
                            icon: Icon(
                              isDrawerOpen ? Icons.close : Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                isDrawerOpen = !isDrawerOpen;
                              });
                            },
                          ),
                        ),
                      ),

                      //Service Book Meal & Cancel Meal
                      Positioned(
                        top: mq.height * 0.67,
                        left: mq.height * 0.025,
                        right: mq.height * 0.025,
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  //code for meal booking
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 7.0),
                                  child: Container(
                                    height: mq.height * 0.07,
                                    child: Center(child: Text("+ Book Meal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: mq.width*0.045),)),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),// You can style it more
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 7.0),
                                child: Container(
                                  height: mq.height * 0.07,
                                  child: Center(child: Text("- Cancel Meal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: mq.width*0.045),)),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Today's Menu
                      Positioned(
                        top: mq.height * 0.754,
                        left: mq.height * 0.025,
                        right: mq.height * 0.025,
                        child: Container(
                          height: mq.height*0.2,
                          padding: EdgeInsets.symmetric(
                              horizontal: mq.width * 0.04, vertical: mq.height * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Header
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Today’s Menu",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: mq.width * 0.045,
                                      color: const Color(0XFF664DA0),
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: mq.width * 0.035,
                                      color: const Color(0XFF664DA0),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: mq.height * 0.015),

                              // Menu List
                              Expanded(
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  //physics: const NeverScrollableScrollPhysics(),
                                  itemCount: menuItems.length,
                                  itemBuilder: (context, index) {
                                    print(menuItems.length);
                                    final item = menuItems[index];
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: mq.height * 0.01),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "${item['title']} ",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: mq.width * 0.04,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: item['items'],
                                                  style: TextStyle(
                                                    fontSize: mq.width * 0.038,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (index != menuItems.length - 1)
                                            Padding(
                                              padding: EdgeInsets.symmetric(vertical: mq.height * 0.008),
                                              child: Divider(
                                                color: Colors.grey.shade400,
                                                thickness: 1,
                                              ),
                                            ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //Bottom Nav bar with transparent circle illusion
                      Positioned(
                        top: mq.height * 0.9,
                        left: mq.height * 0.055,
                        right: mq.height * 0.055,
                        child: Stack(
                          children: [
                            Container(
                              height: mq.height * 0.08,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12, // light shadow
                                    blurRadius: 20,
                                    offset: Offset(3, 10), // vertical offset
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                            ),
                            Positioned.fill(
                              child: CustomPaint(
                                painter: HollowCirclePainter(),
                              ),
                            ),
                            // Icons inside nav bar
                            Positioned.fill(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.home,
                                      color: Color(0xFF6C4CC4),
                                    ),
                                    onPressed: () {},
                                  ),
                                  //SizedBox(width: mq.width * 0.1), // Room for FAB

                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xFF6C4CC4),
                                    child:Icon(Icons.qr_code, size: 28, color: Colors.white),
                                  ),

                                  IconButton(
                                    icon: Icon(
                                      Icons.person,
                                      color:Color(0xFF6C4CC4),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (builder) {
                                        return ProfileScreen();
                                      }));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      ),

                      // Custom Drawer Overlay
                      if (isDrawerOpen)
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          width: mq.width * 0.8,
                          child: Container(
                            padding: EdgeInsets.all(16),
                            color: Color(0x199674D9F),
                            child: Stack(
                              children: [
                                // Grid of drawer items
                                GridView.count(
                                  crossAxisCount: 2,
                                  padding: EdgeInsets.only(top: 40), // leave space for the close button
                                  children: [
                                    _buildDrawerItem("assets/Images/Emergency.png", 'Emergency'),
                                    _buildDrawerItem("assets/Images/Complaint.png", 'Complaint'),
                                    _buildDrawerItem("assets/Images/Lave.png", 'Leave'),
                                    _buildDrawerItem("assets/Images/Mess.png", 'Mess'),
                                    _buildDrawerItem("assets/Images/Day.png", 'Night Out'),
                                    _buildDrawerItem("assets/Images/Late.png", 'Late Entry'),
                                    _buildDrawerItem("assets/Images/Payment.png", 'Payments'),
                                    _buildDrawerItem("assets/Images/Parcel.png", 'Parcel'),
                                    _buildDrawerItem("assets/Images/Poling.png", 'Polling'),
                                    _buildDrawerItem("assets/Images/Amenities.png", 'Amenities'),
                                    _buildDrawerItem("assets/Images/Ev.png", 'EV Slot'),
                                    _buildDrawerItem("assets/Images/vehicle.png", 'Vehicle'),
                                  ],
                                ),

                                // Close button
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0XFF674D9F),
                                    radius: 22,
                                    child: IconButton(
                                      icon: Icon(Icons.close, color: Colors.white, size: 18),
                                      onPressed: () {
                                        setState(() {
                                          isDrawerOpen = false;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ),

                      //

                    ],//Stack Children
                  ),
                ),
                ),
    );
  }
}

//card for highlight service
Widget _buildCard(
    BuildContext context, {
      required Color color,
      required String title,
      required String value,
      required String iconPath,
    }) {
  final Size mq = MediaQuery.of(context).size;

  return Expanded(
    child: Container(
      height: mq.height * 0.16,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(mq.width * 0.09), // radius based on screen
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Text(
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: mq.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            right: 12,
            child: Image.asset(
              iconPath,
              width: 60,
              height: 60,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    ),
  );
}

//Drawer icons
Widget _buildDrawerItem(String img, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(img),
        backgroundColor: Colors.white,
        //child: Image.asset(img),

      ),
      SizedBox(height: 8),
      Text(label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 12)),
    ],
  );
}




