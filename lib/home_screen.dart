import 'package:flutter/material.dart ';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('WhatsApp'),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => const [
                PopupMenuItem(
                  value: 1,
                    child: Text('New Group')),
                PopupMenuItem(
                    value: 2,
                    child: Text('Setting')),
                PopupMenuItem(
                    value: 3,
                    child: Text('Logout')),
              ] ),
              SizedBox(width: 10)
            ],
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Call')),
            ]),
          ),
          body: TabBarView(
            children: [
              Text('1'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      backgroundImage:
                      NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600', scale: 100,  ),
                    ),
                    title: Text('Zain Khan'),
                    subtitle: Text('How are you?'),
                    trailing: Text('7:30'),

                  );
              } ),
              ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){
                  if (index == 0) {
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 2,
                                  )
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.indigo,
                                backgroundImage:
                                NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600', scale: 100,  ),
                              ),
                            ),
                            title: Text('Zain Khan'),
                            subtitle: Text('45m ago'),
                          ),
                        ],
                      ),
                    );
                  }
                  else {
                    return  ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 2,
                            )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.indigo,
                          backgroundImage:
                          NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600', scale: 100,  ),
                        ),
                      ),
                      title: Text('Zain Khan'),
                      subtitle: Text('45m ago'),
                    );
                  }
                } ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.indigo,
                        backgroundImage:
                        NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600', scale: 100,  ),
                      ),
                      title: Text('Zain Khan'),
                      subtitle: Text( index /2 == 0 ? 'you missed a call' : 'call time is 12:23'),
                      trailing: Icon( index /2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  } ),
            ],
          ),
        ));
  }
}
