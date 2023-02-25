
Future<void> printOrderMessage() async {
  var order = await fetchUserOrder();
  print('Awaiting user order...');
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {

  return Future.delayed(const Duration(seconds: 6), () => 'Large Latte');
}

void main() async {
  countSeconds(3);
  await printOrderMessage();
}

void countSeconds(int s) {
  
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }

}