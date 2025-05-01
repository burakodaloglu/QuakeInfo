import 'package:floor/floor.dart';
import 'package:flutter/material.dart';

@entity
class InfoEntity {
  @primaryKey
  final int id;
  final String title;
  final String description;
  final int icon;

  InfoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });
}

final List<InfoEntity> infoList = [
  InfoEntity(
    id: 1,
    title: 'Sakin Kal',
    description: 'Panik yapma. Derin nefes alarak durumunu değerlendir.',
    icon: Icons.self_improvement.codePoint,
  ),
  InfoEntity(
    id: 2,
    title: 'Çök - Kapan - Tutun',
    description: 'Sağlam bir eşyanın altına gir, başını ve enseni koru.',
    icon: Icons.security.codePoint,
  ),
  InfoEntity(
    id: 3,
    title: 'Pencerelerden Uzak Dur',
    description: 'Camlar kırılabilir, yaralanmaları önlemek için uzak dur.',
    icon: Icons.window.codePoint,
  ),
  InfoEntity(
    id: 4,
    title: 'Asansör Kullanma',
    description: 'Asansörler deprem anında risklidir, kullanma.',
    icon: Icons.elevator.codePoint,
  ),
  InfoEntity(
    id: 5,
    title: 'Açık Alanda Kal',
    description: 'Bina dışındaysan; bina, direk ve ağaçlardan uzak dur.',
    icon: Icons.nature_people.codePoint,
  ),
  InfoEntity(
    id: 6,
    title: 'Deprem Bitince Kontrollü Çık',
    description: 'Sarsıntı geçince hızlı değil, dikkatli şekilde çıkış yap.',
    icon: Icons.exit_to_app.codePoint,
  ),
  InfoEntity(
    id: 7,
    title: 'Yaralılara Yardım Et',
    description: 'Mümkünse ilk yardım uygulayarak destek ol. Yetkililere haber ver.',
    icon: Icons.medical_services.codePoint,
  ),
  InfoEntity(
    id: 8,
    title: 'Doğru Bilgi Kaynağı Kullan',
    description: 'AFAD, radyo ve resmi açıklamaları takip et.',
    icon: Icons.info.codePoint,
  ),
];
