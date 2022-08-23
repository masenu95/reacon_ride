import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

CollectionReference driverCollectionReference =
    FirebaseFirestore.instance.collection("Drivers");

CollectionReference orderCollectionReference =
    FirebaseFirestore.instance.collection("Orders");

CollectionReference userCollectionReference =
    FirebaseFirestore.instance.collection("Users");

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
