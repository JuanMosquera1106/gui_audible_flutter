import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Jumbotron Section
          Container(
            padding: EdgeInsets.all(32),
            color: Colors.grey[200],
            child: Column(
              children: [
                Text(
                  'Bienvenido a Audible',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Descubre una amplia selección de audiolibros en nuestra plataforma. Explora nuestras categorías y encuentra tus próximas historias favoritas.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Acción de registro
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text('Registrarse'),
                ),
              ],
            ),
          ),
          // Categories Section
          Container(
            padding: EdgeInsets.all(32),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Promotional Image
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://juanmosquera1106.github.io/Imagenes-Audible/Audilble_Inicio.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 16),
                // Categories List
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Categorías Destacadas',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      _buildCategoryItem(
                        'https://juanmosquera1106.github.io/Imagenes-Audible/Ficcion.jpg',
                        'Ficción',
                      ),
                      _buildCategoryItem(
                        'https://juanmosquera1106.github.io/Imagenes-Audible/NoFiccion.jpg',
                        'No Ficción',
                      ),
                      _buildCategoryItem(
                        'https://juanmosquera1106.github.io/Imagenes-Audible/Negocios.jpg',
                        'Negocios',
                      ),
                      _buildCategoryItem(
                        'https://juanmosquera1106.github.io/Imagenes-Audible/Autoayuda.jpg',
                        'Autoayuda',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String imageUrl, String categoryName) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            height: 100, // Aumentar el tamaño de la imagen
            width: 100, // Aumentar el tamaño de la imagen
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Text(
            categoryName,
            style: TextStyle(
              fontSize: 18,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
