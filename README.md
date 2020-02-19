# LinkedIn Login

Flutter app for demonstrating LinkedIn Login.

## Getting Started

This project is just a demo on LinkedIn login using linkedIn ver2 API.

To access LinkedIn login, you'll need to make sure to [register your application.](https://www.linkedin.com/developers/apps)

## Dependencies Utilized

There are several dependencies which are utilised in this project to accomplish the task:

- [webview_flutter](https://pub.dev/packages/webview_flutter)
- [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage)
- [retrofit](https://pub.dev/packages/retrofit)
- [dio](https://pub.dev/packages/dio)
- [json_serializable](https://pub.dev/packages/json_serializable)

We have also used code generators to minimise the boilerplate codes, such as [retrofit_generator](https://pub.dev/packages/retrofit_generator)

**NOTE**: Any time you change response_model or rest_clients files, you need to run build runner command `flutter pub run build_runner build`. This is because the system has no way of knowing how that change may have affected the outputs.

For more help you can go to 
[Sign In with LinkedIn](https://docs.microsoft.com/en-us/linkedin/consumer/integrations/self-serve/sign-in-with-linkedin) or raise the issue in this repo.
