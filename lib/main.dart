import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  
  String _content = '' ;

  List data = ['If you dream it, you can do it','Don’t wait The time will never be just right','If not us, who? If not now, when?',
    'Remember no one can make you feel inferior without your consent','Do one thing every day that scares you',
    'Don’t regret the past, just learn from it','Believe you can and you’re halfway there','To be the best, you must be able to handle the worst',
    'The best revenge is massive success','We become what we think about','Work hard. Dream big','Life shrinks or expands in proportion to one’s courage',
    'Life is a one time offer, use it well','Be the change you wish to see in the world','We accept the love we think we deserve',
    'Where there is love there is life','Love is a game that two can play and both win','Love all, trust a few, do wrong to none',
    'You are too blessed to be stressed','You are cute','Imagination is the one weapon in the war against reality','Life is better when you’re laughing',
    'The less routine the more life','The way to know life is to love many things','Keep calm and smile','Every sunrise is an invitation for us to arise and brighten someone’s day'
    ,'It ain’t as bad as you think, It will look better in the morning','What we’ve got to do is keep hope alive. Because without it we’ll sink',
    'Count your age by friends, not years. Count your life by smiles, not tears','Love is the greatest refreshment in life'
    ];

  int _count = 0;
  TextEditingController name = new TextEditingController();

   @override
  void dispose() {
    name.dispose();
    super.dispose();
  }

  void _getMessage()
  {
    setState(() {
      _content = 'Hello ${name.text}, ${data[0]}';
    });
  }

  void _getNewMessage()
  {
    setState(() {
      if (_count <= data.length-1){
        _content = 'Hello ${name.text}, ${data[_count]}';
      _count++;
      }
      else
      {
        _count =0;
        _content = 'Hello ${name.text}, ${data[_count]}';
      _count++;
      }
      
    });
  }

  void _reset()
  {
    setState(() {
      _content = '';
      _count = 0;
      name.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: new AppBar(
            title: new Text('Motivation Message',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
            ),
            leading: new Image.asset("assets/images/message.png",
            ), 
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child:new Center(
          child: new Column(
           children: <Widget>[
            SizedBox(height:90),
            new TextField(
                controller: name,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                       borderRadius: const BorderRadius.all(
                         const Radius.circular(40),
                       ),
                  ),   
                   labelText: 'Name',
                   hintText: 'Enter your name',
                   icon: new Icon(Icons.people),
                ),
                keyboardType: TextInputType.text,
                autocorrect: true,
                scrollPadding: new EdgeInsets.all(10.0) ,
             ), 
             SizedBox(height: 25,),     
            new RaisedButton(onPressed: () => _getMessage(),
            child: new Text('Get Message'),
            color: Colors.blue,
            textColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            ),
            SizedBox(height: 5,), 
            new Text(
                _content,
                style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
             ), 
             SizedBox(height: 5,),
             new Row(
               children: <Widget>[
                     Expanded(
                       child: new RaisedButton(onPressed: () =>_getNewMessage(),
                          child: new Text('New Message'),
                          color: Colors.blue,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      ),
                     ),
                     SizedBox(width: 15,),
                     Expanded(
                       child: new RaisedButton(onPressed: () =>_reset(),
                          child: new Text('Reset'),
                          color: Colors.blue,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      ),
                     ),
                   ],
             )      
         ],
        ),
      ),
    )
        ),
      ),
    );







    /*return new Scaffold(
      appBar: new AppBar(
        title: new Text('Motivation Message'), 
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child:new Center(
          child: new Column(
           children: <Widget>[

             Container(
               child: Image.asset(
               'assets/images/undraw_gift_box_byy3.png',
               fit: BoxFit.cover,
               ),
             ),
            
            new TextField(
                controller: name,
                decoration: new InputDecoration(
                   labelText: 'Name',
                   hintText: 'Enter your name',
                   icon: new Icon(Icons.people),
                ),
                keyboardType: TextInputType.text,
                autocorrect: true,
                autofocus: true,
                scrollPadding: new EdgeInsets.all(10.0) ,
             ), 
             SizedBox(height: 10,),     
            new RaisedButton(onPressed: () => _getMessage(),
            child: new Text('Get Message'),
            color: Colors.blue,
            textColor: Colors.black,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            ),
            SizedBox(height: 5,), 
            new Text(
                _content,
                style: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
             ), 
             SizedBox(height: 5,),
             new Row(
               children: <Widget>[
                     Expanded(
                       child: new RaisedButton(onPressed: () =>_getNewMessage(),
                          child: new Text('New Message'),
                          color: Colors.blue,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      ),
                     ),
                     SizedBox(width: 15,),
                     Expanded(
                       child: new RaisedButton(onPressed: () =>_reset(),
                          child: new Text('Reset'),
                          color: Colors.blue,
                          textColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      ),
                     ),
                   ],
             )      
         ],
        ),
      ),
    )
  );*/
  }
}
