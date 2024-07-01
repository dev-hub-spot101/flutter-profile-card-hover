import 'package:cardanimation/screens/social.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
            height: 420.0,
            width: 320.0,
            decoration: BoxDecoration(
                color: const Color(0xFF242324),
                borderRadius: BorderRadius.circular(16.0)),
            clipBehavior: Clip.antiAlias,
            child: Stack(
              children: [
                Positioned(
                  left: -30.0,
                  top: 150.0,
                  child: Text(
                    "Devhubspot",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 70.0,
                        color: Colors.white10),
                    softWrap: false,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 575),
                  curve: Curves.easeOut,
                  top: isHovered ? -240.0 : -80.0,
                  right: isHovered ? -100.0 : -80.0,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 575),
                    curve: Curves.easeOut,
                    height: isHovered ? 450.0 : 280.0,
                    width: isHovered ? 250.0 : 280.0,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(500)),
                  ),
                ),
                AnimatedAlign(
                  duration: const Duration(milliseconds: 375),
                  curve: Curves.easeOut,
                  alignment: isHovered
                      ? const Alignment(0.0, -0.9)
                      : const Alignment(0.0, 0.0),
                  child: SizedBox(
                    height: 140.0,
                    width: 320.0,
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(microseconds: 775),
                  curve: Curves.easeOut,
                  bottom: isHovered ? 0.0 : -160.0,
                  child: SizedBox(
                    height: 300.0,
                    width: 320.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Devhubpot",
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        AnimatedOpacity(
                          opacity: isHovered ? 1.0 : 0.0,
                          duration: isHovered
                              ? const Duration(milliseconds: 575)
                              : const Duration(milliseconds: 375),
                          curve:
                              isHovered ? Curves.easeInOutBack : Curves.easeOut,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "devhubspot2022@gmail.com",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Social Links: ",
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SocailLink(value: "Youtube"),
                                  SocailLink(value: "Facebook"),
                                  SocailLink(value: "Twitter"),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: isHovered
                      ? const Duration(milliseconds: 800)
                      : const Duration(milliseconds: 500),
                  curve: isHovered ? Curves.easeInCubic : Curves.easeOut,
                  bottom: isHovered ? 20.0 : -100.0,
                  child: AnimatedOpacity(
                    opacity: isHovered ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 1075),
                    curve: Curves.easeOut,
                    child: SizedBox(
                      width: 320.0,
                      child: Center(
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(20.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                          child: Text(
                            "Detail",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
