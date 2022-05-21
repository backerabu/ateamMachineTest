import 'package:ateam_machine_test/provider/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chart_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageProvider(),
      builder: (BuildContext context, Widget widget) {
        var homePageProvider = Provider.of<HomePageProvider>(context);
        return Scaffold(
            key: homePageProvider.scaffKey,
            appBar: AppBar(
              title: Text("ATeamSoftSolutions"),
              actions: [
                IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChartPage()),
                      );
                    })
              ],
            ),
            body: homePageProvider.products.length == 0
                ? Center(child: CircularProgressIndicator())
                : GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: homePageProvider.products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          homePageProvider.showModalBottomSheetMenu(
                              context, index);
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.network(
                                    homePageProvider.products[index].image,
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                              GridTileBar(
                                backgroundColor: Colors.white,
                                title: Text(
                                  homePageProvider.products[index].title,
                                  style: TextStyle(color: Colors.black),
                                ),
                                subtitle: Text(
                                  homePageProvider.products[index].price
                                      .toString(),
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }));
      },
    );
  }
}
