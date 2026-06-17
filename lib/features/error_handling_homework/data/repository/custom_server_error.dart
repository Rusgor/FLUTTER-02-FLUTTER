class CustomServerError implements Exception {
  const CustomServerError();

  @override
  String toString() {
    return 'Server is temporarily unavailable';
  }
}
