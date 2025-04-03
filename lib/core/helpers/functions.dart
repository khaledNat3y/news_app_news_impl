/// Truncate a string to a maximum number of words
String truncateToFirstNWords(String inputString, int wordLimit) {
  List<String> words = inputString.split(' ');
  if (words.length <= wordLimit) {
    return inputString;
  }
  return words.sublist(0, wordLimit).join(' ');
}