import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyReadMoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer<ReadMoreProvider>(
            builder: (context, provider, _) => Text(
              provider.isExpanded
                  ? provider.longText
                  : provider.truncateText(provider.longText),
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(height: 8.0),
          Consumer<ReadMoreProvider>(
            builder: (context, provider, _) => TextButton(
              onPressed: () {
                provider.toggleExpansion();
              },
              child: Text(
                provider.isExpanded ? 'Read Less' : 'Read More',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReadMoreProvider with ChangeNotifier {
  bool _isExpanded = false;

  bool get isExpanded => _isExpanded;

  // Sample long text
  String longText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
      'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi '
      'ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
      'in voluptate velit esse cillum dolore eu fugiat nulla pariatur.';

  // Function to truncate the text
  String truncateText(String text) {
    const maxLength = 100; // Set your desired max length
    return text.length > maxLength
        ? '${text.substring(0, maxLength)}...'
        : text;
  }

  void toggleExpansion() {
    _isExpanded = !_isExpanded;
    notifyListeners();
  }
}
