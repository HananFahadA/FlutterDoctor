class Doctor {
  final String name;
  final String Specialization;
  final String address;
  final String phone;
  final String timeHore;
  Doctor(
      {required this.name,
      required this.Specialization,
      required this.address,
      required this.phone,
      required this.timeHore});
}

List<Doctor> doctors = [
  Doctor(
    name: "الطبيب 1",
    Specialization: "الطب العام",
    address: "123 شارع الرئيسي",
    phone: "+1234567890",
    timeHore: "9:00 صباحًا - 5:00 مساءً",
  ),
  Doctor(
    name: "الطبيب 2",
    Specialization: "القلبية",
    address: "456 شارع البلوط",
    phone: "+9876543210",
    timeHore: "10:00 صباحًا - 6:00 مساءً",
  ),
  // أطباء إضافيين
  Doctor(
    name: "الطبيب 3",
    Specialization: "الجراحة",
    address: "789 شارع الزهور",
    phone: "+5551112233",
    timeHore: "8:00 صباحًا - 4:00 مساءً",
  ),
  Doctor(
    name: "الطبيب 4",
    Specialization: "العيون",
    address: "012 شارع الشمس",
    phone: "+9998887776",
    timeHore: "11:00 صباحًا - 7:00 مساءً",
  ),
];
