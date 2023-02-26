import 'package:admin_project/app_screen/card.dart';
import 'package:admin_project/zfta.dart';
import 'package:flutter/material.dart';




class datail extends StatefulWidget{
   datail(this.language, {super.key});
 final int language;
  @override
  State<StatefulWidget> createState() {
    return datailState(language);
}
}

class datailState extends State< datail>{
   final int language;
   

 datailState (this.language);
  
  @override
  Widget build(BuildContext context) {
   DatabaseHelper _databaseHelper=DatabaseHelper();

   var box=card(language);
    double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;
      
        
    return Scaffold(
   backgroundColor: const Color.fromARGB(255, 206, 214, 226),
    appBar: AppBar(
      backgroundColor:Color.fromARGB(255, 11, 35, 55),
       leading: Padding(
         padding: const EdgeInsets.all(5.0),
         child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.asset(
                'images/im.jpg.jpg',
                 )),
       ),
       elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 135, 159, 196),
            child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              'images/im.jpg.jpg',
          )),
          ),
         ] ),
      body: ListView(
        children: [
         Align(
          alignment: language==1?Alignment.topLeft:Alignment.topRight,
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text(language==1?
              ' Details:  ':"التفاصيل",
              style: TextStyle(
              fontSize: 50.0,
              color: Color.fromARGB(255, 11, 35, 55),
              fontWeight:FontWeight.bold, 
                   ),
                   ),
           ),
         ),
  //         FutureBuilder(
  //       //future:_databaseHelper.get_user_datails(),
  //       builder: (context , snapshot){ 
  //         return Card();
  //  } )
  Row(
          children: [
            Expanded(
              
              child: Container(
                 height: screenHeight/2,
                 width: screenWidth/5,
                child: box,
              ),
            ),
             Expanded(
              
               child: Container(
                 height: screenHeight/2,
                 width: screenWidth/5,
                child: getImageAsset(),
                           ),
             ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding:  EdgeInsets.only(right:50,left:350,top:20),
                child: ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                                const  Color.fromARGB(255, 11, 35, 55)),
                              //end coloring
                              //start bordering
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )) ),
                 
                  child:  Text(language==1?
                  'ok':'تم',
                    style:TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  
                    onPressed: () {}
                   ),
              ),
            ),
       Expanded(
         child: Padding(
           padding: EdgeInsets.only(right:350,left:50,top:20),
           child: ElevatedButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                                const  Color.fromARGB(255, 11, 35, 55)),
                              //end coloring
                              //start bordering
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )) ),
                 
                  child:  Text(language==1?
                    'cancel':"الغاء",
                    style:TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  
                    onPressed: () {}
              ),
         ),
       ) ])
       
     ]
     )
          
        ) ;
      
      
  }
}
 Widget getImageAsset(){
  AssetImage assetimage= const AssetImage('images/no.jpg.jpg');
  Image image=Image(image: assetimage,width: 150.0,height: 150.0,);

  return ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  clipBehavior: Clip.hardEdge,
                  child: image,
                  
                );
 }
  