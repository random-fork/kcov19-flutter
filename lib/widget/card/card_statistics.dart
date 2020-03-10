import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kawalcovid19/common/color_palettes.dart';
import 'package:kawalcovid19/common/sizes.dart';

class CardStatistics extends StatelessWidget {
  final int confirmed, recovered, deaths;
  final String lastUpdatedAt;

  const CardStatistics(
      {Key key,
      this.confirmed,
      this.recovered,
      this.deaths,
      this.lastUpdatedAt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.dp6(context))),
                  elevation: 3.0,
                  child: Container(
                    padding: EdgeInsets.all(Sizes.dp16(context)),
                    child: Center(
                        child: Column(
                      children: <Widget>[
                        Text(
                          confirmed.toString(),
                          style: TextStyle(
                            fontSize: Sizes.width(context) / 8,
                            color: ColorPalettes.orange,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Terkonfimasi",
                          style: TextStyle(fontSize: Sizes.dp12(context)),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.dp6(context))),
                  elevation: 3.0,
                  child: Container(
                    padding: EdgeInsets.all(Sizes.dp16(context)),
                    child: Center(
                        child: Column(
                      children: <Widget>[
                        Text(
                          recovered.toString(),
                          style: TextStyle(
                            fontSize: Sizes.width(context) / 8,
                            color: ColorPalettes.green,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text("Sembuh", style: TextStyle(fontSize: Sizes.dp12(context))),
                      ],
                    )),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Sizes.dp6(context))),
                  elevation: 3.0,
                  child: Container(
                    padding: EdgeInsets.all(Sizes.dp16(context)),
                    child: Center(
                        child: Column(
                      children: <Widget>[
                        Text(
                          deaths.toString(),
                          style: TextStyle(
                            fontSize: Sizes.width(context) / 8,
                            color: ColorPalettes.badgeColor,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text("Meninggal", style: TextStyle(fontSize: Sizes.dp12(context))),
                      ],
                    )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Sizes.dp4(context),
          ),
          Center(
            child: Text(
              "Pembaharuan Terakhir: " +
                  DateFormat("dd MMM yyyy HH:mm")
                      .format((DateTime.parse(lastUpdatedAt))),
              style: TextStyle(fontSize: Sizes.dp12(context)),
            ),
          ),
        ],
      ),
    );
  }
}