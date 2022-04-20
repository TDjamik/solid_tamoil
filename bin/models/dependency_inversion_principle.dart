//bad
/*
void main() {
  UserBloc userBloc =UserBloc();
  userBloc.getUserByID();
  userBloc.getTopTenUserPosts();
}
class UserBloc {
  final NetworkCalls _networkCalls = NetworkCalls();

  void getUserByID(){
    _networkCalls.getUserByID(1);
  }
  void getTopTenUserPosts() {
    _networkCalls.getTopTenUserPosts();
  }
}

class NetworkCalls {
  Future getUserByID(int id) async{
    print('$id');
  }
  Future getTopTenUserPosts() async {
    print('One to Ten');
  }
}

 */

//success
/*
void main() {
  NetworkTask networkTask = NetworkCalls();
  UserBloc userBloc = UserBloc(networkTask);

  userBloc.getUserByID();
  userBloc.getTopTenUserPosts();
}

abstract class NetworkTask {
  Future getUserByID(int id);

  Future getTopTenUserPosts();
}

class UserBloc {
  final NetworkTask networkTask;

  UserBloc(this.networkTask);

  void getUserByID() {
    networkTask.getUserByID(1);
  }

  void getTopTenUserPosts() {
    networkTask.getTopTenUserPosts();
  }
}

class NetworkCalls implements NetworkTask {
  Future getUserByID(int id) async {
    print('$id');
  }

  Future getTopTenUserPosts() async {
    print('One to Ten');
  }
}

 */