import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:harmonyos/harmonyos.dart';
import 'package:sprung/sprung.dart';

void showHMDialog(bool isTablet, BuildContext context, List<Widget> options,
    String title, Widget body, bool isColumn) {
  bool Completed = false;
  showGeneralDialog(
      context: context,
      transitionDuration: Duration(milliseconds: 300),
      barrierDismissible: false,
      transitionBuilder: (BuildContext context, a1, a2, widget) {
        final curvedValue = Sprung.custom(
          damping: 20,
          stiffness: 180,
          mass: 1.0,
          velocity: 1.0,
        ).transform(a1.value);
        final curvedValue2 = Curves.linear.transform(a1.value);
        if (curvedValue == 1) {
          Completed = true;
        }
        return Container(
          color: Color.fromARGB(41, 0, 0, 0).withOpacity(0.01),
          child: Transform.scale(
            scale: Completed ? 1 : curvedValue,
            child: Opacity(
              opacity: curvedValue2,
              child: Dialog(
                elevation: 0,
                alignment: Alignment.bottomCenter,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                backgroundColor: Colors.transparent, //this right here
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 15.0,
                        sigmaY: 15.0,
                      ),
                      child: Container(
                        //height: 130,
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: isTablet ? 350 : double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              body,
                              SizedBox(
                                height: 5,
                              ),
                              isColumn ? Column (
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  for (var option in options)
                                  option
                                ],
                              ) :Row (
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  for (var option in options)
                                    Expanded(
                                        child: Row(
                                      children: [
                                        Expanded(child: option),
                                        SizedBox(
                                          height: 25,
                                          child: VerticalDivider(
                                            thickness: 1,
                                            width: 15,
                                            color: Color.fromRGBO(0, 0, 0, 0.2),
                                          ),
                                        ),
                                      ],
                                    )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Text('1234');
      });
}
