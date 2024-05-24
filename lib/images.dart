import 'package:flutter/material.dart';
import 'desc.dart';
class images extends StatefulWidget {
  const images({super.key});

  @override
  State<images> createState() => _imagesState();
}

class _imagesState extends State<images> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        backgroundColor:Color(0xFFEECFEE) ,
    appBar:AppBar(title:Text("BMI Calculator"),
    leading:IconButton(onPressed: (){},icon: Image.asset("assets/bmi.png"),),
    actions: [
    //Icon(Icons.accessibility_sharp),
    IconButton(onPressed: (){

      Navigator.pop(context);
    },icon:Icon(Icons.arrow_back_ios)),
    IconButton(onPressed: (){
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
        backgroundColor: Colors.black,
        icon: Image.asset('assets/bmi.png',
          height: 60,
        ),
        title: Text('About TempX'),
        content: Text("App Name : BMIbody\n\nDeveloper : Nehal Jain\n\nDeveloped Date : Aug 7, 2023\n\n"
            "Description : \nThis app is used to identify whether you have normal body mass index or not. This sleek and user-friendly app simplifies BMi for your convenience."
            " Whether you're traveling or simply curious about you heath, Then you can consider our app."
            " Download now and experience BMI made effortless.\n\nVersion: 1.0.0\n",style:TextStyle(color:Colors.white)),

        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DescApp())),
            child: const Text('More Info'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
      );
    },icon:Image.asset("assets/lifecoach.png"))
    ],
    backgroundColor:Color(0xFFA34DEC),
    foregroundColor: Colors.black,
    //bottom: DefaultTabController(child:,)
    ),
    body:


    // Center(
    //
    //   child: Container(
    // width: 350.0,
    // height: 450.0,
    // padding: EdgeInsets.only(
    // left: 20,
    // right: 20,
    // top: 40,
    // bottom:20,
    // ),
    // decoration: BoxDecoration(
    // image:DecorationImage(
    //     image: AssetImage("assets/one.jpg"),
    //   fit: BoxFit.cover,
    //    ),
    // boxShadow: [
    // BoxShadow(
    // color:Colors.purple,
    // blurRadius: 25.0,
    // )
    // ],
    // border:Border.all(color:Colors.purple),
    //
    // //color:Colors.transparent,
    // borderRadius: BorderRadius.only(topLeft:Radius.circular(50.0),
    // bottomRight: Radius.circular(50.0)),
    //
    // ),
    //   ),
    // ),
        Center(
          child: Column(

            children: [
              Text(" Images that explains you the concept of BMI ",style:TextStyle(
                  color:Colors.purpleAccent,
                  backgroundColor: Colors.black,
                  fontSize: 19.5)),
              Image.asset("assets/one.jpg"),
              Image.asset("assets/two.jpg"),
              Image.asset("assets/four.jpg"),
            ],
          ),
        )
    ),
      );
  }
}

