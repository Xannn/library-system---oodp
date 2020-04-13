import 'package:calendar_strip/calendar_strip.dart';
import 'package:flutter/material.dart';

class RentRoom_pg extends StatefulWidget {
  @override
  _RentRoom_pgState createState() => _RentRoom_pgState();
}

class _RentRoom_pgState extends State<RentRoom_pg> {

  String room_val;
  List<DropdownMenuItem<String>> rooms;

  String Time_val;
  List<DropdownMenuItem<String>> Time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    room_val = 'Room number';
    rooms = fill_Rooms();
    Time_val = 'Hour';
    Time = fill_hrs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Rent Room'), backgroundColor: Colors.grey[800], centerTitle: true, ),

      body: ListView(
        children: <Widget>[
          SizedBox(height: 76.0,),
          Center(child: Text('Select Room', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 5.0, fontSize: 18),)),
          Padding(
            padding: const EdgeInsets.fromLTRB(36.0, 16.0, 36.0, 16.0),
            child: Theme(data: ThemeData(canvasColor: Colors.grey[900],),
              child: DropdownButton<String>(value: room_val,
                elevation: 16,
                style: TextStyle(color: Colors.white),

                onChanged: (String newValue) {
                  setState(() {
                    room_val = newValue;
                  });
                },
                items: rooms,
              ),),
          ),

          SizedBox(height: 36,),
          Center(child: Text('Select Day', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 5.0, fontSize: 18),)),
          Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                child: CalendarStrip(
                  startDate: DateTime(1, 1),
                  endDate: DateTime(12, 1,),
                  onDateSelected: (data){print("Selected Date -> $data");},
                  //dateTileBuilder: dateTileBuilder,
                  iconColor: Colors.white70,
                  //monthNameWidget: _monthNameWidget,
                  //markedDates: markedDates,
                  addSwipeGesture: true,
                  containerDecoration: BoxDecoration(color: Colors.black12),),
              )
          ),


          SizedBox(height: 36,),
          Center(child: Text('Select hour', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w200, letterSpacing: 5.0, fontSize: 18),)),
          Padding(
            padding: const EdgeInsets.fromLTRB(36.0, 16.0, 36.0, 16.0),
            child: Theme(data: ThemeData(canvasColor: Colors.grey[900],),
              child: DropdownButton<String>(value: Time_val,
                elevation: 16,
                style: TextStyle(color: Colors.white),

                onChanged: (String newValue) {
                  setState(() {
                    Time_val = newValue;
                  });
                },
                items: Time,
              ),),
          ),

          SizedBox(height: 36.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(100.0, 2.0, 100.0, 2.0),
            child: FlatButton(onPressed: (){}, child: Text('Book', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),), color: Colors.black,),
          ),
          SizedBox(height: 36.0,)

        ],
      ),





      backgroundColor: Colors.grey[900],
    );
  }

  //filling brands
  List<DropdownMenuItem<String>> fill_Rooms() {
    List<DropdownMenuItem<String>> rooms = [
      DropdownMenuItem(value: '1', child: Text('1'),),
      DropdownMenuItem(value: '2', child: Text('2'),),
      DropdownMenuItem(value: '3', child: Text('3'),),
      DropdownMenuItem(value: '4', child: Text('4'),),
      DropdownMenuItem(value: '5', child: Text('5'),),
      DropdownMenuItem(value: '6', child: Text('6'),),
      DropdownMenuItem(value: '7', child: Text('7'),),
      DropdownMenuItem(value: '8', child: Text('8'),),
      DropdownMenuItem(value: '9', child: Text('9'),),
    ];

    return rooms;
  }

  //filling hours
  List<DropdownMenuItem<String>> fill_hrs() {
    List<DropdownMenuItem<String>> hrs = [DropdownMenuItem( value: '09:00 am', child: Text('09:00 am'))];

    for(int i=10; i<12; i++){
      hrs.add(DropdownMenuItem(value: '0$i:00 am', child: Text('0$i:00 am'),));
    }
    hrs.add(DropdownMenuItem(value: '12:00 pm', child: Text('12:00 pm'),));
    for(int i=1; i<=9; i++){
      hrs.add(DropdownMenuItem(value: '0$i:00 pm', child: Text('0$i:00 pm'),));
    }



    return hrs;
  }
}
