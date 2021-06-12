class EmployeeModel {
  final int id;
  final String name;
  final String designation;
  final int salary;

  EmployeeModel({
    this.id,
    this.name,
    this.designation,
    this.salary,
  });
}

List<EmployeeModel> fetchAll() => [
      EmployeeModel(id: 10001, name: 'James', designation: 'Project Lead', salary: 20000),
      EmployeeModel(id: 10002, name: 'Kathryn', designation: 'Manager', salary: 30000),
      EmployeeModel(id: 10003, name: 'Lara', designation: 'Developer', salary: 15000),
      EmployeeModel(id: 10004, name: 'Michael', designation: 'Designer', salary: 15000),
      EmployeeModel(id: 10005, name: 'Martin', designation: 'Developer', salary: 15000),
      EmployeeModel(id: 10006, name: 'Newberry', designation: 'Developer', salary: 15000),
      EmployeeModel(id: 10007, name: 'Balnc', designation: 'Developer', salary: 15000),
      EmployeeModel(id: 10008, name: 'Perry', designation: 'Developer', salary: 15000),
      EmployeeModel(id: 10009, name: 'Gable', designation: 'Developer', salary: 15000),
      EmployeeModel(id: 10010, name: 'Grimes', designation: 'Developer', salary: 15000),
    ];
