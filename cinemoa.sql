-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: jiwonserver2.mysql.database.azure.com    Database: cinemoa
-- ------------------------------------------------------
-- Server version	8.0.41-azure

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cinemas`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinemas` (
  `cinema_id` bigint NOT NULL AUTO_INCREMENT COMMENT '영화관 ID',
  `name` varchar(100) NOT NULL COMMENT '영화관 이름',
  `address` varchar(255) DEFAULT NULL COMMENT '영화관 주소',
  `region` varchar(100) DEFAULT NULL COMMENT '지역 (예: 서울, 부산 등)',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  PRIMARY KEY (`cinema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='영화관 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinemas`
--

LOCK TABLES `cinemas` WRITE;
/*!40000 ALTER TABLE `cinemas` DISABLE KEYS */;
INSERT INTO `cinemas` VALUES (1,'코엑스','서울 강남구 봉은사로 524','서울','2025-07-22 15:11:41');
INSERT INTO `cinemas` VALUES (2,'사상','부산 사상구 사상로 201 애플아울렛','부산','2025-07-22 15:11:41');
INSERT INTO `cinemas` VALUES (3,'북대구','대구광역시 북구 동암로 100','대구','2025-07-22 16:22:12');
INSERT INTO `cinemas` VALUES (21,'홍대','서울특별시 마포구 양화로 123','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (22,'건대','서울특별시 광진구 능동로 92','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (23,'신촌','서울특별시 서대문구 연세로 50','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (24,'왕십리','서울특별시 성동구 왕십리로 220','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (25,'여의도','서울특별시 영등포구 국제금융로 10','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (26,'잠실','서울특별시 송파구 올림픽로 300','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (27,'강남','서울특별시 강남구 강남대로 420','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (28,'신림','서울특별시 관악구 신림로 140','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (29,'수유','서울특별시 강북구 도봉로 342','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (30,'구로','서울특별시 구로구 경인로 190','서울','2025-07-24 10:39:00');
INSERT INTO `cinemas` VALUES (31,'수원','경기도 수원시 팔달구 인계로 111','경기','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (32,'일산','경기도 고양시 일산동구 중앙로 312','경기','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (33,'평택','경기도 평택시 비전2로 88','경기','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (34,'성남','경기도 성남시 수정구 산성대로 33','경기','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (35,'의정부','경기도 의정부시 시민로 80','경기','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (36,'서면','부산광역시 부산진구 중앙대로 672','부산','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (37,'남포동','부산광역시 중구 광복로 68','부산','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (38,'해운대','부산광역시 해운대구 우동 1437','부산','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (39,'동성로','대구광역시 중구 동성로 2가 88','대구','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (40,'수성구','대구광역시 수성구 동대구로 230','대구','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (41,'상무지구','광주광역시 서구 상무대로 1030','광주','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (42,'첨단','광주광역시 광산구 첨단중앙로 55','광주','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (43,'둔산','대전광역시 서구 둔산대로 170','대전','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (44,'유성','대전광역시 유성구 대학로 291','대전','2025-07-24 10:40:53');
INSERT INTO `cinemas` VALUES (45,'부평','인천광역시 부평구 시장로 20','인천','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (46,'송도','인천광역시 연수구 송도과학로 16','인천','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (47,'춘천','강원특별자치도 춘천시 중앙로 77','강원','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (48,'원주','강원특별자치도 원주시 평원로 85','강원','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (49,'강릉','강원특별자치도 강릉시 경강로 2120','강원','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (50,'청주','충청북도 청주시 상당구 상당로 55','충북','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (51,'제천','충청북도 제천시 의림대로 34','충북','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (52,'천안','충청남도 천안시 동남구 먹거리10길 45','충남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (53,'아산','충청남도 아산시 충무로 123','충남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (54,'전주','전라북도 전주시 완산구 팔달로 230','전북','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (55,'익산','전라북도 익산시 중앙로 91','전북','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (56,'목포','전라남도 목포시 평화로 55','전남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (57,'여수','전라남도 여수시 이순신광장로 30','전남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (58,'포항','경상북도 포항시 북구 중앙로 400','경북','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (59,'경주','경상북도 경주시 황성동 1482-1','경북','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (60,'창원','경상남도 창원시 성산구 원이대로 450','경남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (61,'진주','경상남도 진주시 진양호로 150','경남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (62,'김해','경상남도 김해시 내외로 22','경남','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (63,'삼산','울산광역시 남구 삼산로 261','울산','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (64,'무거','울산광역시 남구 대학로 93','울산','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (65,'노형','제주특별자치도 제주시 노형로 389','제주','2025-07-24 10:41:27');
INSERT INTO `cinemas` VALUES (66,'서귀포','제주특별자치도 서귀포시 태평로 27','제주','2025-07-24 10:41:27');
/*!40000 ALTER TABLE `cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL COMMENT '카테고리 (예: 예매, 결제, 회원)',
  `question` varchar(255) NOT NULL COMMENT '질문',
  `answer` text NOT NULL COMMENT '답변',
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'예매','영화 예매는 어떻게 하나요?','영화를 선택한 후 좌석을 선택하고 결제를 진행하시면 됩니다.');
INSERT INTO `faq` VALUES (2,'결제','결제 수단에는 어떤 것이 있나요?','신용카드, 체크카드, 간편결제(카카오페이, 네이버페이 등)를 지원합니다.');
INSERT INTO `faq` VALUES (3,'회원','회원 가입은 무료인가요?','네, 회원 가입은 무료입니다.');
INSERT INTO `faq` VALUES (4,'회원','비밀번호를 잊었어요.','로그인 화면의 \"비밀번호 찾기\"를 이용해주세요.');
INSERT INTO `faq` VALUES (5,'예매','예매 내역은 어디서 확인하나요?','마이페이지 > 예매/구매 내역에서 확인하실 수 있습니다.');
INSERT INTO `faq` VALUES (6,'결제','현장 결제도 가능한가요?','온라인 예매 시에는 온라인 결제만 가능합니다.');
INSERT INTO `faq` VALUES (7,'회원','회원 탈퇴는 어떻게 하나요?','마이페이지 > 개인정보 수정 > 회원 탈퇴 메뉴를 이용해 주세요.');
INSERT INTO `faq` VALUES (8,'예매','조조 할인은 어떻게 적용되나요?','오전 10시 이전 상영작에 자동 적용됩니다.');
INSERT INTO `faq` VALUES (9,'결제','영수증은 어떻게 발급받나요?','마이페이지에서 결제 영수증을 출력하실 수 있습니다.');
INSERT INTO `faq` VALUES (10,'회원','닉네임은 어떻게 변경하나요?','마이페이지 > 프로필 수정에서 가능합니다.');
INSERT INTO `faq` VALUES (11,'예매','관람등급 확인은 어디서 하나요?','영화 상세 정보에 표시됩니다.');
INSERT INTO `faq` VALUES (12,'결제','예매 취소 시 수수료가 있나요?','영화 시작 전까지는 무료 취소 가능합니다.');
INSERT INTO `faq` VALUES (13,'회원','포인트는 어떻게 사용하나요?','결제 시 포인트 사용 옵션을 선택하세요.');
INSERT INTO `faq` VALUES (14,'예매','단체 관람은 가능한가요?','단체 관람은 고객센터를 통해 별도 문의해 주세요.');
INSERT INTO `faq` VALUES (15,'결제','카드사 무이자 할부가 되나요?','이벤트 페이지에서 무이자 정보 확인이 가능합니다.');
INSERT INTO `faq` VALUES (16,'회원','로그인이 자꾸 풀려요.','브라우저 설정 또는 보안 프로그램을 확인해 주세요.');
INSERT INTO `faq` VALUES (17,'예매','VIP관은 어디 있나요?','상영관 정보에서 VIP관을 확인하실 수 있습니다.');
INSERT INTO `faq` VALUES (18,'결제','간편결제 등록은 어디서 하나요?','결제창에서 간편결제 등록을 선택해 주세요.');
INSERT INTO `faq` VALUES (19,'회원','휴면 계정은 어떻게 복구하나요?','로그인 시 자동으로 복구 안내가 제공됩니다.');
INSERT INTO `faq` VALUES (20,'예매','우대/장애인 할인은 어떻게 받나요?','해당 증빙을 현장에서 제시하시면 됩니다.');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_user` (
  `guest_user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '비회원 고유 ID',
  `name` varchar(100) NOT NULL COMMENT '이름',
  `birth_date` date NOT NULL COMMENT '생년월일',
  `phone` varchar(20) NOT NULL COMMENT '휴대전화번호',
  `reservation_password` varchar(255) NOT NULL COMMENT '예매 비밀번호 (해싱 저장)',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록 일자',
  PRIMARY KEY (`guest_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='비회원 사용자 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_user`
--

LOCK TABLES `guest_user` WRITE;
/*!40000 ALTER TABLE `guest_user` DISABLE KEYS */;
INSERT INTO `guest_user` VALUES (2,'윤지원','1991-11-12','01025565619','1234','2025-07-17 11:25:56');
INSERT INTO `guest_user` VALUES (3,'윤지원','1991-11-12','01011111111','1234','2025-07-22 22:16:12');
/*!40000 ALTER TABLE `guest_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiry` (
  `inquiry_id` bigint NOT NULL AUTO_INCREMENT COMMENT '문의 고유번호',
  `member_id` varchar(50) DEFAULT NULL COMMENT '작성한 회원 ID',
  `title` varchar(255) DEFAULT NULL COMMENT '문의 제목',
  `content` text COMMENT '문의 내용',
  `reply_content` text COMMENT '관리자 답변 내용',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '문의 등록일',
  `reply_date` datetime DEFAULT NULL COMMENT '답변 등록일',
  `guest_user_id` bigint DEFAULT NULL COMMENT '비회원 고유 ID',
  PRIMARY KEY (`inquiry_id`),
  KEY `member_id` (`member_id`),
  KEY `fk_inquiry_guest` (`guest_user_id`),
  CONSTRAINT `fk_inquiry_guest` FOREIGN KEY (`guest_user_id`) REFERENCES `guest_user` (`guest_user_id`),
  CONSTRAINT `inquiry_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='1:1 문의 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry`
--

LOCK TABLES `inquiry` WRITE;
/*!40000 ALTER TABLE `inquiry` DISABLE KEYS */;
INSERT INTO `inquiry` VALUES (2,'user01','[예매] 예매 문의드려요.','예매한 영화 취소를 하고싶습니다.',NULL,'2025-07-21 13:09:01',NULL,NULL);
INSERT INTO `inquiry` VALUES (3,'user01','[회원정보] 회원정보 문의','회원정보 문의',NULL,'2025-07-21 17:26:23',NULL,NULL);
INSERT INTO `inquiry` VALUES (4,'user01','[기타] 기타문의','기타문의',NULL,'2025-07-21 17:39:16',NULL,NULL);
/*!40000 ALTER TABLE `inquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `like_id` bigint NOT NULL AUTO_INCREMENT COMMENT '좋아요 고유 ID',
  `movie_id` bigint NOT NULL COMMENT '좋아요를 받은 영화 게시물 ID',
  `user_id` varchar(50) DEFAULT NULL,
  `liked_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '좋아요를 누른 시간',
  PRIMARY KEY (`like_id`),
  UNIQUE KEY `movie_id` (`movie_id`,`user_id`),
  UNIQUE KEY `UK78ijgkjnnqcs5p4obxffn35ce` (`movie_id`,`user_id`),
  KEY `fk_likes_user` (`user_id`),
  CONSTRAINT `fk_likes_user` FOREIGN KEY (`user_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE,
  CONSTRAINT `FKbmmhga9cxoojlnowe6peem8us` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (3,2,'user01','2025-07-24 13:29:57');
INSERT INTO `likes` VALUES (5,3,'user01','2025-07-26 01:10:15');
INSERT INTO `likes` VALUES (7,6,'user01','2025-07-26 01:10:19');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` varchar(50) NOT NULL COMMENT '회원 아이디 (로그인 ID)',
  `password` varchar(255) NOT NULL COMMENT '비밀번호',
  `name` varchar(100) NOT NULL COMMENT '회원 이름 (변경 불가)',
  `nickname` varchar(50) NOT NULL COMMENT '닉네임',
  `birth_date` date DEFAULT NULL COMMENT '생년월일',
  `phone` varchar(20) DEFAULT NULL COMMENT '휴대전화번호',
  `email` varchar(100) DEFAULT NULL COMMENT '이메일',
  `profile_img` varchar(255) DEFAULT NULL COMMENT '프로필 이미지 경로',
  `anniversary` date DEFAULT NULL COMMENT '기념일 (예: 연인과의 기념일)',
  `address` varchar(255) DEFAULT NULL COMMENT '주소',
  `preferred_cinema` varchar(100) DEFAULT NULL COMMENT '자주 가는 영화관',
  `preferred_genres` varchar(255) DEFAULT NULL COMMENT '선호 영화 장르 (콤마 구분 예: 액션,코미디)',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '가입 일자',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '회원 탈퇴 여부',
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='회원 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('user01','1234','김유경','경이',NULL,'','user01@mail.com',NULL,NULL,'','42','드라마,로맨스,애니메이션','2025-07-15 01:16:13',0);
INSERT INTO `member` VALUES ('user02','1234','한승진','SGnee',NULL,NULL,'user02@mail.com',NULL,NULL,NULL,'59','로맨스,공포,애니메이션','2025-07-17 08:20:31',0);
INSERT INTO `member` VALUES ('user03','1234','전채희','꼰채',NULL,NULL,'user03@mail.com',NULL,NULL,NULL,'','로맨스,스릴러,판타지','2025-07-18 03:16:19',0);
INSERT INTO `member` VALUES ('user04','1234','김유진','애이나',NULL,NULL,'user04@mail.com',NULL,NULL,NULL,NULL,NULL,'2025-07-22 08:21:30',0);
INSERT INTO `member` VALUES ('user05','1234','오유저','nickFive',NULL,NULL,'user05@mail.com',NULL,NULL,NULL,NULL,NULL,'2025-07-22 18:36:55',0);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` bigint NOT NULL AUTO_INCREMENT COMMENT '영화 게시물 고유 ID',
  `title` varchar(255) NOT NULL COMMENT '영화 제목',
  `content` mediumtext,
  `reservation_rate` decimal(38,2) DEFAULT NULL,
  `rating` decimal(38,2) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actors` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL COMMENT '개봉일',
  `likes_count` int DEFAULT '0' COMMENT '좋아요 수',
  `review_count` int DEFAULT '0' COMMENT '댓글 수',
  `main_image_url` varchar(255) DEFAULT NULL COMMENT '메인 포스터 이미지 URL',
  `detail_image_urls` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL COMMENT '예고편 또는 관련 영상 URL',
  `audience_count` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '게시물 생성 시간',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '게시물 최종 수정 시간',
  `screening_status` enum('COMING_SOON','NOT_SHOWING','NOW_SHOWING') DEFAULT NULL,
  `sub_image_urls` text COMMENT '서브 이미지 URL들 (콤마로 구분)',
  `age_rating` varchar(20) DEFAULT NULL COMMENT '관람등급 (전체관람가, 12세, 15세, 청소년관람불가 등)',
  `running_time` int DEFAULT NULL COMMENT '러닝타임 (분 단위)',
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'좀비딸','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">\"나의 딸은 좀비다. 이 세상 마지막 남은 유일한 좀비\"</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">댄스 열정을 불태우는 사춘기 딸 ‘수아’와 함께 티격태격 일상을 보내는 맹수 전문 사육사 ‘정환’.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">어느 날 전 세계를 강타한 좀비 바이러스에 감염된 딸 \'수아\'를 지키기 위해</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">\'정환\'은 어머니 \'밤순\'이 사는 바닷가 마을 \'은봉리\'로 ‘수아’와 함께 향한다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">감염자를 색출해 내려는 사회 분위기 속에서 \'수아\'가 어렴풋이 사람 말을 알아듣고,</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">평소 좋아하던 춤과 할머니 ‘밤순’의 따끔한 효자손 맛에 반응하는 모습을 발견한다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">절대 \'수아\'를 포기할 수 없는 \'정환\'은 호랑이 사육사의 오랜 경험을 살려</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">좀비딸 트레이닝에 돌입하는데...</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">맹수보다 사납고, 사춘기보다 예민한 좀비딸 훈련기!<br>올여름, 가장 유쾌한 극비 프로젝트가 시작된다!</b>',0.00,0.00,'필감성',' 조정석, 이정은, 조여정, 윤경호, 최유리','코미디, 드라마','2025-07-30',101,0,'4f2bbae5-ce0f-4c34-a6f1-6844c5edfd66.jpg','255bc161-52a9-42b5-a17d-f952f999ce7f.jpg,86571e73-7ed9-4370-b00e-4d5262e21530.jpg,d4804725-3ac9-4f6d-b326-7d1caeb735da.jpg,d18dd57a-aa35-49cd-86d0-793c4eba3f55.jpg,cd063670-f73a-450a-8270-4a072878849b.jpg','https://www.youtube.com/watch?v=0uZ7l2fCwEg',0,'2025-07-22 06:11:52','2025-07-24 02:43:53','COMING_SOON','','ALL',113);
INSERT INTO `movies` VALUES (2,'판타스틱 4: 새로운 출발','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">세상을 뒤흔들 우주적 사건 발생<br>2025년 7월, 마블의 가장 ‘판타스틱’한 팀이 온다!</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">&nbsp;</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">전 세계적인 관심 속 우주로 떠난 4명의 엘리트 우주비행사</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">‘리드 리처드’, ‘수잔 스톰’, ‘조니 스톰’, ‘벤 그림’은</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">예기치 못한 사고로 우주 방사능에 노출되면서 초인적인 능력을 갖게 된다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">신체를 자유자재로 변형할 수 있게 된 ‘리드 리처드’(미스터 판타스틱)부터</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">온몸이 투명해지고, 강력한 방어막을 형성하는 ‘수잔 스톰’(인비저블 우먼),</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">온몸으로 뜨거운 화염을 내뿜으며 비행 능력까지 지닌 ‘조니 스톰’(휴먼 토치),</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그리고 바위 같은 엄청난 피지컬과 압도적 파워를 갖춘 ‘벤 그림’(씽)까지</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">‘판타스틱 4’라는 새로운 슈퍼 히어로 팀이 된 4명의 멤버들.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">인생에 완전히 새로운 국면을 맞이하게 되면서 혼란과 갈등에 휩싸인 이들 앞에</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">행성 파괴자 ‘갤럭투스’의 위협을 전달하는 미스터리한 전령 ‘실버 서퍼’가 등장해 지구 파괴를 예고하고 ‘판타스틱 4’는 세상을 구하기 위해 다 함께 힘을 모으게 되는데…</span>',0.00,0.00,'맷 샤크먼','페드로 파스칼, 바네사 커비, 조셉 퀸, 에본 모스 바크라크, 랄프 이네슨, 줄리아 가너','액션, 판타지, SF','2025-07-24',52,0,'4437789f-47a1-40f1-8b6a-62adf6772d3d.jpg','f29a736b-cf1d-43c7-9a05-f20d3dc41aa5.jpg,affb8604-74e5-4cd6-b682-00bc6eedaedc.jpg,8ad403cb-556d-48ed-8e34-2f5ef60d41db.jpg,653a2302-220c-42f0-833b-04477a98343d.jpg,3d3b37c8-fbad-430f-a69e-f2394b5e89d1.jpg,4409e405-9faf-423e-bc73-255608784e54.jpg','https://www.youtube.com/watch?v=ZltyHct1UV4',0,'2025-07-22 06:11:52','2025-07-24 13:29:57','NOW_SHOWING','','ALL',114);
INSERT INTO `movies` VALUES (3,'전지적 독자 시점','<span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">10년 이상 연재된 소설이 완결된 날 소설 속 세계가 현실이 되어 버리고, 유일한 독자였던 ‘김독자’가 소설의 주인공 ‘유중혁’ 그리고 동료들과 함께 멸망한 세계에서 살아남기 위한 이야기</span>',0.00,0.00,'김병우','안효섭, 이민호, 채수빈, 신승호, 나나, 지수, 권은성','판타지, 액션','2025-07-23',1521,0,'5d32c5fc-117f-4f6f-8f29-f18cc47f292a.jpg','6e6ba308-e1fe-4e82-901b-54e20a74aa10.jpg,d38ce7f4-b2bc-4d0f-8815-cdfdfef15f52.jpg,7b8d8174-ee02-4fbb-8412-66b8ad1a3ec6.jpg,e0b19c94-eb8c-4dfa-84e6-bfcf4ef4c3e4.jpg,3afbed9e-9c96-47c6-b3cd-bf1e17eddfe7.jpg,f80fe8c8-ea99-499c-bba5-eb81601f4bbe.jpg','https://www.youtube.com/watch?v=Xb96_61kMS8',0,'2025-07-22 08:46:33','2025-07-26 01:10:15','NOW_SHOWING','','ALL',117);
INSERT INTO `movies` VALUES (4,'명탐정 코난: 척안의 잔상','<span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">국립천문대 노베야마의 괴한 침입 사건을 조사하던 나가노현경 형사 야마토 칸스케.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">사건을 수사하던 중, 천문대의 파라볼라 안테나가 움직이자 10개월 전 눈사태 속 총격 피습으로 인한</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">왼쪽 눈의 상처에 갑자기 통증이 이는데…</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그날 밤, 모리 코고로에게 형사 시절의 옛 동료 와니 형사의 전화가 걸려 온다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">나가노현 눈사태 사고의 내막을 조사하고 있던 와니는 사건 파일에서 모리 탐정의 이름을 발견,</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">참고 차 모리 탐정과 만나기로 한다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">약속 당일, 코난과 란도 모리 탐정을 따라 약속 장소로 향하지만</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그곳에서 의문의 총성이 울려 퍼진다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">설원에 묻힌 그 날의 기억, 척안에 숨겨진 진실이 눈을 뜬다!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">눈 속에 감춰진 비밀을 찾는 화이트아웃 미스터리 액션</span>',0.00,0.00,'시게하라 카츠야','김선혜, 강수진, 이정구, 현경수, 김율, 김기흥, 박성태','애니메이션','2025-07-16',2345,0,'e91bc779-da24-467f-a1aa-05f1caef4591.jpg','f74f6f09-0059-4d1a-b173-38c7d7cbaf05.jpg,c1a6d232-cb78-42b4-9697-2389361350a3.jpg,33882f5c-7e33-4524-a2a6-f302eeef577b.jpg,c0839936-d0e5-4ddb-b3ec-2afc08fbf84e.jpg,366c6639-a24c-4eae-a615-4b836e4e3979.jpg','https://www.youtube.com/watch?v=zZ_RwWsB8R0',0,'2025-07-22 08:46:33','2025-07-24 02:26:36','NOW_SHOWING','','ALL',109);
INSERT INTO `movies` VALUES (5,'F1 더 무비','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">최고가 되지 못한 전설 VS 최고가 되고 싶은 루키</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">한때 주목받는 유망주였지만 끔찍한 사고로 F1®에서 우승하지 못하고</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">한순간에 추락한 드라이버 \'소니 헤이스\'(브래드 피트).</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그의 오랜 동료인 \'루벤 세르반테스\'(하비에르 바르뎀)에게</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">레이싱 복귀를 제안받으며 최하위 팀인 APXGP에 합류한다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그러나 팀 내 떠오르는 천재 드라이버 \'조슈아 피어스\'(댐슨 이드리스)와</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">\'소니 헤이스\'의 갈등은 날이 갈수록 심해지고.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">설상가상 우승을 향한 APXGP 팀의 전략 또한 번번이 실패하며</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">최하위권을 벗어나지 못하고 고전하는데···</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">빨간 불이 꺼지고<br>운명을 건 레이스가 시작된다!</b>',0.00,0.00,'조셉 코신스키','브래드 피트, 댐슨 이드리스, 케리 콘돈, 하비에르 바르뎀','드라마, 액션','2025-06-25',890,0,'00c987b8-09e7-4ceb-acb8-584995764763.jpg','9b18c530-e89a-4d44-a262-4e2149baa698.jpg,e1c9050d-eebe-4b40-9684-8e4ac8243789.jpg,592a8de4-899f-46d6-9f4b-1a584187c957.jpg','https://www.youtube.com/watch?v=6a_X77HO4Vk',0,'2025-07-22 08:46:33','2025-07-24 02:26:59','NOW_SHOWING','','15',155);
INSERT INTO `movies` VALUES (6,'베베핀 극장판: 사라진 베베핀과 핑크퐁 대모험','<span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">베베핀이 태블릿 속으로 사라졌어요!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">사라진 베베핀을 찾아 보라와 브로디가 떠난 핑크퐁 나라!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">유니콘과 티렉스 만나기, 해적왕 되기, 아기상어와 숨바꼭질까지…</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그동안 꿈꿔온 모든 상상이 이루어지는 곳!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그런데… 마법에 꼭 필요한 핑크퐁의 별빛봉을 베베핀이 가져갔어요!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">보라와 브로디는 핑크퐁과 함께</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">태블릿 배터리가 닳기 전 동생을 찾아</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">엄마와 아빠의 곁으로 돌아갈 수 있을까요?</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">모두의 꿈이 이루어지는 상상의 나라로,<br>한여름 밤의 모험 출발!</b>',0.00,0.00,'변희선','조경이, 엠머슨브룩김, 이현경, 김해나, 강은애, 정재헌, 김명준','애니메이션','2025-07-24',1801,0,'84bd846b-9d7f-4d9a-b352-e23fa7d39ac6.jpg','842391e5-f31b-4076-84b3-818353e7ba53.jpg,7618fdf6-4f1d-44ba-a83f-1379028bf4fd.jpg,aa58c005-2240-4932-97c8-c01345a77e66.jpg','https://www.youtube.com/watch?v=k_8aMAcRwM8',0,'2025-07-22 08:46:33','2025-07-26 01:10:19','NOT_SHOWING','','ALL',65);
INSERT INTO `movies` VALUES (7,'극장판 도라에몽: 진구의 그림이야기','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">만약, 그림 속 세계로 들어갈 수 있다면?<br>환상의 보석을 둘러싼 도라에몽과 친구들의 시공 초월 대모험이 지금 시작된다!</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">수백억 원의 가치를 지닌 그림이 발견되었다는 뉴스가 보도되는 가운데,</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">여름방학 숙제로 ‘그림’을 그리고 있던 진구 앞에 갑자기 오래된 그림 조각 하나가 떨어진다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">도라에몽과 진구는 비밀도구 ‘들어가는 라이트’를 사용해 그림 속으로 탐험을 떠나고</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그곳에서 신비로운 소녀 클레어와 만나게 된다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그런데 그곳은 바로 뉴스에서 화제가 된 그림 속에 그려진 중세 유럽 ‘아트리아 공국’이었다!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그곳 어딘가에는 ‘아트리아 블루’라는 환상의 보석이 숨겨져 있다고 하는데…</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">환상의 보석의 비밀을 파헤치는 도라에몽과 친구들.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">하지만, ‘아트리아 공국’에 전해 내려오는 ‘세계 멸망’의 전설이 깨어나며 모두가 큰 위기에 빠진다!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">과연 도라에몽과 친구들은 전설을 뒤집고 세계를 구할 수 있을까?</span>',0.00,0.00,'테라모토 유키요','윤아영, 김정아, 조현정, 이현주, 최낙윤','애니메이션','2025-07-16',1000001,0,'77744723-864a-4c4e-8b4b-becc51c9e725.jpg','212263c3-f1f4-4416-99cb-34eddd499807.jpg,35628a1b-8e59-466c-bab7-054a509aaa71.jpg,b3ca5863-64db-465a-af88-a30e15c44323.jpg','https://www.youtube.com/watch?v=1A1VEfb0Jb4',0,'2025-07-22 06:48:01','2025-07-24 02:33:58','NOW_SHOWING','','ALL',104);
INSERT INTO `movies` VALUES (8,'슈퍼맨','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">세상의 희망인가, 위협인가?</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">‘슈퍼맨’은 오늘도 세계 곳곳의 위협에 맞서 싸우지만,</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">시민들의 반응은 극과 극으로 갈린다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">한편, ‘렉스 루터’는 ‘슈퍼맨’을 무너뜨릴 비밀을 손에 넣고</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">역대 최강의 슈퍼-빌런들과 함께 총 공격에 나선다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">‘슈퍼맨’은 첫 패배와 함께 이들의 계속된 공세에 직면하고</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">모든 것을 바로잡기 위해 슈퍼독 ‘크립토’와 함께 맞서게 되는데...</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">과연 그는 이 전례 없는 위기에서 다시 날아오를 수 있을까?</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">올여름, 가장 강력한 슈퍼히어로 블록버스터가 온다!</b>',0.00,0.00,'제임스 건',' 데이비드 코런스웨트, 레이첼 브로스나한, 니콜라스 홀트','액션, 어드벤쳐 ','2025-07-09',1800,0,'cdf854ee-e2ca-499b-8f62-99adec697fe4.jpg','c0b766e1-6683-4e9d-9433-f1d14554428e.jpg,73952141-f663-4a77-ba4e-f41745a8278c.jpg,41d04bab-f490-4a3a-8238-1e2b082e1baa.jpg','https://www.youtube.com/watch?v=ak2J7Wqsy0c',0,'2025-07-22 09:06:50','2025-07-24 02:42:50','NOW_SHOWING','','12',115);
INSERT INTO `movies` VALUES (9,'우리 둘 사이에','<p><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">비장애인으로 18년, 장애인으로 17년</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">이제는 꿈에서도 휠체어를 타는 ‘은진’은</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">다정한 ‘호선’과 함께 평온한 신혼을 누리고 있다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그러던 어느 날 ‘쿵쿵’ 예기치 않게</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">둘 사이에 찾아온 미지의 존재 ‘쪼꼬’</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">‘은진’은 아이 ‘쪼꼬’를 낳겠다고 굳게 다짐하지만</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">출산이 다가올수록 불안감은 점점 더 커진다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">이를 지켜보는 ‘호선’과 친정엄마의 걱정도 더해지는데…</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">둘 사이에 열린 미지의 세계</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">34주간의 여정이 ‘쿵쿵’ 시작된다!</span></p>',0.00,0.00,'성지혜','김시은, 설정환, 오지후, 강말금','드라마','2025-07-30',0,0,'e98d9f9e-e69b-4f8a-a7e3-f5d6432288d2.jpg','945877d5-9bfe-4758-a8ed-09180c19d3a9.jpg,6c677725-41c7-4058-9fef-b237b55f58ca.jpg,b11e538e-1647-4286-ae42-e76743bb2924.jpg','https://www.youtube.com/watch?v=7KV_Mj13UuY',0,'2025-07-22 08:49:49','2025-07-24 02:50:32','COMING_SOON','','12',99);
INSERT INTO `movies` VALUES (10,'배드 가이즈 2','<span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">한때는 자타공인 최고의 나쁜 녀석들이었던 ‘배드 가이즈’!</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">화려했던 과거를 잊고 이제는 진짜 착하게 살아보려고,</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">피땀눈물 노력을 하는 배드 가이즈들 앞에 더 나쁜 녀석들 ‘배드 걸즈’들이 나타난다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">배드 걸즈는 우주선을 훔치는 일생일대 범죄 작전을 세우고, 배드 가이즈들을 함정에 빠뜨리는데…</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">탈우주급 바르게 살자 프로젝트가 시작된다!</b>',0.00,0.00,'알파고','미식가 로봇 셰프, 인간 조수 밥','코미디, 드라마, 가족','2025-07-30',1200,0,'e5899c9e-a23d-40e6-8c33-64b1b927267c.jpg','1c20c6cf-6818-408e-b3ba-563700cecefa.jpg,5b99c927-4192-4012-bddd-68cdb5d52b94.jpg,4146d181-4b81-4ed3-b42f-be2b369ad417.jpg,93734575-92b0-438d-8e04-29bea8ea232d.jpg,43103279-1729-4f64-aad4-972b43d79ce1.jpg','https://www.youtube.com/watch?v=InNDJgdsUiY',0,'2025-07-22 09:06:50','2025-07-24 02:53:14','COMING_SOON','','ALL',103);
INSERT INTO `movies` VALUES (11,'발레리나','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">EVE Meets WICK<br><br>새로운 복수의 시작<br>존 윅 유니버스가 확장된다!</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">살해당한 아버지의 복수를 원하는 ‘이브’는</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">전설적인 킬러 ‘존 윅’을 배출한 암살자 양성 조직 루스카 로마에서</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">혹독한 훈련을 거쳐 발레리나이자 킬러로 성장한다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">아버지의 죽음에 얽힌 자들을 쫓던 ‘이브’는</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">루스카 로마를 뛰어넘는 거대한 조직의 정체를 알아차리게 되고,</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">킬러들의 표적이 된 ‘이브’의 눈앞에 ‘존 윅’이 나타나는데…</span>',0.00,0.00,'렌 와이즈먼',' 아나 디 아르마스, 키아누 리브스, 안젤리카 휴스턴, 가브리엘 번, 노만 리더스, 이안 맥쉐인, 랜스 레드딕','액션, 스릴러','2025-08-06',2500,0,'de28bca7-49ce-40aa-a534-a0317a043cee.jpg','008b0aff-5def-4e26-91a1-edbe1f5ed129.jpg,b0e536a1-cbbe-4625-9f7a-0173f918888e.jpg,d4c76bc8-0a37-4ae9-859d-56b689812c27.jpg','https://www.youtube.com/watch?v=nm1Tjh-83HI',0,'2025-07-22 09:06:50','2025-07-24 03:10:24','COMING_SOON','','19',125);
INSERT INTO `movies` VALUES (12,'스머프','<b style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">볼륨 업! 텐션 업! 스케일 업!<br>올여름, 스머프 친구들의 ‘흥폭발’ 어드벤처가 펼쳐진다</b><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">언제나 노래와 춤, 흥으로 가득한 해피 스머프 마을.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">그러던 어느 날, 마을을 이끄는 ‘파파 스머프’가 거대한 소용돌이에 휘말려 납치된다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">특별한 재능도, 좋아하는 것도 없이 아직 이름조차 없는 ‘그냥 스머프’는</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">세상 힙한 스머프 ‘스머페트’와 함께</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">온갖 위험이 도사리는 인간 세상으로 ‘파파 스머프’ 구출 작전에 나선다.</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">한편, 오랜 세월 스머프를 노려온 마법사 \'가가멜’과 새롭게 등장한 그의 동생 ‘라자멜’까지</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">더욱 강력해진 악당들에 맞서기 위해</span><br style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;Noto Sans KR&quot;, Roboto, &quot;sans-serif&quot;; font-size: 18px; letter-spacing: -0.36px; background-color: rgb(255, 255, 255);\">스머프 친구들은 도시부터 사막, 우주를 넘나들며 진정한 모험을 시작하는데...</span>',0.00,0.00,'크리스 밀러','리한나, 제임스 코든, 닉 오퍼맨, JP 칼리악, 다니엘 레비, 에이미 세다리스, 나타샤 리온','애니메이션','2025-08-06',1000,0,'f5501481-2b52-4a48-a921-a80ab4d43412.jpg','74bac5fa-5048-40dd-bcdd-bd334cad47ed.jpg,938a7fe4-eb5a-4a6d-8c28-8996f0f33b58.jpg,32e8e94b-b564-4fc6-b038-6fa1b804854c.jpg','https://www.youtube.com/watch?v=J2VE51U3Bf8',0,'2025-07-22 09:06:50','2025-07-24 02:59:27','COMING_SOON','','ALL',92);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '공지 제목',
  `content` text NOT NULL COMMENT '공지 내용',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
  `view_count` int DEFAULT '0' COMMENT '조회수',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'시스템 점검 안내','2025년 8월 1일 새벽 2시부터 점검이 진행됩니다.','2025-07-08 15:14:13',12);
INSERT INTO `notice` VALUES (2,'회원 혜택 변경 안내','2025년 8월부터 멤버십 혜택이 새로워집니다.','2025-07-09 15:14:13',8);
INSERT INTO `notice` VALUES (3,'이벤트 당첨자 발표','이벤트 당첨자는 공지사항을 통해 확인해 주세요.','2025-07-10 15:14:13',15);
INSERT INTO `notice` VALUES (4,'신규 영화 개봉 안내','8월 신작 영화 정보를 확인하세요.','2025-07-11 15:14:13',20);
INSERT INTO `notice` VALUES (5,'서비스 이용약관 개정 안내','약관 개정 내용은 홈페이지를 참조하세요.','2025-07-12 15:14:13',3);
INSERT INTO `notice` VALUES (6,'포인트 정책 변경 안내','적립 및 사용 정책이 변경됩니다.','2025-07-13 15:14:13',9);
INSERT INTO `notice` VALUES (7,'티켓 예매 시스템 업그레이드','더 빠른 예매 경험을 제공합니다.','2025-07-14 15:14:13',5);
INSERT INTO `notice` VALUES (8,'고객센터 운영시간 변경','운영시간이 단축됩니다. 확인 부탁드립니다.','2025-07-15 15:14:13',6);
INSERT INTO `notice` VALUES (9,'추석 연휴 운영 안내','영화관 운영시간 및 스케줄을 안내드립니다.','2025-07-16 15:14:13',7);
INSERT INTO `notice` VALUES (10,'분실물 안내','7월 25일 분실물 목록을 확인하세요.','2025-07-17 15:14:13',2);
INSERT INTO `notice` VALUES (11,'이메일 인증 오류 안내','일부 사용자에게 이메일 오류가 있었습니다.','2025-07-18 15:14:13',4);
INSERT INTO `notice` VALUES (12,'극장 리뉴얼 공사 안내','공사 기간 중 일부 좌석 이용이 제한됩니다.','2025-07-19 15:14:13',1);
INSERT INTO `notice` VALUES (13,'회원등급 산정 기준 변경','2025년 9월부터 변경 예정입니다.','2025-07-20 15:14:13',0);
INSERT INTO `notice` VALUES (14,'긴급 시스템 패치 안내','보안 패치로 인해 일시적으로 서비스가 중단됩니다.','2025-07-21 15:14:13',11);
INSERT INTO `notice` VALUES (15,'예매 취소 수수료 안내','수수료 정책 변경 내용을 확인하세요.','2025-07-22 15:14:13',2);
INSERT INTO `notice` VALUES (16,'문화의 날 할인 안내','매월 마지막 주 수요일은 할인 적용됩니다.','2025-07-23 15:14:13',5);
INSERT INTO `notice` VALUES (17,'신규 기능 출시','마이페이지 기능이 강화되었습니다.','2025-07-24 15:14:13',7);
INSERT INTO `notice` VALUES (18,'앱 업데이트 안내','최신 버전으로 업데이트 해 주세요.','2025-07-25 15:14:13',6);
INSERT INTO `notice` VALUES (19,'장애인석 안내','우대석 예약 방법이 개선되었습니다.','2025-07-26 15:14:13',3);
INSERT INTO `notice` VALUES (20,'1:1 문의 답변 지연 안내','응대 시간에 양해 부탁드립니다.','2025-07-27 15:14:13',1);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '결제 고유 ID',
  `reservation_id` bigint NOT NULL COMMENT '연결된 예약 ID',
  `amount` int NOT NULL COMMENT '결제 금액 (원)',
  `method` varchar(50) NOT NULL COMMENT '결제 수단 (예: 카드, 카카오페이)',
  `status` enum('PAID','CANCELLED','FAILED') DEFAULT 'PAID' COMMENT '결제 상태',
  `paid_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '결제 일시',
  `transaction_id` varchar(100) DEFAULT NULL COMMENT 'PG사 트랜잭션 식별자',
  PRIMARY KEY (`payment_id`),
  KEY `reservation_id` (`reservation_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='결제 정보 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,20000,'카드','PAID','2025-07-25 14:46:00','TXN1234567890');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` bigint NOT NULL AUTO_INCREMENT,
  `reservation_time` datetime(6) DEFAULT NULL,
  `screen_id` bigint NOT NULL,
  `seat_info` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `cinema_id` bigint DEFAULT NULL,
  `member_id` varchar(50) DEFAULT NULL,
  `movie_id` bigint DEFAULT NULL,
  `showtime_id` bigint NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `FK9mk9bnl5w9ooeitbf3xqyl0mp` (`cinema_id`),
  KEY `FK68999qe28ym9eqqlowybh9nvn` (`member_id`),
  KEY `FKt5qalkttsvvcumarqxvs5dm4d` (`movie_id`),
  KEY `FK85jof2r60aatpcc1mbl2vwvfx` (`showtime_id`),
  KEY `FK_reservation_screen` (`screen_id`),
  CONSTRAINT `FK68999qe28ym9eqqlowybh9nvn` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FK85jof2r60aatpcc1mbl2vwvfx` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`showtime_id`),
  CONSTRAINT `FK9mk9bnl5w9ooeitbf3xqyl0mp` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`cinema_id`),
  CONSTRAINT `FK_reservation_screen` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`screen_id`),
  CONSTRAINT `FKt5qalkttsvvcumarqxvs5dm4d` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2025-07-25 14:45:00.000000',1,'A1,A2','예약완료',1,'user01',1,1,'카드');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_seats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_seats` (
  `reservation_seat_id` bigint NOT NULL AUTO_INCREMENT,
  `reservation_id` bigint NOT NULL,
  `seat_id` bigint NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `showtime_id` bigint NOT NULL,
  PRIMARY KEY (`reservation_seat_id`),
  UNIQUE KEY `unique_reservation_seat` (`reservation_id`,`seat_id`),
  KEY `seat_id` (`seat_id`),
  KEY `fk_reservationseat_showtime` (`showtime_id`),
  CONSTRAINT `fk_reservationseat_showtime` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`showtime_id`) ON DELETE CASCADE,
  CONSTRAINT `FKnudgxu516ine72mwxxoeu4cc6` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `FKo4tbgy4jg06hfaugqx2gxx9we` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`),
  CONSTRAINT `reservation_seats_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_seats`
--

LOCK TABLES `reservation_seats` WRITE;
/*!40000 ALTER TABLE `reservation_seats` DISABLE KEYS */;
INSERT INTO `reservation_seats` VALUES (28,1,1,'2025-07-25 16:40:25',1);
INSERT INTO `reservation_seats` VALUES (29,1,2,'2025-07-25 16:40:25',1);
/*!40000 ALTER TABLE `reservation_seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` bigint NOT NULL AUTO_INCREMENT COMMENT '댓글 고유 ID',
  `movie_id` bigint NOT NULL COMMENT '댓글이 달린 영화 게시물 ID',
  `user_id` varchar(50) NOT NULL,
  `content` text NOT NULL COMMENT '댓글 내용',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '댓글 생성 시간',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '댓글 최종 수정 시간',
  `is_positive` tinyint(1) DEFAULT NULL COMMENT '긍정 평가 여부 (true: 좋았어요, false: 별로였어요)',
  PRIMARY KEY (`review_id`),
  KEY `movie_id` (`movie_id`),
  KEY `fk_reviews_user` (`user_id`),
  CONSTRAINT `FK87tlqya0rq8ijfjscldpvvdyq` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `fk_reviews_user` FOREIGN KEY (`user_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,'user01','스토리와 연출이 정말 뛰어났고 배우들의 연기도 감동적이었습니다. 음악과 영상미가 조화를 이루어 몰입감이 대단했어요. 여러 번 다시 보고 싶을 정도로 만족스러운 영화였습니다.','2025-07-26 10:00:00','2025-07-25 16:46:25',1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screens` (
  `screen_id` bigint NOT NULL AUTO_INCREMENT,
  `cinema_id` bigint NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  `row_count` int NOT NULL DEFAULT '10',
  `column_count` int NOT NULL DEFAULT '15',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_seats` int NOT NULL,
  `screen_type` varchar(100) DEFAULT 'STANDARD' COMMENT '상영관 타입',
  PRIMARY KEY (`screen_id`),
  KEY `cinema_id` (`cinema_id`),
  CONSTRAINT `screens_ibfk_1` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`cinema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screens`
--

LOCK TABLES `screens` WRITE;
/*!40000 ALTER TABLE `screens` DISABLE KEYS */;
INSERT INTO `screens` VALUES (1,1,'스크린 A',10,15,'2025-07-22 15:11:58','2025-07-22 15:11:58',150,'STANDARD');
INSERT INTO `screens` VALUES (2,2,'스크린 B',10,15,'2025-07-22 15:11:58','2025-07-22 15:11:58',100,'IMAX');
INSERT INTO `screens` VALUES (3,1,'1관',5,10,'2025-07-22 16:25:12','2025-07-22 16:25:12',50,'일반');
INSERT INTO `screens` VALUES (4,1,'2관',6,12,'2025-07-22 16:25:12','2025-07-22 16:25:12',72,'STANDARD');
INSERT INTO `screens` VALUES (5,2,'1관',4,8,'2025-07-22 16:25:12','2025-07-22 16:25:12',32,'IMAX');
INSERT INTO `screens` VALUES (6,2,'2관',5,10,'2025-07-22 16:25:12','2025-07-22 16:25:12',50,'3D');
INSERT INTO `screens` VALUES (7,3,'1관',7,14,'2025-07-22 16:25:12','2025-07-22 16:25:12',98,'STANDARD');
/*!40000 ALTER TABLE `screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seats` (
  `seat_id` bigint NOT NULL AUTO_INCREMENT,
  `screen_id` bigint NOT NULL,
  `seat_row` varchar(1) NOT NULL,
  `seat_number` int NOT NULL,
  `seat_type` varchar(100) DEFAULT NULL,
  `price` int NOT NULL DEFAULT '10000' COMMENT '좌석 가격 (원 단위)',
  PRIMARY KEY (`seat_id`),
  UNIQUE KEY `unique_seat` (`screen_id`,`seat_row`,`seat_number`),
  CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`screen_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
INSERT INTO `seats` VALUES (1,1,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (2,1,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (3,1,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (4,1,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (5,1,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (6,1,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (7,1,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (8,1,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (9,1,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (10,1,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (11,1,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (12,1,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (13,1,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (14,1,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (15,1,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (16,1,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (17,1,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (18,1,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (19,1,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (20,1,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (21,1,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (22,1,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (23,1,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (24,1,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (25,1,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (26,1,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (27,1,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (28,1,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (29,1,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (30,1,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (31,1,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (32,1,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (33,1,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (34,1,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (35,1,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (36,1,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (37,1,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (38,1,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (39,1,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (40,1,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (41,1,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (42,1,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (43,1,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (44,1,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (45,1,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (46,1,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (47,1,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (48,1,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (49,1,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (50,1,'E',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (51,2,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (52,2,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (53,2,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (54,2,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (55,2,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (56,2,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (57,2,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (58,2,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (59,2,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (60,2,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (61,2,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (62,2,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (63,2,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (64,2,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (65,2,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (66,2,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (67,2,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (68,2,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (69,2,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (70,2,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (71,2,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (72,2,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (73,2,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (74,2,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (75,2,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (76,2,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (77,2,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (78,2,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (79,2,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (80,2,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (81,2,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (82,2,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (83,2,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (84,2,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (85,2,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (86,2,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (87,2,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (88,2,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (89,2,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (90,2,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (91,2,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (92,2,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (93,2,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (94,2,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (95,2,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (96,2,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (97,2,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (98,2,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (99,2,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (100,2,'E',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (101,3,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (102,3,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (103,3,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (104,3,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (105,3,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (106,3,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (107,3,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (108,3,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (109,3,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (110,3,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (111,3,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (112,3,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (113,3,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (114,3,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (115,3,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (116,3,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (117,3,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (118,3,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (119,3,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (120,3,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (121,3,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (122,3,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (123,3,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (124,3,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (125,3,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (126,3,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (127,3,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (128,3,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (129,3,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (130,3,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (131,3,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (132,3,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (133,3,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (134,3,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (135,3,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (136,3,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (137,3,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (138,3,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (139,3,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (140,3,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (141,3,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (142,3,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (143,3,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (144,3,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (145,3,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (146,3,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (147,3,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (148,3,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (149,3,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (150,3,'E',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (151,4,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (152,4,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (153,4,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (154,4,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (155,4,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (156,4,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (157,4,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (158,4,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (159,4,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (160,4,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (161,4,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (162,4,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (163,4,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (164,4,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (165,4,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (166,4,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (167,4,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (168,4,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (169,4,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (170,4,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (171,4,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (172,4,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (173,4,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (174,4,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (175,4,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (176,4,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (177,4,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (178,4,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (179,4,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (180,4,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (181,4,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (182,4,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (183,4,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (184,4,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (185,4,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (186,4,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (187,4,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (188,4,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (189,4,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (190,4,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (191,4,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (192,4,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (193,4,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (194,4,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (195,4,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (196,4,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (197,4,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (198,4,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (199,4,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (200,4,'E',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (201,5,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (202,5,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (203,5,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (204,5,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (205,5,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (206,5,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (207,5,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (208,5,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (209,5,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (210,5,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (211,5,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (212,5,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (213,5,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (214,5,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (215,5,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (216,5,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (217,5,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (218,5,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (219,5,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (220,5,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (221,5,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (222,5,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (223,5,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (224,5,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (225,5,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (226,5,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (227,5,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (228,5,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (229,5,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (230,5,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (231,5,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (232,5,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (233,5,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (234,5,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (235,5,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (236,5,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (237,5,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (238,5,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (239,5,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (240,5,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (241,5,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (242,5,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (243,5,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (244,5,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (245,5,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (246,5,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (247,5,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (248,5,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (249,5,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (250,5,'E',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (251,6,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (252,6,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (253,6,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (254,6,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (255,6,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (256,6,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (257,6,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (258,6,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (259,6,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (260,6,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (261,6,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (262,6,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (263,6,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (264,6,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (265,6,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (266,6,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (267,6,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (268,6,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (269,6,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (270,6,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (271,6,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (272,6,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (273,6,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (274,6,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (275,6,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (276,6,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (277,6,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (278,6,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (279,6,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (280,6,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (281,6,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (282,6,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (283,6,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (284,6,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (285,6,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (286,6,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (287,6,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (288,6,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (289,6,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (290,6,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (291,6,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (292,6,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (293,6,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (294,6,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (295,6,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (296,6,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (297,6,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (298,6,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (299,6,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (300,6,'E',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (301,7,'A',1,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (302,7,'A',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (303,7,'A',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (304,7,'A',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (305,7,'A',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (306,7,'A',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (307,7,'A',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (308,7,'A',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (309,7,'A',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (310,7,'A',10,'ACCESSIBLE',10000);
INSERT INTO `seats` VALUES (311,7,'B',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (312,7,'B',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (313,7,'B',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (314,7,'B',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (315,7,'B',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (316,7,'B',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (317,7,'B',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (318,7,'B',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (319,7,'B',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (320,7,'B',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (321,7,'C',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (322,7,'C',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (323,7,'C',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (324,7,'C',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (325,7,'C',5,'STANDARD',10000);
INSERT INTO `seats` VALUES (326,7,'C',6,'STANDARD',10000);
INSERT INTO `seats` VALUES (327,7,'C',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (328,7,'C',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (329,7,'C',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (330,7,'C',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (331,7,'D',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (332,7,'D',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (333,7,'D',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (334,7,'D',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (335,7,'D',5,'VIP',15000);
INSERT INTO `seats` VALUES (336,7,'D',6,'VIP',15000);
INSERT INTO `seats` VALUES (337,7,'D',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (338,7,'D',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (339,7,'D',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (340,7,'D',10,'STANDARD',10000);
INSERT INTO `seats` VALUES (341,7,'E',1,'STANDARD',10000);
INSERT INTO `seats` VALUES (342,7,'E',2,'STANDARD',10000);
INSERT INTO `seats` VALUES (343,7,'E',3,'STANDARD',10000);
INSERT INTO `seats` VALUES (344,7,'E',4,'STANDARD',10000);
INSERT INTO `seats` VALUES (345,7,'E',5,'VIP',15000);
INSERT INTO `seats` VALUES (346,7,'E',6,'VIP',15000);
INSERT INTO `seats` VALUES (347,7,'E',7,'STANDARD',10000);
INSERT INTO `seats` VALUES (348,7,'E',8,'STANDARD',10000);
INSERT INTO `seats` VALUES (349,7,'E',9,'STANDARD',10000);
INSERT INTO `seats` VALUES (350,7,'E',10,'STANDARD',10000);
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showtimes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showtimes` (
  `showtime_id` bigint NOT NULL AUTO_INCREMENT,
  `movie_id` bigint NOT NULL,
  `screen_id` bigint NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `available_seats` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`showtime_id`),
  KEY `idx_movie_id` (`movie_id`),
  KEY `idx_screen_id` (`screen_id`),
  KEY `idx_start_time` (`start_time`),
  CONSTRAINT `fk_showtimes_screen` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`screen_id`) ON DELETE CASCADE,
  CONSTRAINT `showtimes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showtimes`
--

LOCK TABLES `showtimes` WRITE;
/*!40000 ALTER TABLE `showtimes` DISABLE KEYS */;
INSERT INTO `showtimes` VALUES (1,1,1,'2025-07-22 10:00:00','2025-07-22 12:00:00','2025-07-22 15:17:07','2025-07-22 15:26:56',150,20000.00);
INSERT INTO `showtimes` VALUES (2,1,1,'2025-07-22 18:00:00','2025-07-22 20:00:00','2025-07-22 15:17:07','2025-07-22 15:26:56',150,20000.00);
INSERT INTO `showtimes` VALUES (3,1,3,'2025-07-23 10:00:00','2025-07-23 12:00:00','2025-07-22 09:00:00','2025-07-23 11:10:00',50,12.50);
INSERT INTO `showtimes` VALUES (4,1,3,'2025-07-23 10:00:00','2025-07-23 12:00:00','2025-07-22 09:00:00','2025-07-23 11:10:00',50,12.50);
INSERT INTO `showtimes` VALUES (5,1,4,'2025-07-23 11:00:00','2025-07-23 12:00:00','2025-07-22 09:00:00','2025-07-23 11:10:00',50,12.50);
INSERT INTO `showtimes` VALUES (6,1,4,'2025-07-23 18:40:00','2025-07-23 12:00:00','2025-07-22 09:00:00','2025-07-23 11:10:00',50,12.50);
INSERT INTO `showtimes` VALUES (7,1,2,'2025-07-24 14:30:00','2025-07-24 16:30:00','2025-07-24 10:19:16','2025-07-24 10:19:16',100,13000.00);
INSERT INTO `showtimes` VALUES (8,2,1,'2025-07-24 17:00:00','2025-07-24 19:30:00','2025-07-24 10:19:16','2025-07-24 10:19:16',80,11000.00);
INSERT INTO `showtimes` VALUES (9,2,2,'2025-07-25 09:30:00','2025-07-25 11:30:00','2025-07-24 10:19:16','2025-07-24 10:19:16',100,10000.00);
INSERT INTO `showtimes` VALUES (10,2,3,'2025-07-25 18:00:00','2025-07-25 20:00:00','2025-07-24 10:19:16','2025-07-24 10:19:16',120,13000.00);
INSERT INTO `showtimes` VALUES (11,3,3,'2025-07-26 12:00:00','2025-07-26 14:00:00','2025-07-24 10:19:16','2025-07-24 10:19:16',120,14000.00);
INSERT INTO `showtimes` VALUES (12,3,1,'2025-07-26 15:00:00','2025-07-26 17:00:00','2025-07-24 10:19:16','2025-07-24 10:19:16',80,12000.00);
INSERT INTO `showtimes` VALUES (13,3,2,'2025-07-27 11:00:00','2025-07-27 13:30:00','2025-07-24 10:19:16','2025-07-24 10:19:16',100,15000.00);
INSERT INTO `showtimes` VALUES (14,1,3,'2025-07-28 16:00:00','2025-07-28 18:00:00','2025-07-24 10:19:16','2025-07-24 10:19:16',120,12000.00);
INSERT INTO `showtimes` VALUES (15,1,1,'2025-07-24 14:30:00','2025-07-24 16:30:00','2025-07-24 10:19:41','2025-07-24 10:19:41',100,13000.00);
INSERT INTO `showtimes` VALUES (16,1,2,'2025-07-24 15:30:00','2025-07-24 16:30:00','2025-07-24 10:26:00','2025-07-24 10:26:00',100,13000.00);
INSERT INTO `showtimes` VALUES (17,1,3,'2025-07-24 16:30:00','2025-07-24 16:30:00','2025-07-24 10:26:00','2025-07-24 10:26:00',100,13000.00);
INSERT INTO `showtimes` VALUES (18,1,4,'2025-07-24 17:30:00','2025-07-24 16:30:00','2025-07-24 10:26:00','2025-07-24 10:26:00',100,13000.00);
INSERT INTO `showtimes` VALUES (19,1,2,'2025-07-24 15:30:00','2025-07-24 16:30:00','2025-07-24 10:26:02','2025-07-24 10:26:02',100,13000.00);
INSERT INTO `showtimes` VALUES (20,1,3,'2025-07-24 16:30:00','2025-07-24 16:30:00','2025-07-24 10:26:02','2025-07-24 10:26:02',100,13000.00);
INSERT INTO `showtimes` VALUES (21,1,4,'2025-07-24 17:30:00','2025-07-24 16:30:00','2025-07-24 10:26:02','2025-07-24 10:26:02',100,13000.00);
INSERT INTO `showtimes` VALUES (22,1,5,'2025-07-24 18:30:00','2025-07-24 16:30:00','2025-07-24 10:26:49','2025-07-24 10:26:49',100,13000.00);
INSERT INTO `showtimes` VALUES (23,1,6,'2025-07-24 19:30:00','2025-07-24 16:30:00','2025-07-24 10:26:49','2025-07-24 10:26:49',100,13000.00);
INSERT INTO `showtimes` VALUES (24,1,7,'2025-07-24 20:30:00','2025-07-24 16:30:00','2025-07-24 10:26:49','2025-07-24 10:26:49',100,13000.00);
INSERT INTO `showtimes` VALUES (25,1,5,'2025-07-24 18:30:00','2025-07-24 16:30:00','2025-07-24 10:27:21','2025-07-24 10:27:21',100,13000.00);
INSERT INTO `showtimes` VALUES (26,1,6,'2025-07-24 19:30:00','2025-07-24 16:30:00','2025-07-24 10:27:21','2025-07-24 10:27:21',100,13000.00);
INSERT INTO `showtimes` VALUES (27,1,7,'2025-07-24 20:30:00','2025-07-24 16:30:00','2025-07-24 10:27:21','2025-07-24 10:27:21',100,13000.00);
/*!40000 ALTER TABLE `showtimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cinemoa'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-28  0:45:45
