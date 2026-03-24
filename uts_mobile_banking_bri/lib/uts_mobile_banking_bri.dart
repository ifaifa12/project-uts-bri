import 'package:flutter/material.dart';

void main () {
  runApp(const MobileBankingApp());
}

class MobileBankingApp extends StatelessWidget {
  const MobileBankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey.shade200,

      // QRIS BUTTON
      floatingActionButton: Container(
        height: 65,
        width: 65,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10)
          ],
        ),
        child: const Icon(Icons.qr_code, color: Colors.white),
      ),
      floatingActionButtonLocation:
       FloatingActionButtonLocation.centerDocked,

      // BOTTOM NAVBAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Mutasi"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Aktivitas"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
      ),
   
      body: SafeArea(
        child: Stack(
          children: [

          // BACKGROUND 
          Container(
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF0D47A1), Color(0xFF42A5F5)],
             ),
           ),
         ),

         //CONTENT
          SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 20),

                // HEADER
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      const Text(
                        "12.02",
                        style: TextStyle( color: Colors.white),
                      ),
                      const Text(
                        "BRI MOBILE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: const[
                          Icon(Icons.notifications_none,
                          color: Colors.white),
                          SizedBox(width: 10),
                          Icon(Icons.headset_mic,
                          color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),

                    const SizedBox(height: 20),

                    // SAPAAN
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Selamat Pagi, Ifa",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),

                // CARD SALDO
                Transform.translate(
                  offset: const Offset(0, -20), 
                  child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),

                    child: Column(
                      crossAxisAlignment: 
                      CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Saldo Rekening Utama",
                          style:
                           TextStyle(color: Colors.white70)
                          ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment:
                           MainAxisAlignment.spaceBetween,
                          children: const[
                            Text(
                              "Rp.800.000,00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: 
                                FontWeight.bold)
                              ),
                            Icon(Icons.visibility_off,
                            color: Colors.white)
                          ],
                        ),
                      
                      const SizedBox(height: 15),
                       Row(
                          children: const[
                            Text("Saldo Tersedia",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              ),
                            ),
                              SizedBox(width: 5),
                              Text(
                                "Klik Untuk Sembunyikan",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
    
                
                  const SizedBox(height: 20),

                // MENU CEPAT
                Container(
                    margin:
                    const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                       BorderRadius.circular(20),
                    ),
                  child: Row(
                    mainAxisAlignment:
                     MainAxisAlignment.spaceAround,
                    children: const [
                      MenuIcon(Icons.send, "Transfer"),
                      MenuIcon(Icons.credit_card, "BRIVA"),
                      MenuIcon(Icons.water_drop, "PDAM"),
                      MenuIcon(Icons.phone_android, "Pulsa"),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // GRID MENU
                Padding(
                  padding: 
                  const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    shrinkWrap: true,
                    physics: 
                    const NeverScrollableScrollPhysics(),

                    children: const [
                      GridMenu(Icons.account_balance_wallet, "Top Up"),
                      GridMenu(Icons.credit_card, "BRIZZI"),
                      GridMenu(Icons.receipt, "Tagihan"),
                      GridMenu(Icons.send, "Transfer"),
                      GridMenu(Icons.shopping_bag, "Lifestyle"),
                      GridMenu(Icons.atm, "Tarik Tunai"),
                      GridMenu(Icons.note, "Catatan"),
                      GridMenu(Icons.trending_up, "Investasi"),
                    ],
                  ),
                ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
                 


// MENU ICON 
class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuIcon(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.shade50,
          radius: 26,
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

// GRID MENU
class GridMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const GridMenu(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue.shade50,
          child: Icon(icon, color: Colors.blue),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}