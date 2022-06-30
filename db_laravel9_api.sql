-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 12:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel9_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(2, '220617 NCT Dream Fansign', 'Jeno choose 5y.o Jaemin rather than 5 Jaemins', NULL, NULL),
(3, '220617 NCT Dream Fansign', 'Jeno choose 5y.o Jaemin rather than 5 Jaemins', NULL, NULL),
(4, '220617 NCT Dream Fansign', 'Jeno choose 5y.o Jaemin rather than 5 Jaemins', NULL, NULL),
(5, '2020 Enquete 20 - #JENO & #JAEMIN Answers', '- Has the same preferences as you the most: JN→JM, JM→JN\r\n- Want to take a walk with on a late night: JN→JM\r\n- Had a unique first impression to you: JM→JN\r\n- Will look the cutest if he became 5yo again: JM→JN\r\n- Laughs the most: JM→JN', NULL, NULL),
(6, '220616 fansign #JENO', ': how many points would you give if you were to rate yourself on the beatbox stages?\r\n👑: i think i\'ll give it 63pts\r\n: what? why!\r\n👑: i couldn\'t prepare properly this time so there are a lot of things that i find regretful\r\n: then i\'ll give you 95pts!\r\n👑: oh~', NULL, NULL),
(7, '220616', 'at the beginning of the fansign when they did a brief ment, #JENO asked if they\'ve eaten. OP made an ❌ sign with their hands. JENO looked at the sign & made the same ❌ as if he was asking back, so OP made a ⭕ & JENO made a motion of hitting the desk when he saw it 😂', NULL, NULL),
(8, '220616 fansign', 'OP asked #JAEMIN about his favorite fancam and he said it\'s that \'make a wish\' fancam with silver hair and his belly slightly peeking out 😂 OP said that fancam and \'universe\' fancam are OP\'s one tops and he said he read all the comments on that fancam too! +', NULL, NULL),
(9, 'Just Do It Ep.1', 'Shooting Gun', NULL, NULL),
(10, '220618 Just Do It Ep. 4', 'Just Do It Boxing Sport', NULL, NULL),
(11, '220618 Just Do It Ep. 4', 'Just Do It Boxing Sport will be released this month', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_15_193417_create_posts_table', 1),
(6, '2022_06_16_012941_create_artikel_table', 2),
(7, '2022_06_16_222247_create_post_table', 3),
(8, '2022_06_18_175628_create_posts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `date`, `source`, `source_id`, `created_at`, `updated_at`) VALUES
(3, 'https://pbs.twimg.com/media/FVdkHrLagAEd81G?format=jpg&name=large', 'Jaemin Beatbox 🏝🐰💜', '🏝🐰💜\r\n\r\n#JAEMIN\r\n#NCTDREAM #Beatbox\r\n#NCTDREAM_Beatbox', '2022-06-17', 'https://twitter.com/NCTsmtown_DREAM/status/1537807895282487296', 1, '2022-06-18 14:39:24', '2022-06-18 22:58:49'),
(4, 'https://pbs.twimg.com/media/FVdjY5bagAAaEfo?format=jpg&name=large', 'Jeno Beatbox 📻🐶💚', '📻🐶💚\r\n\r\n#JENO\r\n#NCTDREAM #Beatbox\r\n#NCTDREAM_Beatbox', '2022-06-17', 'https://twitter.com/NCTsmtown_DREAM/status/1537807095797411840', 1, '2022-06-18 19:51:34', '2022-06-18 23:40:55'),
(5, 'https://pbs.twimg.com/media/Dc6fqo6VQAUEf0M?format=jpg&name=4096x4096', 'NCT Dream Twitter Update', '여러분 ~ 오늘 많이 응원 해주셔서 고마워용!!!! 고성 너무너무 이뻤어요 ㅋㅋㅋ\r\n-러러', '2018-05-11', 'https://twitter.com/NCTsmtown_DREAM/status/994908316403814400', 1, '2022-06-18 21:57:06', '2022-06-18 22:59:27'),
(6, 'https://pbs.twimg.com/media/DhkMbq0U0AAdW7Q?format=jpg&name=medium', 'NCT Dream Twitter Update', '나녕하세요~ 귀염깜찍한 시즈니여러분들~💚 나나에요😍 즐거운주말보내시고 있나요? 날씨도 좋은데 야외활동도 좋을것 같아요~ 헤헤😜 그래서 드림00즈 들도 기분좋게 놀러갔었어요~ 근뎅 여러분은 어떤 야외활동이 제일좋아요? 궁금궁금!!🧐\r\n#시즈니는뭐할까? #밥은먹었나요? #야외활동 추천해줘요😘', '2018-07-08', 'https://twitter.com/NCTsmtown_DREAM/status/1015856878423687168', 1, '2022-06-18 22:00:33', '2022-06-18 22:59:22'),
(7, 'https://pbs.twimg.com/media/DoLvIbCU8AAMQwN?format=jpg&name=medium', 'NCT Dream Twitter Update NCT Dream Show', '여러분 오늘 슬로건 진짜루 감동 받았어요 TAT 오늘 처음 공연이였는데 많이 응원해줘서 진짜 고마워요 ㅎㅎ 우리 계속 만나요 약속~!! 도장꾸~~욱 -젠\r\n\r\n#NCTDREAM #NCT #NCT_DREAM_SHOW', '2018-09-28', 'https://twitter.com/NCTsmtown_DREAM/status/1045661007366868993', 1, '2022-06-18 22:14:33', '2022-06-18 22:59:13'),
(8, 'https://pbs.twimg.com/media/Dnx9P9yW0AAwsik?format=jpg&name=large', 'NCT Dream Twitter Update We Go Up', '💚We Go Up💚\r\n\r\n#NCT #NCTDREAM', '2018-09-23', 'https://twitter.com/NCTsmtown_DREAM/status/1043846950448115713', 1, '2022-06-18 22:15:38', '2022-06-18 22:59:08'),
(9, 'https://pbs.twimg.com/media/DnI3FkbUwAACqRL?format=jpg&name=large', 'NCT Twitter Update', '시즈니 🌱오늘도 감사하고 사랑해요💚❤️\r\n\r\n#NCT #NCTDREAM', '2018-09-15', 'https://twitter.com/NCTsmtown_DREAM/status/1040955043837435904', 1, '2022-06-18 22:16:54', '2022-06-18 22:59:03'),
(10, 'https://pbs.twimg.com/media/DmyoKEKUwAEaowd?format=jpg&name=large', 'NCT Dream Twitter Update Radio', '오늘 최파타 라디오 너무 재미있게했어요 ㅎㅎㅎ 담에 또 하고싶다 ㅋㅋ여러분 어땠나요?ㅋㅋㅋ-러러\r\n\r\n#NCT #NCTDREAM', '2018-09-11', 'https://twitter.com/NCTsmtown_DREAM/status/1039390513340735489', 1, '2022-06-18 22:18:15', '2022-06-18 22:58:58'),
(11, 'https://pbs.twimg.com/media/DmacDBnU4AA8GR5?format=jpg&name=medium', 'NCT Dream Twitter Update', '에이틴 잘보셨나요!! 우리 시즈니들💚 연기를 잘했나요??부족한면이 많았지만 봐주셔서 너무 감사해요😭😭 그런의미에서 셀카를 보여드릴께욤 ㅎ.ㅎ 내일도 화이팅하구 슬슬 기온 떨어지니까 감기조심하구용ㅠ.ㅠ 항상 사랑해요 시즈니들~~💚 -나나 \r\n\r\n#NCT #NCTDREAM', '2018-09-16', 'https://twitter.com/NCTsmtown_DREAM/status/1037688348607803392', 1, '2022-06-18 22:19:28', '2022-06-18 22:58:54'),
(12, 'https://pbs.twimg.com/media/DmaW4jzUUAE792n?format=jpg&name=large', 'NCT Dream Twitter Update A-Teen', '여러분 에이틴에 나온 재민이와 제노 보셨나요? 사실 처음으로 재민이랑 같이 연기하는거라서 많이 부끄럽긴한데 예쁘게 봐주셨으면 좋겠어요 ㅎㅎ-젠\r\n\r\n#NCT #NCTDREAM', '2018-09-06', 'https://twitter.com/NCTsmtown_DREAM/status/1037682676826697728', 1, '2022-06-18 22:20:37', '2022-06-18 22:58:05'),
(13, 'https://pbs.twimg.com/media/DmLB_NAU8AAP2kZ?format=jpg&name=large', 'NCT Dream Twitter Update We Go Up', '💚시즈니 사랑해요!!!!!💚\r\n\r\n#NCTDREAM \r\n#NCTDREAM_WeGoUp\r\n#WeGoUp_6시_음원공개', '2018-09-03', 'https://twitter.com/NCTsmtown_DREAM/status/1036604169564565504', 1, '2022-06-18 22:21:44', '2022-06-18 22:58:02'),
(14, 'https://pbs.twimg.com/media/DmIla_vU4AA1S0m.jpg', 'NCT Dream Twitter Update We Go Up', 'NCT DREAM ‘We Go Up’ \r\n#WeGoUp_6시음원_기릿!\r\n\r\nMusic Release ➫ 2018 09 03 6pm (KST) \r\n\r\n#NCTDREAM #NCTDREAM_WeGoUp #WeGoUp #WE_GO_UP\r\n\r\n #NCT', '2018-09-03', 'https://twitter.com/NCTsmtown_DREAM/status/1036448698945830912', 1, '2022-06-18 22:24:40', '2022-06-18 22:57:57'),
(15, 'https://pbs.twimg.com/media/DtlBF1-VAAALdwy?format=jpg&name=medium', 'NCT Dream Twitter Update NCT Dream Show', '저 오늘 제가 사랑하는 시즈니💚하구 사진 찍었어요 ٩(๑˃́ꇴ˂̀๑)و( ˘ ³˘)♡-나나가\r\n\r\n#NCT_DREAM_SHOW \r\n#NCTDREAM #NCT', '2018-12-04', 'https://twitter.com/NCTsmtown_DREAM/status/1069957964436430848', 1, '2022-06-18 22:25:55', '2022-06-18 22:57:49'),
(16, 'https://pbs.twimg.com/media/DtaWDOyU4AAIsub?format=jpg&name=large', 'NCT Dream Twitter Update NCT Dream Show', '‘지금 이 꿈을 기억해’ \r\n\r\n#NCT_DREAM_SHOW \r\n#NCTDREAM #NCT', '2018-12-02', 'https://twitter.com/NCTsmtown_DREAM/status/1069206962921861120', 1, '2022-06-18 22:48:51', '2022-06-18 23:41:00'),
(17, 'https://img.youtube.com/vi/I37wys6jxmE/sddefault.jpg', '[Un Cut] Take #1｜‘Beatbox’ MV Behind the Scene', '#NCTDREAM #MV #Behind\r\n[Un Cut] Take #1｜‘Beatbox’ MV Behind the Scene', '2022-06-14', 'https://www.youtube.com/embed/I37wys6jxmE', 2, '2022-06-18 23:40:25', '2022-06-18 23:59:51'),
(18, 'https://v-phinf.pstatic.net/20210413_167/1618309564261pJgzi_JPEG/a56244ef-9c41-11eb-8b55-48df379cc9e4_03.jpg', '7', '7', '2021-04-13', 'https://vlive.tv/embed/244737', 3, '2022-06-18 23:48:13', '2022-06-18 23:54:35'),
(19, 'https://pbs.twimg.com/media/DxP-S16VAAA28dr?format=jpg&name=large', 'NCT Dream Twitter Update SMTOWN CHILE', '#SMTOWN_CHILE 💚❤️\r\n#NCTDREAM #NCT', '2019-01-19', 'https://twitter.com/NCTsmtown_DREAM/status/1086491543333101568', 1, '2022-06-19 20:17:47', '2022-06-19 20:18:57'),
(20, 'https://pbs.twimg.com/media/DxJhtBRUUAAvYLf?format=jpg&name=medium', 'NCT Dream Twitter Update', '시즈니💚들~~~~ 나나 리허설 끝나구 숙소가구있어용( ˘ ³˘)♡\r\n\r\n#NCTDREAM #NCT', '2019-01-18', 'https://twitter.com/NCTsmtown_DREAM/status/1086037892265201664', 1, '2022-06-19 20:20:34', '2022-06-19 20:20:34'),
(21, 'https://pbs.twimg.com/media/Dy92h90U0AABOYi?format=jpg&name=large', 'NCT Dream Twitter Update K-pop Festival', '오늘 제노와 나나가 K-pop Festival 눈축제에서 영광이게도 엠씨를 맡게 되었어요 🥺 이렇게 큰축제에 엠씨를 맡게 되어서 영광이였고 우리 시즈니💚들이랑 좀더 많이 소통을 할수있어서 좋았어요 ㅎ.ㅎ 앞으로도 기회가 된다면 또 하고 싶어요 헤헤헤헤( ๑˃̶ ꇴ ˂̶)♪⁺ ありがとうございます😆', '2019-02-09', 'https://twitter.com/NCTsmtown_DREAM/status/1094223572661297157', 1, '2022-06-19 20:22:27', '2022-06-19 20:22:27'),
(22, 'https://pbs.twimg.com/media/D2G4425UwAAdTva?format=jpg&name=large', 'NCT Dream Twitter Update', '오랜만에 나나가 왔어용 (˃̶᷄‧̫ ˂̶᷅๑ )사랑하는 우리 시즈니💚여러분들~ 오늘의 나나에용~(˃᷄ꇴ˂᷅ ૂ๑) 우리 시즈니💚여러분들 못본지 한 100만년은 된것 같아요(´°̥̥̥̥̥̥̥̥ω°̥̥̥̥̥̥̥̥)\r\n저는 오늘 누군가의 특별한*을 축하해주고 왔어요 >.< 헤헿 (누구인지는 비밀)🤐', '2019-03-20', 'https://twitter.com/NCTsmtown_DREAM/status/1108370313769738240', 1, '2022-06-19 20:23:32', '2022-06-19 20:23:32'),
(23, 'https://pbs.twimg.com/media/D1dfIDXVYAAXLcV?format=jpg&name=medium', 'NCT Dream Twitter Update Malaysia', 'Malaysia \r\n✌️👍💚\r\n\r\n#NCT #NCTDREAM', '2019-03-12', 'https://twitter.com/NCTsmtown_DREAM/status/1105456835287343112', 1, '2022-06-19 20:24:34', '2022-06-19 20:24:34'),
(24, 'https://pbs.twimg.com/media/D1deXkNVYAA1cme?format=jpg&name=medium', 'NCT Dream Twitter Update', 'Malaysia 🌙🌙🌙\r\n\r\n#NCT #NCTDREAM', '2019-03-12', 'https://twitter.com/NCTsmtown_DREAM/status/1105456003452006400', 1, '2022-06-19 20:25:37', '2022-06-19 20:25:37'),
(25, 'https://pbs.twimg.com/media/D0u2KyhVYAAG5hH?format=jpg&name=medium', 'NCT Dream Twitter Update', '어제 슈퍼주니어 형들 콘서트 갔다가온 나나💚 요즘 시즈니💚들 보고싶다아....˚‧º·(˚ ˃̣̣̥᷄⌓˂̣̣̥᷅ )‧º·˚\r\n\r\n#NCT #NCTDREAM', '2019-03-03', 'https://twitter.com/NCTsmtown_DREAM/status/1102174838355947526', 1, '2022-06-19 20:27:11', '2022-06-19 20:27:11'),
(26, 'https://pbs.twimg.com/media/D5Uk-48UYAA5lfW?format=jpg&name=medium', 'NCT Dream Twitter Update PUFF Save Me', '#NCT #NCTDREAM\r\n#PUFF #나를구해줘', '2019-04-29', 'https://twitter.com/NCTsmtown_DREAM/status/1122844373702430721', 1, '2022-06-19 20:33:41', '2022-06-19 20:33:41'),
(27, 'https://pbs.twimg.com/media/D5KAmF7UEAEv283?format=jpg&name=large', 'NCT Dream Twitter Update', '🎤🎤🎤\r\n\r\n#NCT #NCTDREAM #불후의명곡', '2019-04-27', 'https://twitter.com/NCTsmtown_DREAM/status/1122100693286830081', 1, '2022-06-19 20:34:43', '2022-06-19 20:34:43'),
(28, 'https://pbs.twimg.com/media/D5J3WvAVUAARSjl?format=jpg&name=4096x4096', 'NCT Dream Twitter Update', '잘보셨나요?💚\r\n\r\n#NCT #NCTDREAM #불후의명곡', '2019-04-27', 'https://twitter.com/NCTsmtown_DREAM/status/1122090538675494912', 1, '2022-06-19 20:35:34', '2022-06-19 20:35:34'),
(29, 'https://pbs.twimg.com/media/D4HhJZrUEAErLI_?format=jpg&name=large', 'NCT Dream Twitter Update', '이번에 너무 비밀스럽게 와서 인도네시아팬들 만나지 못해서 많이 아쉬워요 ㅠㅠ 다음번에는 우리 드림이들 다같이 올게요!! 다음번에 우리 같이 좋은 추억 만들어요 헤헤 뜨리마까시!! -젠\r\n#NCT #NCTDREAM', '2019-04-14', 'https://twitter.com/NCTsmtown_DREAM/status/1117421749291798528', 1, '2022-06-19 20:36:21', '2022-06-19 20:36:21'),
(30, 'https://pbs.twimg.com/media/D4Hg0lKUYAAOL1Z?format=jpg&name=large', 'NCT Dream Twitter Update', '여러분들💚~ 오랜만에 나나가 소식을 전해용~>.<\r\n저 나나는 제노와 함께 인도네시아에 깜짝 방문을 했어용~ㅎ.ㅎ 이번에는 깜짝 살짝 쿵! 방문이여서 우리 이쁜 인도네시아 팬여러분들을 못 뵈었는데 다음번에 왔을때에는 꼭 우리 같이 봐용~(੭♡ڡ♡)੭‧º·˚ 사랑해용💚\r\n#NCT #NCTDREAM', '2019-04-14', 'https://twitter.com/NCTsmtown_DREAM/status/1117421393564409861', 1, '2022-06-19 20:37:17', '2022-06-19 20:37:17'),
(31, 'https://pbs.twimg.com/media/D72fiSbUEAA3gEj?format=jpg&name=4096x4096', 'NCT Dream Twitter Update STATION DNYL', '[#STATION]\r\n\r\n🎧 NCT DREAM X HRVY \'Don’t Need Your Love\': 2019.06.06. 6PM (KST)\r\n\r\n#NCTDREAM #NCT #HRVY\r\n#DontNeedYourLove', '2019-05-31', 'https://twitter.com/NCTsmtown_DREAM/status/1134263223052464129', 1, '2022-06-19 20:38:23', '2022-06-19 20:38:23'),
(32, 'https://pbs.twimg.com/media/D7FvJaPV4AETNda?format=jpg&name=large', 'NCT Dream Twitter Update', '해보세요! \r\n전 참고로 나나가 좋아하는 비누향에 가깝게 만들었답니다 ㅎ.ㅎ \r\n향수를 좋아하는 시즈니💚들은 꼭 한번쯤은 도전해볼만한 좋은 경험인것 같아요\r\n하면할수록 좀더 자기의 취향을 명확하게 찾을수 있을것 같아용 ㅎㅎ 재미있는 체험 하구 왔어용 헤헿ପ(´‘▽‘｀)ଓ♡⃛ - 나나\r\n#NCT #NCTDREAM', '2019-05-21', 'https://twitter.com/NCTsmtown_DREAM/status/1130807219505647618', 1, '2022-06-19 20:39:44', '2022-06-19 20:39:44'),
(33, 'https://pbs.twimg.com/media/D68BMl4UwAQ1Ua-?format=jpg&name=medium', 'NCT Dream Twitter Update', '👍\r\n\r\n#NCT #NCTDREAM', '2019-05-19', 'https://twitter.com/NCTsmtown_DREAM/status/1130123375962050560', 1, '2022-06-19 20:40:26', '2022-06-19 20:40:26'),
(34, 'https://pbs.twimg.com/ext_tw_video_thumb/1129778425625890820/pu/img/gYfMjAugIa0fBQLW.jpg', 'NCT Dream Twitter Update', '💝💝💝\r\n\r\n#NCT #NCTDREAM\r\n#JAEMIN #JENO #재민 #제노', '2019-05-18', 'https://twitter.com/NCTsmtown_DREAM/status/1129778492541825024', 1, '2022-06-19 20:41:40', '2022-06-19 20:41:40'),
(35, 'https://pbs.twimg.com/media/D6udUanUYAElg9R?format=jpg&name=large', 'NCT DreamTwitter Update', '우리 트리플J 아가들이 택배기사님이 되어 봤다가 잠깐 다른길로 세서 공원에서 꽁냥 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ - 젠\r\n\r\n#NCT #NCTDREAM\r\n#재민 #제노 #지성\r\n#JAEMIN #JENO #JISUNG', '2019-05-17', 'https://twitter.com/NCTsmtown_DREAM/status/1129169201573355520', 1, '2022-06-19 20:42:25', '2022-06-19 20:42:25'),
(36, 'https://pbs.twimg.com/media/D6gftxmUcAAWGMt?format=jpg&name=large', 'NCT Dream Twitter Update', '광합성하는 것도 좋을것 같아요 🌱 \r\n오늘하루도 우리 시즈니💚여러분들 홧팅하고 기분좋게 하루를 마무리 했으면 좋겠어요 💚💚 그럼 나나는 이만… 뿅!😘\r\n\r\n#NCT #NCTDREAM #최고의하루 \r\n#JENO #제노 #JAEMIN #재민', '2019-05-14', 'https://twitter.com/NCTsmtown_DREAM/status/1128186587974475781', 1, '2022-06-19 20:43:08', '2022-06-19 20:43:08'),
(37, 'https://pbs.twimg.com/media/D6c2LboUIAEYpDe?format=jpg&name=large', 'NCT Dream Twitter Update PUFF Save Me', '발차기 실패라니....... - 젠\r\n\r\n#NCT #NCTDREAM\r\n#PUFF #나를구해줘', '2019-05-13', 'https://twitter.com/NCTsmtown_DREAM/status/1127929817540616192', 1, '2022-06-19 20:44:16', '2022-06-19 20:44:16'),
(38, 'https://pbs.twimg.com/media/D5yfcuQUUAAV_Qz?format=jpg&name=large', 'NCT Dream Twitter Update', '시즈니들! \r\n오늘 무대에서 타이거 JK 선배님, 비지 선배님, 윤미래 선배님을 만났어요!!\r\n그리고 오늘진짜 오실줄몰랐는데 와주신 시즈니분들 너무 감사합니당ㅜㅜ 💓 \r\n오늘 이렇게 좋은일해서 너무', '2019-05-05', 'https://twitter.com/NCTsmtown_DREAM/status/1124949336364687362', 1, '2022-06-19 20:45:12', '2022-06-19 20:45:12'),
(39, 'https://pbs.twimg.com/media/D5yQdc8VUAAF3_U?format=jpg&name=large', 'NCT Dream Twitter Update', '💝💝💝\r\n\r\n#NCT #NCTDREAM', '2019-05-05', 'https://twitter.com/NCTsmtown_DREAM/status/1124932883276111872', 1, '2022-06-19 20:46:02', '2022-06-19 20:46:02'),
(40, 'https://pbs.twimg.com/media/D5iLLU_X4AIWGDs?format=jpg&name=large', 'NCT Dream Twitter Update', '시즈니들 !!이따 밤에 봐요 ㅋㅋㅋ\r\n개막식 와주신분들 넘 감사합니닿ㅎㅎ\r\n오늘 햇빛 엄청 쎄네요 ㄷㄷ \r\n\r\n#홍보대사 #감사합니다 \r\n#시즈니들은 #사랑합니다 #지성 #박지성\r\n\r\n#NCT #NCTDREAM', '2019-05-02', 'https://twitter.com/NCTsmtown_DREAM/status/1123801144764043265', 1, '2022-06-19 20:47:20', '2022-06-19 20:47:20'),
(41, 'https://pbs.twimg.com/media/D9Kv0MHUEAAZYQ4?format=jpg&name=large', 'NCT Dream Twitter Update', '#안동시_신세동_벽화마을\r\n\r\n#NCT #NCTDREAM', '2019-06-16', 'https://twitter.com/NCTsmtown_DREAM/status/1140167000435507200', 1, '2022-06-19 20:57:39', '2022-06-19 20:57:39'),
(42, 'https://pbs.twimg.com/media/D9G5U0eU0AEUrf6?format=jpg&name=large', 'NCT Dream Twitter Update', '오늘 잼민이랑 같이 엠씨 파이팅!! - 젠\r\n\r\n#NCT #NCTDREAM\r\n#JENO #제노 #JAEMIN #재민', '2019-06-15', 'https://twitter.com/NCTsmtown_DREAM/status/1139895968596279296', 1, '2022-06-19 20:59:10', '2022-06-19 20:59:10'),
(43, 'https://pbs.twimg.com/media/D8QntzPUwAEn8mD?format=jpg&name=large', 'NCT Dream Twitter Update STATION DNYL', '[#STATION]\r\n\r\n🎧 NCT DREAM X HRVY \'Don’t Need Your Love\': 2019.06.06. 6PM (KST)\r\n\r\n#NCTDREAM #NCT #HRVY #DontNeedYourLove', '2019-06-05', 'https://twitter.com/NCTsmtown_DREAM/status/1136076706593173506', 1, '2022-06-19 21:00:44', '2022-06-19 21:00:44'),
(44, 'https://pbs.twimg.com/media/EAZz80rUYAELAsF?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '🖤🖤🖤🖤🖤🖤\r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#WE_6시음원공개_BOOM\r\n#NCTDREAM #WE_BOOM\r\n#NCTDREAM_BOOM\r\n#NCTDREAM_BOOM_Release', '2019-07-26', 'https://twitter.com/NCTsmtown_DREAM/status/1154737855211569153', 1, '2022-06-19 21:02:25', '2022-06-19 21:02:25'),
(45, 'https://pbs.twimg.com/media/EAZstxlUIAM085F?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '💚💚💚💚💚💚\r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#WE_6시음원공개_BOOM\r\n#NCTDREAM #WE_BOOM\r\n#NCTDREAM_BOOM\r\n#NCTDREAM_BOOM_Release', '2019-07-26', 'https://twitter.com/NCTsmtown_DREAM/status/1154729914727313409', 1, '2022-06-19 21:03:33', '2022-06-19 21:03:33'),
(46, 'https://pbs.twimg.com/media/EAZr6__VAAIUwKf?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '💛💙💛\r\n#JAEMIN\r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#WE_6시음원공개_BOOM\r\n#NCTDREAM #WE_BOOM\r\n#NCTDREAM_BOOM\r\n#NCTDREAM_BOOM_Release', '2019-07-26', 'https://twitter.com/NCTsmtown_DREAM/status/1154729036750323718', 1, '2022-06-19 21:04:17', '2022-06-19 21:04:17'),
(47, 'https://pbs.twimg.com/media/EAZmHoaUwAAls73?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '시즈니이이이이\r\n오늘 뮤뱅 첫방송이 끝났습니다!!\r\n많이 기다려주셔서 감사하고 앞으로도 많이 남았으니까 기대 많이 해주세요 사랑해요!!!\r\nFullsun\r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#WE_6시음원공개_BOOM\r\n#NCTDREAM #WE_BOOM\r\n#NCTDREAM_BOOM\r\n#NCTDREAM_BOOM_Release', '2019-07-26', 'https://twitter.com/NCTsmtown_DREAM/status/1154722668010016769', 1, '2022-06-19 21:05:17', '2022-06-19 21:05:17'),
(48, 'https://pbs.twimg.com/media/EACgVSdUcAATUyz?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', 'WE BOOM! \r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nMV Release ➫ 2019 07 26 0AM (KST)\r\nMusic Release ➫ 2019 07 26 6PM (KST)\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#NCTDREAM #BOOM \r\n#NCTDREAM_BOOM #WE_BOOM', '2019-07-22', 'https://twitter.com/NCTsmtown_DREAM/status/1153097803909885952', 1, '2022-06-19 21:06:05', '2022-06-19 21:06:05'),
(49, 'https://pbs.twimg.com/media/EACelE2UEAAyVMy?format=jpg&name=medium', 'NCT Dream Twitter Update BOOM', 'BOOM!!!!!\r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nMV Release ➫ 2019 07 26 0AM (KST)\r\nMusic Release ➫ 2019 07 26 6PM (KST)\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#NCTDREAM #BOOM \r\n#NCTDREAM_BOOM #WE_BOOM', '2019-07-22', 'https://twitter.com/NCTsmtown_DREAM/status/1153095882696318976', 1, '2022-06-19 21:06:57', '2022-06-19 21:06:57'),
(50, 'https://pbs.twimg.com/ext_tw_video_thumb/1153095686788771840/pu/img/4LQleQFJyz-_ZRSz.jpg', 'NCT Dream Twitter Update BOOM', '시즈니💚 잘 다녀 올게요오!!\r\n\r\nNCT DREAM 〖 #BOOM 〗\r\nMV Release ➫ 2019 07 26 0AM (KST)\r\nMusic Release ➫ 2019 07 26 6PM (KST)\r\nAlbum Release ➫ 2019 07 29\r\n\r\n#NCTDREAM #BOOM \r\n#NCTDREAM_BOOM #WE_BOOM', '2019-07-22', 'https://twitter.com/NCTsmtown_DREAM/status/1153095858583302144', 1, '2022-06-19 21:08:01', '2022-06-19 21:08:01'),
(51, 'https://pbs.twimg.com/media/EDToX6QU8AUXRpH?format=jpg&name=large', 'NCT Dream Twitter Update SKY Festival', 'SKY FESTIVAL!💚\r\n\r\n#NCT #NCTDREAM', '2019-08-31', 'https://twitter.com/NCTsmtown_DREAM/status/1167813714705186816', 1, '2022-06-19 21:08:57', '2022-06-19 21:08:57'),
(52, 'https://pbs.twimg.com/media/EDIZ0mhU4AAiKqd?format=jpg&name=large', 'NCT Dream Twitter Update', '#JENO\r\n📷 by #JAEMIN\r\n\r\nhttps://youtu.be/LgWebixRcpE\r\n\r\n#NCT #NCTDREAM\r\n#Fireflies #wsj', '2019-08-29', 'https://twitter.com/NCTsmtown_DREAM/status/1167023656427327488', 1, '2022-06-19 21:10:20', '2022-06-19 21:10:20'),
(53, 'https://pbs.twimg.com/media/ECKVaD9UcAAX0JM?format=jpg&name=medium', 'NCT Dream Twitter Update Radio', '#박소현의러브게임📻\r\n\r\n#JAEMIN #JENO\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-17', 'https://twitter.com/NCTsmtown_DREAM/status/1162655942283943936', 1, '2022-06-19 21:11:21', '2022-06-19 21:11:21'),
(54, 'https://pbs.twimg.com/media/ECKS5laU0AAuizr?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '#음악중심💚\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-17', 'https://twitter.com/NCTsmtown_DREAM/status/1162653183052660736', 1, '2022-06-19 21:12:07', '2022-06-19 21:12:07'),
(55, 'https://pbs.twimg.com/media/EBxggaqVUAEtU-f?format=jpg&name=medium', 'NCT Dream Twitter Update BOOM Idol Radio', '#JAEMIN & #JENO\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-12', 'https://twitter.com/NCTsmtown_DREAM/status/1160908923110432769', 1, '2022-06-19 21:13:09', '2022-06-19 21:13:09'),
(56, 'https://pbs.twimg.com/media/EBxfn-4UcAEcWF4?format=jpg&name=large', 'NCT Dream Twitter Update Idol Radio', '#아이돌라디오💚\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-12', 'https://twitter.com/NCTsmtown_DREAM/status/1160907986132324353', 1, '2022-06-19 21:14:33', '2022-06-19 21:14:33'),
(57, 'https://pbs.twimg.com/media/EBwjXWAUIAIsYgl?format=jpg&name=medium', 'NCT Dream Twitter Update BOOM', '✌💚\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-12', 'https://twitter.com/NCTsmtown_DREAM/status/1160841695551864832', 1, '2022-06-19 21:15:21', '2022-06-19 21:15:21'),
(58, 'https://pbs.twimg.com/media/EBnWY7eUYAARyPz?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '#JAEMIN #JENO #배틀트립\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-10', 'https://twitter.com/NCTsmtown_DREAM/status/1160194125993353217', 1, '2022-06-19 21:16:33', '2022-06-19 21:16:33'),
(59, 'https://pbs.twimg.com/ext_tw_video_thumb/1160193260742008832/pu/img/dkrT5ABwhBJpP8Kl.jpg', 'NCT Dream Twitter Update BOOM', '#JAEMIN #배틀트립\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-10', 'https://twitter.com/NCTsmtown_DREAM/status/1160193314705948672', 1, '2022-06-19 21:17:35', '2022-06-19 21:17:35'),
(60, 'https://pbs.twimg.com/media/EBnVlwTUcAA5Ug_?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '#JAEMIN #배틀트립\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-10', 'https://twitter.com/NCTsmtown_DREAM/status/1160193241628626944', 1, '2022-06-19 21:18:58', '2022-06-19 21:18:58'),
(61, 'https://pbs.twimg.com/media/EBnU6aKUIAEFtHp?format=jpg&name=large', 'NCT Dream Twitter Update Battle Trip', '#JENO #배틀트립\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-10', 'https://twitter.com/NCTsmtown_DREAM/status/1160192520669634560', 1, '2022-06-19 21:19:58', '2022-06-19 21:19:58'),
(62, 'https://pbs.twimg.com/media/EBnUJcPU0AET_uN?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '#JAEMIN #JENO #배틀트립\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-10', 'https://twitter.com/NCTsmtown_DREAM/status/1160191658094292992', 1, '2022-06-19 21:24:26', '2022-06-19 21:24:26'),
(63, 'https://pbs.twimg.com/media/EBmPliMVAAACv4J?format=jpg&name=medium', 'NCT Dream Twitter Update BOOM', '#음악중심💚\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-10', 'https://twitter.com/NCTsmtown_DREAM/status/1160116263789584384', 1, '2022-06-19 21:25:36', '2022-06-19 21:25:36'),
(64, 'https://pbs.twimg.com/media/EBf_dhdU8AAzl03?format=jpg&name=large', 'NCT Dream Twitter Update', '어제는 고양이 날 - 젠\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-09', 'https://twitter.com/NCTsmtown_DREAM/status/1159676326468440064', 1, '2022-06-19 21:26:23', '2022-06-19 21:26:23'),
(65, 'https://pbs.twimg.com/media/EBSN2KpU0AAWD8m?format=jpg&name=large', 'NCT Dream Twitter Update', '시즈니❤️드리미\r\n귀엽고 이쁘고 깜직하고 시즈니💚하고싶은거 다해 곁에있는 드리미들중 나나가 헤헷( •◡-)✧˖° ♡\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-06', 'https://twitter.com/NCTsmtown_DREAM/status/1158706979000340480', 1, '2022-06-19 21:27:06', '2022-06-19 21:27:06'),
(66, 'https://pbs.twimg.com/media/EBCDIJcU0AA4LYU?format=jpg&name=medium', 'NCT Dream Twitter Update BOOM', '비를 몰고다니는 우리 드림이들 무대 잘 봤나요?? \r\n비 하면 드림이들이죠 ㅋㅋ \r\n이제 저희가 비 다 몰고다닐테니까 여러분은 비맞으면 안돼요 ㅠㅠ - 젠\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-03', 'https://twitter.com/NCTsmtown_DREAM/status/1157569289999638529', 1, '2022-06-19 21:28:06', '2022-06-19 21:28:06'),
(67, 'https://pbs.twimg.com/media/EA4q8QBU4AA-LI4?format=jpg&name=large', 'NCT Dream Twitter Update BOOM', '우앙 시즈니 오늘 붐 활동 첫 팬싸가 끝났어요ㅠㅠ넘 떨려서 말도 잘 못하고..\r\n담번엔 더 잘할게요ㅎㅎ우리 자부심들!\r\n내일도 화이팅!!\r\n#피스 #밥꼭먹어요 #그리구 #❤️ #지성\r\n\r\n#NCTDREAM 〖 #BOOM 〗\r\n#WE_BOOM\r\n#NCTDREAM_BOOM', '2019-08-01', 'https://twitter.com/NCTsmtown_DREAM/status/1156909382296227841', 1, '2022-06-19 21:29:02', '2022-06-19 21:29:02'),
(68, 'https://img.youtube.com/vi/wsGEblQ4PJE/sddefault.jpg', '여기 동아리는 내가 접수하겠네 😎💥 | 모여봐요 DREAM SQUAD', '#NCTDREAM #Beatbox #DREAMSQUAD\r\n여기 동아리는 내가 접수하겠네 😎💥 | 모여봐요 DREAM SQUAD', '2022-06-10', 'https://www.youtube.com/embed/wsGEblQ4PJE', 2, '2022-06-19 21:34:10', '2022-06-19 21:34:10'),
(69, 'https://img.youtube.com/vi/jMD3YumoEgI/sddefault.jpg', '지금 DREAM SQUAD는 뭐하지🤔❓ #Shorts', '#BringYourBeatbox\r\n#DREAMSQUAD\r\n#JAEMIN #JENO\r\n#NCTDREAM #Beatbox\r\n#NCTDREAM_Beatbox', '2022-06-01', 'https://www.youtube.com/embed/jMD3YumoEgI', 2, '2022-06-19 21:37:43', '2022-06-19 21:37:43'),
(70, 'https://img.youtube.com/vi/WWZVjzht_P0/sddefault.jpg', 'UNBOXING of NCT DREAM ‘Beatbox’ Album', '#NCTDREAM #Beatbox #Unboxing\r\nUNBOXING of NCT DREAM ‘Beatbox’ Album', '2022-06-04', 'https://www.youtube.com/embed/WWZVjzht_P0', 2, '2022-06-19 21:39:41', '2022-06-19 21:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alicea', '423813project@gmail.com', NULL, '$2y$10$/XyjHhjVqP5mrDEHGSmxCuyb5isNEysKCW9ikPy6Px7XpZDmtd9.O', NULL, '2022-06-15 19:27:53', '2022-06-15 19:27:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
