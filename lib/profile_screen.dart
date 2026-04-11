
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F4F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
           
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 28,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 56,
                      backgroundColor: const Color(0xFFD0D5DD),
                      child: ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/men/32.jpg',
                          width: 112,
                          height: 112,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Name
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 4),

                    // Title
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6B7280),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Bio
                    const Text(
                      'Passionate about creating user-friendly and engaing digital experiences.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF6B7280),
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 16),

                    const Divider(color: Color(0xFFE5E7EB)),
                    const SizedBox(height: 12),

                    // Email
                    Row(
                      children: const [
                        Icon(Icons.email_outlined,
                            size: 18, color: Color(0xFF374151)),
                        SizedBox(width: 10),
                        Text(
                          'john.doe@example.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF374151),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Phone
                    Row(
                      children: const [
                        Icon(Icons.phone_outlined,
                            size: 18, color: Color(0xFF374151)),
                        SizedBox(width: 10),
                        Text(
                          '+123 456 7890',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF374151),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Buttons
                    Row(
                      children: [
                        // Follow
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2563EB),
                              foregroundColor: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5),
                            ),
                            child: const Text(
                              'Follow',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),

                        // Message
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: const Color(0xFF374151),
                              side: const BorderSide(
                                  color: Color(0xFFD1D5DB), width: 1.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5),
                            ),
                            child: const Text(
                              'Message',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ── Interests Section ──
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                 
                  
                ),
                child: Column(
                  children: [
                    // Section Title with dividers
                    Row(
                      children: const [
                        Expanded(child: Divider(color: Color(0xFFE5E7EB))),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'Interests',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1A1A2E),
                            ),
                          ),
                        ),
                        Expanded(child: Divider(color: Color(0xFFE5E7EB))),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Interest Cards Row
                    Row(
                      children: [
                        Expanded(
                          child: _InterestCard(
                            imageUrl:
                                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400',
                            title: 'Travel',
                            description:
                                'Exploring new places around the world',
                            onViewMore: () {},
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _InterestCard(
                            imageUrl:
                                'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=400',
                            title: 'Photography',
                            description:
                                'Capturing moments through the lens',
                            onViewMore: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _InterestCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onViewMore;

  const _InterestCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onViewMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE5E7EB)),
      ),
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                imageUrl,
                height: 110,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  height: 110,
                  color: const Color(0xFFE5E7EB),
                  child: const Icon(Icons.image, color: Colors.grey),
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
        
            
            Container(
              height: 30,
              width: double.infinity,
              decoration:  BoxDecoration(
               color: const Color.fromARGB(255, 197, 197, 197),
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: const Color.fromARGB(22, 0, 0, 0)),
              ),
              
              child:  Center(
                child: Text(
                  'View More',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.blue
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}