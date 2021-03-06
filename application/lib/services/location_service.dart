import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_login_demo/models/location.dart';

class LocationService {

  final firestoreInstance = Firestore.instance;

  getLocations() {
    return firestoreInstance.collection("cars").getDocuments();
  }

  createLocation(Location location) {
    print(location.toJson());
    firestoreInstance.collection("cars").add(location.toJson()).then((value) => print(value));
  }
}
