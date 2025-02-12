import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../place/place_model.dart';
import 'detail_screen.dart';
import '../style/app_styles.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback toggleDarkMode;  // Accept the toggleDarkMode function

  HomeScreen({required this.toggleDarkMode});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Place> _places = [
    // Hardcoded list of places (same as before)
    Place(
      id: 0,
      name: 'HSTU',
      description:
      'Hajee Mohammad Danesh Science & Technology University (HSTU) is a public university in Dinajpur, Bangladesh. Established in 1999, it is the first science and technology university in northern Bangladesh. HSTU offers undergraduate and postgraduate programs in engineering, agriculture, business, and applied sciences. Known for its research and academic excellence, the university plays a key role in advancing education and technology in the region.',
      image: 'images/hstu.jpg',
      lat: 25.6952,
      lng: 88.6520,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 1,
      name: 'Kantaji Temple',
      description:
      'Kantaji Temple, also known as Kantanagar Temple, is a stunning 18th-century Hindu temple located in Dinajpur, Bangladesh. Built by Maharaja Pran Nath in 1752, it is famous for its exquisite terracotta artwork depicting scenes from Hindu epics like the Ramayana and Mahabharata. The temple, dedicated to Lord Krishna, originally had a nine-tiered tower, which was damaged by an earthquake in the 19th century. Despite this, it remains one of the finest examples of Bengal’s temple architecture, attracting visitors for its intricate designs and historical significance.',
      image: 'images/kantaji_temple.jpg',
      lat: 25.7904,
      lng: 88.6667,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 2,
      name: 'Nayabad Mosque',
      description:
      'Nayabad Mosque is an 18th-century mosque located in Nayabad village, near Kantaji Temple in Dinajpur, Bangladesh. Built in 1793 during the reign of Mughal Emperor Shah Alam II, it is believed to have been constructed by Muslim artisans who worked on the nearby Kantaji Temple. The mosque features three domes, four corner towers, and intricate terracotta decorations. Surrounded by scenic landscapes, Nayabad Mosque is a significant historical and architectural site, reflecting the rich cultural heritage of the region.',
      image: 'images/Nayabad_Mosque.jpg',
      lat: 25.7819,
      lng: 88.6587,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 3,
      name: 'Ramsagar National Park',
      description:
      'Ramsagar National Park is a popular tourist destination in Dinajpur, Bangladesh, centered around Ramsagar, the largest man-made lake in the country. The lake was dug during the reign of Raja Ram Nath in the 18th century to provide water for the local people. Surrounded by lush greenery, the park is home to diverse flora and fauna, including various bird species, deer, and monkeys. It is a great spot for picnics, boating, and nature walks, attracting visitors for its scenic beauty and historical significance.',
      image: 'images/ramsagar.jpg',
      lat: 25.5517,
      lng: 88.6217,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 4,
      name: 'Dinajpur Rajbari',
      description:
      'Dinajpur Rajbari is a historic palace located in Dinajpur, Bangladesh. It was the residence of the Dinajpur royal family and showcases a blend of Mughal and European architectural styles. Though now in ruins, the palace complex once featured grand halls, intricate carvings, and beautiful courtyards. Notable structures within the complex include the main palace, temple, and gateways. Despite its dilapidated state, Dinajpur Rajbari remains a significant cultural and historical landmark, attracting visitors interested in Bengal’s royal heritage.',
      image: 'images/rajbari.jpg',
      lat: 25.6459,
      lng: 88.6560,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 5,
      name: 'Sukhsagar',
      description:
      'Sukhsagar is a historic man-made pond located in Dinajpur, Bangladesh. It was excavated by Raja Sukhdev, a local ruler, to provide water for the people. Covering a vast area, Sukhsagar is known for its serene beauty and cultural significance. The pond, surrounded by lush greenery, serves as a popular spot for visitors looking to relax or explore the historical heritage of the region. It is often mentioned alongside other historic water bodies like Ramsagar, highlighting the legacy of ancient water management systems in Bengal.',
      image: 'images/shuk_shagor.jpg',
      lat: 25.6471,
      lng: 88.6597,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 6,
      name: 'Shopnopuri',
      description:
      'Shopnopuri is a popular artificial amusement park located in Dinajpur, Bangladesh. It is a beautiful recreational spot featuring scenic landscapes, artificial lakes, rides, and picnic areas. The park offers a variety of attractions, including statues, mini zoos, and boat rides, making it a perfect destination for family outings and leisure activities. Visitors can enjoy the serene environment and entertainment facilities while exploring its well-maintained green spaces.',
      image: 'images/shopnopuri.jpg',
      lat: 25.4296,
      lng: 89.1456,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 7,
      name: 'Gore Shahid Minar',
      description:
      'Gore Shahid Minar is a historical monument located in the city of Mymensingh, Bangladesh. It is dedicated to the memory of those who lost their lives in the language movement of 1952. The monument symbolizes the sacrifices made by the people of Bangladesh in their fight for the recognition of the Bengali language as one of the official languages of the country. The Gore Shahid Minar stands as a tribute to the martyrs and a reminder of the struggle for linguistic and cultural rights. It is an important symbol of national pride and heritage in Bangladesh.',
      image: 'images/boromath.jpg',
      lat: 25.6218,
      lng: 88.6333,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 8,
      name: 'Jibon Mohol',
      description:
      'Jibon Mohol, also known as the "Palace of Life," is a historical building located in Mymensingh, Bangladesh. It was built in the early 20th century by a wealthy landowner, and it stands as an architectural masterpiece reflecting the grandeur and luxury of that era. The building is famous for its intricate design and beautiful craftsmanship, with a blend of traditional and colonial architectural styles.',
      image: 'images/jibonmahal.png',
      lat: 25.6319,
      lng: 88.6133,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 9,
      name: 'The Grand Dadu Bari Park & Resort',
      description:
      'The Grand Dadu Bari Park & Resort is a popular recreational destination in Mymensingh, Bangladesh. Set in a scenic location, it offers lush greenery, gardens, and various recreational activities like boating and picnicking. The resort provides comfortable accommodations and is ideal for family outings, events, and relaxation, making it a favorite spot for both locals and tourists.',
      image: 'images/daduBari.jpg',
      lat: 25.7166,
      lng: 88.6544,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 10,
      name: 'Singra National Park',
      description:
      'Singra National Park is a beautiful and biodiverse wildlife sanctuary located in the northern part of Bangladesh. Known for its rich flora and fauna, the park is a haven for nature lovers and wildlife enthusiasts. It is home to a variety of species, including tigers, deer, and numerous bird species. The park also features dense forests, rivers, and wetlands, making it a picturesque and tranquil escape for visitors. Singra National Park plays an important role in the conservation of Bangladesh natural heritage and is a popular spot for eco-tourism.',
      image: 'images/singraNationalPark.jpg',
      lat: 25.8895,
      lng: 88.5638,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 11,
      name: 'Dinajpur Zero Point',
      description:
      'Dinajpur Zero Point is a prominent landmark located in Dinajpur, a district in northern Bangladesh. It serves as a major intersection and entry point to the city, connecting several roads and highways. The area is known for its bustling atmosphere, with a variety of shops, restaurants, and businesses in the vicinity. It is a key commercial and transportation hub in Dinajpur, often visited by both locals and travelers. Zero Point also holds cultural significance as a meeting place for people, and its often considered a starting point for exploring the city and nearby attractions.',
      image: 'images/zeroPoint.jpg',
      lat: 25.6207,
      lng: 88.6344,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 12,
      name: 'Sitakot Vihara',
      description:
      'Sitakot Vihara is a historic Buddhist archaeological site located in the Dinajpur district of northern Bangladesh. It is believed to date back to the Pala period (8th–12th century AD), making it an important site for Buddhist heritage. The vihara (monastery) is situated near the banks of the river Atrai and was once a thriving center for Buddhist learning and meditation. Excavations at the site have revealed various ruins, including terracotta plaques, sculptures, and inscriptions, which offer insight into the religious and cultural practices of the time. Sitakot Vihara holds significance for both history enthusiasts and those interested in exploring ancient Buddhist art and architecture.',
      image: 'images/sitaKot.jpg',
      lat: 25.2451,
      lng: 88.0306,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 13,
      name: 'Barapukuria Coal Mine',
      description:
      'Barapukuria Coal Mine is a significant coal mining project located in the Dinajpur district of northern Bangladesh. It is the only active coal mine in the country, and it plays a crucial role in supplying coal for power generation. The mine, which operates at a depth of around 120 to 200 meters, has an estimated coal reserve of over 300 million tons. The coal extracted from Barapukuria is primarily used in the Barapukuria Thermal Power Plant to generate electricity, contributing to Bangladesh energy sector.',
      image: 'images/koilaKhoni.webp',
      lat: 25.6365,
      lng: 88.6363,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    Place(
      id: 14,
      name: 'Ashurar Bil',
      description:
      'Ashurar Bil is a natural water body located in the Dinajpur district of Bangladesh. It is a large pond, known for its scenic beauty and serene surroundings, making it a popular spot for both locals and tourists. The area around Ashurar Bil is surrounded by lush greenery, which enhances its tranquil and peaceful atmosphere. It is a place often visited for relaxation, bird watching, and enjoying nature.',
      image: 'images/ashurarBil.webp',
      lat: 25.6365,
      lng: 88.6363,
      policePhone: '999',
      fireServicePhone: '888',
    ),

    Place(
      id: 15,
      name: 'Kuril Bil',
      description:
      'Kuril Bil is a large water body located in the Dinajpur district of Bangladesh. It is known for its scenic beauty and peaceful environment, offering a natural escape for visitors. The pond is surrounded by lush greenery, making it a popular spot for locals who enjoy the serene surroundings and tranquil waters.Kuril Bil is also an important resource for the local community, providing water for agriculture and supporting a variety of wildlife. Its calm and scenic landscape makes it a great place for relaxation, fishing, and enjoying the natural beauty of the area. The area around the pond is often used for walking, picnics, and other recreational activities, contributing to its reputation as a peaceful retreat in the region.',
      image: 'images/kurilbul.jpg',
      lat: 25.6365,
      lng: 88.6363,
      policePhone: '999',
      fireServicePhone: '888',
    ),
    // Other places ...
  ];

  List<Place> _filteredPlaces = [];
  final TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _filteredPlaces = _places; // Initialize filtered places with all places
  }

  void _searchPlaces(String query) {
    setState(() {
      _filteredPlaces = _places
          .where((place) =>
      place.name.toLowerCase().contains(query.toLowerCase()) ||
          place.description.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget _buildSearchBar() {
    // Determine whether the current theme is dark
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextField(
        controller: _searchController,
        onChanged: _searchPlaces,
        style: TextStyle(
          color: isDark ? Colors.black : Colors.black, // Text color black in both themes
        ),
        decoration: InputDecoration(
          hintText: 'Search Places...',
          hintStyle: TextStyle(
            color: isDark ? Colors.white70 : Colors.black54, // Hint text color for dark mode
          ),
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: isDark ? Colors.grey[800] : Colors.grey[200], // Off-white for dark mode
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Determine whether the current theme is dark
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 4,
        title: Text(
          'Dinajpur Tourism',
          style: AppStyles.appBarTitleStyle,
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: AppStyles.primaryGradient,
            boxShadow: [AppStyles.appBarShadow],
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Transform.scale(
              scale: 0.6, // Adjust this value to scale the switch size
              child: Switch(
                value: isDark,
                onChanged: (value) {
                  widget.toggleDarkMode();
                },
                activeColor: AppStyles.accentColor, // Thumb color when active
                activeTrackColor: AppStyles.accentColor.withOpacity(0.5),
                inactiveThumbColor: Colors.white,
                inactiveTrackColor: Colors.grey[400],
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          _buildSearchBar(),      // <-- Search bar below the app bar
          _buildTopImageSlider(),
          Expanded(child: _buildPlaceList()),
        ],
      ),
    );
  }

  Widget _buildTopImageSlider() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Column(
        children: [
          CarouselSlider(
            items: _places.map((place) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: AppStyles.carouselPadding,
                    child: ClipRRect(
                      borderRadius: AppStyles.defaultBorderRadius,
                      child: Image.asset(
                        place.image,
                        width: double.infinity,
                        height: AppStyles.carouselHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: AppStyles.carouselHeight,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 900),
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: AppStyles.carouselViewportFraction,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _places.map((place) {
              int index = _places.indexOf(place);
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? AppStyles.primaryColor
                      : AppStyles.secondaryColor,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceList() {
    return _filteredPlaces.isEmpty
        ? Center(
      child: Text(
        'No places found.',
        style: AppStyles.noPlacesFoundStyle,
      ),
    )
        : ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 10),
      itemCount: _filteredPlaces.length,
      itemBuilder: (context, index) {
        final place = _filteredPlaces[index];
        return PlaceCard(place: place);
      },
    );
  }
}

class PlaceCard extends StatefulWidget {
  final Place place;

  const PlaceCard({required this.place});

  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  bool _isHovered = false;

  void _navigateToDetailScreen(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DetailScreen(place: widget.place),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;
          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  Widget _buildPlaceImage() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: Image.asset(
        widget.place.image,
        height: 180,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isHovered ? 1.02 : 1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GestureDetector(
            onTap: () => _navigateToDetailScreen(context),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: AppStyles.primaryColor.withOpacity(0.1),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: isDark
                        ? LinearGradient(
                      colors: [
                        Colors.grey.shade800,
                        Colors.grey.shade900
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                        : AppStyles.cardGradient,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image with Gradient Overlay
                      Stack(
                        children: [
                          _buildPlaceImage(),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.6),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.place.name,
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 6,
                                        offset: Offset(1, 1),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: List.generate(
                                    5,
                                        (index) => Icon(
                                      Icons.star,
                                      color: AppStyles.accentColor,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Content Section
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.place.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                color: isDark
                                    ? Colors.white70
                                    : Colors.grey.shade700,
                                height: 1.5,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: AppStyles.accentColor,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Dinajpur, Bangladesh',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: isDark
                                        ? Colors.white60
                                        : Colors.grey.shade600,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: AppStyles.accentColor
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 6),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.explore,
                                        color: AppStyles.accentColor,
                                        size: 16,
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        'Explore',
                                        style: GoogleFonts.poppins(
                                          color: AppStyles.accentColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
