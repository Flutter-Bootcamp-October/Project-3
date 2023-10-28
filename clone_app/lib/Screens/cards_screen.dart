import 'package:clone_app/Screens/wedgets/change_able_icon.dart';
import 'package:clone_app/Screens/wedgets/custom_icon.dart';
import 'package:clone_app/data/dataset.dart';
import 'package:clone_app/data/history.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
List<History> buyhistory = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var element in dataset) {
      buyhistory.add(History.fromjason(element));
    }
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Column(children: [
        Container(
          color: Color(0xff024d91),
        width: 500,
          child: Row(
                       children: [
                         Padding(
               padding: const EdgeInsets.only(top: 60, left: 20),
               child: ChangeAbleIcon(Icons.add, Color(0xff024d91), 35),
             ),
             Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 50),
                child: Container(
                  height: 60,
                  child: Column(
                    children: [
                    Text(
                        "مساء الخير",
                        style: TextStyle(color: Colors.white),
                      ),
                    Text("فيصل", style: TextStyle(color: Colors.white)),
                  ],
                                    ),
                ),
              ),
              CardIcon(),
                         ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text(
              "بطاقات إمكان",
              style: TextStyle(fontSize: 15, color: Color(0xffe2c38c)),
            ),
          Text(" urpay بطاقه",
                style: TextStyle(fontSize: 15, color: Color(0xffdfae64))),
        ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(height: 5, width: 150, color: Color(0xfff2e2c7)),
          Container(height: 5, width: 200, color: Color(0xfff6a732))
        ],
        ),
       SizedBox(
          height: 30,
        ),
// Wrapping with Material for shadow
Material(
  // Adding elevation results in shadow
  elevation: 5.0,
  shadowColor:
                Colors.black.withOpacity(0.5), // Customize shadow color
  borderRadius: BorderRadius.circular(12),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Container(
      height: 220,
      width: 350,
      child: Image.asset(
        "lib\\imges\\card1.jpg", // Make sure the path to your image is correct
        fit: BoxFit.fill,
      ),
    ),
            )),
        Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(8),
            child: Container(
                      color: Color(0xffffffff),
                      height: 50,
                      width: 166,
            child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("إعدادات البطاقة"),
              ),
              Icon(
                            Icons.settings,
                            color: Color(0xfff2a542),
                          )
                        ],
                      ))),
              Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(8),
            child: Container(
                            color: Color(0xffffffff),
                            height: 50,
                            width: 166,
            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("قفل البطاقة"),
              ),
              Icon(
                                  Icons.lock_outline,
                                  color: Color(0xfff2a542),
            )
],
                            ))),
                  ],
            ),
          )   
      ],
          ),
    ),
          
          Container(
            height: 200,
            width: 380,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
              ClipRRect(
                                borderRadius: BorderRadiusDirectional.circular(16),
                    child: Container(
                    color: Color(0xffffffff),
                    height: 1000,
                    width: 300,
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "عرض الكل",
                                  style: TextStyle(color: Color(0xffdcb577)),
                                ),
                                Spacer(),
                                Text("عمليات البطاقة",
                                    style: TextStyle(color: Color(0xff939393))),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 500,
                                      width: 340,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ListView.separated(
                                              itemCount: buyhistory.length,
                                              separatorBuilder:
                                                  (context, index) => Divider(),
                                              itemBuilder: (context, index) {
                                                return Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text(
                                                            " SAR ${buyhistory[index].price} ",style: TextStyle( color: buyhistory[index].price.startsWith("+")?Colors.green:Colors.red),),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 13),
                                                          child: Text(
                                                            "${buyhistory[index].date}",
                                                            style: TextStyle(
                                                                fontSize: 9,),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                       Column(
                                                      children: [
                    Row(
                                                          children: [
                                                            Column(
                                                              children: [
                      Text(
                                                                    "${buyhistory[index].companyname}"),
                                                                Text("مشتريات"),
                                                              ],
                                                            ),
                                                            ChangeAbleIcon(
                                                                Icons
                                                                    .card_membership_outlined,
                                                                Colors.blue,
                                                                20),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                );
                                              },
                                            ),
                                          )
                  ],
                  ),
                )
                ],
                                )
                              ],
                            )
                          ],
                        ))),
              )
              ],
            ),
          ),
      ]),
    );
  }
}
