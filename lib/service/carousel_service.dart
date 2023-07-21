import 'package:portofolio/model/carousel_model.dart';
import 'package:portofolio/service/image_service.dart';

final carouselData = <CarouselModel>[
  CarouselModel(
      id: 1,
      name: 'OneGate Application',
      image: ogImageData,
      about:
          'OneGate is an application created for Salesman\'s attendance. With several features includes recording attendance within a certain radius of their designated store position, photos of the designated store, recording of goods taken, recording sales results, and they also can see their own sales peformance within the chart.'),
  CarouselModel(
      id: 2,
      name: 'Esteh Academy',
      image: esImageData,
      about:
          'Esteh Academy is an application with the intended purpose of being an apps to train the trainees from the related parties.'),
  CarouselModel(
      id: 3,
      name: 'Therapeutic',
      image: trImageData,
      about:
          'Therapeutic is an application set to work as a bridge between Patient and Doctor to do appointment or as simple as consulting.'),
];
