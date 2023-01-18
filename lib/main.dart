import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final Duration initialDelay = const Duration(seconds: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("DelayedDisplay",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DelayedDisplay(
              delay: initialDelay,
              child: const Text(
                "Hello World",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.green,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 1),
              child:  ListTile(
                leading: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/hotel.png"),fit: BoxFit.cover
                    ),
                    boxShadow: const [ BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                  ),
                ),
                title: const Text("Hotel",maxLines: 2,style: TextStyle(fontSize: 14,height: 1,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),),
                subtitle: const Text("Successoft Infotech",style: TextStyle(color: Colors.grey,fontSize: 10,height: 1.5)),
                trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black),
              )
            ),
            const SizedBox(
              height: 5.0,
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 2),
              child:  ListTile(
                leading: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/1.png"),fit: BoxFit.cover
                    ),
                    boxShadow: const [ BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                  ),
                ),
                title: const Text("Nature",maxLines: 2,style: TextStyle(fontSize: 14,height: 1,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),),
                subtitle: const Text("Successoft Infotech",style: TextStyle(color: Colors.grey,fontSize: 10,height: 1.5)),
                trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black),
              )
            ),
            const SizedBox(
              height: 5.0,
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 3),
              child:  ListTile(
                leading: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/hathi.png"),fit: BoxFit.cover
                    ),
                    boxShadow: const [ BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                  ),
                ),
                title: const Text("Elephant",maxLines: 2,style: TextStyle(fontSize: 14,height: 1,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),),
                subtitle: const Text("Successoft Infotech",style: TextStyle(color: Colors.grey,fontSize: 10,height: 1.5)),
                trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black),
              )
            ),
            const SizedBox(
              height: 5.0,
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 4),
              child:  ListTile(
                leading: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/dog0.jpg"),fit: BoxFit.cover
                    ),
                    boxShadow: const [ BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),]
                  ),
                ),
                title: const Text("Dog",maxLines: 2,style: TextStyle(fontSize: 14,height: 1,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),),
                subtitle: const Text("Successoft Infotech",style: TextStyle(color: Colors.grey,fontSize: 10,height: 1.5)),
                trailing: const Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black),
              )
            ),
            const SizedBox(
              height: 30.0,
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 5),
              child: Container(
                width: 180,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "Subscribe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DelayedDisplay(
              delay: Duration(seconds: initialDelay.inSeconds + 6),
              child: const Text(
                "I already have an account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}