import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tecudia/models/service.dart';

class ServicesScroll extends StatefulWidget {
  const ServicesScroll({super.key});

  @override
  State<ServicesScroll> createState() => _ServicesScrollState();
}

class _ServicesScrollState extends State<ServicesScroll> {
  final List<Services> _services = serv;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _services.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 90,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _services[i].image,
                    scale: 10,
                  ),
                  Text(_services[i].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
