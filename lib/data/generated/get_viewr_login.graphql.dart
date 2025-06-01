import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetViewerLogin {
  Query$GetViewerLogin({
    required this.viewer,
    this.$__typename = 'Query',
  });

  factory Query$GetViewerLogin.fromJson(Map<String, dynamic> json) {
    final l$viewer = json['viewer'];
    final l$$__typename = json['__typename'];
    return Query$GetViewerLogin(
      viewer: Query$GetViewerLogin$viewer.fromJson(
          (l$viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetViewerLogin$viewer viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$viewer = viewer;
    _resultData['viewer'] = l$viewer.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$viewer = viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetViewerLogin || runtimeType != other.runtimeType) {
      return false;
    }
    final l$viewer = viewer;
    final lOther$viewer = other.viewer;
    if (l$viewer != lOther$viewer) {
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

extension UtilityExtension$Query$GetViewerLogin on Query$GetViewerLogin {
  CopyWith$Query$GetViewerLogin<Query$GetViewerLogin> get copyWith =>
      CopyWith$Query$GetViewerLogin(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetViewerLogin<TRes> {
  factory CopyWith$Query$GetViewerLogin(
    Query$GetViewerLogin instance,
    TRes Function(Query$GetViewerLogin) then,
  ) = _CopyWithImpl$Query$GetViewerLogin;

  factory CopyWith$Query$GetViewerLogin.stub(TRes res) =
      _CopyWithStubImpl$Query$GetViewerLogin;

  TRes call({
    Query$GetViewerLogin$viewer? viewer,
    String? $__typename,
  });
  CopyWith$Query$GetViewerLogin$viewer<TRes> get viewer;
}

class _CopyWithImpl$Query$GetViewerLogin<TRes>
    implements CopyWith$Query$GetViewerLogin<TRes> {
  _CopyWithImpl$Query$GetViewerLogin(
    this._instance,
    this._then,
  );

  final Query$GetViewerLogin _instance;

  final TRes Function(Query$GetViewerLogin) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetViewerLogin(
        viewer: viewer == _undefined || viewer == null
            ? _instance.viewer
            : (viewer as Query$GetViewerLogin$viewer),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetViewerLogin$viewer<TRes> get viewer {
    final local$viewer = _instance.viewer;
    return CopyWith$Query$GetViewerLogin$viewer(
        local$viewer, (e) => call(viewer: e));
  }
}

class _CopyWithStubImpl$Query$GetViewerLogin<TRes>
    implements CopyWith$Query$GetViewerLogin<TRes> {
  _CopyWithStubImpl$Query$GetViewerLogin(this._res);

  TRes _res;

  call({
    Query$GetViewerLogin$viewer? viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetViewerLogin$viewer<TRes> get viewer =>
      CopyWith$Query$GetViewerLogin$viewer.stub(_res);
}

const documentNodeQueryGetViewerLogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetViewerLogin'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'viewer'),
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
Query$GetViewerLogin _parserFn$Query$GetViewerLogin(
        Map<String, dynamic> data) =>
    Query$GetViewerLogin.fromJson(data);
typedef OnQueryComplete$Query$GetViewerLogin = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetViewerLogin?,
);

class Options$Query$GetViewerLogin
    extends graphql.QueryOptions<Query$GetViewerLogin> {
  Options$Query$GetViewerLogin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetViewerLogin? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetViewerLogin? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$GetViewerLogin(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetViewerLogin,
          parserFn: _parserFn$Query$GetViewerLogin,
        );

  final OnQueryComplete$Query$GetViewerLogin? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetViewerLogin
    extends graphql.WatchQueryOptions<Query$GetViewerLogin> {
  WatchOptions$Query$GetViewerLogin({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetViewerLogin? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetViewerLogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetViewerLogin,
        );
}

class FetchMoreOptions$Query$GetViewerLogin extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetViewerLogin(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetViewerLogin,
        );
}

extension ClientExtension$Query$GetViewerLogin on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetViewerLogin>> query$GetViewerLogin(
          [Options$Query$GetViewerLogin? options]) async =>
      await this.query(options ?? Options$Query$GetViewerLogin());
  graphql.ObservableQuery<Query$GetViewerLogin> watchQuery$GetViewerLogin(
          [WatchOptions$Query$GetViewerLogin? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetViewerLogin());
  void writeQuery$GetViewerLogin({
    required Query$GetViewerLogin data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetViewerLogin)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetViewerLogin? readQuery$GetViewerLogin({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetViewerLogin)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetViewerLogin.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetViewerLogin> useQuery$GetViewerLogin(
        [Options$Query$GetViewerLogin? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetViewerLogin());
graphql.ObservableQuery<Query$GetViewerLogin> useWatchQuery$GetViewerLogin(
        [WatchOptions$Query$GetViewerLogin? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetViewerLogin());

class Query$GetViewerLogin$Widget
    extends graphql_flutter.Query<Query$GetViewerLogin> {
  Query$GetViewerLogin$Widget({
    widgets.Key? key,
    Options$Query$GetViewerLogin? options,
    required graphql_flutter.QueryBuilder<Query$GetViewerLogin> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetViewerLogin(),
          builder: builder,
        );
}

class Query$GetViewerLogin$viewer {
  Query$GetViewerLogin$viewer({
    required this.login,
    this.$__typename = 'User',
  });

  factory Query$GetViewerLogin$viewer.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Query$GetViewerLogin$viewer(
      login: (l$login as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetViewerLogin$viewer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Query$GetViewerLogin$viewer
    on Query$GetViewerLogin$viewer {
  CopyWith$Query$GetViewerLogin$viewer<Query$GetViewerLogin$viewer>
      get copyWith => CopyWith$Query$GetViewerLogin$viewer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetViewerLogin$viewer<TRes> {
  factory CopyWith$Query$GetViewerLogin$viewer(
    Query$GetViewerLogin$viewer instance,
    TRes Function(Query$GetViewerLogin$viewer) then,
  ) = _CopyWithImpl$Query$GetViewerLogin$viewer;

  factory CopyWith$Query$GetViewerLogin$viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$GetViewerLogin$viewer;

  TRes call({
    String? login,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetViewerLogin$viewer<TRes>
    implements CopyWith$Query$GetViewerLogin$viewer<TRes> {
  _CopyWithImpl$Query$GetViewerLogin$viewer(
    this._instance,
    this._then,
  );

  final Query$GetViewerLogin$viewer _instance;

  final TRes Function(Query$GetViewerLogin$viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetViewerLogin$viewer(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetViewerLogin$viewer<TRes>
    implements CopyWith$Query$GetViewerLogin$viewer<TRes> {
  _CopyWithStubImpl$Query$GetViewerLogin$viewer(this._res);

  TRes _res;

  call({
    String? login,
    String? $__typename,
  }) =>
      _res;
}
