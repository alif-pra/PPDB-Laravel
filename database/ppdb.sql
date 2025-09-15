-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ppdb
CREATE DATABASE IF NOT EXISTS `ppdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ppdb`;

-- Dumping structure for table ppdb.biodata
CREATE TABLE IF NOT EXISTS `biodata` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `users` bigint unsigned NOT NULL,
  `nama_panggilan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmp_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_sdr_kandung` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_sdr_tiri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `biodata_users_foreign` (`users`),
  CONSTRAINT `biodata_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.biodata: ~2 rows (approximately)
INSERT INTO `biodata` (`id`, `users`, `nama_panggilan`, `tmp_lahir`, `tgl_lahir`, `jns_kelamin`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `alamat`, `created_at`, `updated_at`) VALUES
	(3, 7, 'Zacky', 'Cimahi', '2006-07-03', 'Laki-laki', '1', '2', '0', 'Cibabat', '2025-05-17 12:35:21', '2025-05-17 12:36:02'),
	(4, 8, 'Alif', 'Mekah', '2025-05-17', 'Laki-laki', '1', '0', '0', 'Padalarang', '2025-05-17 12:50:39', '2025-05-17 12:50:39');

-- Dumping structure for table ppdb.dataortu
CREATE TABLE IF NOT EXISTS `dataortu` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users` bigint unsigned NOT NULL,
  `nama_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmp_lahir_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_ayah` date NOT NULL,
  `pendidikan_ayah` enum('SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_ayah` enum('Islam','Budha','Kristen','Hindu','Khonghucu','Katolik') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmp_lahir_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir_ibu` date NOT NULL,
  `pendidikan_ibu` enum('SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama_ibu` enum('Islam','Budha','Kristen','Hindu','Khonghucu','Katolik') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir_wali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `pekerjaan_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama_wali` enum('Islam','Budha','Kristen','Hindu','Khonghucu','Katolik') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_wali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_hp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dataortu_users_foreign` (`users`),
  CONSTRAINT `dataortu_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.dataortu: ~2 rows (approximately)
INSERT INTO `dataortu` (`id`, `users`, `nama_ayah`, `ktp_ayah`, `tmp_lahir_ayah`, `tgl_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `agama_ayah`, `alamat_ayah`, `nama_ibu`, `ktp_ibu`, `tmp_lahir_ibu`, `tgl_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `agama_ibu`, `alamat_ibu`, `kk`, `nama_wali`, `tmp_lahir_wali`, `tgl_lahir_wali`, `pekerjaan_wali`, `agama_wali`, `alamat_wali`, `nomor_hp`, `created_at`, `updated_at`) VALUES
	(3, 7, 'Ilham', '7887654456789', 'Cimahi', '2025-05-17', 'S1', 'Guru', 'Islam', 'CIbabat', 'Zalian', '987654358878', 'Cimahi', '2025-05-17', 'S1', 'Guru', 'Islam', 'Cibabat', '345678987654', NULL, NULL, NULL, NULL, 'Islam', NULL, '0862765732', '2025-05-17 12:48:13', '2025-05-17 13:00:50'),
	(4, 8, 'Robert', '78876544567891', 'Bandung', '2025-05-17', 'S1', 'Guru', 'Islam', 'Padalarang', 'Catty', '9876543588781', 'Cimahi', '2025-05-17', 'S1', 'CEO', 'Islam', 'Padalarang', '765436789', NULL, NULL, NULL, NULL, 'Islam', NULL, NULL, '2025-05-17 12:52:53', '2025-05-17 13:02:09');

-- Dumping structure for table ppdb.datapendukung
CREATE TABLE IF NOT EXISTS `datapendukung` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users` bigint unsigned NOT NULL,
  `asal_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kps` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `datapendukung_users_foreign` (`users`),
  CONSTRAINT `datapendukung_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.datapendukung: ~2 rows (approximately)
INSERT INTO `datapendukung` (`id`, `users`, `asal_sekolah`, `alamat_sekolah`, `npsn_sekolah`, `kip`, `kps`, `kks`, `pkh`, `created_at`, `updated_at`) VALUES
	(3, 7, 'SMP Negeri 1 Cimahi', 'Cimahi', '098765', NULL, NULL, NULL, NULL, '2025-05-17 12:48:46', '2025-05-17 12:48:46'),
	(4, 8, 'SMP Negeri 1 Cimahi', 'Cimahi', '098765', NULL, NULL, NULL, NULL, '2025-05-17 12:53:07', '2025-05-17 12:53:07');

-- Dumping structure for table ppdb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table ppdb.infosekolah
CREATE TABLE IF NOT EXISTS `infosekolah` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `users` bigint unsigned NOT NULL,
  `nama_kepsek` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `npsn_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nsm_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `akreditasi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_sekolah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visi` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thn_ajaran` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `infosekolah_users_foreign` (`users`),
  CONSTRAINT `infosekolah_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.infosekolah: ~1 rows (approximately)
INSERT INTO `infosekolah` (`id`, `users`, `nama_kepsek`, `nama_sekolah`, `npsn_sekolah`, `nsm_sekolah`, `akreditasi`, `alamat_sekolah`, `email_sekolah`, `telp_sekolah`, `status`, `visi`, `misi`, `thn_ajaran`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Agus Priyatmono Nugroho, M.Si', 'SMK Negeri 1 Cimahi', '20224136', '321020903003', 'A', 'Jl. Mahar Martanegara No.48', 'info@smkn1-cmi.sch.id', '022-6629683', 'Terakreditasi', 'Terwujudnya sekolah dengan lulusan yang unggul dan berakhlaq mulia, berbudaya kerja, berjiwa technopreuneurship serta berwawasan global sesuai tuntutan industri dan masyarakat.', 'a. Menghasilkan peserta didik yang unggul, beriman dan bertakwa kepada Tuhan Yang Maha Esa, berakhlak mulia, berkebinekaan, mandiri, bergotong royong, bernalar kritis, kreatif.\r\nb. Mewujudkan lingkungan yang berbudaya kerja.\r\nc. Menghasilkan peserta didik yang terampil serta berjiwa wirausaha sesuai dengan bidang ilmu yang dipelajarinya (Technopreuneurship).\r\nd. Menumbuh kembangkan literasi, penguasaan perkembangan teknologi, informasi, memahami keberagaman sosial budaya dan kultur.\r\ne. Menyiapkan peserta didik menjadi tenaga kerja yang handal serta mampu bersaing di didunia kerja.\r\nf. Meningkatkan pelayanan pendidikan dan pengelolaan sekolah melalui optimalisasi penjaminan mutu pendidikan.', '2025/2026', '2023-10-31 02:06:37', '2025-05-17 10:00:36');

-- Dumping structure for table ppdb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.migrations: ~12 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_07_08_063613_alter_users', 1),
	(6, '2022_07_08_064219_add_photo', 1),
	(7, '2022_07_08_113607_add_id_registrasi', 1),
	(8, '2022_07_08_200005_create__biodata_table', 1),
	(9, '2022_07_09_211945_create_dataortu_table', 1),
	(10, '2022_07_10_113646_create_datapendukung_table', 1),
	(11, '2022_07_11_205029_add_role_users', 1),
	(12, '2022_07_19_183913_create_infosekolah_table', 1);

-- Dumping structure for table ppdb.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.password_resets: ~0 rows (approximately)

-- Dumping structure for table ppdb.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table ppdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_registrasi` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ppdb.users: ~6 rows (approximately)
INSERT INTO `users` (`id`, `role`, `name`, `nisn`, `email`, `id_registrasi`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', '1', 'admin2403@gmail.com', '0', '2023-10-17 03:29:16', '$2y$10$NJxLbKM2uU8deN2DSIUikuBKpkQmIJOOAvZQwN9wr7QW/nl/FWdYq', 'uploads/admin.jpg', 'vMbmvsp0Up6w7hMqpvdWdHUWcQ1yVfap3uJglYf0dXnuqHi6IC5XVcmp5mPp', '2023-10-17 03:29:16', '2025-05-17 12:18:45'),
	(7, 2, 'Muhammad Zacky Zalian Ilham', '123456789', 'zacky@gmail.com', 'DAF-20250517192801', NULL, '$2y$10$Js5/kw.kmjJKz4qKcn8rH.b1PCMmsO5ldWx5iWJBVw8GTLtoZUib2', 'uploads/zacky.jpg', NULL, NULL, NULL),
	(8, 2, 'Alif Pratama', '987654321', 'alif@gmail.com', 'DAF-20250517192833', NULL, '$2y$10$9x7MH9LQqjbdpg6LqDaZ6.EGlYdSFMJYs8x4e0SLC0eF6QhX6Dhzu', 'uploads/alif.jpg', NULL, NULL, NULL),
	(9, 2, 'Andrian Aminudin', '135798642', 'andrian@gmail.com', 'DAF-20250517192900', NULL, '$2y$10$Eb6V1js7U9ed7FtdhYs0beqJe/g7O0rJ22Lx9SXIbCbpru61gZ3pW', 'uploads/andrian.jpg', NULL, NULL, NULL),
	(10, 2, 'Muhammad Aditya Resva Fauzan', '246897531', 'aditya@gmail.com', 'DAF-20250517192940', NULL, '$2y$10$cpgKzdvarnOx70DHjVzCpuOH3ftEFPF1xdrC6KFaS48i6BGUT6IMK', 'uploads/adit.jpg', NULL, NULL, NULL),
	(11, 2, 'Randi Pratama', '678912345', 'randi@gmail.com', 'DAF-20250517193015', NULL, '$2y$10$8jLbjZPddJl.hZRAbuQGkuC9rIlRXiuOGeGjvT/CbP/aIS..GxnDu', 'uploads/randi.jpg', NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
