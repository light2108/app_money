-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 02, 2022 lúc 09:55 AM
-- Phiên bản máy phục vụ: 10.2.40-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ubsrvrjh_appmoney`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin@com', NULL, '$2y$10$WzY2K0MxsH3v/YldNk0zTuoTwDleUMgW/TmJ7SvHiVZlRLqrwF7uO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ads`
--

INSERT INTO `ads` (`id`, `title`, `description`, `color`, `image`, `link`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'quảng cáo 1', 'web khá hay', '#614729', 'imgs/1662691751.jpeg', 'https://www.google.com/', 1, 0, '2022-09-09 02:30:43', '2022-09-16 08:33:23'),
(2, 'quảng cáo 2', 'web khá hay', '#1f283d', 'imgs/1662692045.jpeg', 'https://www.google.com/', 1, 0, '2022-09-09 02:54:05', '2022-09-16 08:33:56'),
(3, 'test luan', 'In Stall', '#000000', 'imgs/1663504423.PNG', 'https://play.google.com/store/apps/details?id=com.gardenaffairs.affairsgp', 1, 0, '2022-09-18 12:33:43', '2022-09-18 12:33:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `android_app_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_app_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `game` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_ads_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_ads_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_ads_interstitial` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_ads_interstitial` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android_ads_video_reward` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios_ads_video_reward` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `apps`
--

INSERT INTO `apps` (`id`, `android_app_id`, `ios_app_id`, `game`, `android_ads_banner`, `ios_ads_banner`, `android_ads_interstitial`, `ios_ads_interstitial`, `package_name`, `android_ads_video_reward`, `ios_ads_video_reward`, `status`, `created_at`, `updated_at`) VALUES
(6, 'aaa', 'bbb', 'ccc', 'imgs/1663727748.jpeg', 'imgs/641358047771663727748.jpeg', 'aaa', 'bbb', 'ddd', 'https://www.youtube.com/watch?v=I7tqxN8bwuQ', 'https://www.youtube.com/watch?v=I7tqxN8bwuQ', 1, '2022-09-21 02:35:48', '2022-09-21 02:35:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `award_days`
--

CREATE TABLE `award_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `money` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `award_days`
--

INSERT INTO `award_days` (`id`, `money`, `created_at`, `updated_at`) VALUES
(1, '5000', NULL, '2022-09-07 08:59:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `award_shares`
--

CREATE TABLE `award_shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `money` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `award_shares`
--

INSERT INTO `award_shares` (`id`, `money`, `created_at`, `updated_at`) VALUES
(1, '100000', NULL, '2022-09-07 08:53:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(2, 'imgs/1662539968.png', 'https://www.google.com/', 1, '2022-08-31 03:58:21', '2022-09-12 04:42:03'),
(3, 'imgs/1662540005.png', 'https://www.google.com/', 1, '2022-09-01 08:35:14', '2022-09-12 04:42:11'),
(4, 'imgs/1662540027.png', 'https://www.google.com/', 1, '2022-09-07 08:40:27', '2022-09-12 04:42:18'),
(5, 'imgs/1662540049.png', 'https://www.google.com/', 1, '2022-09-07 08:40:49', '2022-09-12 04:42:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `feed_backs`
--

CREATE TABLE `feed_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feed_backs`
--

INSERT INTO `feed_backs` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'phản hồi hay', NULL, '2022-09-16 08:35:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_08_25_025039_create_tasks_table', 2),
(11, '2022_08_25_045757_create_task_questions_table', 3),
(12, '2022_08_25_045925_create_task_answers_table', 3),
(13, '2022_08_25_072837_create_questions_table', 4),
(14, '2022_08_25_072929_create_answers_table', 4),
(15, '2022_08_27_033951_create_admins_table', 5),
(16, '2022_08_29_092614_create_question_answers_table', 6),
(17, '2022_08_31_095102_create_banners_table', 7),
(18, '2022_08_31_141831_create_apps_table', 8),
(19, '2022_09_06_093713_create_rules_table', 9),
(20, '2022_09_06_093849_create_privacies_table', 9),
(21, '2022_09_06_212200_create_task_users_table', 10),
(22, '2022_09_07_115300_create_questions_table', 11),
(23, '2022_09_07_115423_create_feed_backs_table', 11),
(24, '2022_09_07_145243_create_types_table', 12),
(25, '2022_09_07_154553_create_award_shares_table', 13),
(26, '2022_09_07_154727_create_award_days_table', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('27982aec22977f0fe7f71228b8577d5cc7340a2901bcd8ac7af2c9aa7f137a4bd19da2a0842d1147', 1, 1, 'MyApp', '[]', 0, '2022-08-24 01:25:12', '2022-08-24 01:25:12', '2023-08-24 08:25:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '74HuXbUYsNcmX1KP6ylTGlHWZxPc8HDklicsFKzI', NULL, 'http://localhost', 1, 0, 0, '2022-08-23 22:02:13', '2022-08-23 22:02:13'),
(2, NULL, 'Laravel Password Grant Client', 'kT5bE2ZH3in5qP4pzjd9SsimfLG5lptoRYfkSDE4', 'users', 'http://localhost', 0, 1, 0, '2022-08-23 22:02:14', '2022-08-23 22:02:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-23 22:02:13', '2022-08-23 22:02:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `privacies`
--

INSERT INTO `privacies` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<div><b>Privacy Policy</b></div><div><br></div><div>This Privacy Policy describes the policies and procedures on the collection, use and disclosure of your information when you use the service and tells you about your privacy rights and how the law protects you.</div><div><br></div><div>EasyApps uses your personal data to provide and improve the service. By using the service, You agree to the collection and use of information in accordance with this Privacy Policy.</div><div><br></div><div><b>Definitions</b></div><div><br></div><div>For the purposes of this Privacy Policy:</div><div><br></div><div>You means the individual accessing or using the service, or the company, or other legal entity on behalf of which such individual is accessing or using the service, as applicable.</div><div>Company (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to \"EasyApps\".</div><div>Account means a unique account created for you to access our service or parts of our service.</div><div>Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the service, to provide the service on behalf of the Company, to perform services related to the service or to assist the Company in analyzing how the service is used.</div><div>Third-party Social Media Service refers to any website or any social network website through which a user can log in or create an account to use the service.</div><div>Personal Data is any information that relates to an identified or identifiable individual.</div><div>Cookies are small files that are placed on your computer, mobile device or any other device by a website, containing the details of your browsing history on that website among its many uses.</div><div>Device means any device that can access the service such as a computer, a cellphone or a digital tablet.</div><div>Usage Data refers to data collected automatically, either generated by the use of the service or from the service infrastructure itself (for example, the duration of a page visit).</div><div>Collecting and Using Your Personal Data</div><div><br></div><div>Types of Data Collected</div><div><br></div><div>Personal Data</div><div><br></div><div>While using the service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you. Personally identifiable information may include, but is not limited to:</div><div><br></div><div>Email address</div><div>First name and last name</div><div>Phone number</div><div>Usage Data</div><div>Usage Data</div><div><br></div><div>Usage Data is collected automatically when using the service.</div><div><br></div><div>Usage Data may include information such as your device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of the service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</div><div><br></div><div>When you access the service by or through a mobile device, EasyApps may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic data.</div><div><br></div><div>EasyApps may also collect information that your browser sends whenever you visit our service or when you access the service by or through a mobile device.</div><div><br></div><div>Tracking Technologies and Cookies</div><div><br></div><div>EasyApps use cookies and similar tracking technologies to track the activity on the service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze the service.</div><div><br></div><div>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some parts of our service.</div><div><br></div><div>Cookies can be persistent or session cookies. Persistent cookies remain on your personal computer or mobile device when you go offline, while session cookies are deleted as soon as you close your web browser.</div><div><br></div><div>EasyApps use both session and persistent cookies. Cookies are essential to provide you with services available through the website and to enable you to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these cookies, the services that you have asked for cannot be provided, and EasyApps only use these cookies to provide you with those services.</div><div><br></div><div>Use of Your Personal Data</div><div><br></div><div>The Company may use Personal Data for the following purposes:</div><div><br></div><div>To provide and maintain the service, including to monitor the usage of our service.</div><div>To manage your account: to manage your registration as a user of the service. The Personal Data you provide can give you access to different functionalities of the service that are available to you as a registered user.</div><div>For the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services you have purchased or of any other contract with EasyApps through the service.</div><div>To contact you: To contact you by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</div><div>To provide you with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information.</div><div>To attend and manage your requests.</div><div>We may share your personal information in the following situations:</div><div><br></div><div>With service providers: We may share your personal information with service providers to monitor and analyze the use of our service, to contact you.</div><div>For Business transfers: We may share or transfer your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of our business to another company</div><div>With Affiliates: We may share your information with the affiliates. Affiliates include our parent company and any other subsidiaries, joint venture partners or other companies that we control or that are in business relation with us.</div><div>With Business partners: We may share your information with our business partners.</div><div>With other users: when you share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If you interact with other users or register through a Third-Party Social Media Service, your contacts on the Third-Party Social Media Service may see your name, profile, pictures and description of your activity. Similarly, other users will be able to view descriptions of your activity, communicate with you and view your profile.</div><div>Retention of Your Personal Data</div><div><br></div><div>The Company will retain your personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</div><div><br></div><div>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of the service, or we are legally obligated to retain this data for longer time periods.</div><div><br></div><div>Transfer of Your Personal Data</div><div><br></div><div>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to - and maintained on - computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</div><div><br></div><div>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</div><div><br></div><div>The Company will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</div><div><br></div><div>Disclosure of Your Personal Data</div><div><br></div><div>Business Transactions</div><div><br></div><div>If the Company is involved in a merger, acquisition or asset sale, your Personal Data may be transferred. We will provide notice before your Personal Data is transferred and becomes subject to a different Privacy Policy.</div><div><br></div><div>Law enforcement</div><div><br></div><div>Under certain circumstances, the Company may be required to disclose your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</div><div><br></div><div>Other legal requirements</div><div><br></div><div>The Company may disclose your Personal Data in the good faith belief that such action is necessary to:</div><div><br></div><div>Comply with a legal obligation</div><div>Protect and defend the rights or property of the Company</div><div>Prevent or investigate possible wrongdoing in connection with the service</div><div>Protect the personal safety of users of the service or the public</div><div>Protect against legal liability</div><div>Security of Your Personal Data</div><div><br></div><div>The security of Your Personal Data is important but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While EasyApps strives to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</div><div><br></div><div>Children\'s Privacy</div><div><br></div><div>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and you are aware that your child has provided EasyApps with Personal Data, please contact us. If EasyApps becomes aware that we have collected Personal Data from anyone under the age of 13 without verification of parental consent, we take steps to remove that information from the servers.</div><div><br></div><div>If we need to rely on consent as a legal basis for processing your information and your country requires consent from a parent, we may require your parent\'s consent before we collect and use that information.</div><div><br></div><div>Links to Other Websites</div><div><br></div><div>Our Service may contain links to other websites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.</div><div><br></div><div>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</div><div><br></div><div>Changes to this Privacy Policy</div><div><br></div><div>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</div><div><br></div><div>We will let you know via email and/or a prominent notice on the service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</div><div><br></div><div>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</div><div><br></div><div>Contact Us</div><div><br></div><div>If you have any questions about this Privacy Policy, You can contact us:</div><div><br></div><div>By email: support@EasyApps.com</div>', NULL, '2022-09-18 13:38:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'câu hỏi hay', NULL, '2022-09-16 08:34:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_answers`
--

CREATE TABLE `question_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `question_answers`
--

INSERT INTO `question_answers` (`id`, `task_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '1+1=?', '1|||2|||3', 1, '2022-08-29 08:50:35', '2022-08-29 09:13:42'),
(2, 3, '2+3=?', '1|||2|||3|||4|||5', 1, '2022-08-29 09:17:45', '2022-08-29 09:17:45'),
(3, 4, '5+5=?', '9|||10|||11|||12', 1, '2022-09-08 09:04:29', '2022-09-08 09:04:29'),
(4, 4, '3+4=?', '6|||7|||8|||9', 1, '2022-09-08 09:04:55', '2022-09-08 09:04:55'),
(5, 5, '10+1', '11|||12', 1, '2022-09-10 06:20:13', '2022-09-10 06:20:13'),
(6, 6, 'Giá cả sản phẩm sữa chua', 'Hợp lí|||Rẻ|||Đắt', 1, '2022-09-10 06:20:47', '2022-09-24 01:58:19'),
(7, 7, 'Thương hiệu Vinamilk là?', 'Thương hiệu lâu đời|||Câu slogan dễ nhớ|||Có website riêng tìm kiếm sản phẩm', 1, '2022-09-10 10:23:47', '2022-09-28 01:40:41'),
(8, 8, 'Gia đình anh chị có sử dụng nước mắm không?', 'Có|||Không', 1, '2022-09-10 10:24:19', '2022-09-28 01:43:56'),
(9, 11, 'Xin vui lòng cho biết anh chị thuộc nhóm độ tuổi nào', 'Dưới 18|||18-30 tuổi|||30-40 tuổi|||Trên 40', 1, '2022-09-17 02:21:01', '2022-09-24 02:02:16'),
(10, 12, 'Tổng thu nhập lương của gia đình', '1 triệu|||2 triệu|||3 triệu|||4 triệu|||5 triệu', 1, '2022-09-17 02:21:36', '2022-09-24 02:03:17'),
(11, 6, 'Bạn thích sữa chua làm từ hạt?', 'có|||không', 1, '2022-09-28 01:36:55', '2022-09-28 01:36:55'),
(12, 6, 'Bạn mong muốn sữa chua hạt có thành phần làm đẹp da?', 'không đồng ý|||bình thường|||hoàn toàn đồng ý', 1, '2022-09-28 01:38:17', '2022-09-28 01:38:17'),
(13, 6, 'Bạn cần sữa chua hạt để hỗ trợ giảm cân?', 'không|||có', 1, '2022-09-28 01:38:43', '2022-09-28 01:38:43'),
(14, 6, 'Bạn có nhu cầu về sữa chua hạt hỗ trợ tránh loãng xương cho người cao tuổi?', 'không đồng ý|||bình thường|||đồng ý', 1, '2022-09-28 01:39:19', '2022-09-28 01:39:19'),
(15, 7, 'Bạn đã từng sử dụng sữa tươi thuộc nhãn hiệu Vinamilk chưa?', 'Đã dùng|||Chưa dùng', 1, '2022-09-28 01:41:07', '2022-09-28 01:41:07'),
(16, 7, 'Lí do bạn chọn mua sữa tươi Vinamilk?', 'Chất lượng tốt, đầy đủ dinh dưỡng|||Hợp khẩu vị ( thơm, ngon, béo,...)|||Giá hợp lý', 1, '2022-09-28 01:41:49', '2022-09-28 01:41:49'),
(17, 7, 'Đâu là nguồn thông tin ảnh hưởng đến quyết định mua của bạn?', 'Bạn bè|||Gia đình|||Hàng xóm', 1, '2022-09-28 01:42:34', '2022-09-28 01:42:34'),
(18, 7, 'bạn thường sử hãng sữa tươi nào trên thị trường?', 'Vinamilk|||TH true milk|||Mộc Châu', 1, '2022-09-28 01:43:19', '2022-09-28 01:43:19'),
(19, 8, 'Gia đình anh chị có sử dụng nước mắm loại nào?', 'Nam ngư|||chin su|||phú quốc', 1, '2022-09-28 01:46:11', '2022-09-28 01:46:11'),
(20, 8, 'Đánh giá loại nước mắm ưa dùng?', 'Nam ngư|||Chin Su|||Phú Quốc|||Cát Hải', 1, '2022-09-28 01:47:25', '2022-09-28 01:47:25'),
(21, 8, 'Nước mắm nam ngư ra đời năm nào?', '2000|||2001|||2002|||2003', 1, '2022-09-28 01:48:58', '2022-09-28 01:50:02'),
(22, 8, 'Nước mắm cát hải ra đời năm nào?', '1958|||1959|||1960|||1961', 1, '2022-09-28 01:49:51', '2022-09-28 01:49:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rules`
--

INSERT INTO `rules` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<div>Privacy Policy</div><div><br></div><div>This Privacy Policy describes the policies and procedures on the collection, use and disclosure of your information when you use the service and tells you about your privacy rights and how the law protects you.</div><div><br></div><div>EasyApps uses your personal data to provide and improve the service. By using the service, You agree to the collection and use of information in accordance with this Privacy Policy.</div><div><br></div><div>Definitions</div><div><br></div><div>For the purposes of this Privacy Policy:</div><div><br></div><div>You means the individual accessing or using the service, or the company, or other legal entity on behalf of which such individual is accessing or using the service, as applicable.</div><div>Company (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to \"EasyApps\".</div><div>Account means a unique account created for you to access our service or parts of our service.</div><div>Service Provider means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the service, to provide the service on behalf of the Company, to perform services related to the service or to assist the Company in analyzing how the service is used.</div><div>Third-party Social Media Service refers to any website or any social network website through which a user can log in or create an account to use the service.</div><div>Personal Data is any information that relates to an identified or identifiable individual.</div><div>Cookies are small files that are placed on your computer, mobile device or any other device by a website, containing the details of your browsing history on that website among its many uses.</div><div>Device means any device that can access the service such as a computer, a cellphone or a digital tablet.</div><div>Usage Data refers to data collected automatically, either generated by the use of the service or from the service infrastructure itself (for example, the duration of a page visit).</div><div>Collecting and Using Your Personal Data</div><div><br></div><div>Types of Data Collected</div><div><br></div><div>Personal Data</div><div><br></div><div>While using the service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you. Personally identifiable information may include, but is not limited to:</div><div><br></div><div>Email address</div><div>First name and last name</div><div>Phone number</div><div>Usage Data</div><div>Usage Data</div><div><br></div><div>Usage Data is collected automatically when using the service.</div><div><br></div><div>Usage Data may include information such as your device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of the service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</div><div><br></div><div>When you access the service by or through a mobile device, EasyApps may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile device unique ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browser you use, unique device identifiers and other diagnostic data.</div><div><br></div><div>EasyApps may also collect information that your browser sends whenever you visit our service or when you access the service by or through a mobile device.</div><div><br></div><div>Tracking Technologies and Cookies</div><div><br></div><div>EasyApps use cookies and similar tracking technologies to track the activity on the service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze the service.</div><div><br></div><div>You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some parts of our service.</div><div><br></div><div>Cookies can be persistent or session cookies. Persistent cookies remain on your personal computer or mobile device when you go offline, while session cookies are deleted as soon as you close your web browser.</div><div><br></div><div>EasyApps use both session and persistent cookies. Cookies are essential to provide you with services available through the website and to enable you to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these cookies, the services that you have asked for cannot be provided, and EasyApps only use these cookies to provide you with those services.</div><div><br></div><div>Use of Your Personal Data</div><div><br></div><div>The Company may use Personal Data for the following purposes:</div><div><br></div><div>To provide and maintain the service, including to monitor the usage of our service.</div><div>To manage your account: to manage your registration as a user of the service. The Personal Data you provide can give you access to different functionalities of the service that are available to you as a registered user.</div><div>For the performance of a contract: the development, compliance and undertaking of the purchase contract for the products, items or services you have purchased or of any other contract with EasyApps through the service.</div><div>To contact you: To contact you by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</div><div>To provide you with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless you have opted not to receive such information.</div><div>To attend and manage your requests.</div><div>We may share your personal information in the following situations:</div><div><br></div><div>With service providers: We may share your personal information with service providers to monitor and analyze the use of our service, to contact you.</div><div>For Business transfers: We may share or transfer your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of our business to another company</div><div>With Affiliates: We may share your information with the affiliates. Affiliates include our parent company and any other subsidiaries, joint venture partners or other companies that we control or that are in business relation with us.</div><div>With Business partners: We may share your information with our business partners.</div><div>With other users: when you share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside. If you interact with other users or register through a Third-Party Social Media Service, your contacts on the Third-Party Social Media Service may see your name, profile, pictures and description of your activity. Similarly, other users will be able to view descriptions of your activity, communicate with you and view your profile.</div><div>Retention of Your Personal Data</div><div><br></div><div>The Company will retain your personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</div><div><br></div><div>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of the service, or we are legally obligated to retain this data for longer time periods.</div><div><br></div><div>Transfer of Your Personal Data</div><div><br></div><div>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to - and maintained on - computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.</div><div><br></div><div>Your consent to this Privacy Policy followed by your submission of such information represents your agreement to that transfer.</div><div><br></div><div>The Company will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this Privacy Policy and no transfer of your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of your data and other personal information.</div><div><br></div><div>Disclosure of Your Personal Data</div><div><br></div><div>Business Transactions</div><div><br></div><div>If the Company is involved in a merger, acquisition or asset sale, your Personal Data may be transferred. We will provide notice before your Personal Data is transferred and becomes subject to a different Privacy Policy.</div><div><br></div><div>Law enforcement</div><div><br></div><div>Under certain circumstances, the Company may be required to disclose your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</div><div><br></div><div>Other legal requirements</div><div><br></div><div>The Company may disclose your Personal Data in the good faith belief that such action is necessary to:</div><div><br></div><div>Comply with a legal obligation</div><div>Protect and defend the rights or property of the Company</div><div>Prevent or investigate possible wrongdoing in connection with the service</div><div>Protect the personal safety of users of the service or the public</div><div>Protect against legal liability</div><div>Security of Your Personal Data</div><div><br></div><div>The security of Your Personal Data is important but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While EasyApps strives to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.</div><div><br></div><div>Children\'s Privacy</div><div><br></div><div>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and you are aware that your child has provided EasyApps with Personal Data, please contact us. If EasyApps becomes aware that we have collected Personal Data from anyone under the age of 13 without verification of parental consent, we take steps to remove that information from the servers.</div><div><br></div><div>If we need to rely on consent as a legal basis for processing your information and your country requires consent from a parent, we may require your parent\'s consent before we collect and use that information.</div><div><br></div><div>Links to Other Websites</div><div><br></div><div>Our Service may contain links to other websites that are not operated by us. If you click on a third party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit.</div><div><br></div><div>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</div><div><br></div><div>Changes to this Privacy Policy</div><div><br></div><div>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</div><div><br></div><div>We will let you know via email and/or a prominent notice on the service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</div><div><br></div><div>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</div><div><br></div><div>Contact Us</div><div><br></div><div>If you have any questions about this Privacy Policy, You can contact us:</div><div><br></div><div>By email: support@EasyApps.com</div>', NULL, '2022-09-18 13:41:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `select` int(11) DEFAULT 1,
  `status` int(11) DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `image`, `price`, `link`, `step`, `rating`, `level`, `select`, `status`, `type`, `created_at`, `updated_at`) VALUES
(6, 'Khảo sát thương hiệu sữa chua', NULL, 'imgs/1664186759.jpg', '10000', '', '', NULL, '1', 1, 1, 1, '2022-09-07 08:09:40', '2022-10-01 03:47:31'),
(7, 'khảo sát thương hiệu Vinamilk', 'web khá hay', 'imgs/1664186663.jpg', '10000', '', '', NULL, '1', 1, 1, 1, '2022-09-10 10:19:58', '2022-10-01 03:47:43'),
(8, 'khảo sát thương hiệu nước mắm', 'web khá hay', 'imgs/1664186825.jpg', '9000', '', '', NULL, '1', 1, 1, 1, '2022-09-10 10:20:34', '2022-10-01 03:47:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `task_users`
--

CREATE TABLE `task_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `check` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `task_users`
--

INSERT INTO `task_users` (`id`, `user_id`, `task_id`, `check`, `created_at`, `updated_at`) VALUES
(86, 46, 7, 2, '2022-09-30 02:15:30', '2022-09-30 02:15:30'),
(87, 63, 6, 2, '2022-10-03 15:06:53', '2022-10-03 15:06:53'),
(88, 63, 7, 2, '2022-10-03 15:11:30', '2022-10-03 15:11:30'),
(89, 65, 6, 2, '2022-10-03 21:06:37', '2022-10-03 21:06:37'),
(90, 62, 6, 2, '2022-10-04 12:18:15', '2022-10-04 12:18:15'),
(91, 68, 6, 2, '2022-10-04 20:14:59', '2022-10-04 20:14:59'),
(92, 68, 7, 2, '2022-10-04 20:15:18', '2022-10-04 20:15:18'),
(93, 68, 8, 2, '2022-10-04 20:15:55', '2022-10-04 20:15:55'),
(94, 68, 6, 2, '2022-10-04 20:16:17', '2022-10-04 20:16:17'),
(95, 68, 6, 2, '2022-10-04 20:16:29', '2022-10-04 20:16:29'),
(96, 68, 6, 2, '2022-10-04 20:16:40', '2022-10-04 20:16:40'),
(97, 68, 6, 2, '2022-10-04 20:16:53', '2022-10-04 20:16:53'),
(98, 68, 8, 2, '2022-10-04 20:17:11', '2022-10-04 20:17:11'),
(99, 68, 8, 2, '2022-10-04 20:17:24', '2022-10-04 20:17:24'),
(100, 68, 6, 2, '2022-10-04 20:17:39', '2022-10-04 20:17:39'),
(101, 68, 6, 2, '2022-10-04 20:17:51', '2022-10-04 20:17:51'),
(102, 68, 6, 2, '2022-10-04 20:18:04', '2022-10-04 20:18:04'),
(103, 68, 6, 2, '2022-10-04 20:18:13', '2022-10-04 20:18:13'),
(104, 68, 7, 2, '2022-10-04 20:18:24', '2022-10-04 20:18:24'),
(105, 68, 6, 2, '2022-10-04 20:18:35', '2022-10-04 20:18:35'),
(106, 68, 6, 2, '2022-10-04 20:18:44', '2022-10-04 20:18:44'),
(107, 68, 6, 2, '2022-10-04 20:18:56', '2022-10-04 20:18:56'),
(108, 68, 7, 2, '2022-10-04 20:19:10', '2022-10-04 20:19:10'),
(109, 68, 7, 2, '2022-10-04 20:19:20', '2022-10-04 20:19:20'),
(110, 68, 7, 2, '2022-10-04 20:19:30', '2022-10-04 20:19:30'),
(111, 69, 6, 2, '2022-10-05 19:43:44', '2022-10-05 19:43:44'),
(112, 69, 7, 1, '2022-10-05 19:46:09', '2022-10-05 19:46:09'),
(113, 72, 6, 2, '2022-10-08 20:55:15', '2022-10-08 20:55:15'),
(114, 72, 7, 2, '2022-10-09 18:19:08', '2022-10-09 18:19:08'),
(115, 78, 6, 2, '2022-10-11 02:35:21', '2022-10-11 02:35:21'),
(116, 78, 7, 2, '2022-10-11 02:35:42', '2022-10-11 02:35:42'),
(117, 78, 8, 2, '2022-10-11 02:36:08', '2022-10-11 02:36:08'),
(118, 78, 6, 2, '2022-10-11 02:36:32', '2022-10-11 02:36:32'),
(119, 78, 6, 2, '2022-10-11 02:36:53', '2022-10-11 02:36:53'),
(120, 78, 6, 2, '2022-10-11 02:37:10', '2022-10-11 02:37:10'),
(121, 80, 6, 2, '2022-10-12 07:45:19', '2022-10-12 07:45:19'),
(122, 80, 7, 2, '2022-10-12 07:46:06', '2022-10-12 07:46:06'),
(123, 80, 8, 2, '2022-10-12 07:50:38', '2022-10-12 07:50:38'),
(124, 81, 6, 2, '2022-10-12 14:53:20', '2022-10-12 14:53:20'),
(125, 80, 8, 2, '2022-10-13 06:01:49', '2022-10-13 06:01:49'),
(126, 83, 8, 2, '2022-10-13 14:18:20', '2022-10-13 14:18:20'),
(127, 83, 6, 2, '2022-10-13 14:18:40', '2022-10-13 14:18:40'),
(128, 83, 7, 2, '2022-10-13 14:18:54', '2022-10-13 14:18:54'),
(129, 88, 8, 2, '2022-10-17 16:58:03', '2022-10-17 16:58:03'),
(130, 88, 6, 2, '2022-10-17 16:58:29', '2022-10-17 16:58:29'),
(131, 88, 7, 2, '2022-10-17 16:58:50', '2022-10-17 16:58:50'),
(132, 88, 8, 2, '2022-10-17 16:59:43', '2022-10-17 16:59:43'),
(133, 88, 7, 2, '2022-10-17 17:00:10', '2022-10-17 17:00:10'),
(134, 88, 6, 2, '2022-10-17 17:00:34', '2022-10-17 17:00:34'),
(135, 88, 6, 2, '2022-10-17 17:00:58', '2022-10-17 17:00:58'),
(136, 88, 7, 2, '2022-10-17 17:01:16', '2022-10-17 17:01:16'),
(137, 88, 7, 2, '2022-10-17 17:01:33', '2022-10-17 17:01:33'),
(138, 88, 7, 2, '2022-10-17 17:01:50', '2022-10-17 17:01:50'),
(139, 96, 6, 2, '2022-10-20 08:40:51', '2022-10-20 08:40:51'),
(140, 97, 7, 2, '2022-10-21 10:33:54', '2022-10-21 10:33:54'),
(141, 98, 6, 2, '2022-10-21 13:29:51', '2022-10-21 13:29:51'),
(142, 98, 7, 2, '2022-10-21 13:30:04', '2022-10-21 13:30:04'),
(143, 100, 6, 2, '2022-10-22 03:43:10', '2022-10-22 03:43:10'),
(144, 100, 7, 2, '2022-10-22 03:43:27', '2022-10-22 03:43:27'),
(145, 100, 8, 2, '2022-10-22 03:43:43', '2022-10-22 03:43:43'),
(146, 90, 6, 2, '2022-10-22 08:54:21', '2022-10-22 08:54:21'),
(147, 90, 7, 2, '2022-10-22 08:54:32', '2022-10-22 08:54:32'),
(148, 90, 8, 2, '2022-10-22 08:54:43', '2022-10-22 08:54:43'),
(149, 90, 6, 2, '2022-10-22 08:55:29', '2022-10-22 08:55:29'),
(150, 90, 7, 2, '2022-10-22 08:55:40', '2022-10-22 08:55:40'),
(151, 90, 7, 2, '2022-10-22 08:55:48', '2022-10-22 08:55:48'),
(152, 90, 7, 2, '2022-10-22 08:55:58', '2022-10-22 08:55:58'),
(153, 90, 7, 2, '2022-10-22 08:56:13', '2022-10-22 08:56:13'),
(154, 106, 6, 1, '2022-10-24 09:57:14', '2022-10-24 09:57:14'),
(155, 108, 6, 2, '2022-10-24 15:57:55', '2022-10-24 15:57:55'),
(156, 108, 8, 2, '2022-10-24 15:59:22', '2022-10-24 15:59:22'),
(157, 108, 7, 2, '2022-10-24 16:00:57', '2022-10-24 16:00:57'),
(158, 109, 6, 2, '2022-10-25 16:06:18', '2022-10-25 16:06:18'),
(159, 109, 8, 2, '2022-10-25 16:06:49', '2022-10-25 16:06:49'),
(160, 109, 7, 2, '2022-10-25 16:07:11', '2022-10-25 16:07:11'),
(161, 109, 6, 2, '2022-10-25 16:07:50', '2022-10-25 16:07:50'),
(162, 109, 8, 2, '2022-10-25 16:08:18', '2022-10-25 16:08:18'),
(163, 109, 7, 2, '2022-10-25 16:08:39', '2022-10-25 16:08:39'),
(164, 109, 7, 2, '2022-10-25 16:09:01', '2022-10-25 16:09:01'),
(165, 109, 6, 2, '2022-10-25 16:09:24', '2022-10-25 16:09:24'),
(166, 109, 8, 2, '2022-10-25 16:09:36', '2022-10-25 16:09:36'),
(167, 109, 7, 2, '2022-10-25 16:09:45', '2022-10-25 16:09:45'),
(168, 109, 6, 2, '2022-10-25 16:09:55', '2022-10-25 16:09:55'),
(169, 109, 8, 2, '2022-10-25 16:10:08', '2022-10-25 16:10:08'),
(170, 109, 8, 2, '2022-10-25 16:10:51', '2022-10-25 16:10:51'),
(171, 109, 7, 2, '2022-10-25 16:11:00', '2022-10-25 16:11:00'),
(172, 109, 8, 2, '2022-10-25 16:11:11', '2022-10-25 16:11:11'),
(173, 109, 7, 2, '2022-10-25 16:11:30', '2022-10-25 16:11:30'),
(174, 115, 7, 2, '2022-10-27 01:59:04', '2022-10-27 01:59:04'),
(175, 115, 6, 2, '2022-10-27 01:59:18', '2022-10-27 01:59:18'),
(176, 115, 8, 2, '2022-10-27 01:59:36', '2022-10-27 01:59:36'),
(177, 115, 7, 2, '2022-10-27 01:59:51', '2022-10-27 01:59:51'),
(178, 115, 7, 2, '2022-10-27 02:00:02', '2022-10-27 02:00:02'),
(179, 116, 6, 2, '2022-10-28 15:46:09', '2022-10-28 15:46:09'),
(180, 116, 7, 2, '2022-10-28 15:46:22', '2022-10-28 15:46:22'),
(181, 116, 8, 2, '2022-10-28 15:46:32', '2022-10-28 15:46:32'),
(182, 116, 6, 2, '2022-10-28 15:47:18', '2022-10-28 15:47:18'),
(183, 116, 6, 2, '2022-10-28 15:47:27', '2022-10-28 15:47:27'),
(184, 116, 7, 2, '2022-10-28 15:47:37', '2022-10-28 15:47:37'),
(185, 116, 6, 2, '2022-10-28 15:47:58', '2022-10-28 15:47:58'),
(186, 116, 7, 2, '2022-10-28 15:48:12', '2022-10-28 15:48:12'),
(187, 118, 6, 2, '2022-10-28 19:34:59', '2022-10-28 19:34:59'),
(188, 118, 7, 1, '2022-10-28 19:35:44', '2022-10-28 19:35:44'),
(189, 122, 6, 2, '2022-10-30 17:44:16', '2022-10-30 17:44:16'),
(190, 122, 7, 2, '2022-10-30 17:44:30', '2022-10-30 17:44:30'),
(191, 122, 8, 2, '2022-10-30 17:44:42', '2022-10-30 17:44:42'),
(192, 123, 6, 2, '2022-10-31 10:19:35', '2022-10-31 10:19:35'),
(193, 123, 7, 2, '2022-10-31 10:19:50', '2022-10-31 10:19:50'),
(194, 123, 8, 2, '2022-10-31 10:20:05', '2022-10-31 10:20:05'),
(195, 123, 8, 2, '2022-10-31 10:20:29', '2022-10-31 10:20:29'),
(196, 123, 7, 2, '2022-10-31 10:20:47', '2022-10-31 10:20:47'),
(197, 123, 6, 2, '2022-10-31 10:21:03', '2022-10-31 10:21:03'),
(198, 123, 6, 2, '2022-10-31 10:21:19', '2022-10-31 10:21:19'),
(199, 123, 8, 2, '2022-10-31 10:23:07', '2022-10-31 10:23:07'),
(200, 123, 7, 2, '2022-10-31 10:23:22', '2022-10-31 10:23:22'),
(201, 123, 7, 2, '2022-10-31 10:23:23', '2022-10-31 10:23:23'),
(202, 123, 7, 2, '2022-10-31 10:23:29', '2022-10-31 10:23:29'),
(203, 123, 7, 2, '2022-10-31 10:23:50', '2022-10-31 10:23:50'),
(204, 123, 7, 2, '2022-10-31 10:24:04', '2022-10-31 10:24:04'),
(205, 123, 6, 2, '2022-10-31 10:24:17', '2022-10-31 10:24:17'),
(206, 123, 8, 2, '2022-10-31 10:25:33', '2022-10-31 10:25:33'),
(207, 123, 8, 2, '2022-10-31 10:25:48', '2022-10-31 10:25:48'),
(208, 123, 7, 2, '2022-10-31 10:26:02', '2022-10-31 10:26:02'),
(209, 123, 6, 2, '2022-10-31 10:26:18', '2022-10-31 10:26:18'),
(210, 123, 7, 2, '2022-10-31 10:26:32', '2022-10-31 10:26:32'),
(211, 123, 6, 2, '2022-10-31 10:26:48', '2022-10-31 10:26:48'),
(212, 124, 6, 2, '2022-11-01 14:57:20', '2022-11-01 14:57:20'),
(213, 124, 7, 2, '2022-11-01 14:58:09', '2022-11-01 14:58:09'),
(214, 124, 8, 2, '2022-11-01 14:58:41', '2022-11-01 14:58:41'),
(215, 125, 6, 2, '2022-11-01 23:26:57', '2022-11-01 23:26:57'),
(216, 125, 7, 2, '2022-11-01 23:27:16', '2022-11-01 23:27:16'),
(217, 125, 8, 2, '2022-11-01 23:27:31', '2022-11-01 23:27:31'),
(218, 126, 7, 2, '2022-11-01 23:37:18', '2022-11-01 23:37:18'),
(219, 126, 8, 2, '2022-11-01 23:39:44', '2022-11-01 23:39:44'),
(220, 126, 6, 2, '2022-11-01 23:41:02', '2022-11-01 23:41:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` bigint(20) DEFAULT 0,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `money`, `token`, `check`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, NULL, 'long@com', NULL, NULL, 590000, '12345678', 1, 1, NULL, '2022-09-06 03:33:25', '2022-09-15 10:00:12'),
(5, NULL, NULL, NULL, NULL, 120000, '12345679', 0, 1, NULL, '2022-09-06 07:15:10', '2022-09-07 04:00:09'),
(6, NULL, NULL, NULL, NULL, 5000, 'RSR1.210210.001.A1', 1, 1, NULL, '2022-09-09 17:29:53', '2022-09-10 08:33:08'),
(7, NULL, NULL, NULL, NULL, 0, 'RSR1.201013.001', 0, 1, NULL, '2022-09-10 05:23:21', '2022-09-10 05:23:21'),
(8, NULL, NULL, NULL, NULL, 3180000, 'QKQ1.191222.002', 0, 1, NULL, '2022-09-10 08:54:35', '2022-09-23 16:03:37'),
(9, NULL, NULL, NULL, NULL, 120000, 'MTC20F', 0, 1, NULL, '2022-09-10 12:07:32', '2022-09-12 06:07:27'),
(10, NULL, NULL, NULL, NULL, 120000, 'PPR1.180610.011', 0, 1, NULL, '2022-09-11 00:51:44', '2022-09-11 00:52:14'),
(11, NULL, NULL, NULL, NULL, 220000, 'SE1A.211212.001.B1', 0, 1, NULL, '2022-09-12 04:39:30', '2022-09-28 02:46:56'),
(12, NULL, NULL, NULL, NULL, 330000, 'SP1A.210812.016', 0, 1, NULL, '2022-09-12 05:22:34', '2022-09-12 08:48:02'),
(13, NULL, NULL, NULL, NULL, 0, 'E6B6D36A-039F-4BD6-BD83-B682A77F288B', 0, 1, NULL, '2022-09-12 08:25:16', '2022-09-12 08:25:16'),
(14, NULL, NULL, NULL, NULL, 0, '31CC0CD4-6387-41F9-9C8A-5E6E85033E89', 0, 1, NULL, '2022-09-12 08:28:38', '2022-09-12 08:28:38'),
(15, NULL, NULL, NULL, NULL, 0, '80A65D37-341B-4FDB-9412-672EB490AAEE', 0, 1, NULL, '2022-09-12 09:27:49', '2022-09-12 09:27:49'),
(16, NULL, NULL, NULL, NULL, 120000, 'CAF43B7A-344E-44D4-B64A-6F168EA13EDE', 0, 1, NULL, '2022-09-12 09:35:45', '2022-09-12 09:37:23'),
(17, NULL, NULL, NULL, NULL, 120000, '0D0FF65C-4BCD-4BE2-A714-30260C81139F', 0, 1, NULL, '2022-09-12 09:36:58', '2022-09-12 09:40:32'),
(18, NULL, NULL, NULL, NULL, 0, '23CB1B1F-0CE6-496B-8E45-9609145ED2AD', 0, 1, NULL, '2022-09-12 09:40:59', '2022-09-12 09:40:59'),
(19, NULL, NULL, NULL, NULL, 1445000, '3009B596-2A21-4711-A39B-6FB4B97454CF', 1, 1, NULL, '2022-09-12 09:42:48', '2022-09-17 02:55:32'),
(20, NULL, 'thanhtuandel3@gmail.com', NULL, NULL, 0, 'QP1A.190711.020', 0, 1, NULL, '2022-09-12 10:21:47', '2022-09-12 10:25:57'),
(21, NULL, NULL, NULL, NULL, 0, 'DF6D6CE9-94AC-4FE8-B850-0F2E053D0BD0', 0, 1, NULL, '2022-09-15 19:38:33', '2022-09-15 19:38:33'),
(22, NULL, NULL, NULL, NULL, 0, 'CFE73FD4-0361-45C3-AF0B-CD730502581B', 0, 1, NULL, '2022-09-16 01:59:07', '2022-09-16 01:59:07'),
(23, NULL, NULL, NULL, NULL, 320000, '0DBEFEB0-84EB-494E-A646-88A2DEEA5AD0', 0, 1, NULL, '2022-09-16 04:00:15', '2022-09-28 17:21:11'),
(24, NULL, 'phanluan@gmail.com', NULL, NULL, 5000, '90C34B95-9296-4445-8D1D-2118BD2D18AB', 1, 1, NULL, '2022-09-16 14:16:37', '2022-09-18 12:37:32'),
(25, NULL, NULL, NULL, NULL, 0, '12D82F2F-1D8D-4F3F-BCA0-4DB3ED500A2D', 0, 1, NULL, '2022-09-16 16:19:42', '2022-09-16 16:19:42'),
(26, NULL, NULL, NULL, NULL, 2275000, '8EC9E37C-6086-4DC5-A079-96AE9B8CD391', 1, 1, NULL, '2022-09-17 01:51:57', '2022-09-28 01:29:23'),
(27, NULL, NULL, NULL, NULL, 0, 'FC27A4F0-448F-4507-811A-0553CCBC9F79', 0, 1, NULL, '2022-09-17 01:54:23', '2022-09-17 01:54:23'),
(28, NULL, NULL, NULL, NULL, 0, '0BCBBB61-0E35-4903-833B-8C83050162C0', 0, 1, NULL, '2022-09-17 02:12:10', '2022-09-17 02:12:10'),
(29, NULL, NULL, NULL, NULL, 0, '6A04C674-4F51-45C4-BB64-C7DD40F6A304', 0, 1, NULL, '2022-09-17 02:30:49', '2022-09-17 02:30:49'),
(30, NULL, NULL, NULL, NULL, 0, 'FEF928FB-7AF8-4304-AE9D-D53222425439', 0, 1, NULL, '2022-09-17 02:34:34', '2022-09-17 02:34:34'),
(31, NULL, NULL, NULL, NULL, 0, 'E4D165C0-645E-4045-B4BF-ADB618199FF5', 0, 1, NULL, '2022-09-17 03:08:09', '2022-09-17 03:08:09'),
(32, NULL, NULL, NULL, NULL, 0, '695DFFC3-2E04-4049-BAAC-DBC77E59B032', 0, 1, NULL, '2022-09-19 12:36:41', '2022-09-19 12:36:41'),
(33, NULL, NULL, NULL, NULL, 0, '9C6EE988-C2DC-4B8E-9BF4-CF00AD9AA24C', 0, 1, NULL, '2022-09-20 17:22:35', '2022-09-20 17:22:35'),
(34, NULL, NULL, NULL, NULL, 0, '398B8FDF-2DD2-4C23-8A03-63D12FCAED5E', 0, 1, NULL, '2022-09-20 18:11:35', '2022-09-20 18:11:35'),
(35, NULL, NULL, NULL, NULL, 210000, 'C4C3E44C-B4FD-40F6-A61B-B782F402DB8F', 0, 1, NULL, '2022-09-21 13:49:49', '2022-09-21 13:51:16'),
(36, NULL, NULL, NULL, NULL, 0, 'FA209253-447A-4B82-87CF-2370A9C84C58', 0, 1, NULL, '2022-09-22 12:50:59', '2022-09-22 12:50:59'),
(37, NULL, NULL, NULL, NULL, 0, '19CA6768-AD07-4DD3-B7BC-267AB016050F', 0, 1, NULL, '2022-09-23 04:01:42', '2022-09-23 04:01:42'),
(38, NULL, NULL, NULL, NULL, 210000, '10F17216-3174-4497-99A2-E7E4C61C9FEC', 0, 1, NULL, '2022-09-24 02:23:05', '2022-09-24 02:23:44'),
(39, NULL, NULL, NULL, NULL, 0, 'AC7683F3-D8C6-46D6-85AB-55E8FEAEBFCF', 0, 1, NULL, '2022-09-24 03:29:22', '2022-09-24 03:29:22'),
(40, NULL, NULL, NULL, NULL, 120000, '14477E86-772C-46D4-9B20-3868B047CD95', 0, 1, NULL, '2022-09-24 04:00:35', '2022-09-24 04:00:59'),
(41, NULL, NULL, NULL, NULL, 0, '86304C09-52CC-405F-B314-EE5095B6287E', 0, 1, NULL, '2022-09-24 11:54:20', '2022-09-24 11:54:20'),
(42, NULL, NULL, NULL, NULL, 120000, '9EC84CA8-A1E4-4CF3-997B-10CDC2733338', 0, 1, NULL, '2022-09-25 05:44:47', '2022-09-25 05:44:56'),
(43, NULL, NULL, NULL, NULL, 0, 'B419978B-3726-46C8-A975-493207DF0E5E', 0, 1, NULL, '2022-09-25 07:40:30', '2022-09-25 07:40:30'),
(44, NULL, NULL, NULL, NULL, 555000, '0BCB85C8-54F4-49B2-B377-D088ACDA569F', 1, 1, NULL, '2022-09-26 09:44:07', '2022-09-26 09:47:04'),
(45, NULL, NULL, NULL, NULL, 0, '96EFE20D-F2E5-4221-8BB7-695702945AD4', 0, 1, NULL, '2022-09-27 14:26:37', '2022-09-27 14:26:37'),
(46, NULL, NULL, NULL, NULL, 105000, '59A53F96-EBC0-4C18-A310-5600804F371B', 1, 1, NULL, '2022-09-27 17:18:49', '2022-10-25 16:04:20'),
(47, NULL, NULL, NULL, NULL, 0, '3437BAA4-4234-449D-8D2B-522A37A7D0A8', 0, 1, NULL, '2022-09-27 21:56:20', '2022-09-27 21:56:20'),
(48, NULL, NULL, NULL, NULL, 120000, '7BC34A84-BA70-4822-8F06-32D5E87F5B64', 0, 1, NULL, '2022-09-28 06:49:26', '2022-09-28 06:49:58'),
(49, NULL, NULL, NULL, NULL, 0, 'CAFA743F-CB16-45F4-ABD4-F5C497A8CEC0', 0, 1, NULL, '2022-09-28 07:24:03', '2022-09-28 07:24:03'),
(50, NULL, NULL, NULL, NULL, 0, 'E665B279-7BF9-4E6A-9B67-BC5636F02163', 0, 1, NULL, '2022-09-28 14:18:20', '2022-09-28 14:18:20'),
(51, NULL, NULL, NULL, NULL, 0, 'A9DED89F-257C-4DD7-8386-527212ECB531', 0, 1, NULL, '2022-09-28 16:22:33', '2022-09-28 16:22:33'),
(52, NULL, NULL, NULL, NULL, 0, '68DDF0B3-D561-4444-AD3C-7EAA749FD2D2', 0, 1, NULL, '2022-09-30 01:36:18', '2022-09-30 01:36:18'),
(53, NULL, NULL, NULL, NULL, 0, 'A2CABE86-E8F8-49B2-9E84-0E2C3D6A8F77', 0, 1, NULL, '2022-09-30 02:46:53', '2022-09-30 02:46:53'),
(54, NULL, NULL, NULL, NULL, 0, '85155F28-06F5-4E43-8DE0-DC2F1E30467F', 0, 1, NULL, '2022-10-01 03:52:08', '2022-10-01 03:52:08'),
(55, NULL, NULL, NULL, NULL, 0, '2E9CFB4C-91FC-40FE-B736-2012EBBDBA9D', 0, 1, NULL, '2022-10-01 04:31:54', '2022-10-01 04:31:54'),
(56, NULL, NULL, NULL, NULL, 0, 'A62C6C4D-A223-4BA6-BB77-D4C5514025DB', 0, 1, NULL, '2022-10-01 09:37:49', '2022-10-01 09:37:49'),
(57, NULL, NULL, NULL, NULL, 0, '6672AC9F-13DD-4591-AA64-7B67D7876660', 0, 1, NULL, '2022-10-01 12:15:31', '2022-10-01 12:15:31'),
(58, NULL, NULL, NULL, NULL, 0, 'B978DB56-D1A7-4007-B1AC-605572EA3A06', 0, 1, NULL, '2022-10-01 21:52:02', '2022-10-01 21:52:02'),
(59, NULL, NULL, NULL, NULL, 0, 'CEE18EBD-6936-45C9-98D5-53809D6B4503', 0, 1, NULL, '2022-10-02 02:51:41', '2022-10-02 02:51:41'),
(60, NULL, NULL, NULL, NULL, 5000, 'F4FC59DB-9404-44C8-B8CF-99ECD2218668', 1, 1, NULL, '2022-10-02 16:34:56', '2022-10-02 16:35:22'),
(61, NULL, NULL, NULL, NULL, 5000, '8A44ECE1-9950-49B3-A18A-C49F87C77089', 1, 1, NULL, '2022-10-02 17:19:28', '2022-10-02 17:20:50'),
(62, NULL, NULL, NULL, NULL, 10000, '7C25CBF5-AACE-4743-9CC7-7E42565890D6', 0, 1, NULL, '2022-10-03 04:40:01', '2022-10-04 12:18:15'),
(63, NULL, NULL, NULL, NULL, 25000, '97BB7C9C-A5F4-40A9-8DCE-F554ED90539D', 1, 1, NULL, '2022-10-03 15:03:01', '2022-10-03 15:11:30'),
(64, NULL, NULL, NULL, NULL, 5000, 'E810EF35-1D98-496A-BC1D-C9EB78446BED', 1, 1, NULL, '2022-10-03 20:03:06', '2022-10-03 20:03:43'),
(65, NULL, NULL, NULL, NULL, 15000, '4158D22F-08EE-4353-A9E1-27447537A942', 1, 1, NULL, '2022-10-03 20:47:40', '2022-10-03 21:06:37'),
(66, NULL, NULL, NULL, NULL, 0, 'C8134B30-5E90-40E8-AA47-E2D602BFBB77', 0, 1, NULL, '2022-10-04 16:33:09', '2022-10-04 16:33:09'),
(67, NULL, NULL, NULL, NULL, 0, '92039353-554B-43FE-AFAA-575DC3E557F4', 0, 1, NULL, '2022-10-04 18:16:17', '2022-10-04 18:16:17'),
(68, NULL, NULL, NULL, NULL, 202000, '357019C6-E2CD-4471-B58D-8F16666109DC', 1, 1, NULL, '2022-10-04 20:14:35', '2022-10-04 20:19:30'),
(69, NULL, NULL, NULL, NULL, 15000, '0C9631DB-2E93-445D-8AD7-A7F886E977BB', 1, 1, NULL, '2022-10-05 19:43:12', '2022-10-05 19:48:39'),
(70, NULL, NULL, NULL, NULL, 0, '02ED0A54-226C-4B30-B593-B5F999265E1F', 0, 1, NULL, '2022-10-06 12:08:41', '2022-10-06 12:08:41'),
(71, NULL, NULL, NULL, NULL, 0, 'FEC40256-CF55-477F-807A-F52C9CEAA522', 0, 1, NULL, '2022-10-07 12:32:07', '2022-10-07 12:32:07'),
(72, NULL, NULL, NULL, NULL, 25000, '409C3D86-6C5B-447A-9980-03B7B47E9FE6', 1, 1, NULL, '2022-10-08 20:54:59', '2022-10-09 18:19:08'),
(73, NULL, NULL, NULL, NULL, 0, '147CBB24-724C-421F-BDC4-3BAE10B5D32A', 0, 1, NULL, '2022-10-09 10:24:09', '2022-10-09 10:24:09'),
(74, NULL, NULL, NULL, NULL, 0, '087C68F9-5A2E-4118-A84E-38BC26AB46FB', 0, 1, NULL, '2022-10-09 10:54:06', '2022-10-09 10:54:06'),
(75, NULL, NULL, NULL, NULL, 5000, '275FA3A2-20B0-4CDF-868D-953FABA42FC0', 1, 1, NULL, '2022-10-09 18:10:54', '2022-10-09 18:11:02'),
(76, NULL, NULL, NULL, NULL, 0, '0DE71F55-795A-466B-9DC5-360159951B31', 0, 1, NULL, '2022-10-09 18:42:29', '2022-10-09 18:42:29'),
(77, NULL, NULL, NULL, NULL, 0, 'CDFB94A2-F9ED-447B-8B49-38947D822621', 0, 1, NULL, '2022-10-10 06:28:06', '2022-10-10 06:28:06'),
(78, NULL, NULL, NULL, NULL, 64000, '14E6F075-8F7F-4975-BC94-F29317F4AE9C', 1, 1, NULL, '2022-10-11 02:34:45', '2022-10-11 02:37:10'),
(79, NULL, NULL, NULL, NULL, 0, 'CF4B7945-9648-4BC0-8FB6-BD98ED9719F6', 0, 1, NULL, '2022-10-12 01:37:40', '2022-10-12 01:37:40'),
(80, NULL, NULL, NULL, NULL, 43000, 'BFD362A8-6BB0-4DAD-834A-480E03A0B713', 0, 1, NULL, '2022-10-12 07:43:53', '2022-10-14 17:33:42'),
(81, NULL, NULL, NULL, NULL, 10000, '2A53436C-9643-4728-A654-C716064ADA4C', 0, 1, NULL, '2022-10-12 14:52:49', '2022-10-12 14:53:20'),
(82, NULL, NULL, NULL, NULL, 0, '251865CE-2FD6-4F17-A956-DDDFD1402B8A', 0, 1, NULL, '2022-10-12 17:38:06', '2022-10-12 17:38:06'),
(83, NULL, NULL, NULL, NULL, 34000, 'BED73BC3-A108-4E7C-8565-F799212E98EF', 1, 1, NULL, '2022-10-13 14:17:40', '2022-10-13 14:18:54'),
(84, NULL, NULL, NULL, NULL, 5000, 'DD4D1548-832C-4697-A976-2587744852AB', 1, 1, NULL, '2022-10-13 15:59:58', '2022-10-13 16:03:30'),
(85, NULL, NULL, NULL, NULL, 10000, 'C2676E9D-D491-4D9B-BBFA-E27A3D31BF62', 1, 1, NULL, '2022-10-15 17:56:27', '2022-10-19 09:59:42'),
(86, NULL, NULL, NULL, NULL, 0, 'F0A9EB9F-55F1-4443-BF4A-0533BF984B3E', 0, 1, NULL, '2022-10-15 17:58:49', '2022-10-15 17:58:49'),
(87, NULL, NULL, NULL, NULL, 0, 'EDD9F3A2-42D2-4396-85D0-B6273A7395F3', 0, 1, NULL, '2022-10-17 02:23:14', '2022-10-17 02:23:14'),
(88, NULL, NULL, NULL, NULL, 103000, 'E08C8C9E-A9BE-42BB-89A8-0BA063472062', 1, 1, NULL, '2022-10-17 16:56:28', '2022-10-17 17:01:50'),
(89, NULL, NULL, NULL, NULL, 5000, '8ADEF670-8508-4E70-A6DD-7A8D028E1F85', 1, 1, NULL, '2022-10-17 22:13:11', '2022-10-17 22:13:27'),
(90, NULL, NULL, NULL, NULL, 84000, '2D188395-0AF3-45BB-B22A-38D2D91285C7', 1, 1, NULL, '2022-10-18 07:46:10', '2022-10-22 08:56:13'),
(91, NULL, NULL, NULL, NULL, 0, 'DB6960BE-8950-4EAF-8578-CF83D05BF639', 0, 1, NULL, '2022-10-18 17:34:53', '2022-10-18 17:34:53'),
(92, NULL, NULL, NULL, NULL, 0, 'A79BA98D-B876-4D57-9A83-DA53C41404CA', 0, 1, NULL, '2022-10-18 19:00:34', '2022-10-18 19:00:34'),
(93, NULL, NULL, NULL, NULL, 5000, '57FBDE71-6AD9-42F8-8893-FF5F28E5CA99', 1, 1, NULL, '2022-10-18 22:28:59', '2022-10-18 22:29:34'),
(94, NULL, NULL, NULL, NULL, 5000, '93BA92D2-7677-424D-BD4C-B3652CDA1D37', 1, 1, NULL, '2022-10-19 14:12:12', '2022-10-19 14:12:19'),
(95, NULL, NULL, NULL, NULL, 0, 'F10F2BB6-31F8-47CF-B040-EF94EFF004E6', 0, 1, NULL, '2022-10-19 20:49:13', '2022-10-19 20:49:13'),
(96, NULL, NULL, NULL, NULL, 15000, 'B7168D8D-AA08-46E6-AF2E-2716174349D8', 1, 1, NULL, '2022-10-20 08:23:27', '2022-10-20 08:42:07'),
(97, NULL, NULL, NULL, NULL, 15000, 'F8497B6E-7D40-43E8-87A7-0FD0682265A6', 1, 1, NULL, '2022-10-21 10:31:19', '2022-10-21 10:33:54'),
(98, NULL, NULL, NULL, NULL, 20000, '3DC0FF7F-A3AF-48EC-A9C9-114E41C26B17', 0, 1, NULL, '2022-10-21 13:29:23', '2022-10-21 13:30:04'),
(99, NULL, NULL, NULL, NULL, 0, '740FA74C-E20D-4398-8144-F09784326334', 0, 1, NULL, '2022-10-22 00:33:09', '2022-10-22 00:33:09'),
(100, NULL, NULL, NULL, NULL, 34000, '40E4F042-185B-4743-8A02-758BA62929AF', 1, 1, NULL, '2022-10-22 03:42:38', '2022-10-22 03:43:47'),
(101, NULL, NULL, NULL, NULL, 5000, 'C937EDDA-C04F-4E14-A517-80B05D3FDCE0', 1, 1, NULL, '2022-10-22 05:49:05', '2022-10-22 05:49:14'),
(102, NULL, NULL, NULL, NULL, 5000, '2B88E75D-EE39-4490-950F-DD2D34A47672', 1, 1, NULL, '2022-10-22 14:29:52', '2022-10-22 14:30:08'),
(103, NULL, NULL, NULL, NULL, 0, '2C6E41A6-378D-4421-A1E5-C90359AA4129', 0, 1, NULL, '2022-10-23 07:45:02', '2022-10-23 07:45:02'),
(104, NULL, NULL, NULL, NULL, 5000, 'E3E6DC88-9F15-4AA2-9A4A-5FD0A061146E', 1, 1, NULL, '2022-10-23 17:38:56', '2022-10-23 17:39:10'),
(105, NULL, NULL, NULL, NULL, 0, 'F6CE600E-E8DB-4208-AEE4-1D415E2F4F63', 0, 1, NULL, '2022-10-24 06:21:30', '2022-10-24 06:21:30'),
(106, NULL, NULL, NULL, NULL, 5000, 'C1A555FA-8F66-4DCD-83F1-2A7D4077CD8B', 1, 1, NULL, '2022-10-24 09:56:25', '2022-10-24 09:56:34'),
(107, NULL, NULL, NULL, NULL, 0, '1087B5B7-0526-4A5D-9394-F4C948DACCC0', 0, 1, NULL, '2022-10-24 13:00:04', '2022-10-24 13:00:04'),
(108, NULL, NULL, NULL, NULL, 34000, '07C9D5CB-1802-4097-8A36-1C6E42A0CBAF', 1, 1, NULL, '2022-10-24 15:57:36', '2022-10-24 16:01:02'),
(109, NULL, NULL, NULL, NULL, 164000, '781493D0-02DC-47D9-B62B-AC1446BF5977', 1, 1, NULL, '2022-10-25 12:28:07', '2022-10-27 08:17:22'),
(110, NULL, NULL, NULL, NULL, 0, '8B961A76-7B10-48FF-B82B-33B1A2F962DD', 0, 1, NULL, '2022-10-25 20:45:30', '2022-10-25 20:45:30'),
(111, NULL, NULL, NULL, NULL, 0, 'B5D5C4AB-C507-493C-B5EA-776E339C8D25', 0, 1, NULL, '2022-10-26 18:17:48', '2022-10-26 18:17:48'),
(112, NULL, NULL, NULL, NULL, 0, 'E4B244A2-03A1-4D80-BB6D-22C9FF53F6F3', 0, 1, NULL, '2022-10-26 20:10:15', '2022-10-26 20:10:15'),
(113, NULL, NULL, NULL, NULL, 0, '11609EF0-CDEE-4A55-AAE4-C238F7D15B86', 0, 1, NULL, '2022-10-26 20:25:46', '2022-10-26 20:25:46'),
(114, NULL, NULL, NULL, NULL, 0, '0E991BB9-EC03-47EA-961A-B169E973EDD0', 0, 1, NULL, '2022-10-26 20:29:40', '2022-10-26 20:29:40'),
(115, NULL, NULL, NULL, NULL, 54000, '32E37123-5033-459C-9D72-42287113E4BF', 1, 1, NULL, '2022-10-27 01:58:30', '2022-10-27 02:00:02'),
(116, NULL, NULL, NULL, NULL, 84000, 'E5358DE8-6157-4582-9EBD-3B56C0FEE622', 1, 1, NULL, '2022-10-28 15:45:35', '2022-10-28 15:48:12'),
(117, NULL, NULL, NULL, NULL, 0, 'EC46CDA3-A1BD-4CB0-8CFD-E4F90F8889B0', 0, 1, NULL, '2022-10-28 17:38:54', '2022-10-28 17:38:54'),
(118, NULL, NULL, NULL, NULL, 10000, '9B8339AF-CD11-44A4-B88E-33C514B66816', 0, 1, NULL, '2022-10-28 19:34:06', '2022-10-28 19:34:59'),
(119, NULL, NULL, NULL, NULL, 0, '581D7CB3-CF54-4F65-B461-7D84537291E7', 0, 1, NULL, '2022-10-28 23:42:06', '2022-10-28 23:42:06'),
(120, NULL, NULL, NULL, NULL, 5000, '2938BB63-D57A-40F5-96A3-D8A4EEAA3D03', 1, 1, NULL, '2022-10-29 18:52:56', '2022-10-29 18:53:31'),
(121, NULL, NULL, NULL, NULL, 0, 'DF6183DF-7D66-4357-9580-0D61DEF547A6', 0, 1, NULL, '2022-10-30 14:51:16', '2022-10-30 14:51:16'),
(122, NULL, NULL, NULL, NULL, 34000, '5EF7EE93-F957-44C1-8524-64402E0A5B61', 1, 1, NULL, '2022-10-30 17:43:28', '2022-10-30 17:44:42'),
(123, NULL, NULL, NULL, NULL, 205000, 'A8108B7D-65EB-4AC4-B79F-EB015B08987E', 1, 1, NULL, '2022-10-31 10:18:59', '2022-11-01 11:04:50'),
(124, NULL, NULL, NULL, NULL, 34000, 'C05245EF-AF75-457D-9193-2A0696DEB66B', 1, 1, NULL, '2022-11-01 14:56:06', '2022-11-01 14:58:41'),
(125, NULL, 'n.rahmatyar.28@gmail.com', NULL, NULL, 34000, '28DD3696-921B-4CA0-B6F5-AA6F4AB07E15', 1, 1, NULL, '2022-11-01 23:26:27', '2022-11-01 23:28:36'),
(126, NULL, 'stevesaad98@gmail.com', NULL, NULL, 34000, 'F9CF785D-0208-4E67-B6F8-3E7E120C27BE', 1, 1, NULL, '2022-11-01 23:33:01', '2022-11-01 23:54:38');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `award_days`
--
ALTER TABLE `award_days`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `award_shares`
--
ALTER TABLE `award_shares`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `feed_backs`
--
ALTER TABLE `feed_backs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `task_users`
--
ALTER TABLE `task_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `award_days`
--
ALTER TABLE `award_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `award_shares`
--
ALTER TABLE `award_shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feed_backs`
--
ALTER TABLE `feed_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `task_users`
--
ALTER TABLE `task_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
