import 'package:common_ui/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountPage extends ConsumerWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(clickCountProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("增加计数"),
      ),
      body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                ref.read(clickCountProvider.notifier).increment();
              }, child: Text("点击计数+1")),
              Text("$count")
            ],
          ),
        ),
    );
  }

}