// Generated code. Do not modify.

import 'package:divkit/src/schema/div_input_validator_expression.dart';
import 'package:divkit/src/schema/div_input_validator_regex.dart';
import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

class DivInputValidator extends Preloadable with EquatableMixin {
  final Preloadable value;
  final int _index;

  @override
  List<Object?> get props => [value];

  T map<T>({
    required T Function(DivInputValidatorExpression)
        divInputValidatorExpression,
    required T Function(DivInputValidatorRegex) divInputValidatorRegex,
  }) {
    switch (_index) {
      case 0:
        return divInputValidatorExpression(
          value as DivInputValidatorExpression,
        );
      case 1:
        return divInputValidatorRegex(
          value as DivInputValidatorRegex,
        );
    }
    throw Exception(
      "Type ${value.runtimeType.toString()} is not generalized in DivInputValidator",
    );
  }

  T maybeMap<T>({
    T Function(DivInputValidatorExpression)? divInputValidatorExpression,
    T Function(DivInputValidatorRegex)? divInputValidatorRegex,
    required T Function() orElse,
  }) {
    switch (_index) {
      case 0:
        if (divInputValidatorExpression != null) {
          return divInputValidatorExpression(
            value as DivInputValidatorExpression,
          );
        }
        break;
      case 1:
        if (divInputValidatorRegex != null) {
          return divInputValidatorRegex(
            value as DivInputValidatorRegex,
          );
        }
        break;
    }
    return orElse();
  }

  const DivInputValidator.divInputValidatorExpression(
    DivInputValidatorExpression obj,
  )   : value = obj,
        _index = 0;

  const DivInputValidator.divInputValidatorRegex(
    DivInputValidatorRegex obj,
  )   : value = obj,
        _index = 1;

  bool get isDivInputValidatorExpression => _index == 0;

  bool get isDivInputValidatorRegex => _index == 1;

  @override
  Future<void> preload(Map<String, dynamic> context) => value.preload(context);

  static DivInputValidator? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      switch (json['type']) {
        case DivInputValidatorExpression.type:
          return DivInputValidator.divInputValidatorExpression(
            DivInputValidatorExpression.fromJson(json)!,
          );
        case DivInputValidatorRegex.type:
          return DivInputValidator.divInputValidatorRegex(
            DivInputValidatorRegex.fromJson(json)!,
          );
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  static Future<DivInputValidator?> parse(
    Map<String, dynamic>? json,
  ) async {
    if (json == null) {
      return null;
    }
    try {
      switch (json['type']) {
        case DivInputValidatorExpression.type:
          return DivInputValidator.divInputValidatorExpression(
            (await DivInputValidatorExpression.parse(json))!,
          );
        case DivInputValidatorRegex.type:
          return DivInputValidator.divInputValidatorRegex(
            (await DivInputValidatorRegex.parse(json))!,
          );
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
