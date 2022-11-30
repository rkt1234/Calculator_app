import 'package:flutter/material.dart';
import 'history.dart';
class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  List<String> arr = [""];
  late double a;
  late double b;
  String history = "";
  String display = "";
  String res = "";
  String operation = "";
  void transfer()
  {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> History(arr:arr)));
    });
  }
  void Click(String str) {

    if (str == 'C') {
      setState(() {
        display = '';
        a = 0;
        b = 0;
        res = '';
        history='';
      });
    }
    else if (str == 'AC') {
      setState(() {
        display = '';
        a = 0;
        b = 0;
        res = '';
        history = '';
        arr=[''];
      });
    }
    else
    if (str == '0' || str == '1' || str == '2' || str == '3' || str == '4' ||
        str == '5' || str == '6' || str == '7' || str == '8' || str == '9' ||
        str == '.') {
      setState(() {
        res = res + str;
        display = display + str;
      });
    }
    else if (str == '+' || str == '-' || str == '*' || str == '/' || str=='%') {
      setState(() {
        display += str;
        a = double.parse(res);
        res = '';
        operation = str;
        print(a);
      });
    }

    else if (str == '=') {
      setState(() {
        b = double.parse(res);
        history=display;
        if (operation == '+') {
          display = (a + b).toString();
          history = a.toString() + operation.toString() + b.toString();
        }
        if (operation == '-') {
          display = (a - b).toString();
          history = a.toString() + operation.toString() + b.toString();
        }
        if (operation == '*') {
          display = (a * b).toString();
          history = a.toString() + operation.toString() + b.toString();
        }
        if (operation == '/') {
          display = (a / b).toString();
          history = a.toString() + operation.toString() + b.toString();
        }
        if(operation=='%')
          {
            if(b==0)
              b=1;
            display=((a*b)/100).toString();
            history = a.toString() + operation.toString() + b.toString();
          }
        //history="";
        res=display;
       print(res);
        arr.add(history);
      });

    }
  }
    @override
    Widget build(BuildContext context) {
      return Container(

          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(15),
          child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  history,
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.grey,
                  ),
                ),

                Text(
                  display,
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.red,
                  ),
                ),
                Center(
                child:Align(
                  alignment: Alignment.centerLeft,
                  child:ElevatedButton(onPressed: () {transfer();},
                      child: Icon(Icons.history),

                ),
                ),
                ),

                SizedBox(height:10),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                      // ElevatedButton(onPressed: () {},
                      //     child: Icon(Icons.history)
                      // ),
                      //
                      // SizedBox(height:10),

                      ElevatedButton(child: const Text(
                        'AC', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('AC');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          fixedSize: const Size(80, 80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('C', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('C');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(70, 70),
                          shape: const CircleBorder(),),),
                      ElevatedButton(child: const Text(
                        '<-', style: TextStyle(fontSize: 20),),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('+', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('+');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                    ]
                ),
                const SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: const Text('9', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('9');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('8', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('8');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80, 80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('7', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('7');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('-', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('-');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                    ]
                ),
                const SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: const Text('6', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('6');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('5', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('5');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('4', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('4');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('*', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('*');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                    ]
                ),
                const SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        child: const Text('3', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('3');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('2', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('2');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('1', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('1');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('/', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('/');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                    ]
                ),
                const SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(child: const Text(
                        '%', style: TextStyle(fontSize: 20),),
                        onPressed: () {Click('%');},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('0', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          {
                            Click('0');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(
                        child: const Text('.', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('.');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                      ElevatedButton(child: const Text(
                        '= ', style: TextStyle(fontSize: 20),),
                        onPressed: () {
                          Click('=');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan,
                          fixedSize: const Size(80,80),
                          shape: const CircleBorder(),),),
                    ]
                ),
                const SizedBox(height: 10),
              ] //children
          )

      );
    }
  }




