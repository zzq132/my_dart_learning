void main() {
  //throw FormatException('Expected at least 1 section');
  //throw 'Out of llamas!';

  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    buyMoreLlamas();
  }

  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    buyMoreLlamas();
  } on Exception catch (e) {
    print('Unknown exception: $e');
  } catch (e) {
    print('Something really unknown: $e');
  }

  try {
    // ···
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }

  try {
    breedMoreLlamas();
  } finally {
    cleanLlamaStalls();
  }

  try {
    breedMoreLlamas();
  } catch (e) {
    print('Error: $e');
  } finally {
    cleanLlamaStalls();
  }

  assert(text != null);
  assert(number < 100);
  assert(urlString.startsWith('https'));
}

void distanceTo(var other) => throw UnimplementedError();
