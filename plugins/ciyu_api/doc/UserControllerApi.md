# ciyu_api.api.UserControllerApi

## Load the API package
```dart
import 'package:ciyu_api/api.dart';
```

All URIs are relative to *http://localhost:44333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**register**](UserControllerApi.md#register) | **POST** /api/v1/users | 


# **register**
> register(registerDto)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getUserControllerApi();
final RegisterDto registerDto = ; // RegisterDto | 

try {
    api.register(registerDto);
} catch on DioError (e) {
    print('Exception when calling UserControllerApi->register: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerDto** | [**RegisterDto**](RegisterDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

