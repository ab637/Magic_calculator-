
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage
> {
  String calcText = " ";
  int count = 0;
  String dob = "";
  @override
  Widget build(BuildContext context) {

    return  SafeArea(child: Scaffold(

      backgroundColor:  const Color(0xff22252D),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Row( mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
            height:  30,
            child: Text(calcText, style: const TextStyle(color: Colors.white, fontSize: 20),),


          ),
             const SizedBox(
              width : 35,
            )
            ],
        ),

         Container (

           decoration:  const BoxDecoration(color: Color(0xff2A2D36)
           , borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(50),
                 topRight: Radius.circular(50),
                 bottomLeft: Radius.circular(50),
                 bottomRight: Radius.circular(50),
               ) ),

           child:  Container(
             height: 375,
             child: Column(

               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [blocks("AC",Colors.green),blocks("CC", Colors.green),blocks("%", Colors.green), blocks("/", Colors.red)],
               ),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [blocks("1"),blocks("2"),blocks("3"), blocks("*", Colors.red)],),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [blocks("4"),blocks("5"),blocks("6"), blocks("-",Colors.red)],),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [blocks("7"),blocks("8"),blocks("9"), blocks("+",Colors.red)],),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                 children: [blocks("/"),blocks("0"),blocks("."), blocks("=",count==0 ?Colors.red: Colors.blue)],),

             ],
              ),
           ),
         ),

       ],
     ),
    ),


    );
  }
  Widget blocks(String text, [Color? color]){
    return Padding(
      padding: const EdgeInsets.only( top: 10,left: 8,right: 8) ,
      child: GestureDetector(
        onTap: () {
          if(text=="AC")
            {
              setState(() {
                calcText = " ";
              });
            }
          else if(text=="=")
            {
              if(count==0)
                {

                  setState(() {
                    dob = calcText;
                    count+=1;
                    calcText = "";
                  });
                }
              else{
                setState(() {
                  calcText = dob;
                  count = count -1;

                });
              }
            }

          else
          setState(() {

            calcText = calcText+text;
          });
        } ,
        child: Container(
          height: 65,
          width: 65,
          decoration: const BoxDecoration(color: Color(0xff22252D),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
          child:    Center(
            child:  Text( text,
            style:  TextStyle(color: color ?? Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
          ),
        ),
      )
    );
  }
}
