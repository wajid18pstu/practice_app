import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberOneTEcontroller = TextEditingController();
  final TextEditingController _numberTwoTEcontroller = TextEditingController();
  double _result=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ) ,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _numberOneTEcontroller,
              decoration: const InputDecoration(
                hintText: 'Number 1',
                labelText: 'Number 1'
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 18),
            TextField(
              controller: _numberTwoTEcontroller,
              decoration: const InputDecoration(
                hintText: 'Number 2',
                labelText: 'Number 2'
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            Wrap(

              children: [
                ElevatedButton.icon(onPressed: () { _add();}, icon: Icon(Icons.add) ,label: Text('Add'),),
                ElevatedButton.icon(onPressed: () { _sub();}, icon: Icon(Icons.remove) ,label: Text('Sub'),),
                ElevatedButton.icon(onPressed: () { _mul();}, icon: Icon(Icons.add) ,label: Text('Multiply'),),
                ElevatedButton.icon(onPressed: () { _div();}, icon: Icon(Icons.remove) ,label: Text('Division'),)
              ],
            ),
            const SizedBox(height: 24),
            Text('Result: $_result'),
          ],
        ),
      ),
    );
  }
  void _add(){
    double numberOne= double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result= numberOne + numberTwo;
    setState((){});
  }
  void _sub(){
    double numberOne= double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result= numberOne - numberTwo;
    setState((){});
  }
  void _mul(){
    double numberOne= double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result= numberOne * numberTwo;
    setState((){});
  }
  void _div(){
    double numberOne= double.tryParse(_numberOneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numberTwoTEcontroller.text) ?? 0;
    _result= numberOne / numberTwo;
    setState((){});
  }
  @override
  void dispose() {
    _numberOneTEcontroller.dispose();
    _numberTwoTEcontroller.dispose();
    super.dispose();
  }

}
