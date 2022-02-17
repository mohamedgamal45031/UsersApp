import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UsersModel{
   final int id;
   final String name;
   final String phone;

  UsersModel({
    required this.id,
    required this.name,
    required this.phone
  });

}
class UsersScreen extends StatelessWidget {
  final style = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final style1 = TextStyle(
    fontSize: 25.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  final style2 = TextStyle(
    fontSize: 18.0,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
  List <UsersModel>users =[
    UsersModel(id: 1, name: "Mohamed Gamal", phone: "01100984581"),
    UsersModel(id: 2, name: "Ahmed Ali", phone: "01101567581"),
    UsersModel(id: 3, name: "Abdullah Mansour ", phone: "01104581581"),
    UsersModel(id: 4, name: "Mohamed Gamal", phone: "01100984581"),
    UsersModel(id: 5, name: "Ahmed Ali", phone: "01101567581"),
    UsersModel(id: 6, name: "Abdullah Mansour ", phone: "01104581581"),
    UsersModel(id: 7, name: "Mohamed Gamal", phone: "01100984581"),
    UsersModel(id: 8, name: "Ahmed Ali", phone: "01101567581"),
    UsersModel(id: 9, name: "Abdullah Mansour ", phone: "01104581581"),
    UsersModel(id: 10, name: "Abdullah Mansour ", phone: "01104581581"),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: AlignmentDirectional.center,
            child: Text("Users",
                style: GoogleFonts.staatliches(
                  textStyle: style,
                )),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context,index)=>UserItem(index),
            separatorBuilder: (context,index)=>Padding(
              padding: const EdgeInsetsDirectional.only(start: 16.0,end: 16.0),
              child: Container(height: 1.0,color: Colors.grey[300],width: double.infinity,),
            ),
            itemCount: 10
        ),
      ),
    );
  }
  Widget UserItem(index)=>Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 23.0,
          backgroundColor: Colors.blue,
          child: Text(
            '${users[index].id}',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

          Text(
              "${users[index].name}",
              style: GoogleFonts.josefinSans(
                  textStyle: style1
              )

          ),
          SizedBox(height: 5.0,),
          Text(
              "${users[index].phone}",
              style: style2
          ),
        ],
      ),
    ],
  );
}
