import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:nubank_speed_code/utils/constants.dart';
import 'package:nubank_speed_code/widgets/bottom_menu_widget.dart';
import 'package:nubank_speed_code/widgets/cards_list_widget.dart';
import 'package:nubank_speed_code/widgets/custom_app_bar.dart';
import 'package:nubank_speed_code/widgets/settings_widget.dart';
import 'package:pull_to_refresh_notification/pull_to_refresh_notification.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showSettings = false;
  bool showValues = false;

  @override
  void initState() {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    super.initState();
  }

  Future<bool> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification) {
          notification.disallowGlow();
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF8905be), Color(0xFF8906bd)],
            ),
          ),
          child: PullToRefreshNotification(
            color: Colors.transparent,
            onRefresh: onRefresh,
            child: CustomScrollView(
              slivers: [
                PullToRefreshContainer(_pullToRefreshWidget),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: paddingH,
                    ),
                    child: showSettings
                        ? SettingsWidget()
                        : CardsListWidget(
                            showingValues: showValues,
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: showSettings ? null : BottomMenuWidget(),
    );
  }

  Widget _pullToRefreshWidget(PullToRefreshScrollNotificationInfo info) {
    var offset = info?.dragOffset ?? 0.0;
    return SliverAppBar(
      backgroundColor: Color(primaryColor),
      elevation: 0,
      pinned: true,
      centerTitle: true,
      expandedHeight: (kToolbarHeight * 2) + offset,
      flexibleSpace: offset > 0
          ? Center(
              child: SizedBox(
                width: 32,
                height: 32,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            )
          : Container(),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(
          onShowBalance: () => setState(() => showValues = !showValues),
          onShowSettings: () => setState(() => showSettings = !showSettings),
          showingSettings: showSettings,
          showingValues: showValues,
        ),
      ),
    );
  }
}
