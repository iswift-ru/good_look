import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/photo_bloc.dart';
import '../../domain/models/photo_model.dart';
import '../widgets/circular_progress.dart';

class PhotoPage extends StatelessWidget {
  PhotoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(builder: (context, state) {
      return state.map(
          progressIndicator: (_) => const CircularProgress(),
          statePhoto: (state) => PhotoView(model: state.photoModel));
    });
  }
}

class PhotoView extends StatelessWidget {
  final List<PhotoModel> model;
  const PhotoView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const PageStorageKey('photo'),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: model.length,
      itemBuilder: (BuildContext context, int index) {
        final photo = model[index];
        final title = model[index];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(
                imageUrl: photo.url,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    const SizedBox(),
                errorWidget: (context, url, dynamic error) =>
                    const Icon(Icons.error),
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
      },
    );
  }
}
