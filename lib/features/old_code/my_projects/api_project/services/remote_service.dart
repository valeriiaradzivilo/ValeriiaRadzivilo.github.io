import 'package:http/http.dart' as http;
import 'package:portfolio/features/old_code/my_projects/api_project/models/comments.dart';

class RemoteService {
  Future<List<Comment>?> getComments() async {
    var client = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return commentFromJson(json);
    }
    return null;
  }
}
