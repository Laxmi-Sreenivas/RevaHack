import 'package:design/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:design/navigationpage/navicons.dart';

class ReportCardData extends StatelessWidget {
  final List<String> reportcardDetails;

  const ReportCardData({Key? key,required this.reportcardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Medical Diagnosis:",
                boldText: reportcardDetails[0],
                fontsize: 12,
                bottomPadding: 10),),
            
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SpecialText(
                plainText: "Doctor Name:",
                boldText: reportcardDetails[1],
                fontsize: 12,
                bottomPadding: 10),),

            Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SpecialText(
                          plainText: "Date of Appointment:",
                          boldText: reportcardDetails[2],
                          fontsize: 12,
                          bottomPadding: 10),
                        Container(
                          padding: EdgeInsets.fromLTRB(60, 0, 5, 0),
                          child: SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 17, 98, 255),
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      width: 1),
                                )),
                              ),
                              child: Text(
                                'Open',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: null,
                            ),
                          ),
                        ),
                      ],
                    )),
              Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 111, 177, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(right: 25, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: SizedBox(
                                  
                                  height: 20,
                                  child: IconButton(
                                    onPressed: null,
                                    icon: Icon(NavIcons.download,color: Colors.black,size: 30,),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),),
                                Text(
                                  "Download",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(right: 25, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: IconButton(
                                    onPressed: null,
                                    icon: Icon(NavIcons.share,color: Colors.black,size: 30,),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )),
                      ],
                    ))
          ],
        
    );
  }
}
