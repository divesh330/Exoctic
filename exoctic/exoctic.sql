-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2023 at 10:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exoctic`
--

-- --------------------------------------------------------

--
-- Table structure for table `gecko`
--

CREATE TABLE `gecko` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` text NOT NULL,
  `pic` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gecko`
--

INSERT INTO `gecko` (`id`, `name`, `color`, `description`, `price`, `pic`) VALUES
(1, 'Aptor', 'Orange', 'An APTOR is a Tremper Albino Patternless Orange Leopard Gecko.', '250', 'http://www.leopardgeckowiki.com/images/8/80/Mmaptor1.jpg'),
(3, 'Blazing Blizzard', 'White', 'A Blazing Blizzard is a combination of the Blizzard morph and any of the 3 Albino strains. A Blazing Blizzard is a Blizzard which will have more of a yellow coloring', '300', 'http://www.leopardgeckowiki.com/images/thumb/1/1f/Blazing_blizzard_tremper.jpg/600px-Blazing_blizzard_tremper.jpg'),
(4, 'Blazing Blizzard', 'White', 'A Blazing Blizzard is a combination of the Blizzard morph and any of the 3 Albino strains. A Blazing Blizzard is a Blizzard which will have more of a yellow coloring', '300', 'http://www.leopardgeckowiki.com/images/thumb/1/1f/Blazing_blizzard_tremper.jpg/600px-Blazing_blizzard_tremper.jpg'),
(5, 'Carrot Tail', 'Orange', 'A Carrot Tail is a feature on a Leopard Gecko which appears in the tail. To have a carrot tail, at least 15% of the Leopard Gecko\'s tail from the base, must be covered in orange. The carrot tail is a Line Bred trait: in order to create geckos with more carroting than previous generations, they must be bred to geckos with lots of carroting.', '350', 'http://www.leopardgeckowiki.com/images/thumb/0/0d/Hyglo3_alberto.jpg/600px-Hyglo3_alberto.jpg'),
(6, 'Super Giant', 'White and Yellow', 'A Super Giant is the homozygous version on the Giant trait. In relation to Giants and Normals, Super Giants are the largest. Currently, the biggest Super Giant, Moose from Ron Tremper, weighed in at 156 grams and 11 3/8 inches from nose to tail tip.\n\n', '400', 'http://www.leopardgeckowiki.com/images/thumb/4/47/Mmsupergianttremper1.jpg/600px-Mmsupergianttremper1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(222) NOT NULL,
  `totalAmount` int(233) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(222) NOT NULL,
  `product_name` varchar(222) NOT NULL,
  `product_price` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `color`, `type`, `pic`) VALUES
(1, 'Aptor', 'An APTOR is a Tremper Albino Patternless Orange Leopard Gecko.', '300', 'Orange', 'gecko', 'http://www.leopardgeckowiki.com/images/8/80/Mmaptor1.jpg'),
(3, 'Blazing Blizzard', 'A Blazing Blizzard is a combination of the Blizzard morph and any of the 3 Albino strains. A Blazing Blizzard is a Blizzard which will have more of a yellow coloring', '400', 'White', 'gecko', 'http://www.leopardgeckowiki.com/images/thumb/1/1f/Blazing_blizzard_tremper.jpg/600px-Blazing_blizzard_tremper.jpg'),
(5, 'Carrot Tail', 'A Carrot Tail is a feature on a Leopard Gecko which appears in the tail. To have a carrot tail, at least 15% of the Leopard Gecko\'s tail from the base, must be covered in orange. The carrot tail is a Line Bred trait: in order to create geckos with more carroting than previous generations, they must be bred to geckos with lots of carroting.', '500', 'Orange', 'gecko', 'http://www.leopardgeckowiki.com/images/thumb/0/0d/Hyglo3_alberto.jpg/600px-Hyglo3_alberto.jpg'),
(6, 'Super Giant', 'A Super Giant is the homozygous version on the Giant trait. In relation to Giants and Normals, Super Giants are the largest. Currently, the biggest Super Giant, Moose from Ron Tremper, weighed in at 156 grams and 11 3/8 inches from nose to tail tip.\r\n\r\n', '500', 'White and Yellow', 'gecko', 'http://www.leopardgeckowiki.com/images/thumb/4/47/Mmsupergianttremper1.jpg/600px-Mmsupergianttremper1.jpg'),
(9, 'Ball python', 'Arguably the most popular pet snake there is, the ball python is a very even-tempered, docile snake. They only grow to be about 3-5 feet in length but can live as long as 35 years in captivity. They get their name from the tight ball they curl up into when they feel threatened.', '900', 'Dark brown', 'snake', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Ball_python_lucy.JPG'),
(10, 'Corn snake', 'Corn snakes, sometimes called red rat snakes, are slender, orange or brownish-yellow snakes with a pattern of large, red blotches outlined in black down their backs. Along their bellies are distinctive rows of alternating black and white marks, which resemble a checkerboard pattern.', '800', 'Orange ,Brown', 'snake', 'https://assets.petco.com/petco/image/upload/f_auto,q_auto/corn-snake-caresheet-hero'),
(11, 'Milk snake', 'Milk snakes have smooth and shiny scales and their typical color pattern is alternating bands of red-black-yellow or white-black-red; however, red blotches instead of bands are seen in some populations.', '1000', 'Red,black,yellow', 'snake', 'https://upload.wikimedia.org/wikipedia/commons/a/aa/Red_milk_snake.JPG'),
(12, 'Rat snake', 'Eastern rat snakes, formerly known as black rat snakes, are large non-venomous snakes between 3.5 and 7 feet (one and two meters) long. They have shiny black scales on their back and a light colored belly, and their throat and chin are white.', '2000', 'Black', 'snake', 'https://cdn.mos.cms.futurecdn.net/3mdGwMjRmEBe2SGCC4AoFC.jpg'),
(13, ' EXO TERRA CRESTED GECKO FOOD-8 PCS X 12.5G', 'Highly palatable -irresistible taste and aroma\r\nPre-mixed, single serve cups\r\nNutritious & ready-to-eat\r\nProvides ideal calcium and magnesium levels to promote strong bones and support egg-layin', '30', '', 'food', 'https://exoreptiles.com/my/wp-content/uploads/2020/12/PT3260-Crested-Gecko-Food.jpg'),
(14, 'ZOO MED CRESTED GECKO FOOD 227G', 'Carefully formulated by an Animal Nutritionist (M.S.) to meet the dietary requirements of crested geckos of in all life stages. Also great for Day Geckos, Emerald Skinks, Gargoyle Geckos, or any other New Caledonian gecko species.\r\nProvide enrichment through variety by rotating through our 2 flavors: Tropical, Watermelon', '130', '', 'food', 'https://exoreptiles.com/my/wp-content/uploads/2022/06/IMG_20220614_115452-600x774.jpg'),
(15, 'HIKARI CRESTGEL 50G', 'Hikari Herptile CrestGel is a scientifically formulated, uniquely balanced, ready-to-use paste diet. Containing a wide variety of tasty ingredients along with all the necessary nutrients, needed vitamins, amino acids and trace minerals fruit and insect eating geckos like the Crested Gecko need to live a long and health-filled life.\r\n\r\n', '30', '', 'food', 'https://exoreptiles.com/my/wp-content/uploads/2022/04/h_002_01.jpg'),
(16, 'PANGEA FRUIT MIX GECKO DIET WITH INSECTS 56G', 'This Pangea Fruit Mix Complete Gecko Diet food is formulated to contain the lowest levels of oxalates and other anti-nutrients to ensure optimal calcium absorption for strong bones and great egg production. Our combination of protein sources delivers an amino acid profile second to none.', '40', '', 'food', 'https://exoreptiles.com/my/wp-content/uploads/2021/04/with-insects-bag__56G.jpg'),
(17, 'REPTI ZOO MINI GLASS HABITAT 21X21X15CM', 'The top is made of metal screen to provide adequate ventilation and is safe for overhead heat sources to meet the needs of the reptile keepers\r\nThe terrarium is water tight and can hold water\r\nThe cover includes specially designed feeding ports that are designed to be functional and also visually appealing\r\nThe “lift and pull”sliding door is simple and very convenient', '145', 'transparent', 'cage', 'https://exoreptiles.com/my/wp-content/uploads/2022/02/AK01B_5000x.jpg'),
(18, 'REPTI ZOO MINI GLASS HABITAT 21X21X20CM', 'he top is made of metal screen to provide adequate ventilation and is safe for overhead heat sources to meet the needs of the reptile keepers\r\nThe terrarium is water tight and can hold water\r\nThe cover includes specially designed feeding ports that are designed to be functional and also visually appealing\r\nThe “lift and pull”sliding door is simple and very convenient', '160', 'transparent', 'cage', 'https://exoreptiles.com/my/wp-content/uploads/2022/02/AK02B_5000x.jpg'),
(19, 'REPTI ZOO MINI GLASS HABITAT 31X31X20CM', 'The top is made of metal screen to provide adequate ventilation and is safe for overhead heat sources to meet the needs of the reptile keepers\r\nThe terrarium is water tight and can hold water\r\nThe cover includes specially designed feeding ports that are designed to be functional and also visually appealing\r\nThe “lift and pull”sliding door is simple and very convenient', '190', 'transparent', 'cage', 'https://exoreptiles.com/my/wp-content/uploads/2022/02/AK04B_659fc580-1b07-467e-8d43-2fe7d6962c99_5000x.jpg'),
(20, 'EXO TERRA BREEDING BOX, SMALL', 'The special feeding door at the front of the lid allows access for feeding and watering, even when the units are stacked. This makes feeding easy and prevents stress since the unit does not have to be moved in order to access it. The angled ventilation provides an optimal air-flow at all times, even when the unit is stacked.', '26', 'transparent', 'breeding box', 'https://exoreptiles.com/my/wp-content/uploads/2017/01/PT2270_Breeding_Box-600x589.jpg'),
(21, 'Mack Snow', 'These are white with black spots that appear all along the body. They also have completely black eyes, like they\'re an eclipse, but no eclipse gene is required. They are a stunning leopard gecko morph and highly sought after.', '500', 'White, Yellow', 'gecko', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShaLAvBlaVrqlHetu3F98GAgDs94HC4ceINg&usqp=CAU'),
(22, 'Nieves Tangerine', 'The Nieves Tangerines are Line Bred Tangerines geckos that have a distinct look. These geckos have Tangerine coloring, but their spots seem to be larger than other Tangerines. ', '800', 'Yellow,Orange', 'gecko', 'http://www.leopardgeckowiki.com/images/thumb/2/28/Nieves4.jpg/600px-Nieves4.jpg'),
(23, 'Bell Albino', 'The eyes of the Bell Albinos is the easiest way to tell them apart from the other two strains. Their eyes are a light pink color. The body tends to have brown spots. Bell Albinos can also express a lavender color on their bodies.', '900', 'Brown,Yellow', 'gecko', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT56VM95tpcJCACYPCiNixjt36df0qJXZCybw&usqp=CAU'),
(24, 'Red Stripe', 'Through selective breeding their premium Red Racing Stripes developed into geckos exhibiting a yellow orange body with two intense reddish colored stripes running down the dorsal area. Today this morph is simply referred to as a Red Stripe.', '700', 'Yellow Orange', 'gecko', 'https://i.pinimg.com/originals/d0/c8/b9/d0c8b9e53bf6d462bea752b60e1f8af0.jpg'),
(25, 'Smooth green ', 'Smooth green snakes are the only snakes in eastern North America that are entirely bright green on their upper surfaces. This coloration camouflages them well in their grassy habitats. The head is slightly wider than the neck and is green above and white below. The belly is white to pale yellow. Occasionally smooth green snakes can be brown or tan in coloration.', '2000', 'Green', 'snake', 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcSoFu8R0gKNQGcCBJh3bo67EoQcaRGfM6OvPQgUwin1r_DfLGPZNND-QC0EeoQjv5pAJPCY1IJYRptzYxY'),
(26, 'Burmese python', 'Burmese pythons are large constrictors that can grow to over 20 feet in length, although those caught in Florida are generally between 6 and 10 feet long. As adults, they are larger than almost all native snakes. Typical Burmese pythons are tan in color with dark blotches along the back and sides.', '2500', 'Dark brown', 'snake', 'https://www.thoughtco.com/thmb/VukZGRUTPiRyFdVHPj4VrC741XA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/burmese-python--overhead-view--studio-shot-sb10063920q-001-5b951ffbc9e77c0082e36a76.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `snake`
--

CREATE TABLE `snake` (
  `id` int(233) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `pic` varchar(245) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snake`
--

INSERT INTO `snake` (`id`, `name`, `color`, `price`, `description`, `pic`) VALUES
(3, 'Ball python', 'Dark brown', '400', 'Arguably the most popular pet snake there is, the ball python is a very even-tempered, docile snake. They only grow to be about 3-5 feet in length but can live as long as 35 years in captivity. They get their name from the tight ball they curl up into when they feel threatened.', 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Ball_python_lucy.JPG'),
(4, 'Corn snake', 'Orange ,Brown', '600', '', 'https://assets.petco.com/petco/image/upload/f_auto,q_auto/corn-snake-caresheet-hero');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$0hlEGqwM9NOvam1kObSMOuQD3CRs11StgZnBbqoWK1IVmrk13lZda'),
(2, 'divesh', '$2y$10$JrzXG/.zEBvUA0roVw5cN./A3iMYgu7iwrqvQnwgCvw7DbVRjxaoW'),
(3, 'test', '$2y$10$yPIi.8klZPu8xXr9vJurSe.YXsP4bHAce2Wt5v3Rm8faNW8WcGp3G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gecko`
--
ALTER TABLE `gecko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snake`
--
ALTER TABLE `snake`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gecko`
--
ALTER TABLE `gecko`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `snake`
--
ALTER TABLE `snake`
  MODIFY `id` int(233) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
