import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size mq=MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: mq.height,
            child: Stack(
              children: [
              Container(
                height: mq.height*0.25,
                decoration: BoxDecoration(
                color: Color(0XFF674D9F),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              ),
              ),
        
                //Roommates details
                Positioned(
                  top: mq.height * 0.23,   // just below the purple header
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(16),
                    height: mq.height * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [  // Optional: Add shadow for better look
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("ROOM MATES", style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              letterSpacing: 1,
                            )),
                            SizedBox(width: mq.width*0.4),
                            Text("(4)", style: TextStyle(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              letterSpacing: 1,
                            )),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(4, (index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              radius: 20,
                            ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
        
                //text profile
                Positioned(
                  top: mq.height*0.02,
                    left: mq.width*0.4,
                    child: Text("PROFILE", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
                ),
        
                //share icon
                Positioned(
                    top: mq.height*0.005,
                    left: mq.width*0.72,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,))),
        
                //power icon
                Positioned(
                    top: mq.height*0.005,
                    right:  mq.width*0.03,
                    child: IconButton(onPressed: (){}, icon: Icon(Icons.power_settings_new,color: Colors.white,))),
        
                //Profile picture
                Positioned(
                  top: mq.height*0.06,
                  left: mq.height*0.055,
                  child: CircleAvatar(
                    radius: mq.width * 0.15,
                    backgroundColor: Colors.white,
                    backgroundImage: const AssetImage("assets/Images/profile.png"),
                  ),
                ),
        
                //Profile edit button
                Positioned(
                    top: mq.height*0.08,
                    left: mq.height*0.17,
                    child: CircleAvatar(
                      radius: mq.width * 0.023, // slightly bigger for white border
                      backgroundColor: Colors.white, // white outer circle
                      child: CircleAvatar(
                        radius: mq.width*0.02,
                        backgroundColor: Color(0XFF664DA0),
                          child: Icon(Icons.edit,color: Colors.yellow,size: mq.width*0.03,),
                      ),
                    ),
                ),
        
                //SizedBox(width: mq.width * 0.05),
        
                //user details
                Positioned(
                  top: mq.height*0.08,
                  left: mq.height*0.22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Harsh Jogi", style: TextStyle(fontFamily: "Roboto", fontSize: mq.width * 0.045, fontWeight: FontWeight.bold, color: const Color(0XFFFDFAFF),),),
                    Text("+91 123455 67890", style: TextStyle(fontFamily: "Roboto", fontSize: mq.width * 0.035, color: const Color(0XFFFFFFFF),),),
                    Text("Yocostays ID: 678XX", style: TextStyle(fontFamily: "Roboto", fontSize: mq.width * 0.03, color: const Color(0XFFFFFFFF),),),
                    Row(
                      children: [
                        Text("harshjogi@gmail.com  ", style: TextStyle(fontFamily: "Roboto", fontSize: mq.width * 0.03, color: const Color(0XFFFFFFFF),),),
                        Icon(Icons.edit_note, color: Colors.orange.shade300,)
                      ],
                    ),
                    ],
                  ),
                ),
        
                
                //Features
                Positioned(
                  top: mq.height * 0.4,
                  left: mq.width*0.05,
                  right: mq.width*0.05,
                  child: Container(
                    height: mq.height*0.1,
                    width: mq.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white, // required for shadow to be visible
                      borderRadius: BorderRadius.circular(15), // optional rounded corners
                      border: Border.all(
                        color: Colors.grey.shade300, // light grey border
                        width: 1.5,
                    ),
                      boxShadow: [
                      BoxShadow(
                      color: Colors.black12, // light shadow
                      blurRadius: 8,
                      offset: Offset(0, 4), // vertical offset
                    ),
                    ],
                    ),
        
                    child: Row(
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("    Hostel Details",style: TextStyle(fontSize: mq.width*0.05),),
                        )),
                        SizedBox(width: mq.width*0.32,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
        
                  ),
                ),
                Positioned(
                  top: mq.height * 0.51,
                  left: mq.width*0.05,
                  right: mq.width*0.05,
                  child: Container(
                    height: mq.height*0.1,
                    width: mq.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white, // required for shadow to be visible
                      borderRadius: BorderRadius.circular(15), // optional rounded corners
                      border: Border.all(
                        color: Colors.grey.shade300, // light grey border
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12, // light shadow
                          blurRadius: 8,
                          offset: Offset(0, 4), // vertical offset
                        ),
                      ],
                    ),
        
                    child: Row(
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("    Hostel Details",style: TextStyle(fontSize: mq.width*0.05),),
                        )),
                        SizedBox(width: mq.width*0.32,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
        
                  ),
                ),
                Positioned(
                  top: mq.height * 0.62,
                  left: mq.width*0.05,
                  right: mq.width*0.05,
                  child: Container(
                    height: mq.height*0.1,
                    width: mq.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white, // required for shadow to be visible
                      borderRadius: BorderRadius.circular(15), // optional rounded corners
                      border: Border.all(
                        color: Colors.grey.shade300, // light grey border
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12, // light shadow
                          blurRadius: 8,
                          offset: Offset(0, 4), // vertical offset
                        ),
                      ],
                    ),
        
                    child: Row(
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("    Hostel Details",style: TextStyle(fontSize: mq.width*0.05),),
                        )),
                        SizedBox(width: mq.width*0.32,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
        
                  ),
                ),
                Positioned(
                  top: mq.height * 0.73,
                  left: mq.width*0.05,
                  right: mq.width*0.05,
                  child: Container(
                    height: mq.height*0.1,
                    width: mq.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white, // required for shadow to be visible
                      borderRadius: BorderRadius.circular(15), // optional rounded corners
                      border: Border.all(
                        color: Colors.grey.shade300, // light grey border
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12, // light shadow
                          blurRadius: 8,
                          offset: Offset(0, 4), // vertical offset
                        ),
                      ],
                    ),
        
                    child: Row(
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("    Hostel Details",style: TextStyle(fontSize: mq.width*0.05),),
                        )),
                        SizedBox(width: mq.width*0.32,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
        
                  ),
                ),
                Positioned(
                  top: mq.height * 0.84,
                  left: mq.width*0.05,
                  right: mq.width*0.05,
                  child: Container(
                    height: mq.height*0.1,
                    width: mq.width*0.8,
                    decoration: BoxDecoration(
                      color: Colors.white, // required for shadow to be visible
                      borderRadius: BorderRadius.circular(15), // optional rounded corners
                      border: Border.all(
                        color: Colors.grey.shade300, // light grey border
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12, // light shadow
                          blurRadius: 8,
                          offset: Offset(0, 4), // vertical offset
                        ),
                      ],
                    ),
        
                    child: Row(
                      children: [
                        Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("    Hostel Details",style: TextStyle(fontSize: mq.width*0.05),),
                        )),
                        SizedBox(width: mq.width*0.32,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
        
                  ),
                ),
        
              ]//stack children
            ),
          ),
        ),
      ),
    );
  }
}

