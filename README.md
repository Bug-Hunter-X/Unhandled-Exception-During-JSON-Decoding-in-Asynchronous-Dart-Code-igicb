# Unhandled Exception During JSON Decoding in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming and provides a solution.

The `bug.dart` file showcases code that makes a network request and parses JSON data.  However, it lacks comprehensive error handling for JSON decoding failures.  The `bugSolution.dart` file presents an improved version with robust error handling.

## Problem

The original code handles network errors, but it doesn't explicitly handle the possibility of the `jsonDecode` function throwing a `FormatException` if the response body isn't valid JSON. This can lead to unexpected crashes or silent failures.

## Solution

The solution adds more specific error handling for the `jsonDecode` step.  This approach allows for more graceful error management, providing informative error messages and preventing unexpected application termination.