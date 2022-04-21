import 'package:flutter/material.dart';

class HMAbility extends StatefulWidget {
  final Widget body;
  final String title;
  final Widget? floatingActionButton;
  final List<Widget> actions;
  const HMAbility(
      {Key? key,
      required this.body,
      required this.title,
      this.floatingActionButton,
      this.actions = const []})
      : super(key: key);

  @override
  State<HMAbility> createState() => _HMAbilityState();
}

class _HMAbilityState extends State<HMAbility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 241, 243, 245),
              expandedHeight: 180.0,
              pinned: true,
              elevation: 0,
              stretch: true,
              leading: Container(),
              actions: widget.actions,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                title: Text(
                  widget.title,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ];
        },
        body: Container(
            color: Color.fromARGB(255, 241, 243, 245),
            height: double.infinity,
            width: double.infinity,
            child: widget.body),
      ),
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
