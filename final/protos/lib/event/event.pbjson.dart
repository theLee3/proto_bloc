///
//  Generated code. Do not modify.
//  source: event/event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use counterEventDescriptor instead')
const CounterEvent$json = const {
  '1': 'CounterEvent',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.CounterEvent.Type', '10': 'type'},
  ],
  '4': const [CounterEvent_Type$json],
};

@$core.Deprecated('Use counterEventDescriptor instead')
const CounterEvent_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'UNSPECIFIED', '2': 0},
    const {'1': 'INCREMENT', '2': 1},
    const {'1': 'DECREMENT', '2': 2},
  ],
};

/// Descriptor for `CounterEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List counterEventDescriptor = $convert.base64Decode('CgxDb3VudGVyRXZlbnQSJgoEdHlwZRgBIAEoDjISLkNvdW50ZXJFdmVudC5UeXBlUgR0eXBlIjUKBFR5cGUSDwoLVU5TUEVDSUZJRUQQABINCglJTkNSRU1FTlQQARINCglERUNSRU1FTlQQAg==');
