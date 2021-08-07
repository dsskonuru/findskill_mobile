import 'package:connectivity/connectivity.dart';
import 'package:findskill/core/network/network_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks([Connectivity])
void main() {
  late NetworkInfo networkInfo;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockConnectivity = MockConnectivity();
    networkInfo = NetworkInfo(connectivity: mockConnectivity);
  });

  group('isConnected', () {
    test(
      'should forward the call to connectivity.checkConnectivity()',
      () async {
        // arrange
        final tHasWifiConnection = Future.value(ConnectivityResult.wifi);
        const tResult = true;
        when(mockConnectivity.checkConnectivity())
            .thenAnswer((_) async => tHasWifiConnection);
        // act
        final result = await networkInfo.isConnected;
        // assert
        verify(mockConnectivity.checkConnectivity());
        expect(result, tResult);
      },
    );
  });
}
