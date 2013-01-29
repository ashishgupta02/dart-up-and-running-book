main() {
  // Get the current DateTime and time.
  var now = new DateTime.now();
  print(now);
  
  // Create a new DateTime with the local time zone.
  var y2k = new DateTime(2000);   // January 1, 2000
  print(y2k);
  
  // You can specify the month and day (and hour, minute, second, and ms).
  y2k = new DateTime(2000, 1, 2); // January 2, 2000
  print(y2k);
  
  // Specify the DateTime as a UTC time.
  y2k = new DateTime.utc(2000);   // January 1, 2000, UTC
  print(y2k);
  
  // Specify a DateTime and time in milliseconds since the Unix epoch.
  y2k = new DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print(y2k);
  
  // Parse an ISO 8601 DateTime.
  y2k = DateTime.parse('2000-01-01T00:00:00Z');
  print(y2k);
  
  assert(y2k.millisecondsSinceEpoch == 946684800000);
  
  // Add one year.
  var y2001 = y2k.add(const Duration(days: 366));
  assert(y2001.year == 2001);

  // Subtract 30 days.
  var december2000 = y2001.subtract(const Duration(days: 30));
  assert(december2000.year == 2000);
  assert(december2000.month == 12);

  // Calculate the difference between two dates.
  // Returns a Duration object.
  var duration = y2001.difference(y2k);
  assert(duration.inDays == 366); // y2k was a leap year.
}

