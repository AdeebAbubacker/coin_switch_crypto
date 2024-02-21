import 'dart:convert';

import 'package:coinswitch_crypto/core/constants/colors.dart';
import 'package:coinswitch_crypto/core/constants/style.dart';
import 'package:coinswitch_crypto/view_model/bloc/get_crypto_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCrypto extends StatefulWidget {
  const AllCrypto({super.key});

  @override
  State<AllCrypto> createState() => _AllCryptoState();
}

class _AllCryptoState extends State<AllCrypto> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<GetCryptoBloc>(context)
          .add(const GetCryptoEvent.getcrypto());
    });
    return Column(
      children: [
        BlocBuilder<GetCryptoBloc, GetCryptoState>(
          builder: (context, state) {
            if (state.isLoading) {
              return CircularProgressIndicator();
            }
            if (state.isError) {
              return Text('error');
            } else if (state.cryptomodel.crypto != null) {
              return SizedBox(
                height: 600,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.cryptomodel.crypto!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        left: 12,
                        right: 12,
                      ),
                      child: Container(
                        width: 200,
                        height: 90,
                        decoration: const BoxDecoration(
                            color: klistbackground,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.network(
                                '${state.cryptomodel.crypto![index].imageUrl}',
                                width: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${state.cryptomodel.crypto![index].cryptoCode}',
                                    style: kcryptonamecode,
                                  ),
                                  Text(
                                    '${state.cryptomodel.crypto![index].cryptoName}',
                                    style: const TextStyle(
                                      color: Color(0xFFA4A5AA),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                             Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '₹. 44,82,472',
                                    style:  kcryptonamecode,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: Color.fromARGB(115, 245, 12, 12),
                                      ),
                                      Text(
                                        '0.48 %',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(115, 245, 12, 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }

            return Text('ssssssssssssssss');
          },
        ),
      ],
    );
  }
}
