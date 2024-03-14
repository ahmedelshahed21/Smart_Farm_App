import 'package:flutter/material.dart';

void customSnackBar(BuildContext context,String message){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.black.withOpacity(0.8),
          //elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          duration: const Duration(seconds: 1),
          content: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.warning_amber_rounded,
                  color: Colors.yellow,
                  size: 32,
                ),
                Text(message,
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 18,
                    //fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          )
      )
  );
}