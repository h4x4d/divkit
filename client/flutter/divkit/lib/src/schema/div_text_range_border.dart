// Generated code. Do not modify.

import 'package:divkit/src/schema/div_stroke.dart';
import 'package:divkit/src/utils/parsing_utils.dart';
import 'package:equatable/equatable.dart';

/// Character range border.
class DivTextRangeBorder extends Preloadable with EquatableMixin {
  const DivTextRangeBorder({
    this.cornerRadius,
    this.stroke,
  });

  /// One radius of element and stroke corner rounding. Has a lower priority than `corners_radius`.
  // constraint: number >= 0
  final Expression<int>? cornerRadius;

  /// Stroke style.
  final DivStroke? stroke;

  @override
  List<Object?> get props => [
        cornerRadius,
        stroke,
      ];

  DivTextRangeBorder copyWith({
    Expression<int>? Function()? cornerRadius,
    DivStroke? Function()? stroke,
  }) =>
      DivTextRangeBorder(
        cornerRadius:
            cornerRadius != null ? cornerRadius.call() : this.cornerRadius,
        stroke: stroke != null ? stroke.call() : this.stroke,
      );

  static DivTextRangeBorder? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }
    try {
      return DivTextRangeBorder(
        cornerRadius: safeParseIntExpr(
          json['corner_radius'],
        ),
        stroke: safeParseObj(
          DivStroke.fromJson(json['stroke']),
        ),
      );
    } catch (e) {
      return null;
    }
  }

  static Future<DivTextRangeBorder?> parse(
    Map<String, dynamic>? json,
  ) async {
    if (json == null) {
      return null;
    }
    try {
      return DivTextRangeBorder(
        cornerRadius: await safeParseIntExprAsync(
          json['corner_radius'],
        ),
        stroke: await safeParseObjAsync(
          DivStroke.fromJson(json['stroke']),
        ),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> preload(
    Map<String, dynamic> context,
  ) async {
    try {
      await cornerRadius?.preload(context);
      await stroke?.preload(context);
    } catch (e) {
      return;
    }
  }
}