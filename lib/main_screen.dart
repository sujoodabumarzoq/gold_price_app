import 'package:flutter/material.dart';
import 'package:gold_price_app/cubit/cubit.dart';
import 'package:gold_price_app/cubit/states.dart';
import 'package:gold_price_app/network/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_price_app/cubit/cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit()
        ..getGoldPrice()
        ..getSilverPrice(),
      child: BlocConsumer<MainCubit, States>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.grey[800],
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'TODAY',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        shadows: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(
                                2,
                                2,
                              ),
                              blurRadius: 5)
                        ]),
                  ),
                  Text(
                    ' PRICE',
                    style: TextStyle(
                        color: Color(0xffd4af37),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        shadows: [
                          BoxShadow(
                              color: Colors.yellow[300]!,
                              offset: const Offset(
                                0,
                                0,
                              ),
                              blurRadius: 5)
                        ]
                    ),
                  ),
                ],
              )),
            ),
            body: Container(
              padding:
                  const EdgeInsets.only(top: 50, right: 8, left: 8, bottom: 8),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/gold.png',
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'GOLD',
                        style: TextStyle(
                            color: Color(0xffd4af37),
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 8,
                            shadows: [
                              BoxShadow(
                                  color: Colors.yellow[300]!,
                                  offset: const Offset(
                                    2,
                                    2,
                                  ),
                                  blurRadius: 5)
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '   ${MainCubit.get(context).goldI}💲',
                        style: TextStyle(
                          color: Color(0xffd4af37),
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/silver.png',
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'SILVER',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 8,
                            shadows: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    2,
                                    2,
                                  ),
                                  blurRadius: 5)
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '  ${MainCubit.get(context).silverI}💲',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 16,
                            shadows: const [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    2,
                                    2,
                                  ),
                                  blurRadius: 5)
                            ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
