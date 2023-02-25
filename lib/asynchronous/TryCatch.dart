Future<void> printOrderMessage() async {

  try {
    print('Awaiting user order...');
    var order = await fetchUserOrder();
    print(order);
  }

  catch (e) {
    print('Caught error: $e');
  }

}

Future<String> fetchUserOrder() {

  var str = Future.delayed(const Duration(seconds: 4),
            () => throw 'Error !!');

  return str;

}

void main() async {
  await printOrderMessage();
}