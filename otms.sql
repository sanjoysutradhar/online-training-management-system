-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2022 at 05:58 PM
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
-- Database: `otms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'web design', 'This is web design description', 'admin/images/category-images/1670523296.jpg', 1, '2022-12-08 12:14:56', '2022-12-10 06:52:50'),
(6, 'Graphics', 'This is graphics description', 'admin/images/category-images/1670676875.png', 1, '2022-12-10 06:54:35', '2022-12-10 06:54:35'),
(7, 'Data Science', 'This is Data Science description', 'admin/images/category-images/1670676920.jpg', 1, '2022-12-10 06:55:20', '2022-12-10 06:55:20'),
(8, 'PHP With Laravel Framework', 'This is PHP with Laravel Framework description', 'admin/images/category-images/1670774766.webp', 1, '2022-12-10 06:59:11', '2022-12-11 10:06:06'),
(9, 'Ethical Hacking', 'This is description of ethical hacking', 'admin/images/category-images/1670774446.jpg', 1, '2022-12-11 10:00:46', '2022-12-11 10:00:46');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objective` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `offer_status` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `offer_fee` int(11) NOT NULL DEFAULT 0,
  `offer_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `teacher_id`, `title`, `objective`, `description`, `starting_date`, `fee`, `image`, `hit_count`, `offer_status`, `status`, `created_at`, `updated_at`, `offer_fee`, `offer_image`, `offer_date`) VALUES
(1, 8, 1, 'Laravel For Beginners', 'What Will I Learn?\r\nলারাভেল এর গুরুত্ব\r\nলারাভেল এর ব্যবহার\r\nওয়েব ডেভেলপমেন্ট, সফটওয়্যার ডেভেলপমেন্ট, অ্যাপ্লিকেশান ডেভেলপমেন্ট\r\nব্লগ\r\nই-কমার্স সাইট\r\nমোবাইল এপ্লিকেশন', '<div class=\"course-content-title\" style=\"color: rgb(31, 41, 73); font-family: Roboto; font-size: 16px;\"><h4 class=\"tutor-segment-title\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 23px; font-size: 20px; color: rgb(0, 0, 0);\">About This Course</h4></div><div class=\"tutor-course-content-content\" style=\"color: rgb(31, 41, 73); font-family: Roboto; font-size: 16px;\"><div class=\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\"><div dir=\"auto\">২০১১ সাল থেকে এখন পর্যন্ত লারাভেল পিএইচপির সেরা ফ্রেমওয়ার্ক হিসেবে আছে। লারাভেল হচ্ছে পিএইচপির একটি জনপ্রিয় ফ্রেমওয়ার্ক।</div></div><div class=\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\"><div dir=\"auto\">লারাভেল দিয়ে তৈরি করা একটি ওয়েব অ্যাপ্লিকেশন অনেক বেশি কোয়ালিটিফুল,এবং অনেক বেশি সিকিউরিটি সম্পন্ন হয়ে থাকে। এছাড়াও লারাভেল দিয়ে পূর্ণাঙ্গ ওয়েব এপ্লিকেশন তৈরি করা যায়।</div><div dir=\"auto\"></div><div dir=\"auto\">লারাভেল ফ্রেমওয়ার্ক এত খ্যাতি অর্জন করার কারণ হচ্ছে যে এই ফ্রেমওয়ার্কে অনেক ধরনের টেমপ্লেট ও কোড পাওয়া যায় যার সাহায্যে একটি ওয়েবসাইট তৈরি করা খুবই সহজ হয়ে ওঠে । শুধু তাই নয় এর মাধ্যমে আপনি অনেক কম সময়ের মধ্যেই একটি ওয়েবসাইট তৈরী করতে পারবেন।</div><div dir=\"auto\">ওয়েব সার্ভার সাইড স্ক্রিপ্টিং ল্যাংগুয়েজ পিএইচপি তে দ্রুত এবং নির্ভুলভাবে কাজ করার জন্য ব্যবহার করা হয় এই লারাভেল ফ্রেমওয়ার্কটি। এটির মাধ্যমে ওয়েব ডেভেলপমেন্ট, সফটওয়্যার ডেভেলপমেন্টের কাজ খুব সহজেই করা যায়।</div></div></div>', '2022-12-15', 25000, 'admin/images/course-images/1670685535.jpg', 4, 1, 1, '2022-12-10 09:18:55', '2022-12-12 08:39:36', 15000, 'admin/images/course-images/1670757905.jpg', '2022-12-15'),
(3, 6, 1, 'Master Class on Graphics Design', 'What Will I Learn?\r\nThe course will help you to set the foundation of Graphic Design.\r\nLearn basic control over graphics design using Adobe Photoshop.\r\nGet command over Selection tool, Crop tool, Spot healing, Shapes, Pen tool, Smart Object etc.\r\nFull-fledged document setup.', '<div class=\"course-content-title\" style=\"color: rgb(31, 41, 73); font-family: Roboto; font-size: 16px;\"><h4 class=\"tutor-segment-title\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 23px; font-size: 20px; color: rgb(0, 0, 0);\">About This Course</h4></div><div class=\"tutor-course-content-content\" style=\"color: rgb(31, 41, 73); font-family: Roboto; font-size: 16px;\"><h3 style=\"font-weight: 600; line-height: 28px; font-size: 20px; color: rgb(31, 41, 73); padding-top: 0px;\">Master Class on Graphics Design</h3><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\">In recent study, it is found that by the end of the year 2020 demand for graphic designers will be increased by 13% as the online business is booming in a massive pattern. To meet the design demand for these numerous numbers of upcoming websites, the need for more talented designers is a must. A graphic designer can earn independently as a freelancer or being a part of any organization, where regular job hours doesn’t matter unless the creativity inside him or her. The service field of a graphic designer is quite widespread, from private to government organizations there are huge career opportunities left for graphic designers. So, at the end of the day, this knowledge will add your value to your career path to do anything creative. Asif Hossain is currently working as the Head of Creatives at Robi 10 Minute School, Bangladesh’s largest online educational platform. Besides, he is also working as a Creative Executive of YouTube at Channel I, the largest television network channel in Bangladesh. In addition, he is the author of a skill development book named “গ্রাফিক ডিজাইনের আসল ফান্ডা”</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"><a href=\"https://www.facebook.com/interactivecares\" target=\"_blank\" rel=\"noopener\" style=\"color: rgb(24, 179, 199); box-shadow: none;\">Interactive Cares</a>&nbsp;in this masterclass the topics to be discussed are:</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Introduction to graphic design trends</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Why graphic design?</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Basic controls of Adobe Photoshop</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Document setup</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Layer basics</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Color &amp; gradient apply</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Font &amp; typography</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Selection tool, Crop tool, Spot healing brush tool</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Shapes, Pen tool, Smart Object</span></p><p style=\"margin-bottom: 10px;\"><span id=\"cch_f36b51b7d10e75a\" class=\"_mh6 _wsc\"># Save a document</span></p></div>', '2022-12-22', 10000, 'admin/images/course-images/1670750405.webp', 4, 1, 1, '2022-12-11 03:20:05', '2022-12-11 11:33:08', 5222, 'admin/images/course-images/1670757725.jpg', '2022-12-30'),
(5, 1, 1, 'Professional Web Design & Development', 'Through this professional course one will learn how to create website using html5/css3/js/bootstrap. We will train with modern technology as per client needs.', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\"><span style=\"font-weight: 700;\">This training program is jointly organized by BITM &amp; Sigma Systems Pvt Ltd<br><br>Training will be held in Sigma Systems Pvt Ltd</span></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Once successful competition of this course we will provide real world client project if you are capable doing so. Also, we will help you to create your freelancer career on freelancer.com or upwork marketplace. For outstanding performer, we will provide few initial projects from real client, and you will be able to communicate directly with those client (this is for outstanding performer those will prove themselves to us and can take pressure to complete real project)<br><br><span style=\"font-size: 12pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\"><span style=\"font-weight: 700;\">Course Outline:<br></span></span></span><br><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">&nbsp;<span style=\"font-weight: 700;\">Module 1: Photoshop</span></span></p><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Basic knowledge of Photoshop</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Tools overview</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Image editing</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Retouching Techniques</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Filtrating &amp; Drawings</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Layer Management</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Using Presets</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Typography</span></li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(62, 62, 62); outline: none; font-size: 16px; font-family: Roboto, sans-serif; line-height: 21px; text-align: justify; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\"><span style=\"font-weight: 700;\">Module 2: HTML</span></span></p><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Introduction to HTML</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Which IDE to use and how to use IDE for HTML, CSS and PHP, Basic ideas on IDE tools and menu.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Ideas on HTML Attributes and Tags, how and where to use which attributes and tags. Showing Common mistakes on tag placements.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">HTML headings, paragraph, anchor, image, inline elements, block elements overview, usages and placements.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">HTML Form elements, input, select, textarea, radio box, checkbox, buttons elements overview, usages and placements.</span></li></ul><p><span style=\"color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-size: 10pt; background-image: none !important; background-position: 0px 0px !important; background-size: initial !important; background-repeat: repeat !important; background-attachment: scroll !important; background-origin: initial !important; background-clip: initial !important;\"><span style=\"font-weight: 700;\">Module 3: HTML &amp; HTML 5 &nbsp;&nbsp;</span></span><br style=\"color: rgb(62, 62, 62); font-family: Roboto, sans-serif; font-size: 14px;\"></p><ul style=\"margin: 20px 0px; padding: 0px; list-style: none; font-family: Roboto, sans-serif; color: rgb(62, 62, 62); font-size: 14px;\"><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">HTML lists, tables, quote, frames, fieldset,iframe elements overview, usages and placements.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">Introduction to HTML5 and overview on difference from HTML.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">HTML5 elements overview, usages and placements.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">HTML5 media, video, audio elements overview, usages and placements.</span></li><li style=\"list-style: none; margin: 0px 0px 8px; padding: 0px 0px 0px 15px; display: block; background: url(&quot;../images/li_bg.png&quot;) left 8px / 6px no-repeat scroll rgba(0, 0, 0, 0); font-size: 16px; line-height: 23px;\"><span style=\"font-size: 10pt; background: none 0px 0px repeat scroll rgba(0, 0, 0, 0) !important;\">HTML5 Canvas, SVG and Media elements overview, usages and placements.</span></li></ul>', '2022-12-15', 15000, 'admin/images/course-images/1670758191.jpg', 1, 1, 1, '2022-12-11 05:29:51', '2022-12-11 11:14:00', 10000, 'admin/images/course-images/1670759063.jpg', '2022-12-15'),
(6, 1, 1, 'Web Design & Development With CMS', 'Web Application Development Course is the most important course for a web developer. By this course, a static website is converted to a dynamic one by the use of web programming language and database. We provide web development course using PHP programming language and my SQL database. We are the Best Web Design Development Training in Dhaka Bangladesh.', '<h3 style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-weight: 600; line-height: 24px; color: rgb(255, 255, 255); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px; background: rgb(10, 154, 253); padding: 15px; text-align: center;\">Course Module</h3><table id=\"tablepress-9\" class=\"tablepress tablepress-id-9 table table-bordered table-striped\" style=\"border-spacing: 0px; max-width: 100%; width: 857.5px; margin-bottom: 1em; border-width: initial; border-style: none; border-color: initial; color: rgb(78, 78, 78); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\"><tbody class=\"row-hover\"><tr class=\"row-1 odd\"><td class=\"column-1\" style=\"padding: 8px; border-top: 0px; border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); background: 0px 0px rgb(249, 249, 249); line-height: 1.42857; float: none !important;\">HTML5, CSS2, CSS3</td><td class=\"column-2\" style=\"padding: 8px; border-top: 0px; border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); background: 0px 0px rgb(249, 249, 249); line-height: 1.42857; float: none !important;\">Java script, Jquery</td></tr><tr class=\"row-2 even\"><td class=\"column-1\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.42857; float: none !important;\">PSD to HTML/CSS Conversion</td><td class=\"column-2\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.42857; float: none !important;\">Responsive Design using Bootstrap</td></tr><tr class=\"row-3 odd\"><td class=\"column-1\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background: 0px 0px rgb(249, 249, 249); line-height: 1.42857; float: none !important;\">Adobe Photoshop CS5</td><td class=\"column-2\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background: 0px 0px rgb(249, 249, 249); line-height: 1.42857; float: none !important;\">PHP, MySQL</td></tr><tr class=\"row-4 even\"><td class=\"column-1\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.42857; float: none !important;\">Concept Of CMS(Wordpress)</td><td class=\"column-2\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.42857; float: none !important;\">Basic Concept Of Freelancing</td></tr><tr class=\"row-5 odd\"><td class=\"column-1\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background: 0px 0px rgb(249, 249, 249); line-height: 1.42857; float: none !important;\">How to bid in different marketplace?</td><td class=\"column-2\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background: 0px 0px rgb(249, 249, 249); line-height: 1.42857; float: none !important;\">How to interaction with clients</td></tr><tr class=\"row-6 even\"><td class=\"column-1\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.42857; float: none !important;\">How you will get the money?</td><td class=\"column-2\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; line-height: 1.42857; float: none !important;\">cPanel Controlling &amp; Freelancing</td></tr><tr class=\"row-7 odd\"><td class=\"column-1\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background: 0px 0px rgb(243, 243, 243); line-height: 1.42857; float: none !important;\">FTP Controlling</td><td class=\"column-2\" style=\"padding: 8px; border-color: rgb(221, 221, 221); background: 0px 0px rgb(243, 243, 243); line-height: 1.42857; float: none !important;\">How To Create Blog Using Wordpress</td></tr></tbody></table>', '2022-12-23', 25000, 'admin/images/course-images/1670758378.jpg', 7, 1, 1, '2022-12-11 05:32:58', '2022-12-12 10:41:08', 20000, 'admin/images/course-images/1670758966.png', '2022-12-15'),
(7, 7, 1, 'Data Science Course Training in Dhaka', 'Fast-track your career with the Certificate Course in Data Science Training in Dhaka.\r\n184 Hours of Online Sessions\r\n150+ Hours of Practical Assignments\r\n2 Capstone Live Projects\r\nReceive Certificate from Technology Leader - IBM\r\nReceive Certificate from Top University - UTM, Malaysia', '<h2 class=\"lerns-hdng\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Rubik, sans-serif; font-weight: inherit; line-height: inherit; color: rgb(83, 124, 187); font-size: 24px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline;\">Data Science Course Outcomes in Dhaka</h2><div class=\"\" style=\"padding: 0px; margin: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: Rubik, sans-serif; vertical-align: baseline; color: rgb(93, 93, 93);\"><div class=\"info-course__list\" style=\"padding: 0px; margin: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><p class=\"learn-out-prah tool-multiwrapbox\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 60px; margin-left: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; overflow: hidden; color: rgba(94, 94, 94, 0.8); height: 168px;\"><span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; color: rgb(93, 93, 93); background-color: transparent;\">In this data-driven environment certification in Data Science prepares you for the surging demand of Big Data skills and technology in all the leading industries. There is a huge career prospect available in the field of data science and this&nbsp;</span><span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; color: rgb(93, 93, 93); background-color: transparent; padding: 0px; margin: 0px; border: 0px; font-stretch: inherit; line-height: inherit; vertical-align: baseline; font-weight: 800 !important;\">Data Science Certification</span><span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; color: rgb(93, 93, 93); background-color: transparent;\">&nbsp;is one of the most comprehensive&nbsp;courses in the industry today. This course in Dhaka&nbsp;is specially designed to suit both data professionals and beginners who want to make a career in this fast-growing profession. This training will equip the students with logical and relevant programming abilities to build database models. They will be able to create simple machine learning algorithms like K-Means Clustering, Decision Trees, and Random Forest to solve problems and communicate the solutions effectively. In three months, students will also explore the key techniques such as Statistical Analysis, Regression Analysis, Data Mining, Machine Learning, Forecasting and Text Mining, and scripting algorithms for the same with Python and R Programming. Understand the key concepts of Neural Networks and study Deep Learning Black Box techniques like SVM.</span><span class=\"after-op op-btn op-collapse\" style=\"font: inherit; background-color: transparent; padding: 0px 0px 0px 5px; margin: 0px; border: 0px; vertical-align: baseline; color: rgb(84, 125, 188); cursor: pointer; display: inline-block;\">Read less</span><br></p><div class=\"multi-text_after\" style=\"padding: 0px; margin: 0px 0px 0px -89px; border: 0px; font: inherit; vertical-align: baseline; float: right; text-align: right; width: 89px; position: absolute; left: 817.5px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; top: 147px;\"><span class=\"after-dots\" style=\"padding: 0px; margin: 0px; border: 0px; font: inherit; vertical-align: baseline;\">...</span><span class=\"after-op op-btn\" style=\"padding: 0px 0px 0px 5px; margin: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(84, 125, 188); cursor: pointer;\">Read more</span></div><p></p><div class=\"col-lg-5 col-md-5\" style=\"padding: 0px 15px; margin: 0px; border: 0px; font: inherit; vertical-align: baseline; min-height: 1px; float: left; width: 340.625px;\"><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\">Work with various data generation sources</div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\">Perform Text Mining to generate Customer Sentiment Analysis</div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\"><gwmw class=\"ginger-module-highlighter-mistake-type-1\" id=\"gwmw-15751375773408697798233\" style=\"padding: 0px; margin: 0px;\">Analyse structured</gwmw>&nbsp;and unstructured data using different tools and techniques</div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\">Develop an understanding of Descriptive and Predictive Analytics</div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\"><span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; background-color: transparent;\">Apply Data-driven, Machine Learning approaches for business decisions</span></div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\"><span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; background-color: transparent;\"><br></span><span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; background-color: transparent;\">Build models for day-to-day applicability</span></div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\"><span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; background-color: transparent;\">Perform Forecasting to take proactive business decisions</span></div><div class=\"info-course__item\" style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 10px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-family: inherit; vertical-align: baseline; position: relative; color: rgba(94, 94, 94, 0.8);\"><span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit; background-color: transparent;\">Use Data Concepts to represent data for easy understanding</span></div></div></div></div>', '2022-12-09', 65555, 'admin/images/course-images/1670758733.webp', 3, 1, 1, '2022-12-11 05:38:53', '2022-12-11 12:35:10', 55500, 'admin/images/course-images/1670758887.jpg', '2022-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enroll_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_timestamp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enroll_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `payment_amount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolls`
--

INSERT INTO `enrolls` (`id`, `course_id`, `student_id`, `enroll_date`, `enroll_timestamp`, `enroll_status`, `payment_type`, `payment_status`, `payment_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-12-12', '1670803200', 'Pending', 'online', 'Pending', 0, '2022-12-12 09:12:51', '2022-12-12 09:12:51'),
(2, 6, 1, '2022-12-12', '1670803200', 'Pending', 'cash', 'Pending', 0, '2022-12-12 10:51:03', '2022-12-12 10:51:03');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_12_05_034136_create_sessions_table', 1),
(7, '2022_12_05_064037_create_teachers_table', 2),
(8, '2022_12_08_121400_create_categories_table', 3),
(9, '2022_12_09_115056_create_courses_table', 4),
(10, '2022_12_11_011124_add_colmun_to_courses', 5),
(11, '2022_12_11_175731_create_enrolls_table', 6),
(12, '2022_12_11_180220_create_students_table', 6);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DRBcY56rvO447gomAV72QnIgeiTiPeM51IakVDFf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.46', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjlIY05icnhYQzIxMmtyYTVtdWx6Y2YwQkFOOG8wVkRSRFlCa0l0RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbi1yZWdpc3RyYXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1670863910);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `nid`, `status`, `created_at`, `updated_at`) VALUES
(1, 'shanjoy sutradhar', 'stu@gmail.com', '$2y$10$DD5xFA0pUIgwD/mJhWUTx.5fvFqpdVWZHx12xqjX6FMw30fkjfk.q', '123456789', NULL, NULL, NULL, 1, '2022-12-12 09:12:51', '2022-12-12 09:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `mobile`, `address`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sanjoy', 'teacher@gmail.com', '$2y$10$tQOha7JD68DJN2cQUFqpK.ELhTDbkeyNsb/hooFBl/FvThrG2Plwm', '01626261040', NULL, 'admin/images/teacher-images/1670224029.jpg', 1, '2022-12-05 01:07:09', '2022-12-10 07:05:05'),
(5, 'saha', 'saha@admin.com', '$2y$10$ADNJ181NoWazGbWu/LeDTeFm2sPvEvpx5r2vf5NBrPzoHqWi4D8ve', '3546546435', 'middle badda', 'admin/images/teacher-images/1670299522.jpg', 1, '2022-12-05 22:05:22', '2022-12-10 07:04:41'),
(6, 'Arif Raihan', 'teacher4@admin.com', '$2y$10$/tXgSZzANZtya86rG/5BVuwjai5o7nh2.t2f6bWDaJewalcnTYAbW', '0151610669544', '32432432432', 'admin/images/teacher-images/1670305761.jpg', 1, '2022-12-05 23:49:21', '2022-12-05 23:49:21');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'sanjoyadmin', 'sanjoyadmin@gmail.com', NULL, '$2y$10$rK3PZz2taAG4SyzYVyoyXemFytsYrRwBZcM8zfv9NQh32j.LdKouu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-04 22:30:03', '2022-12-04 22:30:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_mobile_unique` (`mobile`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD UNIQUE KEY `teachers_mobile_unique` (`mobile`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
