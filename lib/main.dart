import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData.dark(),
      home: const AnaSayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        actions: const [
          Icon(Icons.camera_alt),
          SizedBox(width: 16),
          Icon(Icons.search),
          SizedBox(width: 16),
          Icon(Icons.more_vert),
        ],
      ),
      body: ListView(
        children: const [
          KisiKart(
            profilResmi: Icons.person,
            isim: 'Ahmet',
            mesaj: 'Merhaba',
            zaman: 'Az Önce',
          ),
          KisiKart(
            profilResmi: Icons.person_2,
            isim: 'Ayşe',
            mesaj: 'Görüşürüz',
            zaman: 'Dün',
          ),
          KisiKart(
            profilResmi: Icons.person,
            isim: 'Ali',
            mesaj: 'İyi Akşamlar',
            zaman: '1 Hafta Önce',
          ),
          KisiKart(
            profilResmi: Icons.person,
            isim: 'Veli',
            mesaj: 'Tmm Kanka',
            zaman: 'Bu Akşam',
          ),
          KisiKart(
            profilResmi: Icons.person_2,
            isim: 'Fatma',
            mesaj: 'Geliyorum',
            zaman: 'Dün Akşam',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white70,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Sohbetler'),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle),
            label: 'Güncellemeler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Topluluklar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Aramalar'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.chat),
      ),
    );
  }
}

class KisiKart extends StatelessWidget {
  final IconData profilResmi;
  final String isim;
  final String mesaj;
  final String zaman;

  const KisiKart({
    super.key,
    required this.profilResmi,
    required this.isim,
    required this.mesaj,
    required this.zaman,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Icon(profilResmi, color: Colors.white),
      ),
      title: Text(isim),
      subtitle: Text(mesaj),
      trailing: Text(zaman, style: const TextStyle(color: Colors.white70)),
    );
  }
}
