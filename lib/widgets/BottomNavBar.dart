import 'package:assisment_1/Screens/ProfileScreen.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  late Size mq;
  CustomBottomNav(Size mqw){
    mq=mqw;
  }
  @override
  Widget build(BuildContext context) {
    return
      Stack(
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
    );
  }
}

class HollowCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..blendMode = BlendMode.clear;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.height * 0.35;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
