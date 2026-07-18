import 'package:geolocator/geolocator.dart';


class LocationService {


Future<Position> pegarLocalizacao()
async{


return await Geolocator
.getCurrentPosition();


}


}