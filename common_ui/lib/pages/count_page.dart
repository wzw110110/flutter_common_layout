import 'package:common_ui/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountPage extends ConsumerWidget {
  const CountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("增加计数"),
      ),
      body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                ref.read(counterProvider.notifier).state++;
              }, child: Text("点击计数+1")),
              Text("$count")
            ],
          ),
        ),
    );
  }

}