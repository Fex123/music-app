class Festival {
  final String name;
  final String location;
  final DateTime startDate;
  final DateTime endDate;
  final String description;
  final String image;
  final List<String> genres;

  const Festival({
    required this.name,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.description,
    required this.image,
    required this.genres,
  });
}

extension FestivalDateHelpers on Festival {
  /// Returns the next upcoming start date.
  DateTime get nextStartDate {
    final now = DateTime.now();

    // Build this year's festival date
    final thisYear = DateTime(now.year, startDate.month, startDate.day);

    // If already passed, move to next year
    if (thisYear.isBefore(DateTime(now.year, now.month, now.day))) {
      return DateTime(now.year + 1, startDate.month, startDate.day);
    }

    return thisYear;
  }

  /// Days until the next occurrence of the festival
  int get daysUntilNextEvent {
    return nextStartDate.difference(DateTime.now()).inDays;
  }
}
