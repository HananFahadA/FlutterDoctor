import 'package:doctor/doctorModel.dart';
import 'package:flutter/material.dart';

class Docotors extends StatelessWidget {
  const Docotors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 84, 122, 206),
        title: Text(
          "الاطباء",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (BuildContext context, int index) {
          Doctor doctor = doctors[index];
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(doctor.name),
              subtitle: Text(doctor.Specialization),
              trailing: IconButton(
                icon: Icon(Icons.arrow_right_alt_rounded),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorsDetails(doctor: doctor),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class DoctorsDetails extends StatelessWidget {
  final Doctor doctor; // Properly define the parameter

  // Corrected class name
  const DoctorsDetails({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 84, 122, 206),
          title: Text(
            "الملف الشخصي ل ${doctor.name}",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("الرجوع "),
            ),
            IconButton(
                icon: Icon(Icons.arrow_right_alt_rounded),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Table(children: [
              TableRow(children: [Text("الاسم:"), Text(doctor.name)]),
              TableRow(
                  children: [Text("التخصص:"), Text(doctor.Specialization)]),
              TableRow(children: [Text("الهاتف:"), Text(doctor.phone)]),
              TableRow(
                  children: [Text("ساعات العمل :"), Text(doctor.timeHore)]),
              TableRow(children: [Text("العنوان:"), Text(doctor.address)])
            ]
                // children: [
                //   Container(
                //     child: Text(doctor.name),
                //     // subtitle: Text(doctor.Specialization),
                //   ),
                //   Container(
                //     alignment: Alignment.topLeft,
                //     child: Text(doctor.phone),
                //   ),
                // ],
                ),
          ),
        ));
  }
}
