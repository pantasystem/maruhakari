
import 'package:client/endpoints/service.dart';
import 'package:client/schema/container_template.dart';
import 'package:client/schema/handler.dart';

class ContainerTemplateRepository {
  ContainerTemplateRepository({required this.client});
  final MaruhakariApiClient client;

  Future<List<ContainerTemplate>> findAll() async {
    return await handleError(() async {
      return await client.getContainerTemplates();
    });
  }
}