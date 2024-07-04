import 'package:flutter/material.dart';

class HospitalSelector extends StatefulWidget {
  const HospitalSelector({super.key});

  @override
  _HospitalSelectorState createState() => _HospitalSelectorState();
}

class _HospitalSelectorState extends State<HospitalSelector> {
  String? selectedProvince;
  final Map<String, List<String>> hospitalsByProvince = {
    'Province No. 1': [
      'B.P. Koirala Institute of Health Sciences, Dharan, Sunsari, +977 25-525555',
      'Nobel Medical College Teaching Hospital, Biratnagar, Morang, +977 21-460566',
      'Mechi Zonal Hospital, Bhadrapur, Jhapa, +977 23-455119',
      'Koshi Zonal Hospital, Biratnagar, Morang, +977 21-524513',
      'Dhulikhel Hospital, Dhulikhel, Kavrepalanchok, +977 11-490497'
    ],
    'Province No. 2': [
      'Janakpur Zonal Hospital, Janakpur, Dhanusa, +977 41-520160',
      'Gaur Hospital, Gaur, Rautahat, +977 55-520195',
      'Narayan Sub-Regional Hospital, Birgunj, Parsa, +977 51-521195',
      'National Medical College, Birgunj, Parsa, +977 51-524507',
      'Narayani Sub-Regional Hospital, Birgunj, Parsa, +977 51-521195'
    ],
    'Bagmati Province': [
      'Tribhuvan University Teaching Hospital, Maharajgunj, Kathmandu, +977 1-4412303',
      'Patan Hospital, Lagankhel, Lalitpur, +977 1-5522295',
      'Bhaktapur Hospital, Bhaktapur, +977 1-6610798',
      'Shree Harsha Hospital, Kathmandu, +977 1-4415540',
      'Om Hospital and Research Centre, Kathmandu, +977 1-4467255',
      'Grande International Hospital, Dhapasi, Kathmandu, +977 1-5159266',
      'Norvic International Hospital, Thapathali, Kathmandu, +977 1-4258554'
    ],
    'Gandaki Province': [
      'Pokhara Academy of Health Sciences (Western Regional Hospital), Pokhara, Kaski, +977 61-522026',
      'Gandaki Medical College Teaching Hospital, Pokhara, Kaski, +977 61-538595',
      'Manipal Teaching Hospital, Pokhara, Kaski, +977 61-526416',
      'Charak Memorial Hospital, Pokhara, Kaski, +977 61-528797',
      'Fewa City Hospital, Pokhara, Kaski, +977 61-465690'
    ],
    'Lumbini Province': [
      'Lumbini Provincial Hospital, Butwal, Rupandehi, +977 71-540280',
      'Rapti Sub-Regional Hospital, Ghorahi, Dang, +977 82-560278',
      'Bhairahawa Medical College Teaching Hospital, Bhairahawa, Rupandehi, +977 71-523347',
      'Universal College of Medical Sciences and Teaching Hospital, Bhairahawa, Rupandehi, +977 71-526682',
      'Crimson Hospital, Manigram, Rupandehi, +977 71-590796'
    ],
    'Karnali Province': [
      'Jumla District Hospital, Jumla, +977 87-520176',
      'Karnali Academy of Health Sciences, Jumla, +977 87-520162',
      'Surkhet Regional Hospital, Surkhet, +977 83-520073',
      'Mugu District Hospital, Gamgadhi, Mugu, +977 89-520140',
      'Dolpa District Hospital, Dunai, Dolpa, +977 85-520122'
    ],
    'Sudurpashchim Province': [
      'Seti Provincial Hospital, Dhangadhi, Kailali, +977 91-520500',
      'Mahakali Zonal Hospital, Mahendranagar, Kanchanpur, +977 99-520130',
      'Dadeldhura Sub-Regional Hospital, Dadeldhura, +977 96-410166',
      'Doti District Hospital, Doti, +977 94-520180',
      'Achham District Hospital, Mangalsen, Achham, +977 97-520100'
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              hint: Text('Select Province'),
              value: selectedProvince,
              onChanged: (String? newValue) {
                setState(() {
                  selectedProvince = newValue;
                });
              },
              items: hospitalsByProvince.keys.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            selectedProvince == null
                ? Container()
                : Expanded(
              child: ListView.builder(
                itemCount: hospitalsByProvince[selectedProvince]!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(hospitalsByProvince[selectedProvince]![index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}