
import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:counter_7/util/mywatchlist_fetch.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  MyWatchListState createState() => MyWatchListState();
}

class MyWatchListState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Watch List"),
      ),
      drawer: const MyDrawer(),
      body: FutureBuilder(
          future: fetchMyWatchList(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada watch list :(",
                      style: TextStyle(
                          color: Color.fromARGB(0, 146, 129, 100),
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(builder: (context) => MyWatchListDetail(watchlist: snapshot.data![index])));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (snapshot.data![index].fields.watched == Watched.BELUM_DITONTON ? Colors.red : Colors.green),
                        ),
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: (snapshot.data![index].fields.watched == Watched.BELUM_DITONTON ? Colors.red : Colors.green),
                              blurRadius: 3.0
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data![index].fields.title,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                );
              }
            }
          }),
    );
  }
}
