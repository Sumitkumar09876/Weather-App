import 'package:flutter/material.dart';
class AdditionalForecast extends StatelessWidget {
  const AdditionalForecast({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Icon(Icons.water_drop_rounded,size: 32,),
          SizedBox(height: 8,),
          Text('Humidity',style: TextStyle(fontSize: 16),),
          SizedBox(height: 8,),
          Text('94',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
        ),

        Column(
          children: [Icon(Icons.wind_power_sharp,size: 32,),
          SizedBox(height: 8,),
          Text('Wind Speed',style: TextStyle(fontSize: 16),),
          SizedBox(height: 8,),
          Text('7.67',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
        ),

        Column(
          children: [Icon(Icons.wind_power_sharp,size: 32,),
          SizedBox(height: 8,),
          Text('Wind Speed',style: TextStyle(fontSize: 16),),
          SizedBox(height: 8,),
          Text('7.67',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
        ),
      ],
    );
  }
}