import 'dart:async';
import 'dart:isolate';

main(List<String> args) {
  start();

  print("start");
}

Isolate isolate;

int i = 1;

void start() async {
  //接收消息的主Isolate的端口
  final receive = ReceivePort();
/*
要创建Isolate，你可以使用spawn方法。必须为spawn方法提供一个带有单个参数的“入口点”方法。 通常，此参数表示隔离应用于发送回通知消息的端口:
 */
  isolate = await Isolate.spawn(runTimer, receive.sendPort);

  receive.listen((data) {
    print("Reveive : $data ; i :$i");
  });
}

void runTimer(SendPort port) {
  int counter = 0;
  Timer.periodic(const Duration(seconds: 1), (_) {
    counter++;
    i++;
    final msg = "nitification $counter";
    print("Send :$msg ;i :$i");
    port.send(msg);
  });
}
