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
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _getController.isLoading.value == true
                ? Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.black,
                    ),
                  )
                : Text("${_getController.getModelList.value.name}")
            // ListView.builder(
            //    itemCount: _getController.getModelList.value.,
            //     itemBuilder: (context, index) {
            //       return
            //     },
            //   )
          ],
        ),
      ),
    );
  }
}
