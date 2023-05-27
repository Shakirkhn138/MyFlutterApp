import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        // spreadRadius: 1,
                        blurRadius: .1,
                        // offset: Offset(5.0,5.0),
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                        widthFactor: 12.8,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                        radius: 40,
                      ),
                      Text(
                        'John Doe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    Column(children: [
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'johndoe@gmail.com | 123456789',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 400,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: .1)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.work,
                              color: Colors.blue,
                            )),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'work experience',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue),
                        ),
                        SizedBox(
                          width: 85,
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Divider(
                      thickness: 3,
                      height: 20,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Senior Flutter Developer',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Pt.Bankit Bersama kita'),
                          Text('july 2019 - may 2023'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'Lorem ipsum dolor sit amet, ius simul timeam lucilius ad, te suas facer quo, minim nobis ancillae id eam. Nam audire ceteros ei. Qui quas essent hendrerit cu, qui commune suscipiantur in. Odio sint habemus ei eos. Deleniti pertinax consetetur cum ne                        '),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Junior Flutter Developer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('PT.Kita Bangkit'),
                          Text('January 2019 - December 2020'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Lorem ipsum dolor sit amet, ius simul timeam lucilius ad, te suas facer quo, minim nobis ancillae id eam. Nam audire ceteros ei. Qui quas essent hendrerit cu, qui commune suscipiantur in. Odio sint habemus ei eos. Deleniti pertinax consetetur cum ne')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: .1)]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.school,
                              color: Colors.blue,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Education',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                      indent: 10,
                      endIndent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('S1 informatics engineering',style: TextStyle(fontWeight: FontWeight.bold,fontSize:15),),
                          SizedBox(
                            height: 10,
                          ),
                          Text('University Kita aja'),
                          Text('August 2013 - December 2017')
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
