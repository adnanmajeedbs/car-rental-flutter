class RegistrationCityModel {
  final String city_Name;
  bool isSelected;
  RegistrationCityModel({required this.city_Name, required this.isSelected});
}

List<RegistrationCityModel> registrationCityModelList = [
  RegistrationCityModel(city_Name: 'All', isSelected: true),
  RegistrationCityModel(city_Name: 'Rahim-Yar-Khan', isSelected: false),
  RegistrationCityModel(city_Name: 'Multan', isSelected: false),
  RegistrationCityModel(city_Name: 'Islamabad', isSelected: false),
  RegistrationCityModel(city_Name: 'Lahore', isSelected: false),
  RegistrationCityModel(city_Name: 'Karachi', isSelected: false),
  RegistrationCityModel(city_Name: 'Peshawar', isSelected: false),
  RegistrationCityModel(city_Name: 'Quetta', isSelected: false),
];

class FuelModel {
  final String text;
  bool isselected;
  FuelModel({required this.text, required this.isselected});
}

List<FuelModel> fuelModelList = [
  FuelModel(text: 'Petrol', isselected: false),
  FuelModel(text: 'Diesel', isselected: false),
  FuelModel(text: 'LPG', isselected: false),
  FuelModel(text: 'CNG', isselected: false),
  FuelModel(text: 'Hybrid', isselected: false),
];

List<String> makeList = ['All', 'Toyota', 'Suzuki', 'Honda'];
List<String> modelsList = [
  'All',
  '2018',
  '2019',
  '2020',
  '2021',
  '2022',
  '2023'
];

List<String> carDocumentsList = ['All', 'Original', 'Duplicate'];
List<String> transmittionList = ['All', 'Auto', 'Manual'];
