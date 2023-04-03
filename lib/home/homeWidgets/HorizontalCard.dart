import 'package:exchap3/home/model.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  final HorizontalItems item;
  const HorizontalCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      height: 170,
      width: width - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(item.image),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              bottom: 8,
              left: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.title, style: Theme.of(context).textTheme.headline4,),
                  const SizedBox(height: 6,),
                  Text('${item.recipes} recipes', style: Theme.of(context).textTheme.bodyText2),
                ],
              )),
        ],
      ),
    );
  }
}
