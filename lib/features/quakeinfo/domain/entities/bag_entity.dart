import 'package:floor/floor.dart';

@entity
class BagEntity {
  @primaryKey
  final int id;
  final String title;
  final String description;
  final bool isCompleted;

  BagEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });
}

final List<BagEntity> bagList = [
  BagEntity(
    id: 1,
    title: "Fener",
    description:
        "Afet durumunda kentlerin büyük bir kısmında elektrik kesintisi yaşanır. Afet sırasında ellerin kullanılması gerekeceğinden, çantanızda kafa feneri bulunması yararlı olacaktır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 2,
    title: "Radyo",
    description:
        "Televizyon ya da GSM gibi sistemlerde sorun yaşanabileceği için iletişim için radyodan yararlanılabilir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 3,
    title: "Pil",
    description:
        "Radyo, fener ve diğer elektronik aletler için çantada pil bulundurulması gerekir. Eriyip bozulabilecekleri için kullanılmadığı sürece piller radyo ve fener içerisinde bırakılmamalıdır. Son olarak her cihaz için kullanılabilecek sayının iki katı kadar pil çantada bulundurulmalıdır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 4,
    title: "Çok amaçlı çakı",
    description:
        "Kesme, birleştirme, vidalama ve açma gibi işlemlerde kullanabileceğiniz çok amaçlı çakılar, acil durum ya da afetlerden sonra ilk 72 saatte ihtiyaç duyulacak birçok işlemin yapılabilmesine yardımcı olacaktır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 5,
    title: "İş eldiveni",
    description:
        "Çadır kurarken, afet sonrasında yardıma ihtiyacı olanlarla ilgilenirken veya herhangi başka bir işlemi yaparken ellerin zarar görmesi olasıdır. İş eldivenleri, afet sonrası yapılacak işlemler sırasında ellerin zarar görmesini engeller ve güvenle çalışılmasını sağlar.",
    isCompleted: false,
  ),
  BagEntity(
    id: 6,
    title: "Kibrit ya da çakmak",
    description:
        " Bir şeyleri ya da kişinin bedenini ısıtmak için ateş kaynağına ihtiyacı olabilir. Böyle bir durumda kolayca ateş yakılabilmesi için çanta içerisinde kibrit ya da çakmak bulunmalıdır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 7,
    title: "Toz maskesi",
    description:
        "Deprem gibi afetlerden sonra meydana gelen yıkımlar nedeniyle kentler tozla kaplanır. Toz hem akciğerlere zarar verir hem de görüşü kısıtlar ve toplanma alanına ulaşımı zorlaştırır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 8,
    title: "Not defteri",
    description:
        "Bir şeyleri not etmek, önemli numaraları kaydetmek veya daha farklı bir zorunlu sebeple deftere ihtiyaç duyulabilir. Ayrıca acil durum öncesinde, kullanılabilecek iletişim bilgileri bu not defterine eklenmelidir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 9,
    title: "Tükenmez kalem",
    description:
        "Not alırken zorlanmamak için çanta içerisinde tükenmez kalem bulundurulması gerekir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 10,
    title: "Evrak dosyası",
    description:
        "Pasaport, özel sağlık sigortası ve diğer kıymetli evrakı koruyabilmek için evrak dosyası çanta içerisinde bulunmalıdır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 11,
    title: "İlaçlar",
    description:
        "Düzenli olarak kullanılan ilaçların acil durum çantasında bulundurulması gerekir. Kanser, şeker, epilepsi ya da diğer kronik rahatsızlıkları bulunan kişiler için çantada ilaçların yedeğinin bulundurulması özellikle önerilir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 12,
    title: "Battaniye",
    description:
        "Geceleri birçok ilimizde hava sıcaklıkları önemli ölçüde düşmektedir. Bu nedenle çanta içerisinde mutlaka battaniye bulunması önerilir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 13,
    title: "Kıyafet",
    description:
        "Mevsime uygun kıyafetler çantaya eklenmelidir. Her mevsim geçişinde kıyafetler yeniden kontrol edilip değiştirilmelidir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 14,
    title: "İp",
    description:
        "Afet ya da acil durumlardan sonra çadır kurmak ve eşya taşırken malzemeleri birbirine bağlamak için ipe ihtiyaç duyulabilir. Bu nedenle çantaya mutlaka dayanıklı bir ip eklenmesi önerilir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 15,
    title: "Protezler",
    description:
        "Görme engelli bastonu gibi küçük protezler çantaya eklenmelidir. Omurilik felçliler gibi protezi daha büyük olan engel grupları için ise acil durum çantasının lokasyonuna yakın noktaya kolay taşınabilen protez modellerinin yedek olarak koyulması önerilir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 16,
    title: "Yiyecek",
    description:
        "Tok tutacak, yüksek enerji verecek, şeker dengesini bozmayacak ve fazla susatmayacak türde kuru gıdalar çantaya eklenmelidir. Yiyeceklerin en az 72 saat yetebilecek kadar olması gerekir. Ayrıca yiyeceklerin son kullanma tarihi düzenli olarak kontrol edilmelidir. Son olarak, bebeği olan kişilerin mama gibi uygun gıda maddelerini bulundurması önerilir. Evcil hayvan sahipleri can dostlarının ihtiyaçlarını da unutmamalıdır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 17,
    title: "Su",
    description:
        "Çantada en az 1 litre su bulundurulmalıdır. Hatta çantada yer varsa daha da fazla su eklenebilir.",
    isCompleted: false,
  ),
  BagEntity(
    id: 18,
    title: "Düdük",
    description:
        "Afet ya da acil durumlarda kişilerin iletişim kurması güçleşir. Özellikle ulaşım sırasında yüksek sesle bağırıp uyarı vermek yerine düdük çalmak daha az efor sarf edilmesini sağlar. Bu nedenle acil durum çantası içerisinde mutlaka düdük olmalıdır.",
    isCompleted: false,
  ),
  BagEntity(
    id: 19,
    title: "İlk yardım çantası",
    description:
        "İlk 72 saatte ihtiyaç duyulabilecek her türlü ilk yardım malzemesini içerecek ufak ilk yardım çantaları, acil durum çantasının içerisine yerleştirilmelidir.",
    isCompleted: false,
  ),
];
