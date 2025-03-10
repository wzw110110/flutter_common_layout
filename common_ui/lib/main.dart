import 'package:common_ui/counter_provider.dart';
import 'package:common_ui/feature/home/presentation/home_screen.dart';
import 'package:common_ui/http/dio_instance.dart';
import 'package:common_ui/pages/count_page.dart';
import 'package:common_ui/pages/time_line_new_page.dart';
import 'package:common_ui/services/storage/storage_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:common_ui/routers/go_router_build.dart';

final talker = TalkerFlutter.init();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageConfig.init();
  runApp(const ProviderScope(child:MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late final GoRouter _router;

  @override
  void initState() {
    _router = GoRouter(
        initialLocation: '/home',
        routes: $appRoutes,
        navigatorKey: rootNavigatorKey);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      routerDelegate: _router.routerDelegate,
      builder: (ct, child) {
        return GestureDetector(
          onLongPress: () {
            Navigator.of(rootNavigatorKey.currentContext!).push(
                MaterialPageRoute(
                    builder: (context) => TalkerScreen(talker: talker)));
          },
          child: child!,
        );
      },
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     Theme.of(context);
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Common UI'),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: HomeScreen(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _counterScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(clickCountProvider);
    return Center(
      child: Column(children: [
        Text('Counter $count'),
        ElevatedButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => CountPage()));
        }, child: Text("下一页"))
      ]),
    );
  }
  
}
