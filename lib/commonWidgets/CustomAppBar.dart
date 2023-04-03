import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? searchButton;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.searchButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset('asset/icons/leftArrow.svg'),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            InkWell(
              onTap: searchButton,
              child: SvgPicture.asset('asset/icons/search.svg'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.maxFinite, 80);
}
