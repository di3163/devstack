class FirebaseServiceException implements Exception {
  final String msg;

  FirebaseServiceException(this.msg);

  @override
  String toString() => msg;
}
