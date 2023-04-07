import 'package:exchap3/commonWidgets/CustomAppBar.dart';
import 'package:exchap3/home/contains.dart';
import 'package:exchap3/home/homeWidgets/HorizontalCard.dart';
import 'package:exchap3/home/homeWidgets/VerticalCard.dart';
import 'package:exchap3/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? searchButton;
  const HomeScreen({Key? key, this.searchButton}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

ThemeManager _themeManager = ThemeManager();

class _HomeScreenState extends State<HomeScreen> {
  bool changeIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Salad',
        searchButton: widget.searchButton,
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 4.0,
        onRefresh: () async {
          setState(() {
            changeIcon = !changeIcon;
          });
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 170,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 10),
                  itemCount: horizontalListViewData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      HorizontalCard(item: horizontalListViewData[index]),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sort by',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Row(
                    children: [
                      Text('Most Popular',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.red)),
                      const SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(
                        'asset/icons/filter.svg',
                        color: Colors.red,
                        width: 22,
                        height: 22,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              // VerticalCard(),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 12 / 16,
                  ),
                  itemCount: verticalListViewData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      VerticalCard(item: verticalListViewData[index], iconState: changeIcon),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
