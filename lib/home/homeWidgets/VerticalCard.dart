import 'package:exchap3/home/model.dart';
import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  final VerticalItems item;
  const VerticalCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double scaleWidth =  (width - 100) / 2;
    final double scaleHeight = scaleWidth * 16 / 10;
    return Container(
      height: scaleHeight,
      width: scaleWidth,
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
              top: 8,
              right: 8,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  item.mark ? Icons.bookmark_added_rounded : Icons.bookmark_border_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              )),
          Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 20,
                          width: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            item.avatar,
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(width: 6,),
                      Text(item.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.subtitle2)
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
