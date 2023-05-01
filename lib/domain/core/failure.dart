abstract class Failure {}

class ObjectBoxFailure extends Failure {
  final dynamic e;
  final StackTrace s;

  ObjectBoxFailure(this.e, this.s) {
    print('$e\n\n$s');
  }
}

class JsonParseFailure extends Failure {
  final dynamic e;
  final StackTrace s;

  JsonParseFailure(this.e, this.s) {
    print('$e\n\n$s');
  }
}
