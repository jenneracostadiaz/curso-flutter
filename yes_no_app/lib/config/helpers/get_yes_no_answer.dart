import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entidades/message.dart';
import 'package:yes_no_app/presentation/providers/get_yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsMap(response.data);

    return Message(
        text: yesNoModel.answer,
        fromWho: FromWho.hers,
        imageUrl: yesNoModel.image
      );
  }
}
