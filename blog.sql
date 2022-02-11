-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 17:54
-- Версия сервера: 8.0.19
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `message`, `user_id`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet.', 1, 1, '2022-02-07 13:21:53', '2022-02-07 13:21:53'),
(2, 'Ajoyib platforma bo`libdi, ishlaringizga omad.', 2, 1, '2022-02-07 13:24:10', '2022-02-07 13:24:10'),
(3, 'Rossiya hamda Xitoy birga bo`lsa Amerika hattoki NATO ham qo`rqadi.', 3, 7, '2022-02-07 13:29:49', '2022-02-07 13:29:49'),
(4, 'Assalamu aleykum, lorem ipsum o`zi nima degani?', 3, 1, '2022-02-07 13:32:38', '2022-02-07 13:32:38'),
(5, 'Har bir kasbni o`z ustasi bo`lsa, milliardlab pul topishi mumkin.', 3, 6, '2022-02-07 13:40:11', '2022-02-07 13:40:11'),
(6, 'To`g`ri etasiz Ibrohim, men ham shu fikrdaman.', 1, 7, '2022-02-07 14:31:24', '2022-02-07 14:31:24');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2019_08_19_000000_create_failed_jobs_table', 1),
(35, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(36, '2022_01_23_195334_create_news_table', 1),
(37, '2022_01_24_142309_create_comments_table', 1),
(38, '2022_01_24_210442_create_admins_table', 1),
(39, '2022_01_26_120021_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `content`, `text`, `view_count`, `created_at`, `updated_at`) VALUES
(1, '1644237309.jpg', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 2, '2022-02-07 12:35:09', '2022-02-07 13:24:12'),
(2, '1644237409.jpg', 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text from lorem.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, '2022-02-07 12:36:49', '2022-02-07 12:36:49'),
(3, '1644238623.jpg', '1914 story by Rackham', 'But I must explain to you how all this mistaken idea of denouncing pleasure.', '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 1, '2022-02-07 12:38:09', '2022-02-07 12:57:03'),
(4, '1644238764.jpg', 'The standard Lorem Ipsum', 'At vero eos et accusamus et iusto odio dignissimos ducimus lorem ipsum', '\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"', 0, '2022-02-07 12:40:41', '2022-02-07 12:59:24'),
(5, '1644238818.jpg', 'Mashinalar narxi oshdi', 'Qimmatlashayotgan avtomobillar, sudlanayotgan “kino vaziri”', 'Milliardlarni “yutib yuborgan” UzAuto Motors, blogerlar qahriga uchragan vazir, haydovchilarga ogohlik qo‘ng‘irog‘i, Andijonda yonayotgan tungi gulxanlar va 33 kunga “kechikkan” Firdavs Abduxoliqov. Kun.uz yakunlangan hafta dayjestini taqdim etadi.Kun.uz yangi videorukn – hafta mavzulari dayjestini taqdim etadi. Haftaliklarimizda yakunlanayotgan yetti kunlikning eng asosiy mavzulari haqida fikr yuritamiz, ro‘y berayotgan voqea-hodisalar haqida o‘z sub’yektiv fikrlarimizni ham bildirib o‘tamiz. \r\n\r\nVa albatta, biz tilga olgan mavzular bo‘yicha fikrlaringizni izohlarda kutib qolamiz.Fevralning birinchi haftasi ortda qolyapti hamki, 1 fevraldan kontraktatsiyani tiklashni va’da qilgan UzAuto Motors\'dan hamon darak yo‘q. Kompaniya eng xaridorgir mashinalar uchun shartnoma tuzishni qachondan boshlashi noma’lumligicha qolyapti.Monopol korxona hech qanday izoh bergani yo‘q. Buning o‘rniga, masalan, Ukraina politsiyasiga Cobalt yetkazib berganini aytib maqtanyapti. Bu Cobalt\'larning magnitolasi bor-yo‘qligi noma’lum.\r\n\r\nYangi mashinalar uchun shartnoma tuzish bundan salkam 50 kun oldin to‘xtatilgan edi. Qishga yaqin avtomobili uchun pul to‘lab qo‘ygan, lekin navbati kelishini kutayotganlar soni 90 mingga yaqinlashgandi. Mikrochiplar muammosi rostdan ham bor, lekin ana shu sharoitda UzAuto Motors\'ning chorasiz o‘zbekistonliklarga nisbatan munosabatini ko‘rsatadigan birgina faktga e’tibor qarating:\r\n\r\nKompaniya 2021 yilda avtomobil ishlab chiqarishni 16 foizga kamaytirgan, lekin eksportni 36 foizga oshirgan. Avvalgi yillardagi raqamlarni qo‘shsa, bu farq yanayam oshadi, chunki UzAuto Motors eksportni yildan yilga oshiryapti. Shu monopoliya peshonasiga bitgan o‘zbekistonliklar esa yarim yillab navbat kutishda davom etyapti.', 1, '2022-02-07 12:44:29', '2022-02-07 13:00:18'),
(6, '1644238082.jpg', 'Millioner sartarosh', 'Biznesmenga aylangan sartarosh - Brohouse qanday va qachon ochilgandi?', 'Avtohalokat tufayli oyoqlari ma’lum vaqt harakatlanmay qolgan, shifokorlar yurib ketishiga umid bildirmagan sartaroshning mashaqqatli hayot yo‘li va biznesdagi muvaffaqiyati – “Biznes klass”ning yangi soni mavzusi. Qahramonimiz – Brohouse brendi asoschisi Akmal Ahrorxo‘jayev.\r\n\r\nLoyiha davomida juda ko‘p tadbirkorlarning ishlari bilan tanishamiz, foyda-zararni ko‘rib chiqamiz, hikoyalarga quloq tutamiz. Bu galgi ko‘rsatuvimiz qahramoni bilan muloqot qilib o‘zimiz uchun ham juda katta ma’lumot va taassurot oldik. Bir qarashda oddiygina hunar —  sartaroshlikni yetarli darajada biznesga aylantira olgan, yaqin kunlarda yangi filiallar ochishni reja qilib turgan brend bilan yaqindan tanishdik.\r\n\r\nToshkent shahrining “Milliy bog‘” metro bekati yaqinida joylashgan, Brohouse erkaklar saloni asoschisi Akmal Ahrorxo‘jayev, bolalik yillari, avtohalokat tufayli yurolmay qolgani, sinovlardan matonat bilan o‘tib kelayotgani haqida gapirib berdi: “Bolaligimda onam, jarroh bo‘lishimni xohlardilar, otam esa “O‘g‘lim biron bir kursining egasi bo‘ladi” derdilar. O‘zim esa san’atkor bo‘lishni orzu qilardim. Ammo otam san’atkor bo‘lishimga qarshi bo‘lganlar, shundan so‘ng men sartaroshlik kasbini tanladim. Buni qarangki, tanlagan kasbim bilan, qaysidir ma’noda birvarakayiga uchta insonning orzusini amalga oshirdim. Hozir bir emas, bir necha kursining egasiman, jarrohlar qaychi ishlatgani kabi, men ham har kuni qaychi ishlataman, bemorlarim esa soch oldirishga kelgan mijozlarim. San’atga qiziqishimga keladigan bo‘lsak, juda ko‘p san’atkorlar bilan birga ishlashga to‘g‘ri keladi. Ular bilan turli xil konsert dasturlari va bayram tadbirlarida birga ishlayman”, — deydi qahramonimiz.\r\n\r\nAvtohalokat sabab Akmal Ahrorxo‘jayevning oyoqlari bir yilcha butkul harakatlanmay qoladi. Endigina stilistlik ishlari yurisha boshlagan qahramonimiz ruhiy tushkunlikka tushib, qanday qaror qabul qilish borasida boshi qotadi. Chunki Toshkentda bu jarrohlik amaliyotini amalga oshirishga imkon, Hindistonda esa ijobiy natijaga kafolat bo‘lmaydi. Voqelikning davomini muallif tilidan hikoya qildik.', 2, '2022-02-07 12:48:02', '2022-02-07 13:39:00'),
(7, '1644239705.jpg', 'Rossiya va Xitoy', 'Rossiya tan olinishini istamoqda, Putinning favqulodda faollashuvi nima bilan bog‘liqligi ma`lum bo`ldi', 'Juma kuni Rossiya prezidenti Vladimir Putin Pekindagi qishki Olimpiya o‘yinlarining ochilish marosimiga bordi. Rossiya yetakchisi bahonada Xitoy raisi Si Jinping bilan muzokara o‘tkazdi. Uchrashuv yakunlari bo‘yicha Rossiya va Xitoy yetakchilari qo‘shma bayonot berishdi. Unda «dunyo arenasida ozchilikni tashkil etadigan ba’zi kuchlar»ga nisbatan keskin fikrlar bor.\r\n\r\nBu «kichik davlatlar» haqida ochiqchasiga aytilmagan, ammo Rossiya va Xitoy NATOning kengayishiga qarshi ekanini bildirgan. Putin uchun o‘tgan hafta juda faol bo‘ldi. U Yevropa, Osiyo va Lotin Amerikasining ko‘plab yetakchilari bilan muloqot o‘tkazdi.\r\n\r\nBu Ukraina inqirozi atrofidagi diplomatik faollikmi? Putin Rossiyani xalqaro miqyosda yakkalatish imkonsiz ekaniga ishora sifatida shunday qilyaptimi? VVS bu borada g‘arblik va rossiyalik siyosatshunoslar fikri bilan qiziqdi.\r\n\r\nOxirgi haftada Putin Fransiya prezidenti Emmanuel Makron bilan uch marta telefonda gaplashdi. Ularda Rossiyaning NATOga talablari muhokama qilingan. Putin shuningdek, Italiya bosh vaziri Mario Dragi, Britaniya bosh vaziri Boris Jonson bilan gaplashdi, Kremlda Argentina prezidenti Alberto Fernandes va Vengriya bosh vaziri Viktor Orbanni qabul qildi.\r\n\r\nGermaniya kansleri Olaf Shols va Braziliya prezidenti Jair Bolsonaru Moskvaga tashrif bilan kelishga tayyorlanmoqda. Putin va Erdo‘g‘an o‘rtasida ham uchrashuv o‘tkazilishi mumkin.', 10, '2022-02-07 12:50:22', '2022-02-07 14:31:26'),
(8, '1644239607.jpg', 'Yunusobod hokimi', 'Prezident Yunusobod hokimi nega ishdan olinganini aytib o`tdi', 'Yunusobod tuman hokimi Jahongir Ibrohimov daraxt ekish rejasini bajarmagani uchun ishdan ketgan. Bu haqda prezident faoliyatiga oid «Menimcha» teleloyihasida aytildi.\r\n\r\nKo‘rsatuvda prezident ishtirokidagi 2 fevral kungi videoselektor yig‘ilishidan lavhalar ko‘rsatildi. Shavkat Mirziyoyev daraxt ekish ishlariga sovuqqonlik bilan qarayotganlarni tanqid qildi. Prezidentning aytishicha, Yunusobod tuman hokimi kuzgi daraxt ekish rejasini bajarmagan.\r\n\r\n«Yunusobod kuz mavsumida 20 mingdan ortiq mevali daraxt ekish rejasini bor-yo‘g‘i 43 foizga bajargani uchun tuman hokimi ishdan olindi», dedi prezident. Shavkat Mirziyoyev bu iste’fo qolganlarga o‘rnak bo‘lishi kerakligini aytdi.\r\n\r\nMa’lumot uchun, 24 yanvar kuni Jahongir Ibrohimov o‘rniga Bahodir Abdullayev Toshkent shahri Yunusobod tuman hokimi etib tayinlangandi.\r\nEslatib o‘tamiz, 2 fevraldagi selektor ekologiya masalalariga bag‘ishlangan bo‘lib, unda davlat rahbari “Yashil yillik” umummilliy tadbirini e’lon qilgandi.', 10, '2022-02-07 13:04:41', '2022-02-07 14:34:21'),
(9, '1644239423.jpg', 'Toshkent metrosi', '5-fevral kuni Toshkent metrosida yana poyezd to‘xtab qoldi', '5 fevral oqshomida Toshkent metrosi poyezdi “Xalqlar do‘stligi” va “Milliy bog‘” bekatlari oralig‘ida to‘xtab qoldi. Internetda hodisa video va suratlari tarqaldi.\r\n\r\nMetropoliten ma’muriyati bergan axborotga ko‘ra, hodisaga texnik nosozlik sabab bo‘lgan. Bu vaqtda mashinist kerakli chora-tadbir qo‘llab, harakat tarkibi “Milliy bog‘” bekatiga olib kelingan va barcha yo‘lovchilar bekatga tushirilgan.\r\n\r\nUshbu poyezdga yordam ko‘rsatish maqsadida keyingi navbatda harakatlanayotgan poyezd ham yo‘lovchilarni “Milliy bog‘” bekatida qoldirgan va ta’mir uchun “Chilonzor” elektrdeposiga yo‘naltirilgan.\r\n\r\n14 yanvar kuni metroning “Turkiston” bekatida, 23 dekabrda esa “Kosmonavtlar” bekatida vagonlardan biri tutab ketgan edi.\r\n\r\nMamlakatdagi eng xavfsiz transport sanaladigan Toshkent metrosida birgina 2021 yil davomida o‘ndan ortiq ko‘ngilsiz hodisalar ro‘y bergan edi. Mas’ullar metro yo‘lovchilari soni 1 yil ichida 1,5 barobarga oshgani, shunga qaramay vagonlar tarkibining katta qismi eski ekani, ular bosqichma-bosqich yangilab borilayotganini aytadi.\r\n“Texnik nosozlik sabab yuzaga kelgan noqulayliklar uchun uzr so‘raymiz”, deyiladi rasmiy axborotda.\r\n\r\nHodisa guvohlaridan biri Xurshid Qodirov Facebook\'dagi sahifasida shunday yozgan.', 4, '2022-02-07 13:10:23', '2022-02-07 14:30:03');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-02-07 12:07:51', '2022-02-07 12:07:51'),
(2, 'user', 'web', '2022-02-07 12:08:22', '2022-02-07 12:08:22');

-- --------------------------------------------------------

--
-- Структура таблицы `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '1644235761.jpg', NULL, '$2y$10$U8jaXadvL.yv3PP3fh8zx.TN2c85fkU5mMegA8ZuzWO3U389YIV9W', '1', 'dVmlcBZ7eHS9xqqEMnFinwq95C2SVRCCBuIZG2VvEL3RoerKByWQjsBRKqyI', '2022-02-07 12:09:22', '2022-02-07 12:09:22'),
(2, 'Ibrohimjon', 'ibrohimabbosov657@gmail.com', '1644236109.jpg', NULL, '$2y$10$sFtbsHGAIyw8ni1vqCnrYO4UbaedCjAZyEiV9Qhn9kFWZQuNHlbbG', NULL, 'nJhb5R3qCxf8sxqDE5tXuOeA54KZzmN4c9DoKuJ8khwCoaRK1dp4QvLyyxDE', '2022-02-07 12:15:09', '2022-02-07 12:15:09'),
(3, 'Ibrohim', 'ibrohimabbosov757@gmail.com', '1644240499.png', NULL, '$2y$10$L3HsvsPF/B5S8f4Vf6TDI.JQjGuIT4DOPqmIVWuImTLN9dzzts2gO', NULL, NULL, '2022-02-07 13:28:20', '2022-02-07 13:28:20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_news_id_foreign` (`news_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Индексы таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
