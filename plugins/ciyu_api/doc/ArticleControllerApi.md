# ciyu_api.api.ArticleControllerApi

## Load the API package
```dart
import 'package:ciyu_api/api.dart';
```

All URIs are relative to *http://localhost:44333*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBestArticles**](ArticleControllerApi.md#getbestarticles) | **GET** /api/v1/articles | 
[**searchByWordId**](ArticleControllerApi.md#searchbywordid) | **GET** /api/v1/articles/word | 


# **getBestArticles**
> SearchHitsArticle getBestArticles(excludedArticleIds, page, size, sort)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getArticleControllerApi();
final BuiltList<String> excludedArticleIds = ; // BuiltList<String> | 
final int page = 56; // int | Zero-based page index (0..N)
final int size = 56; // int | The size of the page to be returned
final BuiltList<String> sort = ; // BuiltList<String> | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    final response = api.getBestArticles(excludedArticleIds, page, size, sort);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleControllerApi->getBestArticles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **excludedArticleIds** | [**BuiltList&lt;String&gt;**](String.md)|  | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**BuiltList&lt;String&gt;**](String.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**SearchHitsArticle**](SearchHitsArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchByWordId**
> SearchHitsArticle searchByWordId(wordId, page, size, sort)



### Example
```dart
import 'package:ciyu_api/api.dart';

final api = CiyuApi().getArticleControllerApi();
final String wordId = wordId_example; // String | 
final int page = 56; // int | Zero-based page index (0..N)
final int size = 56; // int | The size of the page to be returned
final BuiltList<String> sort = ; // BuiltList<String> | Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported.

try {
    final response = api.searchByWordId(wordId, page, size, sort);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleControllerApi->searchByWordId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wordId** | **String**|  | 
 **page** | **int**| Zero-based page index (0..N) | [optional] [default to 0]
 **size** | **int**| The size of the page to be returned | [optional] [default to 20]
 **sort** | [**BuiltList&lt;String&gt;**](String.md)| Sorting criteria in the format: property,(asc|desc). Default sort order is ascending. Multiple sort criteria are supported. | [optional] 

### Return type

[**SearchHitsArticle**](SearchHitsArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

