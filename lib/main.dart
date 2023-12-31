import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home:SettingsPageUI(),
    );
  }
}

class SettingsPageUI extends StatefulWidget {


  @override
 _SettingsPageUIState createState() => _SettingsPageUIState();
}

class _SettingsPageUIState extends State<SettingsPageUI> {
  bool valNotify1=true;
bool valNotify2=false;
bool valNotify3=false;
onChangeFunctional1(bool newValue1)
{
  setState((){
valNotify2=newValue1;
  });
}
onChangeFunctional2(bool newValue2)
{
  setState((){
valNotify1=newValue2;
  });
}
onChangeFunctional3(bool newValue3)
{
  setState((){
valNotify3=newValue3;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title:Text(" Settings UI",style:TextStyle(fontSize: 22)),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
          
      ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
            Icon(
              Icons.person,
              color: Colors.deepPurple,
            ),
            SizedBox(width: 10),
            Text("Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
          ],
        ),
      Divider(height: 20,thickness: 1),
      SizedBox(height: 10),
          buildAccountOption(context,"Change Password"),
          buildAccountOption(context,"Content settings"),
          buildAccountOption(context, "Social"),
          buildAccountOption(context,"Language"),
          buildAccountOption(context, "Privacy and Securtiy"),
          SizedBox(height: 40),
          Row(
            children: [
              Icon(Icons.volume_up_outlined,color: Colors.deepPurple),
              SizedBox(width: 10),
              Text("Notifications",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
           
            ],
          ),
          Divider(height: 20,thickness: 1),
          SizedBox(height: 10),
          buildNotificationOption("Theme Dark", valNotify1,onChangeFunctional1),
            buildNotificationOption("Account Active", valNotify2,onChangeFunctional2),
              buildNotificationOption("Opportunity", valNotify3,onChangeFunctional3),
              SizedBox(height: 50),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  onPressed: (){},
                  child:Text("SIGN OUT",style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2.2,
                    color: Colors.black
                  )) ,
                ), 
              )
          ],
        ),
      ),
    );
  }
  Padding buildNotificationOption(String title,bool value,Function onChangeMethod)
  { return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children:[
  Text(title,style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.grey[600]
  )),
  Transform.scale(
    scale:0.7,
    child: CupertinoSwitch(
      activeColor: Colors.blue,
      trackColor: Colors.grey,
      value: value,
     onChanged: (bool newValue)
     {
      onChangeMethod(newValue);
     },
     ),
  
  ),
],
),
  );


   }
  GestureDetector buildAccountOption(BuildContext context,String title)
  { return  GestureDetector(
    onTap: (){
showDialog(context: context, builder: (BuildContext context){
  return AlertDialog(
    title: Text(title),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Option 1"),
        Text("Option 2")

      ],
    ),
  
    actions: [
      TextButton(
        onPressed: () {
Navigator.of(context).pop();
        }, 
        child: Text("Close")
        )
    ],

  );
}
  );
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600]
          )),
          Icon(Icons.arrow_forward_ios,color:Colors.grey)

      ],
      ),
    ),
  );

  }
}
      
            
     
