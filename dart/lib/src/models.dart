/// Response models for the Punycode Converter API.

/// API Response wrapper.
class PunycodeResponse {
  final String status;
  final dynamic error;
  final PunycodeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PunycodeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PunycodeResponse.fromJson(Map<String, dynamic> json) => PunycodeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PunycodeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Punycode Converter API.

class PunycodeData {
  String? input;
  String? output;
  String? mode;
  bool? isIDN;
  bool? isDomain;
  List<String>? scripts;
  bool? mixedScript;

  PunycodeData({
    this.input,
    this.output,
    this.mode,
    this.isIDN,
    this.isDomain,
    this.scripts,
    this.mixedScript,
  });

  factory PunycodeData.fromJson(Map<String, dynamic> json) => PunycodeData(
      input: json['input'],
      output: json['output'],
      mode: json['mode'],
      isIDN: json['isIDN'],
      isDomain: json['isDomain'],
      scripts: (json['scripts'] as List?)?.cast<String>(),
      mixedScript: json['mixedScript'],
    );
}

class PunycodeRequest {
  String text;
  String? mode;

  PunycodeRequest({
    required this.text,
    this.mode,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (mode != null) 'mode': mode,
    };
}
