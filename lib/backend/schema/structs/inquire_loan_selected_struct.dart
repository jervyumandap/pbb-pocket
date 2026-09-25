// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InquireLoanSelectedStruct extends BaseStruct {
  InquireLoanSelectedStruct({
    bool? isAccountNotSelected,
    bool? isNotSelctedYesOrNo,
    bool? isNotSelectedInterest,
  })  : _isAccountNotSelected = isAccountNotSelected,
        _isNotSelctedYesOrNo = isNotSelctedYesOrNo,
        _isNotSelectedInterest = isNotSelectedInterest;

  // "isAccountNotSelected" field.
  bool? _isAccountNotSelected;
  bool get isAccountNotSelected => _isAccountNotSelected ?? false;
  set isAccountNotSelected(bool? val) => _isAccountNotSelected = val;

  bool hasIsAccountNotSelected() => _isAccountNotSelected != null;

  // "isNotSelctedYesOrNo" field.
  bool? _isNotSelctedYesOrNo;
  bool get isNotSelctedYesOrNo => _isNotSelctedYesOrNo ?? false;
  set isNotSelctedYesOrNo(bool? val) => _isNotSelctedYesOrNo = val;

  bool hasIsNotSelctedYesOrNo() => _isNotSelctedYesOrNo != null;

  // "isNotSelectedInterest" field.
  bool? _isNotSelectedInterest;
  bool get isNotSelectedInterest => _isNotSelectedInterest ?? false;
  set isNotSelectedInterest(bool? val) => _isNotSelectedInterest = val;

  bool hasIsNotSelectedInterest() => _isNotSelectedInterest != null;

  static InquireLoanSelectedStruct fromMap(Map<String, dynamic> data) =>
      InquireLoanSelectedStruct(
        isAccountNotSelected: data['isAccountNotSelected'] as bool?,
        isNotSelctedYesOrNo: data['isNotSelctedYesOrNo'] as bool?,
        isNotSelectedInterest: data['isNotSelectedInterest'] as bool?,
      );

  static InquireLoanSelectedStruct? maybeFromMap(dynamic data) => data is Map
      ? InquireLoanSelectedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isAccountNotSelected': _isAccountNotSelected,
        'isNotSelctedYesOrNo': _isNotSelctedYesOrNo,
        'isNotSelectedInterest': _isNotSelectedInterest,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isAccountNotSelected': serializeParam(
          _isAccountNotSelected,
          ParamType.bool,
        ),
        'isNotSelctedYesOrNo': serializeParam(
          _isNotSelctedYesOrNo,
          ParamType.bool,
        ),
        'isNotSelectedInterest': serializeParam(
          _isNotSelectedInterest,
          ParamType.bool,
        ),
      }.withoutNulls;

  static InquireLoanSelectedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      InquireLoanSelectedStruct(
        isAccountNotSelected: deserializeParam(
          data['isAccountNotSelected'],
          ParamType.bool,
          false,
        ),
        isNotSelctedYesOrNo: deserializeParam(
          data['isNotSelctedYesOrNo'],
          ParamType.bool,
          false,
        ),
        isNotSelectedInterest: deserializeParam(
          data['isNotSelectedInterest'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'InquireLoanSelectedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InquireLoanSelectedStruct &&
        isAccountNotSelected == other.isAccountNotSelected &&
        isNotSelctedYesOrNo == other.isNotSelctedYesOrNo &&
        isNotSelectedInterest == other.isNotSelectedInterest;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([isAccountNotSelected, isNotSelctedYesOrNo, isNotSelectedInterest]);
}

InquireLoanSelectedStruct createInquireLoanSelectedStruct({
  bool? isAccountNotSelected,
  bool? isNotSelctedYesOrNo,
  bool? isNotSelectedInterest,
}) =>
    InquireLoanSelectedStruct(
      isAccountNotSelected: isAccountNotSelected,
      isNotSelctedYesOrNo: isNotSelctedYesOrNo,
      isNotSelectedInterest: isNotSelectedInterest,
    );
