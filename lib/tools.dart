import 'package:intl/intl.dart';

/// Formats a given timestamp as a human-readable string, based on the
/// timestamp value relative to current time
String? formatTime(DateTime? timestamp) {
 if (timestamp != null) {
   DateTime currentTime = DateTime.now();

   Duration difference = timestamp.difference(currentTime);
   int seconds = difference.inSeconds;
   int minutes = ((-seconds)/60).round();
   int hours = ((minutes)/60).round();
   int days = ((hours)/24).round();


   if (seconds < 1 && seconds > -1) {
     return "now";
   }else if (seconds >= 1) {
     // Virker som jeg får
     DateFormat format = DateFormat("yyyy-MM-dd HH:mm:ss");
     return format.format(timestamp);
   } else {
     if (seconds == -1) {
       return "1 second ago";
     } else if (seconds <= -2 && seconds >= -59) {
       return "${-seconds} seconds ago";
    } else if (seconds <= -60 && seconds >= (-3600) + 31) {
       return "${minutes} minute(s) ago";
     } else if (seconds > -60*60*24) {
       return "${hours} hour(s) ago";
     } else if (seconds <= -(60*60*24) && seconds > -(60*60*36)) {
       return "one day ago";
     } else if (seconds <= -(60*60*36) && seconds > -(60*60*24*7)) {
       return "${days} days ago";
     } else {
       DateFormat format = DateFormat("yyyy-MM-dd HH:mm:ss");
       return format.format(timestamp);
     }
 }
 }
 return null;
}

void main() {
  print(formatTime(DateTime.now().subtract(Duration(seconds: 60*60*24*9))));
}