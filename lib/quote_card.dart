import 'package:flutter/material.dart';
import 'quote.dart';

class quote_card extends StatelessWidget {
  final Quote quote ;
  final VoidCallback delete ;
  const quote_card({
    super.key,
    required this.quote ,
    required this.delete
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          SizedBox(height: 6.0),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.0 , vertical: 6.0),
           
              child :
              ElevatedButton.icon(
                label: Text('Delete11'),
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red ,
                
                ) ,
                onPressed: delete,
                icon: Icon(Icons.delete),
                
              )
          )
            
          ],
        ),
      )
    
    );
  }
} 
