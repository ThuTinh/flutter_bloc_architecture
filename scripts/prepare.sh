#!/bin/bash

echo "----------------Flutter clean-------------------"
flutter clean
echo "------------------Completed---------------------"
echo "------------------------------------------------"
echo "-------------Flutter get packages---------------"
flutter pub get
echo "------------------Completed---------------------"
echo "------------------------------------------------"
echo "---------------Build app icon-------------------"
flutter pub run flutter_launcher_icons:main
echo "------------------Completed---------------------"
echo "------------------------------------------------"
echo "-------------Build splash screen----------------"
flutter pub run flutter_native_splash:create
echo "---------------------Done-----------------------"
