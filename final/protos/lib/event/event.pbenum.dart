///
//  Generated code. Do not modify.
//  source: event/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CounterEvent_Type extends $pb.ProtobufEnum {
  static const CounterEvent_Type UNSPECIFIED = CounterEvent_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNSPECIFIED');
  static const CounterEvent_Type INCREMENT = CounterEvent_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCREMENT');
  static const CounterEvent_Type DECREMENT = CounterEvent_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DECREMENT');

  static const $core.List<CounterEvent_Type> values = <CounterEvent_Type> [
    UNSPECIFIED,
    INCREMENT,
    DECREMENT,
  ];

  static final $core.Map<$core.int, CounterEvent_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CounterEvent_Type? valueOf($core.int value) => _byValue[value];

  const CounterEvent_Type._($core.int v, $core.String n) : super(v, n);
}

