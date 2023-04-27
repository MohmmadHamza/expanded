import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) :super(key: key);
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(

        body: SafeArea(
          child:Column(
            children: [
              customeContainer(
                number: 8,
                color: Colors.red,
              ),
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    customeContainer(
                      number: 5,
                      color: Colors.blueAccent,
                    ),
                    
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      customeContainer(
                                        number: 1,
                                        color: Colors.green,
                                      ),
                                      customeContainer(
                                        number: 1,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ),
                                customeContainer(
                                  number: 2,
                                  color: Colors.brown,
                                ),
                              ],
                            ),
                          ),
                          
                          
                          customeContainer(
                            number: 3,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget customeContainer({
  required int number,
  required Color color,
})
{
  return  Expanded(
    flex: number,
    child: Container(
      constraints: BoxConstraints.expand(),
      color: color,
      child:Center(child:Text('${number}',
        style: TextStyle(
          color:Colors.white,
          fontSize: 30,
        ),
      ),
      ),
    ),
  );
}