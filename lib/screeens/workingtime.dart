

import 'package:demos9/Animation/fadeanimation.dart';
import 'package:flutter/material.dart';

class WorkingTimeAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WorkingState ();
  }

}

class WorkingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Çalışma Saatleri"),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/working.png')
                              )
                          ),
                        )),
                      ),

                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/computer.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 120,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Column(
                              children: <Widget>[

                                SizedBox(height: 20),
                                buildImage(),
                              ],
                            ),
                          ),
                        )),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.green[100]))
                              ),
                              child:      ListTile(
                                contentPadding: EdgeInsets.all(30),
                                leading: Icon(Icons.work,size: 30, color: Colors.green,),
                                title: Text("Çalışma Saatleri:", style: TextStyle(fontSize: 15),),
                                subtitle: Text("08:00-19:00" ),

                                onTap: (){


                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),

                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),
                        child: Center(
                          child: Text("Resmi günlerde şirketimiz kapalıdır", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),

                        ),
                      )),
                      SizedBox(height: 70,),

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

var assetImage=AssetImage('assets/images/laptop.png');
var image=Image(image: assetImage,);

buildImage(){

  return Center(

    child: Container(

      padding: EdgeInsets.only(top: 100),
      height: 300,
      width: 500,alignment: Alignment(0.9,-0.98),
      child: image,
    ),
  );
}