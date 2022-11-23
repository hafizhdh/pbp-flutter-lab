import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist.dart';

class MyWatchListDetail extends StatefulWidget {
  const MyWatchListDetail({super.key, required this.watchlist});

  final MyWatchList watchlist;

  @override
  State<StatefulWidget> createState() => _MyWatchListDetailState();
}

class _MyWatchListDetailState extends State<MyWatchListDetail> {
  @override
  Widget build(BuildContext context) {
    DateTime date = widget.watchlist.fields.releaseDate;
    List<String> months = [
      "Janurary",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      drawer: const MyDrawer(),
      body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: Column(
              children: [
                Center(
                  child: Text(
                    widget.watchlist.fields.title,
                    style:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Release Date: ",
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${date.day.toString().padLeft(2, '0')} ${months[date.month-1]} ${date.year}",
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Rating: ",
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${widget.watchlist.fields.rating}/5",
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Status: ",
                          style:
                              TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.watchlist.fields.watched == Watched.BELUM_DITONTON ? 
                            "Belum ditonton" :
                            "Sudah ditonton",
                          style: const TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Review: ",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            widget.watchlist.fields.review,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () { 
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyWatchListPage()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                      ),
                      child: const Text("Back", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
