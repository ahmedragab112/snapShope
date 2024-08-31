import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/styles/images/app_images.dart';
import 'package:newstore/features/auth/presentation/manager/auth_bloc.dart';

class SignupImage extends StatelessWidget {
  const SignupImage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: GestureDetector(
        onTap: () => context.read<AuthBloc>().add(ChangeUserImageEvent()),
        child: CircleAvatar(
          maxRadius: 50.r,
          minRadius: 20.r,
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) => current is ChangeUserImage,
            builder: (context, state) {
              return Stack(
                alignment: context.read<AuthBloc>().userProfile == null
                    ? Alignment.center
                    : Alignment.bottomRight,
                children: [
                  ClipOval(
                    child: context.read<AuthBloc>().userProfile == null
                        ? ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                            child: Image.asset(
                              AppLightImages.userAvatar,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Image.file(
                            context.read<AuthBloc>().userProfile!,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                  ),
                  context.read<AuthBloc>().userProfile == null
                      ? Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 35.h,
                        )
                      : GestureDetector(
                          onTap: () => context
                              .read<AuthBloc>()
                              .add(ChangeUserImageEvent()),
                          child: Container(
                            width: 35.w,
                            height: 35.h,
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.all(4.r),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  context.getColorTheme.bluePinkLight!,
                                  context.getColorTheme.bluePinkDark!,
                                ],
                              ),
                            ),
                            child: Icon(
                              Icons.mode_edit_rounded,
                              color: Colors.white,
                              size: 30.h,
                            ),
                          ),
                        ).setOnlyPadding(context, left: 30),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
