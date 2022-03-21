part of dart_appwrite.models;

/// Log
class Log {
  /// Event name.
  final String event;

  /// IP session in use when the session was created.
  final String ip;

  /// Log creation time in Unix timestamp.
  final int time;

  /// Operating system code name. View list of [available options](https://github.com/appwrite/appwrite/blob/master/docs/lists/os.json).
  final String osCode;

  /// Operating system name.
  final String osName;

  /// Operating system version.
  final String osVersion;

  /// Client type.
  final String clientType;

  /// Client code name. View list of [available options](https://github.com/appwrite/appwrite/blob/master/docs/lists/clients.json).
  final String clientCode;

  /// Client name.
  final String clientName;

  /// Client version.
  final String clientVersion;

  /// Client engine name.
  final String clientEngine;

  /// Client engine name.
  final String clientEngineVersion;

  /// Device name.
  final String deviceName;

  /// Device brand name.
  final String deviceBrand;

  /// Device model name.
  final String deviceModel;

  /// Country two-character ISO 3166-1 alpha code.
  final String countryCode;

  /// Country name.
  final String countryName;

  Log({
    required this.event,
    required this.ip,
    required this.time,
    required this.osCode,
    required this.osName,
    required this.osVersion,
    required this.clientType,
    required this.clientCode,
    required this.clientName,
    required this.clientVersion,
    required this.clientEngine,
    required this.clientEngineVersion,
    required this.deviceName,
    required this.deviceBrand,
    required this.deviceModel,
    required this.countryCode,
    required this.countryName,
  });

  factory Log.fromMap(Map<String, dynamic> map) {
    return Log(
      event: map['event'].toString(),
      ip: map['ip'].toString(),
      time: map['time'],
      osCode: map['osCode'].toString(),
      osName: map['osName'].toString(),
      osVersion: map['osVersion'].toString(),
      clientType: map['clientType'].toString(),
      clientCode: map['clientCode'].toString(),
      clientName: map['clientName'].toString(),
      clientVersion: map['clientVersion'].toString(),
      clientEngine: map['clientEngine'].toString(),
      clientEngineVersion: map['clientEngineVersion'].toString(),
      deviceName: map['deviceName'].toString(),
      deviceBrand: map['deviceBrand'].toString(),
      deviceModel: map['deviceModel'].toString(),
      countryCode: map['countryCode'].toString(),
      countryName: map['countryName'].toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "event": event,
      "ip": ip,
      "time": time,
      "osCode": osCode,
      "osName": osName,
      "osVersion": osVersion,
      "clientType": clientType,
      "clientCode": clientCode,
      "clientName": clientName,
      "clientVersion": clientVersion,
      "clientEngine": clientEngine,
      "clientEngineVersion": clientEngineVersion,
      "deviceName": deviceName,
      "deviceBrand": deviceBrand,
      "deviceModel": deviceModel,
      "countryCode": countryCode,
      "countryName": countryName,
    };
  }
}
