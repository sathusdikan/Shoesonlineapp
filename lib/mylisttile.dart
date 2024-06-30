import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mylisttile extends StatefulWidget {
  Mylisttile({super.key});

  @override
  State<Mylisttile> createState() => _MylisttileState();
}

class _MylisttileState extends State<Mylisttile> {
  void display() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.grey.shade800,
            shape: CircleBorder(),
            content: ClipRRect(
              borderRadius: BorderRadius.circular(170),
              child: Image.network(
                'https://media.licdn.com/dms/image/D5635AQEgfYoBvFv3WA/profile-framedphoto-shrink_200_200/0/1719448140371?e=1720242000&v=beta&t=0hZO3Vawkah6yN65Paesl3zr22JRx9CTpvCtZsUIyiM',
                fit: BoxFit.contain,
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green[100],
      child: Column(
        children: [
          DrawerHeader(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: display,
                child: Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://media.licdn.com/dms/image/D5635AQEgfYoBvFv3WA/profile-framedphoto-shrink_200_200/0/1719448140371?e=1720242000&v=beta&t=0hZO3Vawkah6yN65Paesl3zr22JRx9CTpvCtZsUIyiM',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text("Account Name"),
                    Text(
                      "Sathusdikan",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )),
          ListTile(
            leading: Icon(Icons.manage_accounts_rounded),
            title: Text(
              "Manage connection",
              style: TextStyle(fontSize: 15),
            ),
            tileColor: Colors.white54,
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Icon(Icons.favorite_rounded),
            title: Text(
              "Club vision",
              style: TextStyle(fontSize: 15),
            ),
            tileColor: Colors.white54,
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Icon(Icons.star_rate_sharp),
            title: Text(
              "star points",
              style: TextStyle(fontSize: 15),
            ),
            tileColor: Colors.white54,
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Icon(Icons.payment_sharp),
            title: Text(
              "payment",
              style: TextStyle(fontSize: 15),
            ),
            tileColor: Colors.white54,
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Icon(Icons.person_add_alt_sharp),
            title: Text(
              "invite friend",
              style: TextStyle(fontSize: 15),
            ),
            tileColor: Colors.white54,
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              "settings",
              style: TextStyle(fontSize: 15),
            ),
            tileColor: Colors.white54,
            onTap: () {},
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
