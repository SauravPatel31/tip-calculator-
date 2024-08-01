import 'package:flutter/material.dart';
import 'package:tip_calculate/ui_helper.dart';

class TipCalculatePage extends StatefulWidget{
  @override
  State<TipCalculatePage> createState() => _TipCalculatePageState();
}

class _TipCalculatePageState extends State<TipCalculatePage> {


  TextEditingController billamountcontroller =TextEditingController();
  int check=0;
  int personcount=1;
  String tip="000";
  num? tm;
  String totalamount="000";
  String perpesonamount="000";
  String errormsg="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color(0xffF5F3F4) ,
        body: Container(
          width: 550,
          color: const Color(0xffF5F3F4),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///Tital...
                SizedBox(
                  width: double.infinity,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/magician_hat.png",width: 75,),
                      const SizedBox(width: 12,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                           height: 45,
                            child: Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Mr",style: myfont17(),),
                                 Text("TIP",style: myfont28(textcolor: Colors.black),)
                              ],
                            ),
                          ),
                          const Text("Calculator",style:TextStyle(fontSize: 23,fontWeight: FontWeight.w800),  )
                        ],
                      )
                    ],
                  ) ,
                ),
                const SizedBox(height: 10,),
                ///Total per Person Bill Text...
                Container(
                  width: 650,
                  height: 290,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        ///Total per Person Bill Amount...
                        Container(
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              border: Border(
                              bottom: BorderSide(
                                  color: Colors.black,
                                width: 2
                              )
                            )
                          ),
                          ///Total p/person...
                          child: Column(
                            children: [
                              Text("Total p/person",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w900,fontFamily: "pop"),),
                              SizedBox(
                                height: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("\$",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w900,fontFamily: "pop"),),
                                    Text("$perpesonamount",style: TextStyle(fontSize: 65,fontWeight: FontWeight.w900,fontFamily: "pop")),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        ),
                        ///Total bill And Total Tip...
                        Container(
                          width: 600,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///Total Bill Amount and Tip..
                              Column(
                                children: [
                                  const Text("Total bill",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
                                    SizedBox(
                                    height: 60,
                                    child:  Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("\$",style: TextStyle(fontSize: 18,color: Color(0xff01C9BE),fontWeight: FontWeight.w900,fontFamily: "pop"),),
                                        Text("$totalamount",style: TextStyle(fontSize: 38,color: Color(0xff01C9BE),fontWeight: FontWeight.w900,fontFamily: "pop")),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              ///Total Tip...
                              Column(
                                children: [
                                  const Text("Total tip",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                                  SizedBox(
                                    height: 60,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text("\$",style: TextStyle(fontSize: 18,color: Color(0xff01C9BE),fontWeight: FontWeight.w900,fontFamily: "pop"),),
      
                                        Text("$tip",style: TextStyle(fontSize: 38,color: Color(0xff01C9BE),fontWeight: FontWeight.w900,fontFamily: "pop")),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
      
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                ///Enter The Bill Amount Text Filed..
                Container(
                  width: 650,
                   margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Enter",style: myfont17(),),
                            const Text("Your bill",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        ///Bill Amount Text Field...
                        const SizedBox(width: 13,),
                        SizedBox(
                           width: 280,
                          child: TextField(
                            controller: billamountcontroller,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w900,fontFamily: "pop"),
                            decoration: InputDecoration(
                              //errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.red)),
                              prefixText: "\$",
                              prefixStyle: myfontsecond28(textcolor: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                ///Choose Your Tip...
                Container(
                  constraints: const BoxConstraints(maxWidth: 650),
                  // color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10,bottom: 60),
                       // width: 120,
                       //  color: Colors.indigo,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Choose",style: myfont17(),),
                            const Text("your tip",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      ///10%,15%,20% ...
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ///10% Button...
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: InkWell(
                                      onTap: (){
                                        check=1;
                                        print("10% Split");
                                        },
                                      child: Container(
                                        width: 80,
                                        height: 60,
                                        color: const Color(0xff01C9BE),
                                        child: Center(child: Text("10%",style: myfontsecond28(textcolor: Colors.white),)),
            
                                      ),
                                    ),
                                  ),
                                  ///15% Button...
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: InkWell(
                                      onTap: (){
                                        check=2;
                                        print("15% Split");
                                        },
                                      child: Container(
                                        width: 80,
                                        height: 60,
                                        color: const Color(0xff01C9BE),
                                        child: Center(child: Text("15%",style: myfontsecond28(textcolor: Colors.white),)),
            
                                      ),
                                    ),
                                  ),
                                  ///20% Button...
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: InkWell(
                                      onTap: (){
                                        check=3;
                                        print("20% Split");
                                        },
                                      child: Container(
                                        width: 80,
                                        height: 60,
                                        color: const Color(0xff01C9BE),
                                        child: Center(child: Text("20%",style: myfontsecond28(textcolor: Colors.white),)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              ///Custom Tip Button...
                              InkWell(
                                onTap: (){
                                  calculatetip();
                                  print("Custom tip");},
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff01C9BE),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: const Center(child: Text("Custom tip",style:TextStyle(fontSize: 21,color: Colors.white,fontWeight: FontWeight.w800,fontFamily: "pop"))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                ///Split The Total...
                Container(
                   constraints: const BoxConstraints(maxWidth: 650),
                  // color: Colors.indigo,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Split",style: myfont17(),),
                            const Text("the total",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                      ///Count the Person...
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ///Minus Button
                              ClipRRect(
                                borderRadius: const BorderRadius.horizontal(left: Radius.circular(10)),
                                child: InkWell(
                                  onTap: (){
                                    if(1<personcount){
                                      personcount--;
                                      num ppamount = tm!/personcount;
                                      perpesonamount="${ppamount.toStringAsFixed(2)}";
                                    }
                                    setState(() {});
                                    },
                                  child: Container(
                                    width: 65,
                                    height:55,
                                    color: const Color(0xff01C9BE),
                                    child: Center(child: Text("-",style: myfontsecond28(textcolor: Colors.white),)),
                                  ),
                                ),
                              ),
                              ///Count++
                              Container(
                                width: 130,
                                height:55,
                                color: const Color(0xffFFFFFF),
                                child: Center(child: Text("$personcount",style: myfontsecond28(textcolor: Colors.black),)),
                              ),
                              ///Plus Button
                              ClipRRect(
                                borderRadius:  BorderRadius.horizontal(right:Radius.circular(10)),
                                child: InkWell(
                                  onTap: (){
                                    personcount++;
                                    num ppamount=tm!/personcount;
                                    perpesonamount ="${ppamount.toStringAsFixed(2)}";
                                    setState(() {});
                                    },
                                  child: Container(
                                    width: 65,
                                    height: 55,
                                    color: const Color(0xff01C9BE),
                                    child: Center(child: Text("+",style: myfontsecond28(textcolor: Colors.white),)),
                                  ),
                                ),
                              ),
            
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
  void calculatetip(){
    if(billamountcontroller.text!=""){
      int useramount =int.parse(billamountcontroller.text.toString());

      if(check==1){
        /// Tip Amount Calculate..
        num selecttip1 = useramount*10/100;
        tip="$selecttip1";
        ///Total Amount Calculate..
         tm = useramount+selecttip1;
        totalamount="$tm";
      }
      else if(check==2){
        ///Tip Amount Calculate..
        num selecttip2 = useramount*15/100;
        tip="$selecttip2";
        ///Total Amount Calculate..
        tm =useramount+selecttip2;
        totalamount="$tm";
      }
      else if(check==3){
        ///Tip Amount Calculate..
        num selecttip3 = useramount*20/100;
        tip="$selecttip3";
        ///Total Amount Calculate..
        tm = useramount+selecttip3;
        totalamount="$tm";
      }
    }
    else{
      errormsg="please enter the bill amount!!";
    }
    setState(() {

    });
  }

}

