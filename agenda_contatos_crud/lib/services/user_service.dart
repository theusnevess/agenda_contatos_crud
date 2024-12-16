import '../db/repository.dart';
import '../model/user.dart';

// Construtor da classe UserService
class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  //Salvar contatos
  saveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

  //Lê todos os contatos
  readAllUsers() async {
    return await _repository.readData('users');
  }

  //Lê contatos por Id
  readUserById(id) async {
    return await _repository.readDataById('users', id);
  }

  //Editar contatos
  updateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

  //Deleta contatos
  deleteUser(userId) async {
    return await _repository.deleteData('users', userId);
  }
}
