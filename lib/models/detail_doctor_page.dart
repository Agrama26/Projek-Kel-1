import 'package:flutter/material.dart';
import 'package:pet_healthy_kel1/models/doctor_model.dart';

class DetailDoctorPage extends StatelessWidget {
  final DoctorModel doctor;

  const DetailDoctorPage({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor.name),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/${doctor.image}',
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              doctor.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Distance: ${doctor.distance} km",
              style: const TextStyle(fontSize: 16),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Services Offered:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: doctor.services
                  .map((service) => Text("- $service", style: const TextStyle(fontSize: 16)))
                  .toList(),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Tambahkan aksi booking
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Booking feature coming soon!")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              child: const Center(
                child: Text("Book Appointment"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
