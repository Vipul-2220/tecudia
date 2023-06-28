import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tecudia/models/categories.dart';

class CategoriesScroll extends StatefulWidget {
  const CategoriesScroll({super.key});

  @override
  State<CategoriesScroll> createState() => _CategoriesScrollState();
}

class _CategoriesScrollState extends State<CategoriesScroll> {
  final List<Categories> _categories = cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: cat.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                color: index == 0 ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    _categories[index].image,
                    height: 50,
                    color: index == 0 ? Colors.white : null,
                    // color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(_categories[index].name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
