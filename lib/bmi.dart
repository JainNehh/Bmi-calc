import 'package:flutter/material.dart';
import 'images.dart';
import 'desc.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  void  bmicalc()
  {
    name = _name.text;
    height=double.parse(_height.text.toString());
    weight=double.parse(_weight.text.toString());


    setState(()
    {
      bmi=(weight!/(height!*height!));
      bmi= double.parse((bmi!).toStringAsFixed(2));
      if (bmi! < 18.5) {
      Icon:Icons.ac_unit;
        calc ="Your BMI is  $bmi  , so you are underweight.";
      }

      if (bmi! >= 18.5 && bmi! < 24.9) {
        calc ="Your BMI is  $bmi  , so you have a normal weight.";
      }

      if (bmi! >= 25) {
        calc ="Your BMI is   $bmi , so you are overweight.";
      }

      if (bmi! >=30) {
        calc ="Your BMI is   $bmi , so you are Fat.";
      }

    });
  }

  TextEditingController _name=TextEditingController();
  TextEditingController _height=TextEditingController();
  TextEditingController _weight=TextEditingController();
  String? name;
  double? height;
  double? weight;
  double? bmi;
  String? calc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xFFEECFEE) ,
    appBar:AppBar(title:Text("BMI Calculator"),
        backgroundColor:Color(0xFFA34DEC),
        foregroundColor: Colors.black,
    leading:IconButton(onPressed: (){},icon: Image.asset("assets/bmi.png"),),
    actions: [
    //Icon(Icons.accessibility_sharp),
    IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>images()));
    },icon:Icon(Icons.add_box_rounded)),
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
    },
    icon: Image.asset("assets/lifecoach.png"),
    //size: 20,

    ),
    ],
    ),
    //bottom: DefaultTabController(child:,)
    body:
    Center(child: Container(
    width: 350.0,
    height: 450.0,
    padding: EdgeInsets.only(
    left: 20,
    right: 20,
    top: 40,
    bottom:0,
    ),
    decoration: BoxDecoration(
    // image:DecorationImage(
    //     image: NetworkImage("https://t3.ftcdn.net/jpg/04/48/06/74/360_F_448067440_hTWoSx63cvavKS0qYDs1BR2Qg5C0JVB7.jpg"),
    //     fit: BoxFit.cover),

    boxShadow: [
    BoxShadow(
    color:Colors.transparent,
     //blurRadius: 25.0,
    )
    ],
    //border:Border.all(color:Colors.teal.shade800),

    //color:Colors.transparent,
    borderRadius: BorderRadius.only(topLeft:Radius.circular(50.0),
    bottomRight: Radius.circular(50.0)),

    ),

    // constraints: BoxConstraints(),

    child:Column(
    children:[
    //Text("BMI CALCULATOR",style:TextStyle(color:Colors.black,fontSize: 30)),

    //Text("Email",style:TextStyle(color:Colors.white,fontSize: 20,)),
    Padding(padding: EdgeInsets.all(20.0),
        child:
    TextField(controller: _name,
    style: TextStyle(
        color: Color(0xEC460386)),
      decoration: const InputDecoration(

          focusedBorder : OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color:Colors.purpleAccent,
              width: 1.7,
            ),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderSide: BorderSide(
              color:Colors.redAccent,
              width: 3,
            ),),
    labelText: " Username" ,
    icon: Icon(Icons.person_add_alt_rounded),
    iconColor: Colors.black,
    labelStyle: TextStyle(color:Colors.black,fontSize: 20)


    ),),),
    //Text("Password",style:TextStyle(color:Colors.white,fontSize: 20)),
        Padding(padding: EdgeInsets.all(20.0),
            child:
    TextField(controller: _height,
    style: TextStyle(
    color:Color(0xEC460386) ),
    decoration: const InputDecoration(
        focusedBorder : OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color:Colors.purpleAccent,
            width: 1.7,
          ),),
        border : OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color:Colors.purpleAccent,
            width: 1.5,
          ),),
    labelText: " Height (m)",
    icon: Icon(Icons.height_sharp),
    iconColor: Colors.black,
    labelStyle: TextStyle(color:Colors.black,fontSize: 20)
    )),),
        Padding(padding: EdgeInsets.all(20.0),
            child:
    TextField(controller: _weight,
    style: TextStyle(
        color: Color(0xEC460386)),
    decoration: const InputDecoration(

        focusedBorder : OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color:Colors.purpleAccent,
            width: 1.7,
          ),),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color:Colors.purple,
            width: 10,
          ),),
    labelText: " Weight (kg)",
    icon: Icon(Icons.monitor_weight_rounded),
    iconColor: Colors.black,
    labelStyle: TextStyle(color:Colors.black,fontSize: 20)
    )),),

    Center(
      child: SizedBox(
        height: 70,
        //width:40,
      child: ElevatedButton(onPressed: (){bmicalc();
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: Colors.deepPurpleAccent,
            title: Text("$calc ",
              style:TextStyle(color:Colors.black)),
            content: const Text('ThankYOU  :) ',style: TextStyle(color:Colors.pink),),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
      ),
      );

       }, child:
      IconButton(onPressed: (){
        bmicalc();
        showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
          title: Text("$calc ",
              style:TextStyle(color:Colors.black)),
          content: const Text('ThankYOU  :) ',style: TextStyle(color:Colors.pink),),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
        );
      },
        icon: Image.asset("assets/but.png"),iconSize:70 ,),
style:ElevatedButton.styleFrom(
  backgroundColor: Colors.black,
  shadowColor: Colors.deepPurpleAccent,
  surfaceTintColor: Colors.deepPurpleAccent,
  foregroundColor: Colors.deepPurpleAccent ,
  shape:CircleBorder( //to set border radius to button
        //borderRadius: BorderRadius.circular(20),

  ),
)

      ),
      //Text("Name:  $name",style:TextStyle(color:Colors.white)),
      //Text(" $calc",style:TextStyle(color:Colors.lightGreenAccent)),
      ),
    ),
    ]
    )
    ))



    );
  }
}
