// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/authentication/auth_bloc.dart' as _i13;
import 'application/auth/register/register_bloc.dart' as _i11;
import 'application/auth/signin/login_bloc.dart' as _i10;
import 'application/track/track_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/track/i_track_facade.dart' as _i8;
import 'infrastucture/auth/firebase_auth_facade.dart' as _i7;
import 'infrastucture/core/firebase_injectable_module.dart' as _i14;
import 'infrastucture/track/api_track_facade.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i8.ITrackFacade>(() => _i9.ApiTrackFacade(
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseMessaging>()));
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i11.RegisterBloc>(
      () => _i11.RegisterBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i12.TrackBloc>(() => _i12.TrackBloc(get<_i8.ITrackFacade>()));
  gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}
