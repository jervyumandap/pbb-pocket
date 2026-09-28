// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    String? id,
    String? slug,
    String? title,
    String? summary,
    String? categoryId,
    String? categoryName,
    String? publishedAt,
    String? lastUpdatedAt,
    String? updatedAt,
    int? readTimeMinutes,
    List<TagsStruct>? tags,
    String? branchId,
    String? branchName,
    List<String>? boxSizes,
    String? requestType,
    String? referenceNumber,
    String? submittedAt,
    String? statusCategory,
    String? dateLastUpdated,
  })  : _id = id,
        _slug = slug,
        _title = title,
        _summary = summary,
        _categoryId = categoryId,
        _categoryName = categoryName,
        _publishedAt = publishedAt,
        _lastUpdatedAt = lastUpdatedAt,
        _updatedAt = updatedAt,
        _readTimeMinutes = readTimeMinutes,
        _tags = tags,
        _branchId = branchId,
        _branchName = branchName,
        _boxSizes = boxSizes,
        _requestType = requestType,
        _referenceNumber = referenceNumber,
        _submittedAt = submittedAt,
        _statusCategory = statusCategory,
        _dateLastUpdated = dateLastUpdated;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  set slug(String? val) => _slug = val;

  bool hasSlug() => _slug != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  set summary(String? val) => _summary = val;

  bool hasSummary() => _summary != null;

  // "categoryId" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  set categoryId(String? val) => _categoryId = val;

  bool hasCategoryId() => _categoryId != null;

  // "categoryName" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  set categoryName(String? val) => _categoryName = val;

  bool hasCategoryName() => _categoryName != null;

  // "publishedAt" field.
  String? _publishedAt;
  String get publishedAt => _publishedAt ?? '';
  set publishedAt(String? val) => _publishedAt = val;

  bool hasPublishedAt() => _publishedAt != null;

  // "lastUpdatedAt" field.
  String? _lastUpdatedAt;
  String get lastUpdatedAt => _lastUpdatedAt ?? '';
  set lastUpdatedAt(String? val) => _lastUpdatedAt = val;

  bool hasLastUpdatedAt() => _lastUpdatedAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "readTimeMinutes" field.
  int? _readTimeMinutes;
  int get readTimeMinutes => _readTimeMinutes ?? 0;
  set readTimeMinutes(int? val) => _readTimeMinutes = val;

  void incrementReadTimeMinutes(int amount) =>
      readTimeMinutes = readTimeMinutes + amount;

  bool hasReadTimeMinutes() => _readTimeMinutes != null;

  // "tags" field.
  List<TagsStruct>? _tags;
  List<TagsStruct> get tags => _tags ?? const [];
  set tags(List<TagsStruct>? val) => _tags = val;

  void updateTags(Function(List<TagsStruct>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  // "branchId" field.
  String? _branchId;
  String get branchId => _branchId ?? '';
  set branchId(String? val) => _branchId = val;

  bool hasBranchId() => _branchId != null;

  // "branchName" field.
  String? _branchName;
  String get branchName => _branchName ?? '';
  set branchName(String? val) => _branchName = val;

  bool hasBranchName() => _branchName != null;

  // "boxSizes" field.
  List<String>? _boxSizes;
  List<String> get boxSizes => _boxSizes ?? const [];
  set boxSizes(List<String>? val) => _boxSizes = val;

  void updateBoxSizes(Function(List<String>) updateFn) {
    updateFn(_boxSizes ??= []);
  }

  bool hasBoxSizes() => _boxSizes != null;

  // "requestType" field.
  String? _requestType;
  String get requestType => _requestType ?? '';
  set requestType(String? val) => _requestType = val;

  bool hasRequestType() => _requestType != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "submittedAt" field.
  String? _submittedAt;
  String get submittedAt => _submittedAt ?? '';
  set submittedAt(String? val) => _submittedAt = val;

  bool hasSubmittedAt() => _submittedAt != null;

  // "statusCategory" field.
  String? _statusCategory;
  String get statusCategory => _statusCategory ?? '';
  set statusCategory(String? val) => _statusCategory = val;

  bool hasStatusCategory() => _statusCategory != null;

  // "dateLastUpdated" field.
  String? _dateLastUpdated;
  String get dateLastUpdated => _dateLastUpdated ?? '';
  set dateLastUpdated(String? val) => _dateLastUpdated = val;

  bool hasDateLastUpdated() => _dateLastUpdated != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        id: data['id'] as String?,
        slug: data['slug'] as String?,
        title: data['title'] as String?,
        summary: data['summary'] as String?,
        categoryId: data['categoryId'] as String?,
        categoryName: data['categoryName'] as String?,
        publishedAt: data['publishedAt'] as String?,
        lastUpdatedAt: data['lastUpdatedAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        readTimeMinutes: castToType<int>(data['readTimeMinutes']),
        tags: getStructList(
          data['tags'],
          TagsStruct.fromMap,
        ),
        branchId: data['branchId'] as String?,
        branchName: data['branchName'] as String?,
        boxSizes: getDataList(data['boxSizes']),
        requestType: data['requestType'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        submittedAt: data['submittedAt'] as String?,
        statusCategory: data['statusCategory'] as String?,
        dateLastUpdated: data['dateLastUpdated'] as String?,
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'slug': _slug,
        'title': _title,
        'summary': _summary,
        'categoryId': _categoryId,
        'categoryName': _categoryName,
        'publishedAt': _publishedAt,
        'lastUpdatedAt': _lastUpdatedAt,
        'updatedAt': _updatedAt,
        'readTimeMinutes': _readTimeMinutes,
        'tags': _tags?.map((e) => e.toMap()).toList(),
        'branchId': _branchId,
        'branchName': _branchName,
        'boxSizes': _boxSizes,
        'requestType': _requestType,
        'referenceNumber': _referenceNumber,
        'submittedAt': _submittedAt,
        'statusCategory': _statusCategory,
        'dateLastUpdated': _dateLastUpdated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'slug': serializeParam(
          _slug,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'summary': serializeParam(
          _summary,
          ParamType.String,
        ),
        'categoryId': serializeParam(
          _categoryId,
          ParamType.String,
        ),
        'categoryName': serializeParam(
          _categoryName,
          ParamType.String,
        ),
        'publishedAt': serializeParam(
          _publishedAt,
          ParamType.String,
        ),
        'lastUpdatedAt': serializeParam(
          _lastUpdatedAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'readTimeMinutes': serializeParam(
          _readTimeMinutes,
          ParamType.int,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          isList: true,
        ),
        'branchId': serializeParam(
          _branchId,
          ParamType.String,
        ),
        'branchName': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'boxSizes': serializeParam(
          _boxSizes,
          ParamType.String,
          isList: true,
        ),
        'requestType': serializeParam(
          _requestType,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'submittedAt': serializeParam(
          _submittedAt,
          ParamType.String,
        ),
        'statusCategory': serializeParam(
          _statusCategory,
          ParamType.String,
        ),
        'dateLastUpdated': serializeParam(
          _dateLastUpdated,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        slug: deserializeParam(
          data['slug'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        summary: deserializeParam(
          data['summary'],
          ParamType.String,
          false,
        ),
        categoryId: deserializeParam(
          data['categoryId'],
          ParamType.String,
          false,
        ),
        categoryName: deserializeParam(
          data['categoryName'],
          ParamType.String,
          false,
        ),
        publishedAt: deserializeParam(
          data['publishedAt'],
          ParamType.String,
          false,
        ),
        lastUpdatedAt: deserializeParam(
          data['lastUpdatedAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        readTimeMinutes: deserializeParam(
          data['readTimeMinutes'],
          ParamType.int,
          false,
        ),
        tags: deserializeStructParam<TagsStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: TagsStruct.fromSerializableMap,
        ),
        branchId: deserializeParam(
          data['branchId'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['branchName'],
          ParamType.String,
          false,
        ),
        boxSizes: deserializeParam<String>(
          data['boxSizes'],
          ParamType.String,
          true,
        ),
        requestType: deserializeParam(
          data['requestType'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        submittedAt: deserializeParam(
          data['submittedAt'],
          ParamType.String,
          false,
        ),
        statusCategory: deserializeParam(
          data['statusCategory'],
          ParamType.String,
          false,
        ),
        dateLastUpdated: deserializeParam(
          data['dateLastUpdated'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataStruct &&
        id == other.id &&
        slug == other.slug &&
        title == other.title &&
        summary == other.summary &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        publishedAt == other.publishedAt &&
        lastUpdatedAt == other.lastUpdatedAt &&
        updatedAt == other.updatedAt &&
        readTimeMinutes == other.readTimeMinutes &&
        listEquality.equals(tags, other.tags) &&
        branchId == other.branchId &&
        branchName == other.branchName &&
        listEquality.equals(boxSizes, other.boxSizes) &&
        requestType == other.requestType &&
        referenceNumber == other.referenceNumber &&
        submittedAt == other.submittedAt &&
        statusCategory == other.statusCategory &&
        dateLastUpdated == other.dateLastUpdated;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        slug,
        title,
        summary,
        categoryId,
        categoryName,
        publishedAt,
        lastUpdatedAt,
        updatedAt,
        readTimeMinutes,
        tags,
        branchId,
        branchName,
        boxSizes,
        requestType,
        referenceNumber,
        submittedAt,
        statusCategory,
        dateLastUpdated
      ]);
}

DataStruct createDataStruct({
  String? id,
  String? slug,
  String? title,
  String? summary,
  String? categoryId,
  String? categoryName,
  String? publishedAt,
  String? lastUpdatedAt,
  String? updatedAt,
  int? readTimeMinutes,
  String? branchId,
  String? branchName,
  String? requestType,
  String? referenceNumber,
  String? submittedAt,
  String? statusCategory,
  String? dateLastUpdated,
}) =>
    DataStruct(
      id: id,
      slug: slug,
      title: title,
      summary: summary,
      categoryId: categoryId,
      categoryName: categoryName,
      publishedAt: publishedAt,
      lastUpdatedAt: lastUpdatedAt,
      updatedAt: updatedAt,
      readTimeMinutes: readTimeMinutes,
      branchId: branchId,
      branchName: branchName,
      requestType: requestType,
      referenceNumber: referenceNumber,
      submittedAt: submittedAt,
      statusCategory: statusCategory,
      dateLastUpdated: dateLastUpdated,
    );
