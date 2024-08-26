import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hitungan ke :'),
            Obx(
              () => Text(
                controller.bilangan.toString(),
                style: const TextStyle(fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.kurangsatu();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 16), // Jarak antar tombol
                ElevatedButton(
                  onPressed: () {
                    controller.tambahsatu();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 16), // Jarak antara tombol reset dan baris sebelumnya
            ElevatedButton(
              onPressed: () {
                controller.reset();
              },
               child: const Icon(Icons.restart_alt),
            ),
          ],
        ),
      ),
    );
  }
}
