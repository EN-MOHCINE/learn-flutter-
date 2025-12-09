import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(
    MaterialApp(
      // home: Text  ("hello world 1 "),
      // home: Home(),
      home: MyCard(),
    )
  );
} 



// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("hello world 21"),
//           centerTitle: true ,
//           backgroundColor:Colors.red[600],
//         ),
//          body :Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//              Row(
//                   crossAxisAlignment:  CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Expanded(
//                       flex: 2,
//                         child: Container(
//                         padding:EdgeInsets.all(20),
//                         color: Colors.grey[600]  ,
//                         child: Text("Hello"),
//                       ),

//                       ),
//                     Expanded(
//                       flex: 1,
//                       child: ElevatedButton( 
//                         onPressed: (){},
//                         style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyan)),   
//                         child: Text("Button") ,
//                       ),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                         padding:EdgeInsets.all(20),
//                         color: Colors.grey[600]  ,
//                         child: Text("Hello"),
//                       ),
//                     ),

//                   ],
//               ) ,
//              Container(
//               padding: EdgeInsets.all(20),
//               color: Colors.amber,
//               child: Text("hello world 2 " ) ,
//              ),
//              Container(
//               padding: EdgeInsets.all(30),
//               color: Colors.blue,
//               child: Text("hello world 3 " ) ,
//              ),
//              OutlinedButton(
//               onPressed: () => print("hello"),
             
//               child: Text("hello") ,
//               )
//            ],

//          ) ,
//         //  body :Container(
//           // padding:EdgeInsets.fromLTRB(30, 10, 30, 10),
//           // padding:EdgeInsets.symmetric(horizontal: 50,vertical: 100),
//         //   padding:EdgeInsets.all(100),
//           // alignment: Alignment.center,
//         //   color: Colors.grey[600]  ,
//         //   child: Text("Hello"),
//         // ) ,
       
//         // body: Center(

//           // child : Icon(
//           //   Icons.favorite ,
//           //   color: Colors.red[600],
//           //   size: 100,
//           // )

//           // child : IconButton(
//           //   onPressed: () {
//           //     print("hello world from button ");
//           //   },  
//           //   icon: Icon(Icons.add) ,
//           //   color: Colors.red[100],
//           //   style:ButtonStyle(
//           //     backgroundColor: MaterialStateProperty.all(Colors.red[600]) ,
//           //   ), 
//           // )

//           // child : ElevatedButton.icon(
//           //   onPressed: () {
//           //     print("hello world from button ");
//           //   },  
//           //   icon: Icon(Icons.add) ,
//           //   label: Text('test'),
//           // )
          
//           // child :Image.asset("assets/space (1).jpg")
//           // child: Text(
//           //   "hello world 31 ",
//           //   style:TextStyle(
//           //     fontSize: 40 ,
//           //     fontWeight: FontWeight.bold ,
//           //     fontFamily: "MyFirstFont",
//           //     color: Colors.red[600]
//           //     )
//           // )
//         //   ),
//         floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.red[600],
//           onPressed: (){
//             print("hello world 51 ");
//           },
//           child: Text("Click") ,
//         ),
//       );
//   }
// }




class MyCard extends StatefulWidget {
  
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  int countlevel =0 ;
  //random quotes 
  List<Quote> ninja = [
    Quote(text: "test1", author: "tes1 test1 test1 test1"),
    Quote(text: "test2", author: "tes2 test2 test2 test2"),
    Quote(text: "test3", author: "tes3 test3 test3 test3"),
    ] ;


  // create template quotes
  Widget quoteTemplate(quote , delete) {

   
    // importing quote_card from another file
    return quote_card(quote: quote  ,  delete: delete); ;
    
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar:AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text('Ninja ID card ')  ,
        backgroundColor: Colors.grey[850],
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0 ,
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            countlevel++  ; 
          });
        },
        child: Icon(Icons.add)
        ,
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          //  using map methode 
         children: <Widget>[
            ...ninja.map((ninjaQuote) => quoteTemplate( 
            ninjaQuote ,
             (){  // Remove 'delete :' 
              setState(() {
                ninja.remove(ninjaQuote);
              });
            }
          )).toList()
          ],


          // card 
          // children: <Widget>[
          //   Center(
          //     child: CircleAvatar(
          //       radius: 40.0, 
          //       backgroundImage: AssetImage('assets/space (1).jpg'),
              
          //       ),
          //   ),
          //   Divider(
          //     height: 90.0,
          //     color: Colors.grey[600],
          //   )  , 
          //   Text(
          //     'Mohcine' ,
          //     style: TextStyle(
          //       color: Colors.grey[500],
          //       fontSize: 15.0,
          //       letterSpacing: 2.0,
          //     ),
          //   ) ,
          //   SizedBox(height: 10.0,) ,
          //   Text(
          //     'Mohcine' ,
          //     style: TextStyle(
          //       color: Colors.amber,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 40.0,
          //       letterSpacing: 2.0,
          //     ),
          //   ) ,
          //   SizedBox(height: 40.0,) ,
          //   Text(
          //     'curret ninja level'  ,
          //     style: TextStyle(
          //       color: Colors.grey[500],
          //       fontSize: 15.0,
          //       letterSpacing: 2.0,
          //     ),
          //   ) ,
          //   SizedBox(height: 10.0,) ,
          //   Text(
          //     '$countlevel' ,
          //     style: TextStyle(
          //       color: Colors.amber,
          //       fontWeight: FontWeight.bold,
          //       fontSize: 40.0,
          //       letterSpacing: 2.0,

          //     ),
          //   ) ,
          //   SizedBox(height: 40.0,) ,
          //   Row(
          //     children: <Widget>[
          //     Icon( Icons.email,color: Colors.grey[400],),
          //     SizedBox(width: 10.0,),
          //     Text(
          //       'mehello@example.com' ,
          //       style: TextStyle(
          //         color: Colors.grey[500],
          //         fontSize: 15.0,
          //         letterSpacing: 2.0,
          //       ),
          //       )
          //   ])
          
            
          // ]
          

        ),
      ) ,

    );
  }
}

