import 'package:flutter/material.dart';
class num_list extends StatefulWidget {
  const num_list({super.key});

  @override
  State<num_list> createState() => _num_listState();
}
class _num_listState extends State<num_list> {
TextEditingController controllers = TextEditingController();
List num = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                child: TextFormField(
                  keyboardType:TextInputType.number,
                  controller: controllers,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    ),
                    focusedBorder: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              num.add(controllers.text);
              num.clear();
            });
          }, child: Text("ADD",
            style: TextStyle(color: Colors.purple),)),
        SizedBox(height: 30,),
        Container(
          height:300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: ListView.builder(
              itemCount:num.length,
              itemBuilder: (BuildContext context,index) {
            return
          Row(
            children: [
              Text(num[index],style: TextStyle(color: Colors.black),),
            ],
          );
          }
          ),
        ),
        ],
      ),
    );
  }
}
