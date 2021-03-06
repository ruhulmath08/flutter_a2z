class Utility {
  //check empty string
  static bool isEmptyString(Object obj) {
    if (obj == null || obj == 'null' || obj.toString() == '') {
      return true;
    } else {
      return false;
    }
  }
}
