
// Synchronous Functions

/*
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
// more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);

void main() {
  print('Fetching user order...');
  print(createOrderMessage());
}
*/

// Asynchronous functions
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
// more complex and slow.
Future.delayed(
  const Duration(seconds: 3),
      () => 'Large Latte',
);

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}
