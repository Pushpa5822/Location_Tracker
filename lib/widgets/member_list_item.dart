import 'package:flutter/material.dart';
import '../models/member.dart';
import '../screens/member_location_screen.dart';

class MemberListItem extends StatelessWidget {
  final Member member;

  const MemberListItem({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(member.name[0]), // Displaying first letter of the member's name
      ),
      title: Text(member.name),
      subtitle: Row(
        children: [
          Text('Check-In: ${member.checkInTime}'),
          const SizedBox(width: 10),
          Text('Check-Out: ${member.checkOutTime}')
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () {
              // Navigate to Attendance Calendar
            },
          ),
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MemberLocationScreen(memberId: member.id),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
