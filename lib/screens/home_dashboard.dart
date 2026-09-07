import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  // JGARM brand colors
  static const Color jgarmBlue = Color(0xFF42A5F5);
  static const Color jgarmSkyBlue = Color(0xFF81D4FA);
  static const Color jgarmDarkBlue = Color(0xFF1565C0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FC),

      // --------------------------------------------------
      // APP BAR
      // --------------------------------------------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: jgarmBlue,
        foregroundColor: Colors.white,

        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'JGARM Church Family',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The Fire of the Gospel Ablaze',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(
            tooltip: 'Notifications',
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // Notifications will be connected later.
            },
          ),

          IconButton(
            tooltip: 'Profile',
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              // Profile will be connected later.
            },
          ),

          const SizedBox(width: 6),
        ],
      ),

      // --------------------------------------------------
      // DASHBOARD BODY
      // --------------------------------------------------
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ------------------------------------------------
              // WELCOME CARD
              // ------------------------------------------------
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      jgarmBlue,
                      jgarmDarkBlue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.20),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.18),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.church,
                        color: Colors.white,
                        size: 34,
                      ),
                    ),

                    const SizedBox(width: 16),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to JGARM!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Together in faith, love and service.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ------------------------------------------------
              // QUICK ACCESS TITLE
              // ------------------------------------------------
              const Text(
                'Quick Access',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17324D),
                ),
              ),

              const SizedBox(height: 14),

              // ------------------------------------------------
              // QUICK ACCESS GRID
              // ------------------------------------------------
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1.45,
                children: [
                  _quickAccessCard(
                    icon: Icons.menu_book_rounded,
                    title: 'Sermons',
                    subtitle: 'Listen & grow',
                    onTap: () {
                      _showComingSoon(context, 'Sermons');
                    },
                  ),

                  _quickAccessCard(
                    icon: Icons.event_rounded,
                    title: 'Events',
                    subtitle: 'Church activities',
                    onTap: () {
                      _showComingSoon(context, 'Events');
                    },
                  ),

                  _quickAccessCard(
                    icon: Icons.volunteer_activism_rounded,
                    title: 'Prayer',
                    subtitle: 'Share a prayer request',
                    onTap: () {
                      _showComingSoon(context, 'Prayer Requests');
                    },
                  ),

                  _quickAccessCard(
                    icon: Icons.favorite_rounded,
                    title: 'Giving',
                    subtitle: 'Give to the ministry',
                    onTap: () {
                      _showComingSoon(context, 'Giving');
                    },
                  ),

                  _quickAccessCard(
                    icon: Icons.home_work_rounded,
                    title: 'Grace Home',
                    subtitle: 'Children Centre',
                    onTap: () {
                      _showComingSoon(
                        context,
                        'Grace Home Children Centre',
                      );
                    },
                  ),

                  _quickAccessCard(
                    icon: Icons.people_alt_rounded,
                    title: 'Church Family',
                    subtitle: 'Members & community',
                    onTap: () {
                      _showComingSoon(context, 'Church Family');
                    },
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // ------------------------------------------------
              // UPCOMING EVENT
              // ------------------------------------------------
              const Text(
                'Upcoming',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17324D),
                ),
              ),

              const SizedBox(height: 12),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: jgarmSkyBlue.withOpacity(0.45),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: jgarmSkyBlue.withOpacity(0.25),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.calendar_month_rounded,
                        color: jgarmDarkBlue,
                        size: 30,
                      ),
                    ),

                    const SizedBox(width: 14),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sunday Worship Service',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF17324D),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Come and worship with the JGARM family.',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 17,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // ------------------------------------------------
              // ANNOUNCEMENTS
              // ------------------------------------------------
              const Text(
                'Announcements',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF17324D),
                ),
              ),

              const SizedBox(height: 12),

              _announcementCard(
                context,
                icon: Icons.campaign_rounded,
                title: 'Welcome to the JGARM Family App',
                message:
                    'Stay connected with church services, events, prayer and ministry activities.',
              ),

              const SizedBox(height: 10),

              _announcementCard(
                context,
                icon: Icons.local_fire_department_rounded,
                title: 'The Fire of the Gospel Ablaze',
                message:
                    'Let us continue spreading the Gospel and making disciples.',
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // MOTTO
              // ------------------------------------------------
              Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.local_fire_department,
                      color: jgarmBlue,
                      size: 30,
                    ),

                    const SizedBox(height: 6),

                    Text(
                      'THE FIRE OF THE GOSPEL ABLAZE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: jgarmDarkBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'Jesus Grace And Restoration Ministry',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // --------------------------------------------------
      // BOTTOM NAVIGATION
      // --------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: jgarmDarkBlue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 10,

        onTap: (index) {
          if (index == 0) {
            return;
          }

          if (index == 1) {
            _showComingSoon(context, 'Sermons');
          }

          if (index == 2) {
            _showComingSoon(context, 'Events');
          }

          if (index == 3) {
            _showComingSoon(context, 'Profile');
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'Sermons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_rounded),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // --------------------------------------------------
  // QUICK ACCESS CARD
  // --------------------------------------------------
  Widget _quickAccessCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(17),
      elevation: 1.5,
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: jgarmSkyBlue.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Icon(
                  icon,
                  color: jgarmDarkBlue,
                  size: 27,
                ),
              ),

              const SizedBox(width: 11),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF17324D),
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      subtitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --------------------------------------------------
  // ANNOUNCEMENT CARD
  // --------------------------------------------------
  Widget _announcementCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String message,
  }) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          _showComingSoon(context, 'Announcements');
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: jgarmSkyBlue.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: jgarmDarkBlue,
                  size: 23,
                ),
              ),

              const SizedBox(width: 13),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF17324D),
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      message,
                      style: const TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --------------------------------------------------
  // TEMPORARY MESSAGE
  // --------------------------------------------------
  static void _showComingSoon(
    BuildContext context,
    String feature,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '$feature will be connected soon.',
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
