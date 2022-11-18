# ciyu_api.api.TokenControllerApi

## Load the API package
```dart
import 'package:ciyu_api/api.dart';
```

All URIs are relative to *http://localhost:44333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeToken**](TokenControllerApi.md#exchangetoken) | **GET** /api/v1/tokens/exchange | 
[**login**](TokenControllerApi.md#login) | **GET** /api/v1/tokens/login | 
[**refreshToken**](TokenControllerApi.md#refreshtoken) | **POST** /api/v1/tokens/refresh | 


# **exchangeToken**
> TokenDto exchangeToken(loginToken)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getTokenControllerApi();
final String loginToken = loginToken_example; // String | 

try {
    final response = api.exchangeToken(loginToken);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenControllerApi->exchangeToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginToken** | **String**|  | 

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> TokenDto login(phone, password)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getTokenControllerApi();
final String phone = phone_example; // String | 
final String password = password_example; // String | 

try {
    final response = api.login(phone, password);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenControllerApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone** | **String**|  | 
 **password** | **String**|  | 

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> TokenDto refreshToken(refreshTokenData)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getTokenControllerApi();
final RefreshTokenData refreshTokenData = ; // RefreshTokenData | 

try {
    final response = api.refreshToken(refreshTokenData);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TokenControllerApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenData** | [**RefreshTokenData**](RefreshTokenData.md)|  | 

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

