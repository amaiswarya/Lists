import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import 'contact screen.dart';

class Lists extends StatefulWidget {
  const Lists({Key? key}) : super(key: key);

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<Map> contacts = [
    {"name": "Ashfak", "number": "8964577860", "isSelected": false},
    {"name": "Danny", "number": "7667847530", "isSelected": false},
    {"name": "Helan", "number": "9242617819", "isSelected": false},
    {"name": "Ken", "number": "8597397819", "isSelected": false},
    {"name": "Lena", "number": "7935462960", "isSelected": false},
    {"name": "Kim", "number": "8657386282", "isSelected": false},
    {"name": "Miya", "number": "8436527816", "isSelected": false},
    {"name": "Sany", "number": "9037545219", "isSelected": false},
    {"name": "Sen", "number": "8467563689", "isSelected": false},
    {"name": "Jim", "number": "9436275819", "isSelected": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 189, 216, 238),
        appBar: AppBar(
          title: const Text(
            "Contact Lists",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: (ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Contact(
                                  name: contacts[index]["name"],
                                  number: contacts[index]["number"])));
                    },
                    child: Container(
                        height: 100,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        child: ListTile(
                          leading: const CircleAvatar(
                            radius: 28,
                            child: Icon(
                              Icons.person,
                              size: 35,
                            ),
                          ),
                          title: Text(contacts[index]["name"]),
                          subtitle: Text(contacts[index]["number"]),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      contacts[index]["isSelected"] =
                                          !contacts[index]["isSelected"];
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: contacts[index]["isSelected"] == true
                                        ? Colors.red
                                        : Colors.grey,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    callNumber(contacts[index]["number"]);
                                  },
                                  child: const Icon(Icons.call,
                                      size: 32, color: Colors.green),
                                )
                              ],
                            ),
                          ),
                        )),
                  );
                }))));
  }
}

callNumber(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}
