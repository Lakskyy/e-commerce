import 'package:flutter/material.dart';
import 'detail_screen.dart';

// Daftar produk dengan detailnya
final List<Map<String, String>> products = [
  {
    'title': 'Kopi Bali',
    'description': 'This is the description of Product 1.',
    'image': 'assets/images/product1.jpg',
  },
  {
    'title': 'Kopi Hatungun',
    'description': 'This is the description of Product 2.',
    'image': 'assets/images/product2.jpg',
  },
  {
    'title': 'Minuman Energy',
    'description': 'This is the description of Product 3.',
    'image': 'assets/images/product3.jpg',
  },
  {
    'title': 'Produk Kecantikan',
    'description': 'This is the description of Product 4.',
    'image': 'assets/images/product4.jpg',
  },
  {
    'title': 'Makanan',
    'description': 'This is the description of Product 5.',
    'image': 'assets/images/product5.jpg',
  },
];

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: () {
              // Implement filter functionality if needed
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length, // Menggunakan length dari products
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              products[index]['image']!, // Menampilkan gambar produk
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(products[index]['title']!), // Menampilkan judul produk
            subtitle: Text(products[index]['description']!), // Menampilkan deskripsi produk
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.thumb_up_alt_outlined),
                SizedBox(width: 10),
                Icon(Icons.comment_outlined),
              ],
            ),
            onTap: () {
              // Navigasi ke DetailScreen dengan parameter produk
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    title: products[index]['title']!, // Kirimkan title
                    description: products[index]['description']!, // Kirimkan description
                    imagePath: products[index]['image']!, // Kirimkan imagePath
                  ),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
