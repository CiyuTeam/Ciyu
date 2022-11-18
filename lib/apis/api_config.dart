import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties:
    AdditionalProperties(pubName: 'ciyu_api', pubAuthor: 'Jiff'),
    inputSpecFile: 'lib/apis/api_spec4.yaml',
    generatorName: Generator.dio,
    outputDirectory: 'plugins/ciyu_api')
class CustomOpenapiGeneratorConfig extends OpenapiGeneratorConfig {}