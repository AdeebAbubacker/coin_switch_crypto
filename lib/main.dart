import 'package:coinswitch_crypto/core/services/api_services.dart';
import 'package:coinswitch_crypto/presentation/market/screen/market_page-2.dart';
import 'package:coinswitch_crypto/presentation/market_tab.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coinswitch_crypto/view_model/bloc/get_crypto_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ApiService apiService = ApiService();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetCryptoBloc(apiService),
      child: MaterialApp(
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //   useMaterial3: true,
        // ),
      
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: const Color.fromARGB(255, 0, 0, 0), // Adjust colors as needed
    
          // Define other properties for dark mode
        ),

        home: MarketPage2(),
      ),
    );
  }
}
