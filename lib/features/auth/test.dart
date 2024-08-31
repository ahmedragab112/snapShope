import 'package:flutter/material.dart';
import 'package:newstore/core/cache/store.dart';
import 'package:newstore/core/di/locator.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              final objectBoxManager = sl<ObjectBoxManager>();

              final preferences = objectBoxManager.getPreferences();

              preferences.isOnboardingVisited = true;

              objectBoxManager
                  .updateIsOnboardingVisited(preferences.isOnboardingVisited);


              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Onboarding visited updated!')),
              );
            },
            child: const Text('Onboarding Visited')),
      ),
    );
  }
}
