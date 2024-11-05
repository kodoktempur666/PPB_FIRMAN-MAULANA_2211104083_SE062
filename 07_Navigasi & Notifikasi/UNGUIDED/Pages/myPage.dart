// lib/pages/myPage.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Models/product.dart';
import 'detailPage.dart';

class MyPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Samsung Galaxy A55 5G',
      description: 'Samsung Galaxy A55 5G merupakan HP dengan layar 6.6" dan tingkat densitas piksel sebesar 390ppi. Ia dilengkapi dengan kamera belakang 50 + 12 + 5MP dan kamera depan 32MP. HP ini juga hadir dengan kapasitas baterai 5000mAh. Samsung Galaxy A55 5G dirilis pada: 2024.',
      price: 2999000,
      imageUrl: 'https://images.samsung.com/is/image/samsung/assets/id/offer/2024/9/galaxy-s24-fe/S24-FE-Group-KV_Global_PC-S24-FE-Group-KV_Global_PC.png?imbypass=true',
    ),
    Product(
      id: '2',
      name: 'Samsung Galaxy A05',
      description: 'Samsung Galaxy A05 merupakan HP dengan layar 6.7" dan tingkat densitas piksel sebesar 262ppi. Ia dilengkapi dengan kamera belakang 50 + 20MP dan kamera depan 8MP. HP ini juga hadir dengan kapasitas baterai 5000mAh. Samsung Galaxy A05 dirilis pada: 2023.',
      price: 1090000,
      imageUrl: 'https://images.samsung.com/is/image/samsung/assets/id/smartphones/galaxy-z-fold6/buy/Color_Selection_Silver_PC.png?imbypass=true',
    ),
        Product(
      id: '3',
      name: 'Samsung Galaxy Z Flip6',
      description: 'Samsung Galaxy Z Flip6 merupakan HP dengan layar 6.6" dan tingkat densitas piksel sebesar 390ppi. Ia dilengkapi dengan kamera belakang 50 + 12 + 5MP dan kamera depan 32MP. HP ini juga hadir dengan kapasitas baterai 5000mAh. Samsung Galaxy Z Flip6 dirilis pada: 2024.',
      price: 8999000,
      imageUrl: 'https://images.samsung.com/id/smartphones/galaxy-z-flip6/buy/kv_global_PC_v2.jpg?imbypass=true',
    ),
        Product(
      id: '4',
      name: 'Samsung Galaxy Z Fold5',
      description: 'Samsung Galaxy A55 5G merupakan HP dengan layar 6.6" dan tingkat densitas piksel sebesar 390ppi. Ia dilengkapi dengan kamera belakang 50 + 12 + 5MP dan kamera depan 32MP. HP ini juga hadir dengan kapasitas baterai 5000mAh. Samsung Galaxy A55 5G dirilis pada: 2024.',
      price: 18999000,
      imageUrl: 'https://images.samsung.com/id/smartphones/galaxy-z-fold5/buy/kv_group_PC.jpg?imbypass=true',
    ),
        Product(
      id: '5',
      name: 'Samsung Galaxy S24 Ultra',
      description: 'Samsung Galaxy S24 Ultra 5G merupakan HP dengan layar 6.6" dan tingkat densitas piksel sebesar 390ppi. Ia dilengkapi dengan kamera belakang 50 + 12 + 5MP dan kamera depan 32MP. HP ini juga hadir dengan kapasitas baterai 5000mAh. Samsung Galaxy A55 5G dirilis pada: 2024.',
      price: 7999000,
      imageUrl: 'https://images.samsung.com/is/image/samsung/assets/id/smartphones/galaxy-s24-ultra/buy/01_S24Ultra-Group-KV_PC_0527_final.jpg?imbypass=true',
    ),

  ];
  
  // Method untuk format Rupiah
  String formatRupiah(double price) {
    final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');
    return formatCurrency.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(
              product.imageUrl,
              width: 150,  // Atur lebar gambar
              height: 150, // Atur tinggi gambar
              fit: BoxFit.cover,
            ),
            title: Text(product.name),
            subtitle: Text(formatRupiah(product.price)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
