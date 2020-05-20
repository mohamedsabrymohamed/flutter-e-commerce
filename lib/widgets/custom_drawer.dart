import 'package:flutter/material.dart';

Drawer customDrawer() {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('John Doe'),
          accountEmail: Text('john.doe@email.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        ),
        //body
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('My Account'),
            leading: Icon(
              Icons.person,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('My Orders'),
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Categories'),
            leading: Icon(
              Icons.dashboard,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Favourites'),
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),
        Divider(),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(
              Icons.settings,
            ),
          ),
        ),
        InkWell(
          onTap: null,
          child: ListTile(
            title: Text('About'),
            leading: Icon(
              Icons.help,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}
