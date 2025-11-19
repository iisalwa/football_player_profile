import 'package:flutter/material.dart';

class Player {
  final String name;
  final int number;
  final String position;
  final String club;
  final String nationality;
  final int age;
  final String height;
  final int games;
  final int goals;
  final int assists;
  final double rating;
  final Color primaryColor;
  final Color secondaryColor;
  final String imageUrl;

  const Player({
    required this.name,
    required this.number,
    required this.position,
    required this.club,
    required this.nationality,
    required this.age,
    required this.height,
    required this.games,
    required this.goals,
    required this.assists,
    required this.rating,
    required this.primaryColor,
    required this.secondaryColor,
    required this.imageUrl,
  });
}

/// Demo data
const List<Player> demoPlayers = [
  Player(
    name: 'Mohamed Salah',
    number: 11,
    position: 'Right Winger',
    club: 'Liverpool',
    nationality: 'Egypt',
    age: 33,
    height: '1.75 m',
    games: 312,
    goals: 190,
    assists: 89,
    rating: 8.9,
    primaryColor: Color(0xFF7f1d1d),
    secondaryColor: Color(0xFFef4444),
    imageUrl:
        'https://backend.liverpoolfc.com/sites/default/files/styles/lg/public/2025-09/mohamed-salah-2025-26-body-shot-straight_1eed4e039fbd8ced5f98958fdf8b6235.webp?itok=ZRY1_Xr6',
  ),
  Player(
    name: 'Erling Haaland',
    number: 7,
    position: 'Forward',
    club: 'Manchester City',
    nationality: 'Norway',
    age: 25,
    height: '1.95 m',
    games: 108,
    goals: 99,
    assists: 17,
    rating: 9.1,
    primaryColor: Color(0xFF1e40af),
    secondaryColor: Color(0xFF3b82f6),
    imageUrl:
        'https://img.uefa.com/imgml/TP/players/1/2026/cutoff/250103758.webp',
  ),
  Player(
    name: 'Bukayo Saka',
    number: 7,
    position: 'Forward',
    club: 'Arsenal',
    nationality: 'England',
    age: 24,
    height: '1.78 m',
    games: 204,
    goals: 54,
    assists: 45,
    rating: 8.5,
    primaryColor: Color.fromRGBO(17, 52, 118, 1),
    secondaryColor: Color.fromRGBO(236, 0, 36, 1),
    imageUrl:
        'https://img.uefa.com/imgml/TP/players/1/2026/cutoff/250106939.webp',
  ),
];
