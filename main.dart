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
      title: 'Flutter App',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(

        child: Expanded(
          flex: 8,
          child: Column(
            children: [
              Stack(
                children:[ Container(

                  width:800 ,
                  height: 110,
                  decoration: BoxDecoration(

                      image:
                      DecorationImage(

                          image:
                          AssetImage("assets/images/11.jpg"),
                    fit: BoxFit.cover,
                      ),),
                ),
                ]
              ),
              Expanded(
                flex: 1,
                child: Column(

                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(145, 100, 150, 111),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight:Radius.circular(40) )
                      ),
                      width: size.width,
                      height: size.height*0.73,

                      child: Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(14),
                              child: Text("LogIn",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.all(14),
                              child: Text("Email",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                            ),
                            TextField(
                              cursorColor: Colors.green,

                              decoration: InputDecoration(
                                filled: true,

                                border: OutlineInputBorder( borderRadius: BorderRadius. circular(40),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Abc@gmail.com",
                                labelText: "Email",

                                  prefixIcon: Icon(Icons.email)
                              ),
                            ),

                                  SizedBox(
                                    width: 5,
                                    height: 5,
                                  ),
                            Container(
                              padding: EdgeInsets.all(14),
                              child: Text("Password",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            TextField(
                              cursorColor: Colors.green,
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius. circular(40),
                                  borderSide: BorderSide.none,

                                ),
                                hintText: "********",
                                labelText: "Password",prefixIcon: Icon(Icons.lock)


                              ),
                            ),
                                  // Container(
                             const Spacer(),     //   padding: EdgeInsets.all(14),
                            Container(
                              width: size.width,
                              height: 50,
                              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              child: ElevatedButton(
                                style:ElevatedButton.styleFrom(backgroundColor: Colors.green,
                                    shape:RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(80),

                                    )
                                ),
                                onPressed: (){
                                  print("Elevated Button pressed");
                                },
                                child: Text(
                                    "Submit",
                                  style: TextStyle( color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),

                                ),
                              ),
                            ),      //   child: Text("Password",style: TextStyle(fontSize: 14),),
                                  //
                                  // ),



                                ],
                              ),
                      ),
                          ),
                          SizedBox(
                            width: 2,
                            height: 2,
                          ),
                    Container(

                      padding: EdgeInsets.all(14),
                      child: Text("Don't have an account ? Sign Up",style: TextStyle(fontSize: 18, ),),
                    ),



                        ],

                      ),
                    ),
                  ],
                ),
              ),
            // ],
          ),
        // ),
      // ),
    );
  }
}
