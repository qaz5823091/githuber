import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetUserOverView {
  factory Variables$Query$GetUserOverView({required String user}) =>
      Variables$Query$GetUserOverView._({
        r'user': user,
      });

  Variables$Query$GetUserOverView._(this._$data);

  factory Variables$Query$GetUserOverView.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user = data['user'];
    result$data['user'] = (l$user as String);
    return Variables$Query$GetUserOverView._(result$data);
  }

  Map<String, dynamic> _$data;

  String get user => (_$data['user'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user = user;
    result$data['user'] = l$user;
    return result$data;
  }

  CopyWith$Variables$Query$GetUserOverView<Variables$Query$GetUserOverView>
      get copyWith => CopyWith$Variables$Query$GetUserOverView(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUserOverView ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user = user;
    return Object.hashAll([l$user]);
  }
}

abstract class CopyWith$Variables$Query$GetUserOverView<TRes> {
  factory CopyWith$Variables$Query$GetUserOverView(
    Variables$Query$GetUserOverView instance,
    TRes Function(Variables$Query$GetUserOverView) then,
  ) = _CopyWithImpl$Variables$Query$GetUserOverView;

  factory CopyWith$Variables$Query$GetUserOverView.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserOverView;

  TRes call({String? user});
}

class _CopyWithImpl$Variables$Query$GetUserOverView<TRes>
    implements CopyWith$Variables$Query$GetUserOverView<TRes> {
  _CopyWithImpl$Variables$Query$GetUserOverView(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserOverView _instance;

  final TRes Function(Variables$Query$GetUserOverView) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user = _undefined}) =>
      _then(Variables$Query$GetUserOverView._({
        ..._instance._$data,
        if (user != _undefined && user != null) 'user': (user as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserOverView<TRes>
    implements CopyWith$Variables$Query$GetUserOverView<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserOverView(this._res);

  TRes _res;

  call({String? user}) => _res;
}

class Query$GetUserOverView {
  Query$GetUserOverView({
    this.user,
    this.$__typename = 'Query',
  });

  factory Query$GetUserOverView.fromJson(Map<String, dynamic> json) {
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView(
      user: l$user == null
          ? null
          : Query$GetUserOverView$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserOverView$user? user;

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
    if (other is! Query$GetUserOverView || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetUserOverView on Query$GetUserOverView {
  CopyWith$Query$GetUserOverView<Query$GetUserOverView> get copyWith =>
      CopyWith$Query$GetUserOverView(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserOverView<TRes> {
  factory CopyWith$Query$GetUserOverView(
    Query$GetUserOverView instance,
    TRes Function(Query$GetUserOverView) then,
  ) = _CopyWithImpl$Query$GetUserOverView;

  factory CopyWith$Query$GetUserOverView.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView;

  TRes call({
    Query$GetUserOverView$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetUserOverView$user<TRes> get user;
}

class _CopyWithImpl$Query$GetUserOverView<TRes>
    implements CopyWith$Query$GetUserOverView<TRes> {
  _CopyWithImpl$Query$GetUserOverView(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView _instance;

  final TRes Function(Query$GetUserOverView) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView(
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetUserOverView$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserOverView$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetUserOverView$user.stub(_then(_instance))
        : CopyWith$Query$GetUserOverView$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetUserOverView<TRes>
    implements CopyWith$Query$GetUserOverView<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView(this._res);

  TRes _res;

  call({
    Query$GetUserOverView$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserOverView$user<TRes> get user =>
      CopyWith$Query$GetUserOverView$user.stub(_res);
}

const documentNodeQueryGetUserOverView = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserOverView'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'user'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'login'),
            value: VariableNode(name: NameNode(value: 'user')),
          )
        ],
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
            name: NameNode(value: 'bio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'followers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '3'),
              )
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '3'),
              )
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'starredRepositories'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '3'),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'field'),
                    value: EnumValueNode(name: NameNode(value: 'STARRED_AT')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'direction'),
                    value: EnumValueNode(name: NameNode(value: 'DESC')),
                  ),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'openGraphImageUrl'),
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
            name: NameNode(value: 'contributionsCollection'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'contributionCalendar'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'weeks'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'contributionDays'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'date'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'contributionCount'),
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
Query$GetUserOverView _parserFn$Query$GetUserOverView(
        Map<String, dynamic> data) =>
    Query$GetUserOverView.fromJson(data);
typedef OnQueryComplete$Query$GetUserOverView = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserOverView?,
);

class Options$Query$GetUserOverView
    extends graphql.QueryOptions<Query$GetUserOverView> {
  Options$Query$GetUserOverView({
    String? operationName,
    required Variables$Query$GetUserOverView variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserOverView? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserOverView? onComplete,
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
                    data == null ? null : _parserFn$Query$GetUserOverView(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserOverView,
          parserFn: _parserFn$Query$GetUserOverView,
        );

  final OnQueryComplete$Query$GetUserOverView? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserOverView
    extends graphql.WatchQueryOptions<Query$GetUserOverView> {
  WatchOptions$Query$GetUserOverView({
    String? operationName,
    required Variables$Query$GetUserOverView variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserOverView? typedOptimisticResult,
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
          document: documentNodeQueryGetUserOverView,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserOverView,
        );
}

class FetchMoreOptions$Query$GetUserOverView extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserOverView({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserOverView variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserOverView,
        );
}

extension ClientExtension$Query$GetUserOverView on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserOverView>> query$GetUserOverView(
          Options$Query$GetUserOverView options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetUserOverView> watchQuery$GetUserOverView(
          WatchOptions$Query$GetUserOverView options) =>
      this.watchQuery(options);
  void writeQuery$GetUserOverView({
    required Query$GetUserOverView data,
    required Variables$Query$GetUserOverView variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserOverView),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserOverView? readQuery$GetUserOverView({
    required Variables$Query$GetUserOverView variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUserOverView),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserOverView.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserOverView> useQuery$GetUserOverView(
        Options$Query$GetUserOverView options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserOverView> useWatchQuery$GetUserOverView(
        WatchOptions$Query$GetUserOverView options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetUserOverView$Widget
    extends graphql_flutter.Query<Query$GetUserOverView> {
  Query$GetUserOverView$Widget({
    widgets.Key? key,
    required Options$Query$GetUserOverView options,
    required graphql_flutter.QueryBuilder<Query$GetUserOverView> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetUserOverView$user {
  Query$GetUserOverView$user({
    required this.login,
    required this.avatarUrl,
    this.bio,
    required this.followers,
    required this.following,
    required this.starredRepositories,
    required this.contributionsCollection,
    this.$__typename = 'User',
  });

  factory Query$GetUserOverView$user.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$bio = json['bio'];
    final l$followers = json['followers'];
    final l$following = json['following'];
    final l$starredRepositories = json['starredRepositories'];
    final l$contributionsCollection = json['contributionsCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user(
      login: (l$login as String),
      avatarUrl: (l$avatarUrl as String),
      bio: (l$bio as String?),
      followers: Query$GetUserOverView$user$followers.fromJson(
          (l$followers as Map<String, dynamic>)),
      following: Query$GetUserOverView$user$following.fromJson(
          (l$following as Map<String, dynamic>)),
      starredRepositories:
          Query$GetUserOverView$user$starredRepositories.fromJson(
              (l$starredRepositories as Map<String, dynamic>)),
      contributionsCollection:
          Query$GetUserOverView$user$contributionsCollection.fromJson(
              (l$contributionsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String login;

  final String avatarUrl;

  final String? bio;

  final Query$GetUserOverView$user$followers followers;

  final Query$GetUserOverView$user$following following;

  final Query$GetUserOverView$user$starredRepositories starredRepositories;

  final Query$GetUserOverView$user$contributionsCollection
      contributionsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$bio = bio;
    _resultData['bio'] = l$bio;
    final l$followers = followers;
    _resultData['followers'] = l$followers.toJson();
    final l$following = following;
    _resultData['following'] = l$following.toJson();
    final l$starredRepositories = starredRepositories;
    _resultData['starredRepositories'] = l$starredRepositories.toJson();
    final l$contributionsCollection = contributionsCollection;
    _resultData['contributionsCollection'] = l$contributionsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$avatarUrl = avatarUrl;
    final l$bio = bio;
    final l$followers = followers;
    final l$following = following;
    final l$starredRepositories = starredRepositories;
    final l$contributionsCollection = contributionsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$avatarUrl,
      l$bio,
      l$followers,
      l$following,
      l$starredRepositories,
      l$contributionsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserOverView$user ||
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
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != lOther$followers) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != lOther$following) {
      return false;
    }
    final l$starredRepositories = starredRepositories;
    final lOther$starredRepositories = other.starredRepositories;
    if (l$starredRepositories != lOther$starredRepositories) {
      return false;
    }
    final l$contributionsCollection = contributionsCollection;
    final lOther$contributionsCollection = other.contributionsCollection;
    if (l$contributionsCollection != lOther$contributionsCollection) {
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

extension UtilityExtension$Query$GetUserOverView$user
    on Query$GetUserOverView$user {
  CopyWith$Query$GetUserOverView$user<Query$GetUserOverView$user>
      get copyWith => CopyWith$Query$GetUserOverView$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user<TRes> {
  factory CopyWith$Query$GetUserOverView$user(
    Query$GetUserOverView$user instance,
    TRes Function(Query$GetUserOverView$user) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user;

  factory CopyWith$Query$GetUserOverView$user.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user;

  TRes call({
    String? login,
    String? avatarUrl,
    String? bio,
    Query$GetUserOverView$user$followers? followers,
    Query$GetUserOverView$user$following? following,
    Query$GetUserOverView$user$starredRepositories? starredRepositories,
    Query$GetUserOverView$user$contributionsCollection? contributionsCollection,
    String? $__typename,
  });
  CopyWith$Query$GetUserOverView$user$followers<TRes> get followers;
  CopyWith$Query$GetUserOverView$user$following<TRes> get following;
  CopyWith$Query$GetUserOverView$user$starredRepositories<TRes>
      get starredRepositories;
  CopyWith$Query$GetUserOverView$user$contributionsCollection<TRes>
      get contributionsCollection;
}

class _CopyWithImpl$Query$GetUserOverView$user<TRes>
    implements CopyWith$Query$GetUserOverView$user<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user _instance;

  final TRes Function(Query$GetUserOverView$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? bio = _undefined,
    Object? followers = _undefined,
    Object? following = _undefined,
    Object? starredRepositories = _undefined,
    Object? contributionsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as String),
        avatarUrl: avatarUrl == _undefined || avatarUrl == null
            ? _instance.avatarUrl
            : (avatarUrl as String),
        bio: bio == _undefined ? _instance.bio : (bio as String?),
        followers: followers == _undefined || followers == null
            ? _instance.followers
            : (followers as Query$GetUserOverView$user$followers),
        following: following == _undefined || following == null
            ? _instance.following
            : (following as Query$GetUserOverView$user$following),
        starredRepositories:
            starredRepositories == _undefined || starredRepositories == null
                ? _instance.starredRepositories
                : (starredRepositories
                    as Query$GetUserOverView$user$starredRepositories),
        contributionsCollection: contributionsCollection == _undefined ||
                contributionsCollection == null
            ? _instance.contributionsCollection
            : (contributionsCollection
                as Query$GetUserOverView$user$contributionsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserOverView$user$followers<TRes> get followers {
    final local$followers = _instance.followers;
    return CopyWith$Query$GetUserOverView$user$followers(
        local$followers, (e) => call(followers: e));
  }

  CopyWith$Query$GetUserOverView$user$following<TRes> get following {
    final local$following = _instance.following;
    return CopyWith$Query$GetUserOverView$user$following(
        local$following, (e) => call(following: e));
  }

  CopyWith$Query$GetUserOverView$user$starredRepositories<TRes>
      get starredRepositories {
    final local$starredRepositories = _instance.starredRepositories;
    return CopyWith$Query$GetUserOverView$user$starredRepositories(
        local$starredRepositories, (e) => call(starredRepositories: e));
  }

  CopyWith$Query$GetUserOverView$user$contributionsCollection<TRes>
      get contributionsCollection {
    final local$contributionsCollection = _instance.contributionsCollection;
    return CopyWith$Query$GetUserOverView$user$contributionsCollection(
        local$contributionsCollection, (e) => call(contributionsCollection: e));
  }
}

class _CopyWithStubImpl$Query$GetUserOverView$user<TRes>
    implements CopyWith$Query$GetUserOverView$user<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user(this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? bio,
    Query$GetUserOverView$user$followers? followers,
    Query$GetUserOverView$user$following? following,
    Query$GetUserOverView$user$starredRepositories? starredRepositories,
    Query$GetUserOverView$user$contributionsCollection? contributionsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserOverView$user$followers<TRes> get followers =>
      CopyWith$Query$GetUserOverView$user$followers.stub(_res);

  CopyWith$Query$GetUserOverView$user$following<TRes> get following =>
      CopyWith$Query$GetUserOverView$user$following.stub(_res);

  CopyWith$Query$GetUserOverView$user$starredRepositories<TRes>
      get starredRepositories =>
          CopyWith$Query$GetUserOverView$user$starredRepositories.stub(_res);

  CopyWith$Query$GetUserOverView$user$contributionsCollection<TRes>
      get contributionsCollection =>
          CopyWith$Query$GetUserOverView$user$contributionsCollection.stub(
              _res);
}

class Query$GetUserOverView$user$followers {
  Query$GetUserOverView$user$followers({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'FollowerConnection',
  });

  factory Query$GetUserOverView$user$followers.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$followers(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserOverView$user$followers$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetUserOverView$user$followers$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserOverView$user$followers ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserOverView$user$followers
    on Query$GetUserOverView$user$followers {
  CopyWith$Query$GetUserOverView$user$followers<
          Query$GetUserOverView$user$followers>
      get copyWith => CopyWith$Query$GetUserOverView$user$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$followers<TRes> {
  factory CopyWith$Query$GetUserOverView$user$followers(
    Query$GetUserOverView$user$followers instance,
    TRes Function(Query$GetUserOverView$user$followers) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$followers;

  factory CopyWith$Query$GetUserOverView$user$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$followers;

  TRes call({
    int? totalCount,
    List<Query$GetUserOverView$user$followers$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetUserOverView$user$followers$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetUserOverView$user$followers$nodes<
                      Query$GetUserOverView$user$followers$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUserOverView$user$followers<TRes>
    implements CopyWith$Query$GetUserOverView$user$followers<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$followers(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$followers _instance;

  final TRes Function(Query$GetUserOverView$user$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$followers(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetUserOverView$user$followers$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetUserOverView$user$followers$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserOverView$user$followers$nodes<
                          Query$GetUserOverView$user$followers$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserOverView$user$followers$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUserOverView$user$followers<TRes>
    implements CopyWith$Query$GetUserOverView$user$followers<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$followers(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetUserOverView$user$followers$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetUserOverView$user$followers$nodes {
  Query$GetUserOverView$user$followers$nodes({
    required this.login,
    required this.avatarUrl,
    this.$__typename = 'User',
  });

  factory Query$GetUserOverView$user$followers$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$followers$nodes(
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
    if (other is! Query$GetUserOverView$user$followers$nodes ||
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

extension UtilityExtension$Query$GetUserOverView$user$followers$nodes
    on Query$GetUserOverView$user$followers$nodes {
  CopyWith$Query$GetUserOverView$user$followers$nodes<
          Query$GetUserOverView$user$followers$nodes>
      get copyWith => CopyWith$Query$GetUserOverView$user$followers$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$followers$nodes<TRes> {
  factory CopyWith$Query$GetUserOverView$user$followers$nodes(
    Query$GetUserOverView$user$followers$nodes instance,
    TRes Function(Query$GetUserOverView$user$followers$nodes) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$followers$nodes;

  factory CopyWith$Query$GetUserOverView$user$followers$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$followers$nodes;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserOverView$user$followers$nodes<TRes>
    implements CopyWith$Query$GetUserOverView$user$followers$nodes<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$followers$nodes(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$followers$nodes _instance;

  final TRes Function(Query$GetUserOverView$user$followers$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$followers$nodes(
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

class _CopyWithStubImpl$Query$GetUserOverView$user$followers$nodes<TRes>
    implements CopyWith$Query$GetUserOverView$user$followers$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$followers$nodes(this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserOverView$user$following {
  Query$GetUserOverView$user$following({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'FollowingConnection',
  });

  factory Query$GetUserOverView$user$following.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$following(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserOverView$user$following$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetUserOverView$user$following$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserOverView$user$following ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserOverView$user$following
    on Query$GetUserOverView$user$following {
  CopyWith$Query$GetUserOverView$user$following<
          Query$GetUserOverView$user$following>
      get copyWith => CopyWith$Query$GetUserOverView$user$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$following<TRes> {
  factory CopyWith$Query$GetUserOverView$user$following(
    Query$GetUserOverView$user$following instance,
    TRes Function(Query$GetUserOverView$user$following) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$following;

  factory CopyWith$Query$GetUserOverView$user$following.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$following;

  TRes call({
    int? totalCount,
    List<Query$GetUserOverView$user$following$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetUserOverView$user$following$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetUserOverView$user$following$nodes<
                      Query$GetUserOverView$user$following$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUserOverView$user$following<TRes>
    implements CopyWith$Query$GetUserOverView$user$following<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$following(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$following _instance;

  final TRes Function(Query$GetUserOverView$user$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$following(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetUserOverView$user$following$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetUserOverView$user$following$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserOverView$user$following$nodes<
                          Query$GetUserOverView$user$following$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserOverView$user$following$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUserOverView$user$following<TRes>
    implements CopyWith$Query$GetUserOverView$user$following<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$following(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetUserOverView$user$following$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetUserOverView$user$following$nodes {
  Query$GetUserOverView$user$following$nodes({
    required this.login,
    required this.avatarUrl,
    this.$__typename = 'User',
  });

  factory Query$GetUserOverView$user$following$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$avatarUrl = json['avatarUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$following$nodes(
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
    if (other is! Query$GetUserOverView$user$following$nodes ||
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

extension UtilityExtension$Query$GetUserOverView$user$following$nodes
    on Query$GetUserOverView$user$following$nodes {
  CopyWith$Query$GetUserOverView$user$following$nodes<
          Query$GetUserOverView$user$following$nodes>
      get copyWith => CopyWith$Query$GetUserOverView$user$following$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$following$nodes<TRes> {
  factory CopyWith$Query$GetUserOverView$user$following$nodes(
    Query$GetUserOverView$user$following$nodes instance,
    TRes Function(Query$GetUserOverView$user$following$nodes) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$following$nodes;

  factory CopyWith$Query$GetUserOverView$user$following$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$following$nodes;

  TRes call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserOverView$user$following$nodes<TRes>
    implements CopyWith$Query$GetUserOverView$user$following$nodes<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$following$nodes(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$following$nodes _instance;

  final TRes Function(Query$GetUserOverView$user$following$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? login = _undefined,
    Object? avatarUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$following$nodes(
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

class _CopyWithStubImpl$Query$GetUserOverView$user$following$nodes<TRes>
    implements CopyWith$Query$GetUserOverView$user$following$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$following$nodes(this._res);

  TRes _res;

  call({
    String? login,
    String? avatarUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserOverView$user$starredRepositories {
  Query$GetUserOverView$user$starredRepositories({
    this.nodes,
    this.$__typename = 'StarredRepositoryConnection',
  });

  factory Query$GetUserOverView$user$starredRepositories.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$starredRepositories(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUserOverView$user$starredRepositories$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUserOverView$user$starredRepositories$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserOverView$user$starredRepositories ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserOverView$user$starredRepositories
    on Query$GetUserOverView$user$starredRepositories {
  CopyWith$Query$GetUserOverView$user$starredRepositories<
          Query$GetUserOverView$user$starredRepositories>
      get copyWith => CopyWith$Query$GetUserOverView$user$starredRepositories(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$starredRepositories<TRes> {
  factory CopyWith$Query$GetUserOverView$user$starredRepositories(
    Query$GetUserOverView$user$starredRepositories instance,
    TRes Function(Query$GetUserOverView$user$starredRepositories) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$starredRepositories;

  factory CopyWith$Query$GetUserOverView$user$starredRepositories.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$starredRepositories;

  TRes call({
    List<Query$GetUserOverView$user$starredRepositories$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetUserOverView$user$starredRepositories$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetUserOverView$user$starredRepositories$nodes<
                      Query$GetUserOverView$user$starredRepositories$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUserOverView$user$starredRepositories<TRes>
    implements CopyWith$Query$GetUserOverView$user$starredRepositories<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$starredRepositories(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$starredRepositories _instance;

  final TRes Function(Query$GetUserOverView$user$starredRepositories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$starredRepositories(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetUserOverView$user$starredRepositories$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetUserOverView$user$starredRepositories$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetUserOverView$user$starredRepositories$nodes<
                          Query$GetUserOverView$user$starredRepositories$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUserOverView$user$starredRepositories$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUserOverView$user$starredRepositories<TRes>
    implements CopyWith$Query$GetUserOverView$user$starredRepositories<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$starredRepositories(this._res);

  TRes _res;

  call({
    List<Query$GetUserOverView$user$starredRepositories$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetUserOverView$user$starredRepositories$nodes {
  Query$GetUserOverView$user$starredRepositories$nodes({
    required this.name,
    required this.openGraphImageUrl,
    this.$__typename = 'Repository',
  });

  factory Query$GetUserOverView$user$starredRepositories$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$openGraphImageUrl = json['openGraphImageUrl'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$starredRepositories$nodes(
      name: (l$name as String),
      openGraphImageUrl: (l$openGraphImageUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String openGraphImageUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$openGraphImageUrl = openGraphImageUrl;
    _resultData['openGraphImageUrl'] = l$openGraphImageUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$openGraphImageUrl = openGraphImageUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$openGraphImageUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserOverView$user$starredRepositories$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$openGraphImageUrl = openGraphImageUrl;
    final lOther$openGraphImageUrl = other.openGraphImageUrl;
    if (l$openGraphImageUrl != lOther$openGraphImageUrl) {
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

extension UtilityExtension$Query$GetUserOverView$user$starredRepositories$nodes
    on Query$GetUserOverView$user$starredRepositories$nodes {
  CopyWith$Query$GetUserOverView$user$starredRepositories$nodes<
          Query$GetUserOverView$user$starredRepositories$nodes>
      get copyWith =>
          CopyWith$Query$GetUserOverView$user$starredRepositories$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$starredRepositories$nodes<
    TRes> {
  factory CopyWith$Query$GetUserOverView$user$starredRepositories$nodes(
    Query$GetUserOverView$user$starredRepositories$nodes instance,
    TRes Function(Query$GetUserOverView$user$starredRepositories$nodes) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$starredRepositories$nodes;

  factory CopyWith$Query$GetUserOverView$user$starredRepositories$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$starredRepositories$nodes;

  TRes call({
    String? name,
    String? openGraphImageUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserOverView$user$starredRepositories$nodes<TRes>
    implements
        CopyWith$Query$GetUserOverView$user$starredRepositories$nodes<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$starredRepositories$nodes(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$starredRepositories$nodes _instance;

  final TRes Function(Query$GetUserOverView$user$starredRepositories$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? openGraphImageUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$starredRepositories$nodes(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        openGraphImageUrl:
            openGraphImageUrl == _undefined || openGraphImageUrl == null
                ? _instance.openGraphImageUrl
                : (openGraphImageUrl as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserOverView$user$starredRepositories$nodes<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$starredRepositories$nodes<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$starredRepositories$nodes(
      this._res);

  TRes _res;

  call({
    String? name,
    String? openGraphImageUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUserOverView$user$contributionsCollection {
  Query$GetUserOverView$user$contributionsCollection({
    required this.contributionCalendar,
    this.$__typename = 'ContributionsCollection',
  });

  factory Query$GetUserOverView$user$contributionsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$contributionCalendar = json['contributionCalendar'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$contributionsCollection(
      contributionCalendar:
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar
              .fromJson((l$contributionCalendar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserOverView$user$contributionsCollection$contributionCalendar
      contributionCalendar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contributionCalendar = contributionCalendar;
    _resultData['contributionCalendar'] = l$contributionCalendar.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contributionCalendar = contributionCalendar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contributionCalendar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserOverView$user$contributionsCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contributionCalendar = contributionCalendar;
    final lOther$contributionCalendar = other.contributionCalendar;
    if (l$contributionCalendar != lOther$contributionCalendar) {
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

extension UtilityExtension$Query$GetUserOverView$user$contributionsCollection
    on Query$GetUserOverView$user$contributionsCollection {
  CopyWith$Query$GetUserOverView$user$contributionsCollection<
          Query$GetUserOverView$user$contributionsCollection>
      get copyWith =>
          CopyWith$Query$GetUserOverView$user$contributionsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$contributionsCollection<
    TRes> {
  factory CopyWith$Query$GetUserOverView$user$contributionsCollection(
    Query$GetUserOverView$user$contributionsCollection instance,
    TRes Function(Query$GetUserOverView$user$contributionsCollection) then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection;

  factory CopyWith$Query$GetUserOverView$user$contributionsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection;

  TRes call({
    Query$GetUserOverView$user$contributionsCollection$contributionCalendar?
        contributionCalendar,
    String? $__typename,
  });
  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
      TRes> get contributionCalendar;
}

class _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection<TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection<TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$contributionsCollection _instance;

  final TRes Function(Query$GetUserOverView$user$contributionsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contributionCalendar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserOverView$user$contributionsCollection(
        contributionCalendar: contributionCalendar == _undefined ||
                contributionCalendar == null
            ? _instance.contributionCalendar
            : (contributionCalendar
                as Query$GetUserOverView$user$contributionsCollection$contributionCalendar),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
      TRes> get contributionCalendar {
    final local$contributionCalendar = _instance.contributionCalendar;
    return CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
        local$contributionCalendar, (e) => call(contributionCalendar: e));
  }
}

class _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection<TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection<TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection(
      this._res);

  TRes _res;

  call({
    Query$GetUserOverView$user$contributionsCollection$contributionCalendar?
        contributionCalendar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
          TRes>
      get contributionCalendar =>
          CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar
              .stub(_res);
}

class Query$GetUserOverView$user$contributionsCollection$contributionCalendar {
  Query$GetUserOverView$user$contributionsCollection$contributionCalendar({
    required this.weeks,
    this.$__typename = 'ContributionCalendar',
  });

  factory Query$GetUserOverView$user$contributionsCollection$contributionCalendar.fromJson(
      Map<String, dynamic> json) {
    final l$weeks = json['weeks'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
      weeks: (l$weeks as List<dynamic>)
          .map((e) =>
              Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>
      weeks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$weeks = weeks;
    _resultData['weeks'] = l$weeks.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$weeks = weeks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$weeks.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetUserOverView$user$contributionsCollection$contributionCalendar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$weeks = weeks;
    final lOther$weeks = other.weeks;
    if (l$weeks.length != lOther$weeks.length) {
      return false;
    }
    for (int i = 0; i < l$weeks.length; i++) {
      final l$weeks$entry = l$weeks[i];
      final lOther$weeks$entry = lOther$weeks[i];
      if (l$weeks$entry != lOther$weeks$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserOverView$user$contributionsCollection$contributionCalendar
    on Query$GetUserOverView$user$contributionsCollection$contributionCalendar {
  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar>
      get copyWith =>
          CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
    TRes> {
  factory CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
    Query$GetUserOverView$user$contributionsCollection$contributionCalendar
        instance,
    TRes Function(
            Query$GetUserOverView$user$contributionsCollection$contributionCalendar)
        then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar;

  factory CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar;

  TRes call({
    List<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>?
        weeks,
    String? $__typename,
  });
  TRes weeks(
      Iterable<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks> Function(
              Iterable<
                  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
                      Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
            TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$contributionsCollection$contributionCalendar
      _instance;

  final TRes Function(
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? weeks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
        weeks: weeks == _undefined || weeks == null
            ? _instance.weeks
            : (weeks as List<
                Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes weeks(
          Iterable<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks> Function(
                  Iterable<
                      CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
                          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>>)
              _fn) =>
      call(
          weeks: _fn(_instance.weeks.map((e) =>
              CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar<
            TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar(
      this._res);

  TRes _res;

  call({
    List<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>?
        weeks,
    String? $__typename,
  }) =>
      _res;

  weeks(_fn) => _res;
}

class Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks {
  Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks({
    required this.contributionDays,
    this.$__typename = 'ContributionCalendarWeek',
  });

  factory Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks.fromJson(
      Map<String, dynamic> json) {
    final l$contributionDays = json['contributionDays'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
      contributionDays: (l$contributionDays as List<dynamic>)
          .map((e) =>
              Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>
      contributionDays;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contributionDays = contributionDays;
    _resultData['contributionDays'] =
        l$contributionDays.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contributionDays = contributionDays;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$contributionDays.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contributionDays = contributionDays;
    final lOther$contributionDays = other.contributionDays;
    if (l$contributionDays.length != lOther$contributionDays.length) {
      return false;
    }
    for (int i = 0; i < l$contributionDays.length; i++) {
      final l$contributionDays$entry = l$contributionDays[i];
      final lOther$contributionDays$entry = lOther$contributionDays[i];
      if (l$contributionDays$entry != lOther$contributionDays$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks
    on Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks {
  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks>
      get copyWith =>
          CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
    TRes> {
  factory CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
    Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks
        instance,
    TRes Function(
            Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks)
        then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks;

  factory CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks;

  TRes call({
    List<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>?
        contributionDays,
    String? $__typename,
  });
  TRes contributionDays(
      Iterable<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays> Function(
              Iterable<
                  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
                      Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
            TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks
      _instance;

  final TRes Function(
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contributionDays = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
        contributionDays: contributionDays == _undefined ||
                contributionDays == null
            ? _instance.contributionDays
            : (contributionDays as List<
                Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes contributionDays(
          Iterable<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays> Function(
                  Iterable<
                      CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
                          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>>)
              _fn) =>
      call(
          contributionDays: _fn(_instance.contributionDays.map((e) =>
              CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks<
            TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks(
      this._res);

  TRes _res;

  call({
    List<Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>?
        contributionDays,
    String? $__typename,
  }) =>
      _res;

  contributionDays(_fn) => _res;
}

class Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays {
  Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays({
    required this.date,
    required this.contributionCount,
    this.$__typename = 'ContributionCalendarDay',
  });

  factory Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays.fromJson(
      Map<String, dynamic> json) {
    final l$date = json['date'];
    final l$contributionCount = json['contributionCount'];
    final l$$__typename = json['__typename'];
    return Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
      date: (l$date as String),
      contributionCount: (l$contributionCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String date;

  final int contributionCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$date = date;
    _resultData['date'] = l$date;
    final l$contributionCount = contributionCount;
    _resultData['contributionCount'] = l$contributionCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$date = date;
    final l$contributionCount = contributionCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$date,
      l$contributionCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$contributionCount = contributionCount;
    final lOther$contributionCount = other.contributionCount;
    if (l$contributionCount != lOther$contributionCount) {
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

extension UtilityExtension$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays
    on Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays {
  CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays>
      get copyWith =>
          CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
    TRes> {
  factory CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
    Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays
        instance,
    TRes Function(
            Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays)
        then,
  ) = _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays;

  factory CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays;

  TRes call({
    String? date,
    int? contributionCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
            TRes> {
  _CopyWithImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
    this._instance,
    this._then,
  );

  final Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays
      _instance;

  final TRes Function(
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? date = _undefined,
    Object? contributionCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        contributionCount:
            contributionCount == _undefined || contributionCount == null
                ? _instance.contributionCount
                : (contributionCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
        TRes>
    implements
        CopyWith$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays<
            TRes> {
  _CopyWithStubImpl$Query$GetUserOverView$user$contributionsCollection$contributionCalendar$weeks$contributionDays(
      this._res);

  TRes _res;

  call({
    String? date,
    int? contributionCount,
    String? $__typename,
  }) =>
      _res;
}
