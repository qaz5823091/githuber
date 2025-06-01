import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetUserFollowers {
  factory Variables$Query$GetUserFollowers({
    required String username,
    String? after,
  }) =>
      Variables$Query$GetUserFollowers._({
        r'username': username,
        if (after != null) r'after': after,
      });

  Variables$Query$GetUserFollowers._(this._$data);

  factory Variables$Query$GetUserFollowers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetUserFollowers._(result$data);
  }

  Map<String, dynamic> _$data;

  String get username => (_$data['username'] as String);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$username = username;
    result$data['username'] = l$username;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetUserFollowers<Variables$Query$GetUserFollowers>
      get copyWith => CopyWith$Variables$Query$GetUserFollowers(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUserFollowers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$after = after;
    return Object.hashAll([
      l$username,
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetUserFollowers<TRes> {
  factory CopyWith$Variables$Query$GetUserFollowers(
    Variables$Query$GetUserFollowers instance,
    TRes Function(Variables$Query$GetUserFollowers) then,
  ) = _CopyWithImpl$Variables$Query$GetUserFollowers;

  factory CopyWith$Variables$Query$GetUserFollowers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserFollowers;

  TRes call({
    String? username,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetUserFollowers<TRes>
    implements CopyWith$Variables$Query$GetUserFollowers<TRes> {
  _CopyWithImpl$Variables$Query$GetUserFollowers(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserFollowers _instance;

  final TRes Function(Variables$Query$GetUserFollowers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetUserFollowers._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserFollowers<TRes>
    implements CopyWith$Variables$Query$GetUserFollowers<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserFollowers(this._res);

  TRes _res;

  call({
    String? username,
    String? after,
  }) =>
      _res;
}

class Query$GetUserFollowers {
  Query$GetUserFollowers({
    this.user,
    this.$__typename = 'Query',
  });

  factory Query$GetUserFollowers.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowers(
      user: l$user == null
          ? null
          : Query$GetUserFollowers$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserFollowers$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserFollowers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserFollowers on Query$GetUserFollowers {
  CopyWith$Query$GetUserFollowers<Query$GetUserFollowers> get copyWith =>
      CopyWith$Query$GetUserFollowers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserFollowers<TRes> {
  factory CopyWith$Query$GetUserFollowers(
    Query$GetUserFollowers instance,
    TRes Function(Query$GetUserFollowers) then,
  ) = _CopyWithImpl$Query$GetUserFollowers;

  factory CopyWith$Query$GetUserFollowers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowers;

  TRes call({
    Query$GetUserFollowers$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetUserFollowers$user<TRes> get user;
}

class _CopyWithImpl$Query$GetUserFollowers<TRes>
    implements CopyWith$Query$GetUserFollowers<TRes> {
  _CopyWithImpl$Query$GetUserFollowers(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowers _instance;

  final TRes Function(Query$GetUserFollowers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowers(
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetUserFollowers$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserFollowers$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetUserFollowers$user.stub(_then(_instance))
        : CopyWith$Query$GetUserFollowers$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetUserFollowers<TRes>
    implements CopyWith$Query$GetUserFollowers<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowers(this._res);

  TRes _res;

  call({
    Query$GetUserFollowers$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserFollowers$user<TRes> get user =>
      CopyWith$Query$GetUserFollowers$user.stub(_res);
}

const documentNodeQueryGetUserFollowers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserFollowers'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'login'),
            value: VariableNode(name: NameNode(value: 'username')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'followers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '15'),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'totalCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'login'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'avatarUrl'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'hasNextPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'endCursor'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetUserFollowers _parserFn$Query$GetUserFollowers(
        Map<String, dynamic> data) =>
    Query$GetUserFollowers.fromJson(data);
typedef OnQueryComplete$Query$GetUserFollowers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserFollowers?,
);

class Options$Query$GetUserFollowers
    extends graphql.QueryOptions<Query$GetUserFollowers> {
  Options$Query$GetUserFollowers({
    String? operationName,
    required Variables$Query$GetUserFollowers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserFollowers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserFollowers? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetUserFollowers(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserFollowers,
          parserFn: _parserFn$Query$GetUserFollowers,
        );

  final OnQueryComplete$Query$GetUserFollowers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserFollowers
    extends graphql.WatchQueryOptions<Query$GetUserFollowers> {
  WatchOptions$Query$GetUserFollowers({
    String? operationName,
    required Variables$Query$GetUserFollowers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserFollowers? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetUserFollowers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserFollowers,
        );
}

class FetchMoreOptions$Query$GetUserFollowers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserFollowers({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserFollowers variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserFollowers,
        );
}

extension ClientExtension$Query$GetUserFollowers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserFollowers>> query$GetUserFollowers(
          Options$Query$GetUserFollowers options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetUserFollowers> watchQuery$GetUserFollowers(
          WatchOptions$Query$GetUserFollowers options) =>
      this.watchQuery(options);
  void writeQuery$GetUserFollowers({
    required Query$GetUserFollowers data,
    required Variables$Query$GetUserFollowers variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserFollowers),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserFollowers? readQuery$GetUserFollowers({
    required Variables$Query$GetUserFollowers variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUserFollowers),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserFollowers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserFollowers>
    useQuery$GetUserFollowers(Options$Query$GetUserFollowers options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserFollowers> useWatchQuery$GetUserFollowers(
        WatchOptions$Query$GetUserFollowers options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetUserFollowers$Widget
    extends graphql_flutter.Query<Query$GetUserFollowers> {
  Query$GetUserFollowers$Widget({
    widgets.Key? key,
    required Options$Query$GetUserFollowers options,
    required graphql_flutter.QueryBuilder<Query$GetUserFollowers> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetUserFollowers$user {
  Query$GetUserFollowers$user({
    required this.followers,
    this.$__typename = 'User',
  });

  factory Query$GetUserFollowers$user.fromJson(Map<String, dynamic> json) {
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowers$user(
      followers: Query$GetUserFollowers$user$followers.fromJson(
          (l$followers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserFollowers$user$followers followers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$followers = followers;
    _resultData['followers'] = l$followers.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$followers = followers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$followers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserFollowers$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != lOther$followers) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserFollowers$user
    on Query$GetUserFollowers$user {
  CopyWith$Query$GetUserFollowers$user<Query$GetUserFollowers$user>
      get copyWith => CopyWith$Query$GetUserFollowers$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowers$user<TRes> {
  factory CopyWith$Query$GetUserFollowers$user(
    Query$GetUserFollowers$user instance,
    TRes Function(Query$GetUserFollowers$user) then,
  ) = _CopyWithImpl$Query$GetUserFollowers$user;

  factory CopyWith$Query$GetUserFollowers$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowers$user;

  TRes call({
    Query$GetUserFollowers$user$followers? followers,
    String? $__typename,
  });
  CopyWith$Query$GetUserFollowers$user$followers<TRes> get followers;
}

class _CopyWithImpl$Query$GetUserFollowers$user<TRes>
    implements CopyWith$Query$GetUserFollowers$user<TRes> {
  _CopyWithImpl$Query$GetUserFollowers$user(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowers$user _instance;

  final TRes Function(Query$GetUserFollowers$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowers$user(
        followers: followers == _undefined || followers == null
            ? _instance.followers
            : (followers as Query$GetUserFollowers$user$followers),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserFollowers$user$followers<TRes> get followers {
    final local$followers = _instance.followers;
    return CopyWith$Query$GetUserFollowers$user$followers(
        local$followers, (e) => call(followers: e));
  }
}

class _CopyWithStubImpl$Query$GetUserFollowers$user<TRes>
    implements CopyWith$Query$GetUserFollowers$user<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowers$user(this._res);

  TRes _res;

  call({
    Query$GetUserFollowers$user$followers? followers,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserFollowers$user$followers<TRes> get followers =>
      CopyWith$Query$GetUserFollowers$user$followers.stub(_res);
}

class Query$GetUserFollowers$user$followers {
  Query$GetUserFollowers$user$followers({
    required this.totalCount,
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'FollowerConnection',
  });

  factory Query$GetUserFollowers$user$followers.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowers$user$followers(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserFollowers$user$followers$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetUserFollowers$user$followers$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetUserFollowers$user$followers$nodes?>? nodes;

  final Query$GetUserFollowers$user$followers$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserFollowers$user$followers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserFollowers$user$followers
    on Query$GetUserFollowers$user$followers {
  CopyWith$Query$GetUserFollowers$user$followers<
          Query$GetUserFollowers$user$followers>
      get copyWith => CopyWith$Query$GetUserFollowers$user$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowers$user$followers<TRes> {
  factory CopyWith$Query$GetUserFollowers$user$followers(
    Query$GetUserFollowers$user$followers instance,
    TRes Function(Query$GetUserFollowers$user$followers) then,
  ) = _CopyWithImpl$Query$GetUserFollowers$user$followers;

  factory CopyWith$Query$GetUserFollowers$user$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowers$user$followers;

  TRes call({
    int? totalCount,
    List<Query$GetUserFollowers$user$followers$nodes?>? nodes,
    Query$GetUserFollowers$user$followers$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetUserFollowers$user$followers$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetUserFollowers$user$followers$nodes<
                      Query$GetUserFollowers$user$followers$nodes>?>?)
          _fn);
  CopyWith$Query$GetUserFollowers$user$followers$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetUserFollowers$user$followers<TRes>
    implements CopyWith$Query$GetUserFollowers$user$followers<TRes> {
  _CopyWithImpl$Query$GetUserFollowers$user$followers(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowers$user$followers _instance;

  final TRes Function(Query$GetUserFollowers$user$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowers$user$followers(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetUserFollowers$user$followers$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetUserFollowers$user$followers$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetUserFollowers$user$followers$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserFollowers$user$followers$nodes<
                          Query$GetUserFollowers$user$followers$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserFollowers$user$followers$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetUserFollowers$user$followers$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetUserFollowers$user$followers$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetUserFollowers$user$followers<TRes>
    implements CopyWith$Query$GetUserFollowers$user$followers<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowers$user$followers(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetUserFollowers$user$followers$nodes?>? nodes,
    Query$GetUserFollowers$user$followers$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetUserFollowers$user$followers$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetUserFollowers$user$followers$pageInfo.stub(_res);
}

class Query$GetUserFollowers$user$followers$nodes {
  Query$GetUserFollowers$user$followers$nodes({
    required this.login,
    required this.avatarUrl,
    this.$__typename = 'User',
  });

  factory Query$GetUserFollowers$user$followers$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowers$user$followers$nodes(
      login: (l$login as String),
      avatarUrl: (l$avatarUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String avatarUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$avatarUrl = avatarUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$avatarUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserFollowers$user$followers$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserFollowers$user$followers$nodes
    on Query$GetUserFollowers$user$followers$nodes {
  CopyWith$Query$GetUserFollowers$user$followers$nodes<
          Query$GetUserFollowers$user$followers$nodes>
      get copyWith => CopyWith$Query$GetUserFollowers$user$followers$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowers$user$followers$nodes<TRes> {
  factory CopyWith$Query$GetUserFollowers$user$followers$nodes(
    Query$GetUserFollowers$user$followers$nodes instance,
    TRes Function(Query$GetUserFollowers$user$followers$nodes) then,
  ) = _CopyWithImpl$Query$GetUserFollowers$user$followers$nodes;

  factory CopyWith$Query$GetUserFollowers$user$followers$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowers$user$followers$nodes;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserFollowers$user$followers$nodes<TRes>
    implements CopyWith$Query$GetUserFollowers$user$followers$nodes<TRes> {
  _CopyWithImpl$Query$GetUserFollowers$user$followers$nodes(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowers$user$followers$nodes _instance;

  final TRes Function(Query$GetUserFollowers$user$followers$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowers$user$followers$nodes(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        avatarUrl: avatarUrl == _undefined || avatarUrl == null
            ? _instance.avatarUrl
            : (avatarUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserFollowers$user$followers$nodes<TRes>
    implements CopyWith$Query$GetUserFollowers$user$followers$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowers$user$followers$nodes(this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserFollowers$user$followers$pageInfo {
  Query$GetUserFollowers$user$followers$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetUserFollowers$user$followers$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowers$user$followers$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserFollowers$user$followers$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserFollowers$user$followers$pageInfo
    on Query$GetUserFollowers$user$followers$pageInfo {
  CopyWith$Query$GetUserFollowers$user$followers$pageInfo<
          Query$GetUserFollowers$user$followers$pageInfo>
      get copyWith => CopyWith$Query$GetUserFollowers$user$followers$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowers$user$followers$pageInfo<TRes> {
  factory CopyWith$Query$GetUserFollowers$user$followers$pageInfo(
    Query$GetUserFollowers$user$followers$pageInfo instance,
    TRes Function(Query$GetUserFollowers$user$followers$pageInfo) then,
  ) = _CopyWithImpl$Query$GetUserFollowers$user$followers$pageInfo;

  factory CopyWith$Query$GetUserFollowers$user$followers$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowers$user$followers$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserFollowers$user$followers$pageInfo<TRes>
    implements CopyWith$Query$GetUserFollowers$user$followers$pageInfo<TRes> {
  _CopyWithImpl$Query$GetUserFollowers$user$followers$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowers$user$followers$pageInfo _instance;

  final TRes Function(Query$GetUserFollowers$user$followers$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowers$user$followers$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserFollowers$user$followers$pageInfo<TRes>
    implements CopyWith$Query$GetUserFollowers$user$followers$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowers$user$followers$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}
