import 'dart:async';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';

Isolate isolate;
void main(){
  start();
}

// 启动新的Isolate，并监听消息
start() async {
  ReceivePort receivePort = ReceivePort();
  isolate = await Isolate.spawn(entryPoint, receivePort.sendPort,
      debugName: 'newIsolate');

  receivePort.listen((message) {
    debugPrint('${Isolate.current.debugName}: receive msg $message');
  });
  debugPrint('${Isolate.current.debugName}: spawn');
}

// 新Isolate入口函数
entryPoint(SendPort sendPort) {
  int counter = 0;
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    debugPrint('${Isolate.current.debugName}: send msg ${counter++}');
    sendPort.send(DateTime.now());
  });
}

// 结束Isolate
void stop() {
  if (isolate != null) {
    isolate.kill(priority: Isolate.immediate);
    isolate = null;
    debugPrint('${Isolate.current.debugName}: killed isolate');
  }
}
