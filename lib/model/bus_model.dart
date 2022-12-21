class BusModel{
  String? startigTime;
  String? endTime;
  String? startigPlace;
  String? endPlace;
  String? busName;
  String? busType;
  int? amount;
  String? hours;
  String? available;
  String? image;
  String? Date;

  BusModel(this.amount,this.available,this.busName,this.busType,this.endPlace,this.endTime,this.hours,this.image,this.startigPlace,this.startigTime,this.Date);
}

List<BusModel>buslist=[
  BusModel(3000, "Available Tickets : 6", "KSR Travels","Volvo", "Chennai", "6 AM", "8 hrs", "assets/images/bus.png", "Bangalore", "7 PM","Date:27-12-2022"),
  BusModel(3000, "Available Tickets : 6", "KSR Travels", "Scania","Chennai", "6 AM", "8 hrs", "assets/images/bus.png", "tirupathi", "7 PM","Date:27-12-2022"),
  BusModel(3000, "Available Tickets : 6", "KSR Travels","Benz", "Mysore", "6 AM", "8 hrs", "assets/images/bus.png", "Bangalore", "7 PM","Date:27-12-2022"),
  BusModel(3000, "Available Tickets : 6", "KSR Travels","Tata", "Delhi", "6 AM", "8 hrs", "assets/images/bus.png", "ongole", "7 PM","Date:27-12-2022"),
];