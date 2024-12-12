```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process the JSON response
        // ...
      } catch (e) {
        // Handle JSON decoding errors
        print('JSON decoding error: $e');
        //Implement application specific error handling.
        //e.g., display an error message or retry the request
      }
    } else {
      // Handle network errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle general exceptions
    print('Error: $e');
    // Implement application specific error handling for all exceptions.
  }
}
```