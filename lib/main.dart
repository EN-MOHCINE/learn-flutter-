import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // home: Text  ("hello world 1 "),
      home: Home(),
    )
  );
} 



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("hello world 21"),
          centerTitle: true ,
          backgroundColor:Colors.red[600],
        ),
         body :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Hello"),
                    ElevatedButton( 
                      onPressed: (){},
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyan)),   
                      child: Text("Button") ,
                    ),
                    Container(
                      padding:EdgeInsets.all(20),
                      color: Colors.grey[600]  ,
                      child: Text("Hello"),
                    ),

                  ],
              ) ,
             Container(
              padding: EdgeInsets.all(20),
              color: Colors.amber,
              child: Text("hello world 2 " ) ,
             ),
             Container(
              padding: EdgeInsets.all(30),
              color: Colors.blue,
              child: Text("hello world 3 " ) ,
             ),
           ],

         ) ,
        //  body :Container(
        //   // padding:EdgeInsets.fromLTRB(30, 10, 30, 10),
        //   // padding:EdgeInsets.symmetric(horizontal: 50,vertical: 100),
        //   padding:EdgeInsets.all(100),
        //   // alignment: Alignment.center,
        //   color: Colors.grey[600]  ,
        //   child: Text("Hello"),
        // ) ,
       
        // body: Center(

        //   // child : Icon(
        //   //   Icons.favorite ,
        //   //   color: Colors.red[600],
        //   //   size: 100,
        //   // )

        //   // child : IconButton(
        //   //   onPressed: () {
        //   //     print("hello world from button ");
        //   //   },  
        //   //   icon: Icon(Icons.add) ,
        //   //   color: Colors.red[100],
        //   //   style:ButtonStyle(
        //   //     backgroundColor: MaterialStateProperty.all(Colors.red[600]) ,
        //   //   ), 
        //   // )

        //   // child : ElevatedButton.icon(
        //   //   onPressed: () {
        //   //     print("hello world from button ");
        //   //   },  
        //   //   icon: Icon(Icons.add) ,
        //   //   label: Text('test'),
        //   // )
          
        //   // child :Image.asset("assets/space (1).jpg")
        //   // child: Text(
        //   //   "hello world 31 ",
        //   //   style:TextStyle(
        //   //     fontSize: 40 ,
        //   //     fontWeight: FontWeight.bold ,
        //   //     fontFamily: "MyFirstFont",
        //   //     color: Colors.red[600]
        //   //     )
        //   // )
        //   ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[600],
          onPressed: (){
            print("hello world 51 ");
          },
          child: Text("Click") ,
        ),
      );
  }
}