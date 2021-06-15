import 'package:get/get.dart';
import 'package:structured_api/Model/GetModelDemo.dart';
import 'package:structured_api/Repository/MyRepository.dart';

class GetController extends GetxController {
  MyRepository repository;
  GetController({required this.repository});
  var isLoading = true.obs;
  var getModelList = GetModelDemo().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchGetData();
  }

  void fetchGetData() async {
    try {
      isLoading(true);
      var getList = await repository.getRepo();
      if (getList != null) {
        getModelList.value = getList;
      }
    } finally {
      isLoading(false);
    }
  }
}
