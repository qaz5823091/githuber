import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetUserFollowing {
  factory Variables$Query$GetUserFollowing({
    required String username,
    String? after,
  }) =>
      Variables$Query$GetUserFollowing._({
        r'username': username,
        if (after != null) r'after': after,
      });

  Variables$Query$GetUserFollowing._(this._$data);

  factory Variables$Query$GetUserFollowing.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetUserFollowing._(result$data);
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

  CopyWith$Variables$Query$GetUserFollowing<Variables$Query$GetUserFollowing>
      get copyWith => CopyWith$Variables$Query$GetUserFollowing(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUserFollowing ||
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

abstract class CopyWith$Variables$Query$GetUserFollowing<TRes> {
  factory CopyWith$Variables$Query$GetUserFollowing(
    Variables$Query$GetUserFollowing instance,
    TRes Function(Variables$Query$GetUserFollowing) then,
  ) = _CopyWithImpl$Variables$Query$GetUserFollowing;

  factory CopyWith$Variables$Query$GetUserFollowing.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserFollowing;

  TRes call({
    String? username,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetUserFollowing<TRes>
    implements CopyWith$Variables$Query$GetUserFollowing<TRes> {
  _CopyWithImpl$Variables$Query$GetUserFollowing(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserFollowing _instance;

  final TRes Function(Variables$Query$GetUserFollowing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetUserFollowing._({
        ..._instance._$data,
        if (username != _undefined && username != null)
          'username': (username as String),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserFollowing<TRes>
    implements CopyWith$Variables$Query$GetUserFollowing<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserFollowing(this._res);

  TRes _res;

  call({
    String? username,
    String? after,
  }) =>
      _res;
}

class Query$GetUserFollowing {
  Query$GetUserFollowing({
    this.user,
    this.$__typename = 'Query',
  });

  factory Query$GetUserFollowing.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowing(
      user: l$user == null
          ? null
          : Query$GetUserFollowing$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserFollowing$user? user;

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
    if (other is! Query$GetUserFollowing || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetUserFollowing on Query$GetUserFollowing {
  CopyWith$Query$GetUserFollowing<Query$GetUserFollowing> get copyWith =>
      CopyWith$Query$GetUserFollowing(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserFollowing<TRes> {
  factory CopyWith$Query$GetUserFollowing(
    Query$GetUserFollowing instance,
    TRes Function(Query$GetUserFollowing) then,
  ) = _CopyWithImpl$Query$GetUserFollowing;

  factory CopyWith$Query$GetUserFollowing.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowing;

  TRes call({
    Query$GetUserFollowing$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetUserFollowing$user<TRes> get user;
}

class _CopyWithImpl$Query$GetUserFollowing<TRes>
    implements CopyWith$Query$GetUserFollowing<TRes> {
  _CopyWithImpl$Query$GetUserFollowing(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowing _instance;

  final TRes Function(Query$GetUserFollowing) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowing(
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetUserFollowing$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserFollowing$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetUserFollowing$user.stub(_then(_instance))
        : CopyWith$Query$GetUserFollowing$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetUserFollowing<TRes>
    implements CopyWith$Query$GetUserFollowing<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowing(this._res);

  TRes _res;

  call({
    Query$GetUserFollowing$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserFollowing$user<TRes> get user =>
      CopyWith$Query$GetUserFollowing$user.stub(_res);
}

const documentNodeQueryGetUserFollowing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserFollowing'),
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
            name: NameNode(value: 'following'),
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
Query$GetUserFollowing _parserFn$Query$GetUserFollowing(
        Map<String, dynamic> data) =>
    Query$GetUserFollowing.fromJson(data);
typedef OnQueryComplete$Query$GetUserFollowing = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserFollowing?,
);

class Options$Query$GetUserFollowing
    extends graphql.QueryOptions<Query$GetUserFollowing> {
  Options$Query$GetUserFollowing({
    String? operationName,
    required Variables$Query$GetUserFollowing variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserFollowing? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserFollowing? onComplete,
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
                        : _parserFn$Query$GetUserFollowing(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserFollowing,
          parserFn: _parserFn$Query$GetUserFollowing,
        );

  final OnQueryComplete$Query$GetUserFollowing? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserFollowing
    extends graphql.WatchQueryOptions<Query$GetUserFollowing> {
  WatchOptions$Query$GetUserFollowing({
    String? operationName,
    required Variables$Query$GetUserFollowing variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserFollowing? typedOptimisticResult,
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
          document: documentNodeQueryGetUserFollowing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserFollowing,
        );
}

class FetchMoreOptions$Query$GetUserFollowing extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserFollowing({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserFollowing variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserFollowing,
        );
}

extension ClientExtension$Query$GetUserFollowing on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserFollowing>> query$GetUserFollowing(
          Options$Query$GetUserFollowing options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetUserFollowing> watchQuery$GetUserFollowing(
          WatchOptions$Query$GetUserFollowing options) =>
      this.watchQuery(options);
  void writeQuery$GetUserFollowing({
    required Query$GetUserFollowing data,
    required Variables$Query$GetUserFollowing variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserFollowing),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserFollowing? readQuery$GetUserFollowing({
    required Variables$Query$GetUserFollowing variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUserFollowing),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserFollowing.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserFollowing>
    useQuery$GetUserFollowing(Options$Query$GetUserFollowing options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserFollowing> useWatchQuery$GetUserFollowing(
        WatchOptions$Query$GetUserFollowing options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetUserFollowing$Widget
    extends graphql_flutter.Query<Query$GetUserFollowing> {
  Query$GetUserFollowing$Widget({
    widgets.Key? key,
    required Options$Query$GetUserFollowing options,
    required graphql_flutter.QueryBuilder<Query$GetUserFollowing> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetUserFollowing$user {
  Query$GetUserFollowing$user({
    required this.following,
    this.$__typename = 'User',
  });

  factory Query$GetUserFollowing$user.fromJson(Map<String, dynamic> json) {
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowing$user(
      following: Query$GetUserFollowing$user$following.fromJson(
          (l$following as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserFollowing$user$following following;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$following = following;
    _resultData['following'] = l$following.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$following = following;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$following,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserFollowing$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != lOther$following) {
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

extension UtilityExtension$Query$GetUserFollowing$user
    on Query$GetUserFollowing$user {
  CopyWith$Query$GetUserFollowing$user<Query$GetUserFollowing$user>
      get copyWith => CopyWith$Query$GetUserFollowing$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowing$user<TRes> {
  factory CopyWith$Query$GetUserFollowing$user(
    Query$GetUserFollowing$user instance,
    TRes Function(Query$GetUserFollowing$user) then,
  ) = _CopyWithImpl$Query$GetUserFollowing$user;

  factory CopyWith$Query$GetUserFollowing$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowing$user;

  TRes call({
    Query$GetUserFollowing$user$following? following,
    String? $__typename,
  });
  CopyWith$Query$GetUserFollowing$user$following<TRes> get following;
}

class _CopyWithImpl$Query$GetUserFollowing$user<TRes>
    implements CopyWith$Query$GetUserFollowing$user<TRes> {
  _CopyWithImpl$Query$GetUserFollowing$user(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowing$user _instance;

  final TRes Function(Query$GetUserFollowing$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowing$user(
        following: following == _undefined || following == null
            ? _instance.following
            : (following as Query$GetUserFollowing$user$following),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserFollowing$user$following<TRes> get following {
    final local$following = _instance.following;
    return CopyWith$Query$GetUserFollowing$user$following(
        local$following, (e) => call(following: e));
  }
}

class _CopyWithStubImpl$Query$GetUserFollowing$user<TRes>
    implements CopyWith$Query$GetUserFollowing$user<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowing$user(this._res);

  TRes _res;

  call({
    Query$GetUserFollowing$user$following? following,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserFollowing$user$following<TRes> get following =>
      CopyWith$Query$GetUserFollowing$user$following.stub(_res);
}

class Query$GetUserFollowing$user$following {
  Query$GetUserFollowing$user$following({
    required this.totalCount,
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'FollowingConnection',
  });

  factory Query$GetUserFollowing$user$following.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowing$user$following(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserFollowing$user$following$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetUserFollowing$user$following$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetUserFollowing$user$following$nodes?>? nodes;

  final Query$GetUserFollowing$user$following$pageInfo pageInfo;

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
    if (other is! Query$GetUserFollowing$user$following ||
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

extension UtilityExtension$Query$GetUserFollowing$user$following
    on Query$GetUserFollowing$user$following {
  CopyWith$Query$GetUserFollowing$user$following<
          Query$GetUserFollowing$user$following>
      get copyWith => CopyWith$Query$GetUserFollowing$user$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowing$user$following<TRes> {
  factory CopyWith$Query$GetUserFollowing$user$following(
    Query$GetUserFollowing$user$following instance,
    TRes Function(Query$GetUserFollowing$user$following) then,
  ) = _CopyWithImpl$Query$GetUserFollowing$user$following;

  factory CopyWith$Query$GetUserFollowing$user$following.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowing$user$following;

  TRes call({
    int? totalCount,
    List<Query$GetUserFollowing$user$following$nodes?>? nodes,
    Query$GetUserFollowing$user$following$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetUserFollowing$user$following$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetUserFollowing$user$following$nodes<
                      Query$GetUserFollowing$user$following$nodes>?>?)
          _fn);
  CopyWith$Query$GetUserFollowing$user$following$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetUserFollowing$user$following<TRes>
    implements CopyWith$Query$GetUserFollowing$user$following<TRes> {
  _CopyWithImpl$Query$GetUserFollowing$user$following(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowing$user$following _instance;

  final TRes Function(Query$GetUserFollowing$user$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowing$user$following(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetUserFollowing$user$following$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetUserFollowing$user$following$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetUserFollowing$user$following$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserFollowing$user$following$nodes<
                          Query$GetUserFollowing$user$following$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserFollowing$user$following$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetUserFollowing$user$following$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetUserFollowing$user$following$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetUserFollowing$user$following<TRes>
    implements CopyWith$Query$GetUserFollowing$user$following<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowing$user$following(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetUserFollowing$user$following$nodes?>? nodes,
    Query$GetUserFollowing$user$following$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetUserFollowing$user$following$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetUserFollowing$user$following$pageInfo.stub(_res);
}

class Query$GetUserFollowing$user$following$nodes {
  Query$GetUserFollowing$user$following$nodes({
    required this.login,
    required this.avatarUrl,
    this.$__typename = 'User',
  });

  factory Query$GetUserFollowing$user$following$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowing$user$following$nodes(
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
    if (other is! Query$GetUserFollowing$user$following$nodes ||
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

extension UtilityExtension$Query$GetUserFollowing$user$following$nodes
    on Query$GetUserFollowing$user$following$nodes {
  CopyWith$Query$GetUserFollowing$user$following$nodes<
          Query$GetUserFollowing$user$following$nodes>
      get copyWith => CopyWith$Query$GetUserFollowing$user$following$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowing$user$following$nodes<TRes> {
  factory CopyWith$Query$GetUserFollowing$user$following$nodes(
    Query$GetUserFollowing$user$following$nodes instance,
    TRes Function(Query$GetUserFollowing$user$following$nodes) then,
  ) = _CopyWithImpl$Query$GetUserFollowing$user$following$nodes;

  factory CopyWith$Query$GetUserFollowing$user$following$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowing$user$following$nodes;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserFollowing$user$following$nodes<TRes>
    implements CopyWith$Query$GetUserFollowing$user$following$nodes<TRes> {
  _CopyWithImpl$Query$GetUserFollowing$user$following$nodes(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowing$user$following$nodes _instance;

  final TRes Function(Query$GetUserFollowing$user$following$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowing$user$following$nodes(
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

class _CopyWithStubImpl$Query$GetUserFollowing$user$following$nodes<TRes>
    implements CopyWith$Query$GetUserFollowing$user$following$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowing$user$following$nodes(this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserFollowing$user$following$pageInfo {
  Query$GetUserFollowing$user$following$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetUserFollowing$user$following$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetUserFollowing$user$following$pageInfo(
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
    if (other is! Query$GetUserFollowing$user$following$pageInfo ||
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

extension UtilityExtension$Query$GetUserFollowing$user$following$pageInfo
    on Query$GetUserFollowing$user$following$pageInfo {
  CopyWith$Query$GetUserFollowing$user$following$pageInfo<
          Query$GetUserFollowing$user$following$pageInfo>
      get copyWith => CopyWith$Query$GetUserFollowing$user$following$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserFollowing$user$following$pageInfo<TRes> {
  factory CopyWith$Query$GetUserFollowing$user$following$pageInfo(
    Query$GetUserFollowing$user$following$pageInfo instance,
    TRes Function(Query$GetUserFollowing$user$following$pageInfo) then,
  ) = _CopyWithImpl$Query$GetUserFollowing$user$following$pageInfo;

  factory CopyWith$Query$GetUserFollowing$user$following$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserFollowing$user$following$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserFollowing$user$following$pageInfo<TRes>
    implements CopyWith$Query$GetUserFollowing$user$following$pageInfo<TRes> {
  _CopyWithImpl$Query$GetUserFollowing$user$following$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetUserFollowing$user$following$pageInfo _instance;

  final TRes Function(Query$GetUserFollowing$user$following$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserFollowing$user$following$pageInfo(
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

class _CopyWithStubImpl$Query$GetUserFollowing$user$following$pageInfo<TRes>
    implements CopyWith$Query$GetUserFollowing$user$following$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetUserFollowing$user$following$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}
