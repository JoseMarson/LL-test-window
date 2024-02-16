import 'package:flutter/material.dart';
import 'package:locallog_driver_interface/modules/home/widgets/app_bar/app_bar_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_store.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/carousel_slider_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/online_button_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/online_status_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/searching_route_widget.dart';
import 'package:locallog_driver_interface/modules/home/widgets/home_widgets/text_status_widget.dart';
import 'package:locallog_driver_interface/theme/app_theme.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeStore>(
      create: (context) => HomeStore(),
      child: _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatefulWidget {
  @override
  State<_HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<_HomePageContent> {
  @override
  Widget build(BuildContext context) {
    var homeStore = Provider.of<HomeStore>(context);

    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OnlineStatusWidget(isOnline: homeStore.isOnline),
              TextStatusWidget(isOnline: homeStore.isOnline),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CarouselSliderWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Visibility(
                      visible: !homeStore.isOnline,
                      child: OnlineButtonWidget(
                        onPressed: () {
                          homeStore.buscarRotas();
                        },
                      ),
                    ),
                    Visibility(
                      visible: homeStore.isOnline,
                      child: SearchingRouteWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppTheme.colors.backgroundSecundary,
        child: Icon(Icons.code, color: AppTheme.colors.onlineName),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
