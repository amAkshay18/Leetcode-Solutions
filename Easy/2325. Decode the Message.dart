String decodeMessage(String key, String message) {
  var distinctKey = key.replaceAll(' ', '').split('').toSet().join();
  String decodedMessage = '';
  for (int i = 0; i < message.length; i++) {
    if (message[i] != ' ') {
      decodedMessage +=
          String.fromCharCode(distinctKey.indexOf(message[i]) + 97);
    } else {
      decodedMessage += message[i];
    }
  }
  return decodedMessage;
}
