import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Controller
class HomeController extends GetxController {
  // Use a Map to track the favorite status of each item by ID
  var favorites = <int, bool>{}.obs;

  // Toggle the favorite status for a specific item
  void toggleFavorite(int itemId) {
    favorites[itemId] = !(favorites[itemId] ?? false);
  }

  // Check if an item is favorite
  bool isFavorite(int itemId) => favorites[itemId] ?? false;

  int selectedIndex = 0;
  int selectedIndexB = 0;

  void changebottem(int index) {
    selectedIndexB = index;
    update();

    // التنقل حسب الاختيار
    switch (selectedIndexB) {
      case 0:
        Get.offNamed("/HomePage");
        break;
      case 1:
        Get.offNamed("/TrainPscreen");
        break;
      case 2:
        Get.offNamed("/ChatScren");
        break;
      case 3:
        Get.offNamed("/TrainPscreen");
        break;
      case 4:
        Get.offNamed("/TrainPscreen");
        break;
    }
  }

  void changeTab(int index) {
    selectedIndex = index;
    update(); // Notify GetX to update the UI
  }
}

class HomePage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF0F2027),
            elevation: 0,
            title: Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("حياك الله, نجمنا",
                      style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pro.webp'),
                  ),
                ],
              ),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0F2027),
                  Color(0xFF203A43),
                  Color(0xFF2C5364)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Category Tabs

                  // Carousel Widget
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("شخصيات مختارة لك",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 260.0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 500),
                      viewportFraction: 0.8,
                    ),
                    items: [
                      StoryCard(
                        imageUrl: 'assets/images/cars1.png',
                        title: 'قصة كوفية',
                        description: '...',
                      ),
                      StoryCard(
                        imageUrl: 'assets/images/CARS2.png',
                        title: 'أبو الطيب',
                        description: '...',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("نتائج اختبارك",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("عرض الكل",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircularWidget(
                          percentage: 63,
                          label: "نسبة اتقان سمة\nالحزن",
                          color: Colors.blue,
                          size: 100, // حجم الدائرة
                        ),
                        CircularWidget(
                          percentage: 80,
                          label: "نسبة اتقان سمة\nالفرح",
                          color: Colors.green,
                          size: 100, // حجم أكبر للدائرة
                        ),
                        CircularWidget(
                          percentage: 75,
                          label: "نسبة اتقان سمة\nالغضب",
                          color: const Color.fromARGB(255, 65, 0, 245),
                          size: 100, // حجم أكبر للدائرة
                        ),
                        CircularWidget(
                          percentage: 75,
                          label: "نسبة اتقان تعابير \nالوجه",
                          color: Colors.red,
                          size: 100, // حجم أكبر
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("التدريبات المقترحة لك",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("عرض الكل",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard(
                          icon: Icons.theater_comedy, // أيقونة للفرح
                          label: "تحسين سمة الفرح",
                        ),
                        CustomCard(
                          icon: Icons.sports_kabaddi, // أيقونة للغضب
                          label: "تحسين سمة الغضب",
                        ),
                        CustomCard(
                          icon: Icons.face_rounded, // أيقونة للغضب
                          label: "تحسين سمة الحزن",
                        ),
                        CustomCard(
                          icon: Icons.face_5_rounded, // أيقونة للغضب
                          label: "تحسين التعبيرات",
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/chat");
                    },
                    child: Container(
                      margin: EdgeInsets.all(13),
                      width: 100,
                      height: 150,
                      child: Image.asset(
                        "assets/images/chatbot.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  // ... Rest of your widgets
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("الفرص التمثيلية",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("عرض الكل",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ExpandableRoleCard(
                          title: "دور درامي في مسرحية تاريخية",
                          subtitle: "المطلوب",
                          requirement: "شخص واحد",
                          details: "هذه التفاصيل الإضافية عن الدور.",
                        ),
                        ExpandableRoleCard(
                          title: "دور كوميدي في عرض حصري",
                          subtitle: "المطلوب",
                          requirement: "3 أشخاص",
                          details: "تفاصيل إضافية عن العرض الكوميدي.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: GetBuilder<HomeController>(
            builder: (_) => BottomNavigationBar(
              backgroundColor: Color(0xFF0F2027),
              currentIndex: controller.selectedIndexB,
              onTap: (index) => controller.changebottem(index),
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: "الرئيسية"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.theater_comedy), label: "دوراتي"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat, size: 40), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.group), label: "فرصي"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "حسابي"),
              ],
              selectedItemColor: Color.fromARGB(255, 255, 255, 255),
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  CategoryTab(
      {required this.title, this.isActive = false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Chip(
          label: Text(
            title,
            style:
                TextStyle(color: isActive ? Colors.white : Color(0xFF1C274C)),
          ),
          backgroundColor: isActive ? Color(0xFF1C274C) : Colors.grey[200],
        ),
      ),
    );
  }
}

// Section Header Widget
class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Story Card Widget
class StoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  StoryCard(
      {required this.imageUrl, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        width: 300,
        height: 300,
        padding: EdgeInsets.all(1),
        margin: const EdgeInsets.all(4.0),
        child: Container(
          height: 250,
          width: double.infinity,
          child: Image.asset(imageUrl,
              height: 150, width: double.infinity, fit: BoxFit.fill),
        ));
  }
}

// Personality Card Widget
class PersonalityCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  PersonalityCard({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        width: 200,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              height: 150,
              width: 200,
              child: Image.asset(imageUrl, fit: BoxFit.fill),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Recent Activity Card Widget
Widget buildCustomCard({
  required String title,
  required String cat,
  required String title1,
  required String description,
  required Color titleColor,
  required Color backgroundColor,
}) {
  return Container(
    width: 200,
    height: 220,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title section
            Row(
              children: [
                Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/Bi1.png"))
              ],
            ),

            const SizedBox(height: 8),
            // Description section
            Text(
              title1,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),

            // Description section
            Text(
              description,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                // Date section
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    cat,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

// Article Card Widget
class ArticleCard extends StatelessWidget {
  final String category;
  final String title;
  final String description;
  final String imageUrl;

  ArticleCard(
      {required this.category,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Image.asset(imageUrl, height: 60, width: 60, fit: BoxFit.cover),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(category, style: TextStyle(color: Colors.blue)),
                    SizedBox(width: 8),
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 4),
                Text(description, maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widgets for each component
class QuoteCard extends StatelessWidget {
  final String quote;
  final String author;
  final List<Color> gradientColors;
  final double t1;
  final double l1;
  final double r1;
  final double b1;
  final String net1;

  const QuoteCard({
    Key? key,
    required this.quote,
    required this.author,
    required this.gradientColors,
    required this.t1,
    required this.l1,
    required this.r1,
    required this.b1,
    required this.net1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
        ),
        Positioned(
          top: 40,
          left: 10,
          right: 10,
          child: Text(
            quote,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                height: 1.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 145,
          right: 180,
          child: Container(
            height: 25,
            width: 22,
            decoration: BoxDecoration(
                color: const Color.fromARGB(70, 255, 255, 255),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  author,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.book, color: Colors.white70, size: 18),
              ],
            ),
          ),
        ),
        Positioned(
            top: t1,
            left: l1,
            right: r1,
            bottom: b1,
            child: Container(
              height: 40,
              width: 80,
              child: Image.asset(
                net1,
                fit: BoxFit.fill,
              ),
            )),
      ],
    );
  }
}

class CircularWidget extends StatefulWidget {
  final int percentage;
  final String label;
  final Color color;
  final double size; // خاصية جديدة لحجم الدائرة

  const CircularWidget({
    super.key,
    required this.percentage,
    required this.label,
    required this.color,
    required this.size,
  });

  @override
  State<CircularWidget> createState() => _CircularWidgetState();
}

class _CircularWidgetState extends State<CircularWidget> {
  Color? animatedColor;

  @override
  void initState() {
    super.initState();
    animatedColor = widget.color; // اللون الأولي
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              // تغيير اللون عند النقر
              setState(() {
                animatedColor = animatedColor == widget.color
                    ? Colors.purple // لون مختلف عند النقر
                    : widget.color;
              });
            },
            child: TweenAnimationBuilder<Color?>(
              tween: ColorTween(begin: widget.color, end: animatedColor),
              duration: const Duration(seconds: 1), // مدة الانتقال
              builder: (context, color, child) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: widget.size, // استخدام الحجم المخصص
                      height: widget.size,
                      child: CircularProgressIndicator(
                        value: widget.percentage / 100, // نسبة الدائرة
                        strokeWidth: 8,
                        backgroundColor: Colors.grey[800],
                        valueColor: AlwaysStoppedAnimation<Color>(color!),
                      ),
                    ),
                    Text(
                      "${widget.percentage}%",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const CustomCard({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160, // عرض الكرت
        height: 140, // ارتفاع الكرت
        decoration: BoxDecoration(
          color: Color(0xFF0F2027),
          borderRadius: BorderRadius.circular(15), // حواف دائرية
          border: Border.all(
            color: Colors.white54, // لون الإطار
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white, // لون الأيقونة
            ),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableRoleCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String requirement;
  final String details;

  const ExpandableRoleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.requirement,
    required this.details,
  });

  @override
  State<ExpandableRoleCard> createState() => _ExpandableRoleCardState();
}

class _ExpandableRoleCardState extends State<ExpandableRoleCard> {
  bool _isExpanded = false; // للتحكم في حالة التوسع

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded; // عكس حالة التوسع عند النقر
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300), // مدة الحركة
          curve: Curves.easeInOut, // منحنى الحركة
          width: _isExpanded ? 260 : 230, // العرض يتغير
          height: _isExpanded ? 260 : 230, // الطول يتغير
          decoration: BoxDecoration(
            color: Color(0xFF0F2027),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white24,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
                size: 40,
                color: Colors.white,
              ),
              const SizedBox(height: 12),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.subtitle,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                widget.requirement,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 16),
              if (_isExpanded) // يظهر التفاصيل فقط إذا تم التوسع
                Text(
                  widget.details,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "قراءة المتطلبات والتقديم",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
