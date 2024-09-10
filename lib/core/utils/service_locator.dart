import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_books_app/core/utils/api_service.dart';
import 'package:my_books_app/features/home/data/models/book_model/repos/home_repo_impl.dart';

final getit = GetIt.instance;
void setupLocator() {
  getit.registerSingleton<ApiServices>(ApiServices(Dio()));
  getit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getit.get<ApiServices>(),
  ));
}
