class MyApi {
  static const BASE_URL = 'http://192.168.100.71/rc_college_app/v1';

  static String getAllStudent() {
    return '$BASE_URL/list_all.php';
  }

  static String createStudent() {
    return '$BASE_URL/create.php';
  }

  static String updateStudent() {
    return '$BASE_URL/update.php';
  }

  static String deleteStudent() {
    return '$BASE_URL/delete.php';
  }
}
