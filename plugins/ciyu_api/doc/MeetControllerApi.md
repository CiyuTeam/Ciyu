# ciyu_api.api.MeetControllerApi

## Load the API package
```dart
import 'package:ciyu_api/api.dart';
```

All URIs are relative to *http://localhost:44333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMeet**](MeetControllerApi.md#createmeet) | **POST** /api/v1/meets | 
[**createMeets**](MeetControllerApi.md#createmeets) | **POST** /api/v1/meets/batch | 


# **createMeet**
> createMeet(createMeetDto)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getMeetControllerApi();
final CreateMeetDto createMeetDto = ; // CreateMeetDto | 

try {
    api.createMeet(createMeetDto);
} catch on DioError (e) {
    print('Exception when calling MeetControllerApi->createMeet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMeetDto** | [**CreateMeetDto**](CreateMeetDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMeets**
> createMeets(createMeetsDto)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getMeetControllerApi();
final CreateMeetsDto createMeetsDto = ; // CreateMeetsDto | 

try {
    api.createMeets(createMeetsDto);
} catch on DioError (e) {
    print('Exception when calling MeetControllerApi->createMeets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMeetsDto** | [**CreateMeetsDto**](CreateMeetsDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

