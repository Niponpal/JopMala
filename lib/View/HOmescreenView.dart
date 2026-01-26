import 'package:flutter/material.dart';

class HOmescreenView extends StatefulWidget {
  const HOmescreenView({super.key});

  @override
  State<HOmescreenView> createState() => _HOmescreenViewState();
}

class _HOmescreenViewState extends State<HOmescreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F5F0), // warm off-white / light sandalwood
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade700,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        centerTitle: true,
        title: const Text(
          "জয় শ্রী কৃষ্ণ চৈতন্য প্রভু নিত্যানন্দ",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 16),

            // Mantra - more elegant font & spacing
            const Text(
              "জয় শ্রী কৃষ্ণ চৈতন্য প্রভু নিত্যানন্দ । শ্রী অদ্বৈত গদাধর শ্রীবাসাদি গৌর ভক্তবৃন্দ ।।",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrangeAccent,
                height: 1.32,
                letterSpacing: 0.4,
              ),
            ),
            const SizedBox(height: 12),

            const Text(
              "হরে কৃষ্ণ হরে কৃষ্ণ, কৃষ্ণ কৃষ্ণ হরে হরে, হরে রাম হরে রাম",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                height: 1.4,
                letterSpacing: 0.6,
              ),
            ),

            const SizedBox(height: 40),

            // Stats – cleaner neumorphic cards, better proportion
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Active (left)
                _buildStatCard(
                  number: '01',
                  label: 'Active',
                  baseColor: Colors.deepOrange.shade50,
                  accentColor: Colors.deepOrange.shade700,
                ),
                const SizedBox(width: 40),
                // Total (right)
                _buildStatCard(
                  number: '108',
                  label: 'Total',
                  baseColor: Colors.amber.shade50,
                  accentColor: Colors.amber.shade800,
                ),
              ],
            ),

            const Spacer(),

            // Modern elevated button with gradient
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your counter logic here later
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 64,
                    vertical: 18,
                  ),
                  backgroundColor: Colors.deepOrange.shade600,
                  foregroundColor: Colors.white,
                  elevation: 8,
                  shadowColor: Colors.deepOrange.withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: const Text(
                  "Count",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required String number,
    required String label,
    required Color baseColor,
    required Color accentColor,
  }) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [baseColor, baseColor.withOpacity(0.85)],
        ),
        border: Border.all(
          color: accentColor.withOpacity(0.5),
          width: 3.5,
        ),
        boxShadow: [
          // outer soft shadow
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(6, 10),
            spreadRadius: 2,
          ),
          // inner highlight
          BoxShadow(
            color: Colors.white.withOpacity(0.9),
            blurRadius: 12,
            offset: const Offset(-6, -6),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              number,
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.w900,
                color: accentColor,
                height: 1.0,
                letterSpacing: -2.0,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: accentColor.withOpacity(0.85),
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}