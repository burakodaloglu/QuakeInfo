import '../../../../core/usecase/usecase.dart';
import '../entities/bag_entity.dart';
import '../repository/quakeinfo_repository.dart';

class UpdateBagUseCase implements UseCase<void, BagEntity> {
  final QuakeInfoRepository _quakeinfoRepository;

  UpdateBagUseCase(this._quakeinfoRepository);

  @override
  Future<void> call({BagEntity? params}) {
    return _quakeinfoRepository.updateBag(params!);
  }
}
