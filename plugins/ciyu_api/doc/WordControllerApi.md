# ciyu_api.api.WordControllerApi

## Load the API package
```dart
import 'package:ciyu_api/api.dart';
```

All URIs are relative to *http://localhost:44333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWordById**](WordControllerApi.md#getwordbyid) | **GET** /api/v1/words/{id} | 


# **getWordById**
> WordDto getWordById(id)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getWordControllerApi();
final String id = id_example; // String | 

try {
    final response = api.getWordById(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling WordControllerApi->getWordById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**WordDto**](WordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

