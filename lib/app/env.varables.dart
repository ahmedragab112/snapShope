import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Env { dev, prod }

class EnvVarables {
  String _type = '';

  static final EnvVarables _instance = EnvVarables._();

  static EnvVarables get ins => _instance;
  EnvVarables._();
  Future<void> init({required Env envType}) async {
    switch (envType) {
      case Env.dev:
        await dotenv.load(
          fileName: '.env.dev',
        );
        break;
      case Env.prod:
        await dotenv.load(
          fileName: '.env.prod',
        );
      default:
    }
    _type = dotenv.get('ENV_TYPE');
  }

  bool get type => _type == 'dev' ? true : false;
}
