  import 'package:flutter/material.dart';

SnackBar show_snack_bar( {required String message}) {
    return SnackBar(
            content: Row(
              children: [
                const Icon(Icons.check_circle_rounded, color: Colors.white),
                const SizedBox(width: 12),
                 Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            backgroundColor: message == 'Note added successfully' ? const Color(0xFF00C853) : Colors.red, // لون أخضر داكن وأنيق
            behavior:
                SnackBarBehavior.floating, // يجعل الـ SnackBar عائماً للأعلى
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // زوايا دائرية ناعمة
            ),
            margin: const EdgeInsets.all(16), // مسافة من حواف الشاشة
            duration: const Duration(seconds: 3), // مدة ظهور الرسالة
          );
  }

