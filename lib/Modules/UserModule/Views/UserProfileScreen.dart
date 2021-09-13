import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gps_app/Modules/ComponentsModule/AppCard.dart';
import 'package:gps_app/Resources/StringConstants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(
                    MdiIcons.accountCircle,
                    size: 100,
                  ),
                  radius: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone_in_talk,
                  size: 30,
                ),
                SizedBox(
                  width: 80,
                ),
                Icon(
                  MdiIcons.whatsapp,
                  size: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(MdiIcons.accountEdit),
                ),
                SizedBox(
                  width: 40,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    'الاسم',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
            AppCard(
              color: Colors.red,
              width: ScreenUtil().setWidth(360),
              height: ScreenUtil().setHeight(60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' مسرع ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                  SizedBox(
                    width: 80,
                  ),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$driverText',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ],
              ),
            ),
            AppCard(
              color: Colors.green,
              width: ScreenUtil().setWidth(360),
              height: ScreenUtil().setHeight(60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' متوقفة ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                  SizedBox(
                    width: 80,
                  ),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$vehicleText',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ],
              ),
            ),
            AppCard(
              height: ScreenUtil().setHeight(216),
              width: ScreenUtil().setWidth(360),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '$violationsText',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      )),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          '$singleViolationText $numberText 4',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '$timeText',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )),
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'شارع مكرم عبيد',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '$dayText',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )),
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'شارع مكرم عبيد',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '$placeText',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )),
                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'شارع مكرم عبيد',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(MdiIcons.arrowLeft),
                      Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              '$moreText',
                              style: TextStyle(
                                  color: Colors.blue, fontSize: 15),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
