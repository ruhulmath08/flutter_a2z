import 'package:intl/intl.dart';

class TestDataModel {
  String category;
  String subCategory;
  String shoutImage;
  String dateTime;
  String coordinate;
  String probableAddress;
  String submittedBy;
  String urgency;
  String remarks;
  String agency;
  String unit;
  String officerName;
  String officerImage;
  String officerPhoneNo;
  String officerEmail;

  TestDataModel({
    this.category,
    this.subCategory,
    this.shoutImage,
    this.agency,
    this.unit,
    this.officerName,
    this.officerImage,
    this.officerPhoneNo,
    this.officerEmail,
    this.dateTime,
  });

  static List<TestDataModel> fetchAll() {
    return [
      TestDataModel(
        category: 'Crime',
        subCategory: 'Murder',
        shoutImage: 'assets/images/murder.png',
        agency: 'Mirpur-2, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 1',
        officerImage: 'assets/images/man_circle_img.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        shoutImage: '',
        agency: 'Niketon, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 2',
        officerImage: 'assets/images/profile_avatar.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Lost & Found',
        subCategory: 'Electrical Device',
        shoutImage: 'assets/images/electrical_device.png',
        agency: 'Basundhara, Dhaka',
        unit: 'DSCC',
        officerName: 'Person Name - 3',
        officerImage: 'assets/images/profile_avatar.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Crime',
        subCategory: 'Murder',
        shoutImage: 'assets/images/murder.png',
        agency: 'Mirpur-2, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 4',
        officerImage: 'null',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        shoutImage: '',
        agency: 'Niketon, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 5',
        officerImage: 'assets/images/man_circle_img.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Lost & Found',
        subCategory: 'Electrical Device',
        shoutImage: 'assets/images/electrical_device.png',
        agency: 'Basundhara, Dhaka',
        unit: 'DSCC',
        officerName: 'Person Name - 6',
        officerImage: 'assets/images/profile_avatar.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        shoutImage: '',
        agency: 'Niketon, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 7',
        officerImage: 'assets/images/profile_avatar.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Lost & Found',
        subCategory: 'Electrical Device',
        shoutImage: 'assets/images/electrical_device.png',
        agency: 'Basundhara, Dhaka',
        unit: 'DSCC',
        officerName: 'Person Name - 8',
        officerImage: 'assets/images/man_circle_img.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Crime',
        subCategory: 'Murder',
        shoutImage: 'assets/images/murder.png',
        agency: 'Mirpur-2, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 9',
        officerImage: 'assets/images/man_circle_img.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        shoutImage: '',
        agency: 'Niketon, Dhaka',
        unit: 'DNCC',
        officerName: 'Person Name - 10',
        officerImage: 'assets/images/man_circle_img.png',
        officerPhoneNo: '01xxx077xx0',
        officerEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
    ];
  }
}