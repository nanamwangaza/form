import 'package:default_app_counter/number_of_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Kilimanjaro extends StatelessWidget {
  const Kilimanjaro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Image.asset('assets/kilimanjaro.png'),
          ),
          Divider(height: 30,),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text('Mount Kilimanjaro', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
         ),
         Row(
         children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Highest Mountain in Africa', style: TextStyle(color: Colors.grey),),
              )
            ],
          ),
          NumberOfStars()
         ],
         ),
      
//Expanded helps take size of parent
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.phone,color: Colors.blue,),
                  Text('CALL',style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
           // SizedBox(width: 30,),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.telegram,color: Colors.blue,),
                  Text('ROUTE',style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
          //  SizedBox(width: 30,),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.share,color: Colors.blue,),
                  Text('SHARE',style: TextStyle(color: Colors.blue),)
                ],
              ),
            )
          ],
        ),

        Divider(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Mount gvhdcnjd  ngufvrhihf hfuyhhgre ghgfyuegdc  fdjucilkfQ rhfvuhsdvC fehkduic uehfwu fuhe gdyeTIF6RHN2IFI GTVRHB    gtyeh  hystr   trgfs gffgv  htg htg jhgfcd uytrfde uhjygf  hygttfd  hygtfr  hgfd hgfds   hyteredes  tgfedw y7hegtrfed  y65gtfdw yhtrgrfedwsza gtrfedsw  tgrfedxs  ygtrfedsx  ytgrfedwsaz '),
        )

      
        ],
      ),
    );
  }
}