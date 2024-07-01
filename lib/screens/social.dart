import 'package:flutter/material.dart';

class SocailLink extends StatefulWidget {
  final String? value;

  const SocailLink({super.key, this.value});

  @override
  State<SocailLink> createState() => _SocailLinkState();
}

class _SocailLinkState extends State<SocailLink> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          isHovered = false;
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          height: 40.0,
          // width: 50.0,
          decoration: BoxDecoration(
              color: isHovered ? Colors.blueAccent : Colors.white,
              borderRadius: BorderRadius.circular(5.0)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.value!,
                style: TextStyle(
                    color: isHovered ? Colors.white : Colors.black87,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
