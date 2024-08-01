import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipPage extends StatefulWidget {
  const TipPage({super.key});

  @override
  State<TipPage> createState() => _TipPageState();
}

class _TipPageState extends State<TipPage> {
  TextEditingController billcontroller =TextEditingController();
  String tip="";
  String total="";
  int check =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Text("$total"),
            Text("tip is $tip"),
            TextField(
              controller:billcontroller ,
              decoration: InputDecoration(
                hintText: 'Enter The Bill Amount',
                labelText: "Bill Amount"
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  check=1;
                }, child: Text("10%")),
                ElevatedButton(onPressed: (){
                  check=2;
                }, child: Text("15%")),
                ElevatedButton(onPressed: (){
                  check=3;
                }, child: Text("20%")),
              ],
            ),
            ElevatedButton(onPressed: (){
              calcutip();
            }, child: Text("Custome Tip"))
          ],
        ),
    );
  }
  void calcutip(){
    if(billcontroller!=""){
      int bamount = int.parse(billcontroller.text.toString());

      if(check==1){
      num mytip = bamount*10/100;
      tip="$mytip";
      num tb = mytip+bamount;
      total="$tb";

      }
      else if(check==2){
        num mytip1 =bamount*15/100;
        tip="$mytip1";
        num tb = mytip1+bamount;
        total="$tb";
      }
      else if(check==3){
        num mytip3 = bamount*20/100;
        tip="$mytip3";
        num tb = mytip3+bamount;
        total="$tb";
      }
    }
    else{
      tip="error";
    }
    setState(() {

    });
  }
}
