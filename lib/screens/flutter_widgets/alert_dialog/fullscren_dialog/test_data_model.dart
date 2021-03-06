import 'package:intl/intl.dart';

class TestDataModel {
  String category;
  String subCategory;
  String image;
  String areaName;
  String unit;
  String assignPersonName;
  String assignPersonImage;
  String assignPersonPhoneNo;
  String assignPersonEmail;
  String dateTime;

  TestDataModel({
    this.category,
    this.subCategory,
    this.image,
    this.areaName,
    this.unit,
    this.assignPersonName,
    this.assignPersonImage,
    this.assignPersonPhoneNo,
    this.assignPersonEmail,
    this.dateTime,
  });

  static List<TestDataModel> fetchAll() {
    return [
      TestDataModel(
        category: 'Crime',
        subCategory: 'Murder',
        image: 'assets/images/murder.png',
        areaName: 'Mirpur-2, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 1',
        assignPersonImage: 'assets/images/man_circle_img.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        image: '',
        areaName: 'Niketon, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 2',
        assignPersonImage: 'assets/images/profile_avatar.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Lost & Found',
        subCategory: 'Electrical Device',
        image: 'assets/images/electrical_device.png',
        areaName: 'Basundhara, Dhaka',
        unit: 'DSCC',
        assignPersonName: 'Person Name - 3',
        assignPersonImage: 'assets/images/profile_avatar.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Crime',
        subCategory: 'Murder',
        image: 'assets/images/murder.png',
        areaName: 'Mirpur-2, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 4',
        assignPersonImage: 'null',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        image: '',
        areaName: 'Niketon, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 5',
        assignPersonImage: 'assets/images/man_circle_img.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Lost & Found',
        subCategory: 'Electrical Device',
        image: 'assets/images/electrical_device.png',
        areaName: 'Basundhara, Dhaka',
        unit: 'DSCC',
        assignPersonName: 'Person Name - 6',
        assignPersonImage: 'assets/images/profile_avatar.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        image: '',
        areaName: 'Niketon, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 7',
        assignPersonImage: 'assets/images/profile_avatar.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Lost & Found',
        subCategory: 'Electrical Device',
        image: 'assets/images/electrical_device.png',
        areaName: 'Basundhara, Dhaka',
        unit: 'DSCC',
        assignPersonName: 'Person Name - 8',
        assignPersonImage: 'assets/images/man_circle_img.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Crime',
        subCategory: 'Murder',
        image: 'assets/images/murder.png',
        areaName: 'Mirpur-2, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 9',
        assignPersonImage: 'assets/images/man_circle_img.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
      TestDataModel(
        category: 'Pollution',
        subCategory: 'Water Pollution',
        image: '',
        areaName: 'Niketon, Dhaka',
        unit: 'DNCC',
        assignPersonName: 'Person Name - 10',
        assignPersonImage: 'assets/images/man_circle_img.png',
        assignPersonPhoneNo: '01xxx077xx0',
        assignPersonEmail: 'person1@gmail.com',
        dateTime: DateFormat('dd MMM yyyy hh:mm a').format(DateTime.now()).toString(),
      ),
    ];
  }
}