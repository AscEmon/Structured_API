import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:structured_api/ApiProvider/ApiClient.dart';
import 'package:structured_api/Controller/GetController.dart';
import 'package:structured_api/Repository/MyRepository.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetController _getController =
      Get.put(GetController(repository: MyRepository(apiClient: ApiClient())));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text("This is for git conflict"),
              Obx(() {
                return _getController.isLoading.value == true
                    ? Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.black,
                        ),
                      )
                    : Container(
                        height: Get.height / 1.1,
                        width: Get.width,
                        child: ListView.builder(
                            itemCount:
                                _getController.getModelList.value.data!.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 60,
                                child: Card(
                                  color:
                                      index % 2 == 1 ? Colors.red : Colors.blue,
                                  child: Text(
                                      "${_getController.getModelList.value.data![index].name}"),
                                ),
                              );
                            }),
                      );
              })
              // ListView.builder(
              //    itemCount: _getController.getModelList.value.,
              //     itemBuilder: (context, index) {
              //       return
              //     },
              //   )
            ],
          ),
        ),
      ),
    );
  }
}
