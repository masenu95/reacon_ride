// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/authentication/auth_bloc.dart' as _i17;
import 'application/auth/register/register_bloc.dart' as _i14;
import 'application/auth/signin/login_bloc.dart' as _i12;
import 'application/category/category_bloc.dart' as _i18;
import 'application/food/food_bloc.dart' as _i19;
import 'application/order/order_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/category/i_category_facade.dart' as _i8;
import 'domain/food/i_food_facade.dart' as _i15;
import 'domain/order/i_order_facade.dart' as _i10;
import 'infrastucture/auth/firebase_auth_facade.dart' as _i7;
import 'infrastucture/category/firebase_category_facade.dart' as _i9;
import 'infrastucture/core/firebase_injectable_module.dart' as _i20;
import 'infrastucture/food/firebase_food_facade.dart' as _i16;
import 'infrastucture/order/firebase_order_facade.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseMessaging>(
      () => firebaseInjectableModule.messaging);
  gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.ICategoryFacade>(
      () => _i9.FirebaseCategoryFacade(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IOrderFacade>(() => _i11.FirebaseOrderFacade(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseMessaging>()));
  gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i13.OrderBloc>(() => _i13.OrderBloc(get<_i10.IOrderFacade>()));
  gh.factory<_i14.RegisterBloc>(
      () => _i14.RegisterBloc(get<_i6.IAuthFacade>()));
  gh.lazySingleton<_i15.reacon_customerFacade>(
      () => _i16.FirebaseFoodFacade(get<_i4.FirebaseFirestore>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.CategoryBloc>(
      () => _i18.CategoryBloc(get<_i8.ICategoryFacade>()));
  gh.factory<_i19.FoodBloc>(
      () => _i19.FoodBloc(get<_i15.reacon_customerFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
