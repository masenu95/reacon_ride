import 'package:reacon_customer/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encounter error at unrecoverable point. Terminating';

    return Error.safeToString('$explanation Failure was : $valueFailure');
  }
}
