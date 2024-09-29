class Member {
  final String id;
  final String name;
  final String status; // Working, Not logged-in, etc.
  final DateTime checkInTime;
  final DateTime checkOutTime;

  Member({
    required this.id,
    required this.name,
    required this.status,
    required this.checkInTime,
    required this.checkOutTime,
  });
}
