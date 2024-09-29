import 'package:flutter/material.dart';
import '../models/member.dart';
import '../widgets/member_list_item.dart';

class AttendanceScreen extends StatelessWidget {
  final List<Member> members = [
    Member(
        id: '1',
        name: 'Wade Warren',
        status: 'Working',
        checkInTime: DateTime.parse('2024-08-31 09:30:00'),
        checkOutTime: DateTime.parse('2024-08-31 18:30:00')),
    // Add more members as needed
  ];

 AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: Column(
        children: [
          // Add the date filter widget here if needed
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                return MemberListItem(member: members[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
