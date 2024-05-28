import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  final Widget child;

  LayoutPage({required this.child});

  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int nroProductos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Image.network(
              'https://juanmosquera1106.github.io/Imagenes-Audible/aubible_logo.png',
              height: 40,
              width: 40,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Icon(Icons.error, size: 40, color: Colors.white);
              },
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                }
              },
            ),
            SizedBox(width: 10),
            Text(
              'Audible - Gestión',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/cart');
                  },
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 20,
                      minHeight: 20,
                    ),
                    child: Text(
                      '$nroProductos',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Image.network(
                      'https://juanmosquera1106.github.io/Imagenes-Audible/aubible_logo.png',
                      height: 80,
                      width: 80,
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return Icon(Icons.error, size: 80, color: Colors.white);
                      },
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        }
                      },
                    ),
                    Text(
                      'Audible - Gestión',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Inicio', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
              ExpansionTile(
                leading: Icon(Icons.edit, color: Colors.white),
                title: Text('CRUD', style: TextStyle(color: Colors.white)),
                children: <Widget>[
                  ListTile(
                    title:
                        Text('Clientes', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/clientes');
                    },
                  ),
                  ListTile(
                    title:
                        Text('Audios', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/audios');
                    },
                  ),
                  ListTile(
                    title: Text('Suscripciones',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/suscripciones');
                    },
                  ),
                  ListTile(
                    title: Text('Pagos', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/pagos');
                    },
                  ),
                  ListTile(
                    title:
                        Text('Planes', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/planes');
                    },
                  ),
                  ListTile(
                    title:
                        Text('Escuchas', style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/escuchas');
                    },
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.assessment, color: Colors.white),
                title:
                    Text('Resultados', style: TextStyle(color: Colors.white)),
                children: <Widget>[
                  ListTile(
                    title: Text('Pagos Usuarios',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/pagos_usuarios');
                    },
                  ),
                  ListTile(
                    title: Text('Audios más escuchados',
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      Navigator.of(context).pushNamed('/audios_mas_escuchados');
                    },
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.white),
                title: Text('Suscríbete Ahora',
                    style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.of(context).pushNamed('/suscribete');
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.white),
                title: Row(
                  children: [
                    Text('Carrito', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 5),
                    Icon(Icons.shopping_cart, color: Colors.white),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('/cart');
                },
              ),
            ],
          ),
        ),
      ),
      body: widget.child,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 50,
          child: Center(
            child: Text(
              '© ${DateTime.now().year} - Audible. Todos los derechos reservados.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
