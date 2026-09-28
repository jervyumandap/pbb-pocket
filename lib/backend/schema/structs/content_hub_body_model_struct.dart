// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentHubBodyModelStruct extends BaseStruct {
  ContentHubBodyModelStruct({
    String? title,
    String? bodyBeforeList,
    List<String>? checklist,
    String? bodyAfterList,
    String? listTitle,
  })  : _title = title,
        _bodyBeforeList = bodyBeforeList,
        _checklist = checklist,
        _bodyAfterList = bodyAfterList,
        _listTitle = listTitle;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "bodyBeforeList" field.
  String? _bodyBeforeList;
  String get bodyBeforeList => _bodyBeforeList ?? '';
  set bodyBeforeList(String? val) => _bodyBeforeList = val;

  bool hasBodyBeforeList() => _bodyBeforeList != null;

  // "checklist" field.
  List<String>? _checklist;
  List<String> get checklist => _checklist ?? const [];
  set checklist(List<String>? val) => _checklist = val;

  void updateChecklist(Function(List<String>) updateFn) {
    updateFn(_checklist ??= []);
  }

  bool hasChecklist() => _checklist != null;

  // "bodyAfterList" field.
  String? _bodyAfterList;
  String get bodyAfterList => _bodyAfterList ?? '';
  set bodyAfterList(String? val) => _bodyAfterList = val;

  bool hasBodyAfterList() => _bodyAfterList != null;

  // "listTitle" field.
  String? _listTitle;
  String get listTitle => _listTitle ?? '';
  set listTitle(String? val) => _listTitle = val;

  bool hasListTitle() => _listTitle != null;

  static ContentHubBodyModelStruct fromMap(Map<String, dynamic> data) =>
      ContentHubBodyModelStruct(
        title: data['title'] as String?,
        bodyBeforeList: data['bodyBeforeList'] as String?,
        checklist: getDataList(data['checklist']),
        bodyAfterList: data['bodyAfterList'] as String?,
        listTitle: data['listTitle'] as String?,
      );

  static ContentHubBodyModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ContentHubBodyModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'bodyBeforeList': _bodyBeforeList,
        'checklist': _checklist,
        'bodyAfterList': _bodyAfterList,
        'listTitle': _listTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'bodyBeforeList': serializeParam(
          _bodyBeforeList,
          ParamType.String,
        ),
        'checklist': serializeParam(
          _checklist,
          ParamType.String,
          isList: true,
        ),
        'bodyAfterList': serializeParam(
          _bodyAfterList,
          ParamType.String,
        ),
        'listTitle': serializeParam(
          _listTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContentHubBodyModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ContentHubBodyModelStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        bodyBeforeList: deserializeParam(
          data['bodyBeforeList'],
          ParamType.String,
          false,
        ),
        checklist: deserializeParam<String>(
          data['checklist'],
          ParamType.String,
          true,
        ),
        bodyAfterList: deserializeParam(
          data['bodyAfterList'],
          ParamType.String,
          false,
        ),
        listTitle: deserializeParam(
          data['listTitle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContentHubBodyModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ContentHubBodyModelStruct &&
        title == other.title &&
        bodyBeforeList == other.bodyBeforeList &&
        listEquality.equals(checklist, other.checklist) &&
        bodyAfterList == other.bodyAfterList &&
        listTitle == other.listTitle;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, bodyBeforeList, checklist, bodyAfterList, listTitle]);
}

ContentHubBodyModelStruct createContentHubBodyModelStruct({
  String? title,
  String? bodyBeforeList,
  String? bodyAfterList,
  String? listTitle,
}) =>
    ContentHubBodyModelStruct(
      title: title,
      bodyBeforeList: bodyBeforeList,
      bodyAfterList: bodyAfterList,
      listTitle: listTitle,
    );
