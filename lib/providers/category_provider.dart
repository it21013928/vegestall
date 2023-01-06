import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vegestall/api/api_service.dart';
import 'package:vegestall/models/pagination.dart';

final categoriesProvider =
    FutureProvider.family<List<Category>?, PaginationModel>(
  (ref, paginationModel) {
    final apiRepository = ref.watch(apiService);

    return apiRepository.getCategories(
      paginationModel.pageSize,
      paginationModel.page,
    );
  },
);
