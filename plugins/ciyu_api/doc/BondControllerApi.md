# ciyu_api.api.BondControllerApi

## Load the API package
```dart
import 'package:ciyu_api/api.dart';
```

All URIs are relative to *http://localhost:44333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBond**](BondControllerApi.md#createbond) | **POST** /api/v1/bonds | 
[**getBonds**](BondControllerApi.md#getbonds) | **GET** /api/v1/bonds | 
[**removeBond**](BondControllerApi.md#removebond) | **DELETE** /api/v1/bonds | 


# **createBond**
> createBond(createBondDto)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getBondControllerApi();
final CreateBondDto createBondDto = ; // CreateBondDto | 

try {
    api.createBond(createBondDto);
} catch on DioError (e) {
    print('Exception when calling BondControllerApi->createBond: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBondDto** | [**CreateBondDto**](CreateBondDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBonds**
> BuiltList<GetBondsDto> getBonds(page, size, sort)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getBondControllerApi();
final int page = 56; // int | Zero-based page index (0..N)
final int size = 56; // int | The size of the page to be returned
final BuiltList<String> sort = ; // BuiltList<String> | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    final response = api.getBonds(page, size, sort);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BondControllerApi->getBonds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**BuiltList&lt;String&gt;**](String.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**BuiltList&lt;GetBondsDto&gt;**](GetBondsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeBond**
> removeBond(wordId)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getBondControllerApi();
final String wordId = wordId_example; // String | 

try {
    api.removeBond(wordId);
} catch on DioError (e) {
    print('Exception when calling BondControllerApi->removeBond: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wordId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

