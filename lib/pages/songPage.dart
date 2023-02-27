// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:musicplayer/pages/neu.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuPage(child: Icon(Icons.arrow_back))),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NeuPage(child: Icon(Icons.menu)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                NeuPage(
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/cover9.png')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('See How Far',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.grey[700])),
                                SizedBox(
                                  height: 4,
                                ),
                                Text('Victoria Orenze',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black)),
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 25,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('0.0'),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text('40.0')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                // linear bar
                NeuPage(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.5,
                    progressColor: Colors.green,
                    backgroundColor: Colors.transparent,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //play pause buttons
                SizedBox(
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: NeuPage(
                          child: Icon(Icons.skip_previous,
                          size: 32,)),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20.0),
                          child: NeuPage(child: Icon(Icons.play_arrow)),
                        ),
                      ),
                      Expanded(
                        child: NeuPage(child: Icon(Icons.skip_next,
                        size: 32)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
