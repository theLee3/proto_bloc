///
//  Generated code. Do not modify.
//  source: event/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'event.pbenum.dart';

export 'event.pbenum.dart';

class CounterEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CounterEvent', createEmptyInstance: create)
    ..e<CounterEvent_Type>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: CounterEvent_Type.UNSPECIFIED, valueOf: CounterEvent_Type.valueOf, enumValues: CounterEvent_Type.values)
    ..hasRequiredFields = false
  ;

  CounterEvent._() : super();
  factory CounterEvent({
    CounterEvent_Type? type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory CounterEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CounterEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CounterEvent clone() => CounterEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CounterEvent copyWith(void Function(CounterEvent) updates) => super.copyWith((message) => updates(message as CounterEvent)) as CounterEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CounterEvent create() => CounterEvent._();
  CounterEvent createEmptyInstance() => create();
  static $pb.PbList<CounterEvent> createRepeated() => $pb.PbList<CounterEvent>();
  @$core.pragma('dart2js:noInline')
  static CounterEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CounterEvent>(create);
  static CounterEvent? _defaultInstance;

  @$pb.TagNumber(1)
  CounterEvent_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(CounterEvent_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

