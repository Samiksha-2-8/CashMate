import 'package:flutter/material.dart';


void main() {
  runApp(CreateProfileApp());
}

class CreateProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Profile',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CreateProfile(),
    );
  }
}

class CreateProfile extends StatefulWidget {
  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _professionController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USER BANK DETAILS'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(
          children: <Widget>[
            imageProfile(),
            SizedBox(
              height: 20,
            ),
            nameTextField(),
            SizedBox(
              height: 20,
            ),
            professionTextField(),
            SizedBox(
              height: 20,
            ),
            dobField(),
            SizedBox(
              height: 20,
            ),
            titleTextField(),
            SizedBox(
              height: 20,
            ),
            aboutTextField(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage("assets/fun-3d-cartoon-casual-character-woman_1.jpeg"),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child:InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                 builder: ((builder)=> bottomSheet()),
                );
              },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
            ),
          ),
        ],
      ),
    );
  }
Widget bottomSheet()
{ return Container(
  height: 100.0,
  width: MediaQuery.of(context).size.width,
  margin: EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 20,
  ),
  child: Column(
    children: <Widget>[
      Text(
        "Choose Profile Photo",
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      SizedBox(
        height:20,
      ),
      Row(
        children:<Widget>[
          TextButton.icon(
            icon: Icon(Icons.camera),
            onPressed: () {

            },
            label: Text("Camera"),

          ),
          TextButton.icon(
            icon:Icon(Icons.image),
            onPressed: (){},
            label:Text("Gallery"),
          ),
        ]
        )
    ],
  ),
);

}
  Widget nameTextField() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Name",
        helperText: "Name can't be empty",
        hintText: "username",
      ),
    );
  }

  Widget professionTextField() {
    return TextFormField(
      controller: _professionController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Password",
        helperText: "Password can't be empty",
        
      ),
    );
  }

  Widget dobField() {
    return TextFormField(
      controller: _dobController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Bank name",
       
      ),
    );
  }

  Widget titleTextField() {
    return TextFormField(
      controller: _titleController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Bank Account Number",
        
        
      ),
    );
  }

  Widget aboutTextField() {
    return TextFormField(
      controller: _aboutController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Bank Branch Address",
        
      ),
    );
  }
}
