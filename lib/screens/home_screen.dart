import 'package:employee_management/models/employee.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Employee> _employees = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    String url = "https://freetestapi.com/api/v1/products";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Employees"
        ),
      ),
      body: _buildUI(),
    );
  }
  Widget _buildUI(){
    return SizedBox.expand(
      child: Column(
        children: [
          _employeesListView()
        ],
      ),
    );
  }

  Widget _employeesListView(){
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.80,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        itemCount: 0,
        itemBuilder: (context,index){

        },
        ),
    );
  }
}