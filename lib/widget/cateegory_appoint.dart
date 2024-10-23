import 'package:flutter/material.dart';

class CateegoryAppoint extends StatelessWidget {
  const CateegoryAppoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            height: 160,
            width: 400,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'data',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('18/9/2024', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Time', style: TextStyle(fontSize: 20)),
                        Text('10.35 pm', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Doctor', style: TextStyle(fontSize: 20)),
                        Text('Dr.Adem', style: TextStyle(fontSize: 20)),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  width: 340,
                  child: Divider(
                    height: 10,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Type',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Dentiest', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    const Column(
                      children: [
                        Text('place', style: TextStyle(fontSize: 20)),
                        Text('city clinic', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.red,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'Cancle',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
