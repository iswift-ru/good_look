import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:good_look/presentation/bloc/photo_bloc.dart';

class PhotoPage extends StatefulWidget {
  PhotoPage({Key key}) : super(key: key);

  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(builder: (context, state) {
      return state.map(
          progressIndicator: (_) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                    ],
                  ),
                ],
              ),
          statePhoto: (state) {
            // log(state.toString());
            return GridView.builder(
              key: PageStorageKey('photo'),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              // shrinkWrap: true,
              itemCount: state.photoModel.length,
              itemBuilder: (BuildContext context, int index) {
                final photo = state.photoModel[index];
                final title = state.photoModel[index];
                return Stack(
                  // alignment: AlignmentDirectional.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CachedNetworkImage(
                        imageUrl: photo.url,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => SizedBox(
                                // height: 20,
                                // width: 20,
                                // child: CircularProgressIndicator(
                                //     value: downloadProgress.progress),
                                ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(title.title),
                        )),
                  ],
                );
                // Text(state.photoModel[index].id.toString());
                // Image.network(state.photoModel[index].url);
              },
            );
          });
    });
  }
}
