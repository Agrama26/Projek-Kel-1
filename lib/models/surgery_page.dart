import 'package:flutter/material.dart';
import 'package:pet_healthy_kel1/models/doctor_model.dart'; // Import model DoctorModel
import 'package:pet_healthy_kel1/models/service_model.dart'; // Import Service
// ignore: unused_import
import 'package:pet_healthy_kel1/screens/detail_doctor_page.dart';

import 'detail_doctor_page.dart'; // Import halaman Detail Dokter

class SurgeryPage extends StatelessWidget {
  const SurgeryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Filter dokter berdasarkan layanan 'Surgery'
    final surgeryDoctors =
        doctors.where((doctor) => doctor.services.contains(Service.surgery)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Surgery Services"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: surgeryDoctors.isNotEmpty
          ? ListView.builder(
              itemCount: surgeryDoctors.length,
              itemBuilder: (context, index) {
                final doctor = surgeryDoctors[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/${doctor.image}', // Path gambar dokter
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(doctor.name),
                    subtitle: Text("Distance: ${doctor.distance} km"),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman detail dokter
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailDoctorPage(doctor: doctor),
                          ),
                        );
                      },
                      child: const Text("Details"),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: Text(
                "No doctors found for Surgery service.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
    );
  }
}
