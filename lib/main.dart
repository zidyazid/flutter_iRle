import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'cubit/cubit.dart';
// import 'cubit/kuis_cubit.dart';
// import 'cubit/materi_cubit.dart';
// import 'cubit/user_cubit.dart';
import 'ui/page/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => UserCubit()),
          BlocProvider(create: (_) => MateriCubit()),
          BlocProvider(create: (_) => KuisCubit()),
          BlocProvider(create: (_) => KosakataCubit()),
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false, home: OnBoardingPage()));
    //   return GetMaterialApp(
    //       debugShowCheckedModeBanner: false, home: MateriPage());
  }
}
