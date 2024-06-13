-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 06:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-11-28 15:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `pickuptiming` varchar(10) DEFAULT NULL,
  `returntiming` varchar(16) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `pickuptiming`, `returntiming`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 649675442, 'manohar674@gmail.com', 2, '2021-01-31', '2021-02-02', '00:0', '', 'dfd', 2, '2021-01-31 06:57:07', '2021-02-12 05:50:02'),
(2, 616992810, 'manohar674@gmail.com', 3, '2021-01-31', '2021-02-03', '00:0', '', 'dfd', 0, '2021-01-31 06:59:21', NULL),
(3, 292621604, 'manohar674@gmail.com', 3, '2021-02-05', '2021-02-08', '12:3', '', 'dfd', 0, '2021-01-31 07:02:08', NULL),
(4, 195789004, 'manohar674@gmail.com', 46, '2021-01-31', '2021-02-02', '12:37', '', 'dfd', 0, '2021-01-31 07:06:00', NULL),
(5, 644533824, 'rufra54@gmail.com', 7, '2021-02-12', '2021-02-13', '13:09', '', 'hjgjgj', 1, '2021-02-12 05:39:44', '2021-02-12 05:43:00'),
(6, 720918610, 'manohar674@gmail.com', 3, '2021-02-13', '2021-02-18', '22:48', '', 'jhjh', 0, '2021-02-13 07:19:30', NULL),
(7, 558342244, 'manohar674@gmail.com', 4, '2021-02-17', '2021-02-20', '14:52', '', 'fgfgf', 1, '2021-02-13 07:22:35', '2021-02-13 07:24:39'),
(8, 423038203, 'manohar674@gmail.com', 47, '15/02/2021', '18/02/2021', '00:26', '', 'sds', 0, '2021-02-14 18:56:02', NULL),
(9, 168521253, 'manohar74@gmail.com', 48, '2021-02-22', '2021-02-25', '12:14', '', 'madjsjdsd', 1, '2021-02-22 05:45:05', '2021-02-22 05:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Hero', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'Bajaj Auto', '2017-06-18 16:24:50', NULL),
(3, 'TVS Motor', '2017-06-18 16:25:03', NULL),
(4, 'Royal Enfield', '2017-06-18 16:25:13', NULL),
(5, 'KTM', '2017-06-18 16:25:24', NULL),
(7, 'Yamaha', '2017-06-19 06:22:13', '2020-07-07 14:14:09'),
(9, 'Suzuki', '2020-12-12 09:10:31', NULL),
(11, 'Honda', '2021-02-12 05:45:21', NULL),
(12, 'Mahindra', '2021-02-22 05:29:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Brindavan college  Bangalore ', 'manohar2744@gmail.com', '8565809425');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1),
(2, 'manohar vishwakarma', 'manohar2744@gmail.com', '7236000339', 'i want a meeting with your HR .is that\'s possible?', '2020-11-18 16:24:31', 1),
(3, 'bugfixer ', 'bug26@gmail.com', '7236000339', 'hey how can i book a car??', '2020-11-28 16:00:14', 1),
(4, 'manohar vishwakarma', 'rakeshraj.rk62@gmail.com', '7236000339', 'mankn', '2020-12-12 09:29:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																								<h2 style=\"text-align: justify; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 30px; font-size: 20px; text-transform: uppercase; color: rgb(0, 0, 0); font-family: Arimo, sans-serif;\">CAR RENTAL TERMS</h2><div><br></div><div><br></div><div><br></div><div>&nbsp;snnnn</div><p style=\"\"></p><div style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px; text-align: justify;\"><strong>In addition to the vehicle are the following is included in the car rental: All tires, tools, documents, accessories as well as equipment.&nbsp; The renter</strong></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>agrees to all conditions and terms printed on this contract and to the</strong></div><div style=\"text-align: justify;\"><strong>information written on the contract with the same number and date as these car rental terms.</strong></div></strong><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><br></span></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>1.</strong>&nbsp;The renter fully agrees to the terms and conditions of this contract and has received a copy thereof.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>2.</strong>&nbsp;The renter has received the mentioned vehicle and its accessories in proper and safe condition.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>3.</strong>&nbsp;The renter agrees to return the vehicle to the lessor on the agreed date and place, as written in the contract, or earlier if the lessor so insists. Should the vehicle not be returned on the agreed time, a fee equal to 1/3 of the daily rate shall be charged for each hour of delay.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>4.</strong>&nbsp;Liability and driver insurance are according to Icelandic law. Third party liability insurance shall be equivalent to the amount stipulated by the car\'s insurance company at each time. The renters own liability for damages on the car is limited to the worth of the car. The renter can limit his liability by purchasing a collision damage waiver (CDW) for a fixed amount which is determined each time by the lessor.&nbsp; The driver liability in excess of ISK 220,000,- for 2wd and 330,000,- for 4wd and vans.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>5.</strong>&nbsp;The collision damage waiver (CDW) does not cover:</div><div style=\"text-align: justify;\"><br></div></strong><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">a) Damages done on purpose or by total carelessness of the driver.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">b) Damages caused when the driver is intoxicated, under the influence of drugs, or by any other cause which renders him unfit to safely drive a vehicle.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">c) Damages to the engine caused by water, such as when crossing un-bridged rivers or driving in water.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">d) Damages which occur while the car is being raced or test-driven.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">e) Damages caused through war activity, mutiny, riots, and uproar or by sabotage.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">f) Burns on seats, carpets or floor mats.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">g) Damages to wheels, tires, springs, batteries, glass (lights &amp; windows), and radio as well as damages caused by theft of certain parts of the vehicle.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">h) Damages caused by driving on bumpy roads on parts such as:</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">transmission, drive shafts, or other parts in or on the vehicle\'s under wagon. Damages which occur on the under wagon when the vehicle hits the uneven road, such as ridges left by road planers, or rocks stuck in the road or the roadside. Same applies to damages which occur when loose rocks or other items hit the vehicle while it is being driven.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">i) Damages caused when the vehicle is driven where driving is forbidden, also by driving off-road, on trails not marked on charts as normal roads, on snow piles, on ice, over un-bridged rivers or streams, on beaches, in dirt or on any other kind of off-roads.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">j) Damages when sand, gravel, ash, lava or other earth materials are blown on the vehicle.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">k) Should the vehicle be moved by sea, damages caused to it by the ocean water will not be paid.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">l) Damages caused by the wind blowing up the door while opening it.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">m) Other cases are referred to the general conditions of the comprehensive vehicle insurance.</div></span><p></p><p style=\"text-align: justify; color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"\"></p><div style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px; text-align: justify;\"><strong>6.&nbsp;</strong>SUPER CDW<strong>:</strong>&nbsp;CDW covers damages to the rental vehicle; it waives liability in case of any damages to the vehicle in excess of ISK 220.000 for 2wd and ISK 330.000 for 4wd and vans. But when you take Super CDW you change that to ISK 100.000 for 2wd and 160.000 ISK for 4wd and vans. Super CDW is available for ISK 1.300,- per day. But no insurance covers damages to the underside of the car.</div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><br></span></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>7.</strong>&nbsp;The car must be operated and driven with great care. The renter shall be liable for all damage to the car and injury sustained by passengers caused by collision or accident, which is not paid by the insurance company of the vehicle.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>8.</strong>&nbsp;In case of a collision or accident, the renter must report it instantly to law enforcement authorities and to the lessor, and must not leave the scene of the accident or collision until such action has been taken and after the police has arrived on the scene.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>9.</strong>&nbsp;Renter shall return the vehicle to the office of the lessor which has been agreed upon at the beginning of the rental period, along with all tires, tools, accessories and equipment in same condition as it was when received, though ordinary wear and tear is accepted. Lessor may repossess the vehicle without notice at any time if it is illegally parked, used in violation of law, against the terms of this agreement or is apparently abandoned.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>10.</strong>&nbsp;Under no circumstances is it permitted to use the vehicle, operate or drive:</div><div style=\"text-align: justify;\"><br></div></strong><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">a) In violation of Icelandic law, or the conditions and terms of this contract.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">b) For the transportation of passengers or property against payment.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">c) To propel or tow any vehicle, trailer or other objects.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">d) By any person other than the renter signing this contract, unless by written consent of lessor.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">e) Off-roads, that is roads that are not marked as normal driving roads on a road map.</div></span><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>11.</strong>&nbsp;Any violation of Icelandic law, or of any of the terms or conditions of this contract, by the renter or any other driver which the renter has granted permission to operate or drive the vehicle, renders the renter is fully responsible for all damages done to the vehicle what ever the cause may be.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>12.</strong>&nbsp;The number of kilometers (km) the vehicle is driven while this contract is valid is decided by reading the standard km reading device (speedometer) attached to the vehicle by the manufacturer. Renter shall report immediately if the speedometer is not working or seizes to function during the rental period.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>13.</strong>&nbsp;Lessor shall not be liable for disappearance or damage to any property left, stored or transported by renter or other persons, in or on the vehicle, either before or after it has been returned to lessor.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>14.</strong>&nbsp;Renter agrees to pay lessor on demand:</div><div style=\"text-align: justify;\"><br></div></strong><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">a) Deposit of the probable rental cost.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">b) All expenses incurred by lessor in returning the vehicle back to lessor\'s station, if it has been left somewhere else, regardless of condition of the vehicle, roads or weather.</div></span><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">c) A sum equal to the value of all the tires (regardless of road conditions), the tools and accessories which have been damaged, lost or stolen from the vehicle.</div></span><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>15.</strong>&nbsp;Renter is not authorized to have the vehicle or its accessories repaired or altered. The renter shall not permit any lien to be placed upon the vehicle without lessors prior consent. Renter shall pay all unauthorized charges in connection with the use, repairs, or safekeeping of the vehicle.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>16.</strong>&nbsp;The rental fee is paid up front. Discount agreed upon from that fee will be discontinued on the 10th day of the following month. From that day highest possible monthly interest will be added to the whole sum. VAT&nbsp; will be added to the discontinued discount.If it is written in the rental contract that discount is to be granted from the rental fee, this discount will be discontinued if renter causes injuries to another party or damages the vehicle and is not 100% in the right.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>17.</strong>&nbsp;Renter agrees to pay all costs which lessor may incur in collecting payment by law. Renters self risk with Gravel Protection is 20.000isk.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>18.</strong>&nbsp;Any legal proceedings arising from this contract shall be conducted before the Reykjavik Municipal Court without prior submission to a board of conciliation.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>19.</strong>&nbsp;All car must be retuned with full tank of gas . Service for refuel is 2.500 kr.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>20.</strong>&nbsp;Renter agrees to pay all costs to Lessor incurred in collecting payment from Renter. A credit card number or imprint is taken at start of all rentals for security reasons. It may be used to pay all extra charges, including extra kilometre\'s, extra days, extra insurance, parking fines, refilling gasoline, damages or any cost due to the car rental as a result of the renters use of the car.</div></strong><div style=\"text-align: justify;\"><br></div><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>CANCELLATION POLICY:</strong></div></strong><span style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\">If you cancel 15 days or more before pick up time:</div></span><strong style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><div style=\"text-align: justify;\"><strong>- you pay nothing or you get 100% refund of what you have already paid.</strong></div></strong><p></p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"></p><div style=\"text-align: justify;\">If you cancel 14 days before pickup time:</div><strong><div style=\"text-align: justify;\"><strong>- you pay 20% of the total or you get 80% refund if you have already paid.</strong></div></strong><div style=\"text-align: justify;\">If you cancel 48 hrs. before pick up time or a no-show:</div><strong><div style=\"text-align: justify;\"><strong>- you pay 80% of the total or you get 20% refund if you have already paid.</strong></div></strong><p></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">manohar</span></div>\r\n										'),
(11, 'FAQs', 'faqs', '																																																																																<div style=\"text-align: justify;\"><br></div><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;\">Q.1&nbsp; How can i rent he car?</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;\">Ans-&nbsp; you can rent a car very easily in our website first you need to make your account in our web site then you have to logging in with the same id and given password , and then you can book you any car.</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;\">Q2- what\'s your company name?</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;\">Ans- car rental services</span></p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;\"><br></span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700;\"><br></span></p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `id` int(220) NOT NULL,
  `cardno` varchar(225) NOT NULL,
  `expdate` date NOT NULL,
  `cvvno` int(3) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`id`, `cardno`, `expdate`, `cvvno`, `cname`) VALUES
(1, '1222222222', '2020-12-25', 122, '5555'),
(2, '2111111111', '2020-12-26', 121, 'manohar'),
(3, 'Msmsmmsmsm', '2020-12-28', 122, 'Mama'),
(4, '5555555555', '2020-12-28', 122, 'manohar'),
(5, '454454545455', '0000-00-00', 0, ''),
(6, '55', '0000-00-00', 0, ''),
(7, '4454545454', '2021-01-02', 454, 'manohar'),
(8, '5444444444', '2021-01-02', 112121, 'manohar'),
(9, '54555555', '2021-01-02', 121, 'manohar'),
(10, '5455555555', '2021-01-02', 121, 'manohar'),
(11, '4555555555', '2021-01-02', 1212, 'fgnfgng'),
(12, '4555555555', '2021-01-02', 121212, 'manohar'),
(13, '4545545444', '2021-01-09', 121212, 'manohar'),
(14, '454555kk66', '2021-01-30', 44555, 'manohar'),
(15, '7788787778787878', '2021-01-06', 101, 'manohar'),
(16, '66767', '2021-01-19', 786, 'ban '),
(17, '7584457885478558', '2021-03-06', 454, 'hjiahhah'),
(18, '4455445554888555', '2021-01-20', 453, 'aditya'),
(19, '1212121111111111', '2021-01-29', 121, 'manohar'),
(20, '4444444444444444', '2021-01-31', 121, 'sdsdsds'),
(21, '856856856856856', '2021-03-03', 856, 'SBImnohar'),
(22, '0445555555555555', '2021-02-13', 890, 'dfdfdfd'),
(23, '1222222222222222', '2021-02-23', 121, 'q w1212121212'),
(24, '4545454555555555', '2021-02-23', 456, 'man');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(4, 'harish@gmail.com', '2020-07-07 09:26:21'),
(5, 'kunal@gmail.com', '2020-07-07 09:35:07'),
(6, 'admin@gmail.com', '2020-11-18 15:57:29'),
(7, 'bugfixer27@gmail.com', '2020-11-28 15:58:25'),
(8, 'admin23@gmail.com', '2020-12-12 09:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'manohar674@gmail.com', 'don\'t book car from here they are not giving a good facility ..', '2021-02-21 05:42:58', 1),
(2, 'manohar74@gmail.com', 'it is very bad project', '2021-02-22 05:48:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `DL_NO` varchar(50) NOT NULL,
  `dlst` varchar(25) NOT NULL,
  `Vimage1` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`, `DL_NO`, `dlst`, `Vimage1`) VALUES
(1, 'manohar vishwakarma', 'man@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7236000339', '2021-01-05', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-01-05 17:54:03', '2021-01-05 18:07:29', '4545454545454', '', 'renault_clio_057.jpg'),
(2, 'Rakesh vishwakarma', 'rakeshraj.rk62@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7236000339', '2021-01-14', '84 Belwa Kala Belwa karkhana Fazilnagar kushinagar', 'Kushinagar', 'India', '2021-01-05 18:01:41', NULL, '45454545454545', '', NULL),
(3, 'manohar vishwakarma', 'rakeshraj.rk6@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7236000339', '2021-01-16', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-01-05 18:03:51', NULL, '25656556', '', 'renault_clio_057.jpg'),
(4, 'manohar vishwakarma', 'm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7236000339', '2021-01-08', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-01-05 18:06:12', NULL, '45454545454545', '', 'renault_clio_057.jpg'),
(5, 'manohar vishwakarma', 'manohar674@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7236000339', '2021-01-30', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-01-05 18:13:59', '2021-02-21 17:43:26', '45454545454545', '', 'Annotation 2020-07-09 231858.png'),
(6, 'man', 'user@gmail.com', '25d55ad283aa400af464c76d713c07ad', '7236000339', '2021-01-06', 'Palanahalli Maruthi Nagar, Yelahanka', 'Bangalore', 'India', '2021-01-06 08:12:40', NULL, '123456', '', 'mg_hector_660_071819011940.jpg'),
(7, 'demo', 'demo@gmail.com', '25d55ad283aa400af464c76d713c07ad', '7236000339', '2020-12-30', '84 Belwa Kala Belwa karkhana Fazilnagar kushinagar', 'Kushinagar', 'India', '2021-01-08 16:37:42', NULL, 'mkkmmm', '', '50654671_2225035780850507_3491876529829314560_o.jpg'),
(8, 'aditya @##', 'addoindia025@gmail.com', '25d55ad283aa400af464c76d713c07ad', '98077836', '2001-12-02', 'DWARKANAGAR', 'BANGALORE', 'INDIA', '2021-01-09 09:00:06', NULL, '3336225544116', '', '50654671_2225035780850507_3491876529829314560_o.jpg'),
(9, 'dsdsds....999', 'a$@d.com', '4297f44b13955235245b2497399d7a93', '1234567890', '2001-12-31', '84 Belwa Kala Belwa karkhana Fazilnagar kushinagar', 'Kushinagar', 'India', '2021-02-04 17:36:09', '2021-02-04 17:38:21', 'sdsdssdsdsdsd', '', 'tata-nano_827x510_71506427483.webp'),
(10, 'manohar vishwakarma', 'sdsadad12@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '0723600033', '2002-01-01', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-02-11 19:32:57', NULL, '2121212121212', '', 'boot-(open)-122.jpg'),
(11, 'Rakesh vishwakarma', 'rakrk62@gmail.com', '55001571e016914c223807325c6576c7', '0723600033', '2001-12-30', '84 Belwa Kala Belwa karkhana Fazilnagar kushinagar', 'Kushinagar', 'India', '2021-02-12 05:06:35', NULL, '2333333333333333', 'j&k', 'boot-(open)-122.jpg'),
(12, 'Rakesh vishwakarma', 'rakrk62@gmail.com', '55001571e016914c223807325c6576c7', '0723600033', '2001-12-30', '84 Belwa Kala Belwa karkhana Fazilnagar kushinagar', 'Kushinagar', 'India', '2021-02-12 05:08:33', NULL, '2333333333333333', 'j&k', 'boot-(open)-122.jpg'),
(13, 'Rakesh vishwakarma', 'rakrk62@gmail.com', '55001571e016914c223807325c6576c7', '0723600033', '2001-12-30', '84 Belwa Kala Belwa karkhana Fazilnagar kushinagar', 'Kushinagar', 'India', '2021-02-12 05:12:18', NULL, '2333333333333333', 'j&k', 'boot-(open)-122.jpg'),
(14, 'rdraa pratp', 'rufra54@gmail.com', 'fae0cf7aa56dc65bb79471286fd015cc', '8658094260', '2001-12-31', 'jhjdgjagdjgdajgadjgadjgajgja', 'lucknow', 'India', '2021-02-12 05:35:31', NULL, '1234567891299', 'kr', '20190130064236_Tata-Nano.jpg'),
(15, 'mansas', 'asasasas12121as@gmil.comww', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-14 17:58:01', NULL, '4545454545454', 'dl', 'IMG-20200502-WA0003.png'),
(16, 'mansas', 'asasasas12121as@gmil.comww', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-14 18:00:20', NULL, '4545454545454', 'dl', 'IMG-20200502-WA0003.png'),
(17, 'mansas', 'asasasas12121as@gmil.comww', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-14 18:01:00', NULL, '4545454545454', 'dl', 'IMG-20200502-WA0003.png'),
(18, 'mansas', 'asasasas12121as@gmil.comww', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-14 18:02:39', NULL, '4545454545454', 'dl', 'IMG-20200502-WA0003.png'),
(19, 'mansas', 'asasasas12121as@gmil.comww', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-14 18:16:20', NULL, '4545454545454', 'dl', 'IMG-20200502-WA0003.png'),
(20, 'manohar vishwakarma', 'man12@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '7236000339', '2002-01-01', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-02-14 19:12:31', '2021-02-14 19:14:40', '4545454545454', 'j&k', 'Untitled.jpg'),
(21, 'manohar ', 'manohar@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-20 17:45:00', NULL, '1234567890555', 'dl', 'Untitled.jpg'),
(22, 'manohar ', 'manohar@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-20 17:47:17', NULL, '1234567890555', 'dl', 'Untitled.jpg'),
(23, 'manohar ', 'manohar@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '8247764540', '2002-01-01', 'Ropan Chhapra Ropan Chhapra Deoria UTTAR PRADESH 274502', 'Deoria', 'India', '2021-02-20 17:50:26', NULL, '1234567890555', 'dl', 'Untitled.jpg'),
(24, 'manohar vishwakarma', 'manohar74@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '0723600033', '2001-12-31', 'sathyaw fazilnager kushinager u.p', 'kushinager', 'India', '2021-02-22 05:39:29', '2021-02-22 05:40:14', '1211111111113', 'kr', 'tata-nano_827x510_71506427483.webp'),
(25, 'bugfixer demo', 'manohar2744@gmail.com', 'e38ef2e6813cb4be296e88d726c01e7c', '7010854219', '2001-12-30', 'adad', 'nbnbn', 'India', '2021-02-23 17:47:49', NULL, '1234567899999', 'mh', 'Screenshot 2020-12-21 003531.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2020-12-01 19:04:52'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2020-07-07 07:27:44'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2020-07-07 07:28:02'),
(4, 'Nissan Kicks 2018', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, '2020-07-07 07:25:28', '2020-12-19 11:11:03'),
(5, 'Nissan GT-R 2019', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', '2020-12-01 19:06:47'),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner 2020', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '2020-07-07 09:17:46', '2020-12-06 10:21:32'),
(8, 'Maruti Suzuki  Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:23:11', '2020-12-06 10:14:39'),
(46, 'Maruti Suzuki  Brezza', 2, 'Maruti Wagon R Latest Updates Maruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020. Previously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 700, 'Petrol', 2005, 6, '20190130064236_Tata-Nano.jpg', 'boot-(open)-122.jpg', 'tata-nano_827x510_71506427483.webp', 'Tata-Nano-GenX-1.jpg', '', 1, 1, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, '2021-01-09 09:18:55', '2021-02-21 16:51:28'),
(48, 'electric car', 12, 'this is car', 500, 'Petrol', 2020, 6, '20190130064236_Tata-Nano.jpg', 'boot-(open)-122.jpg', 'Tata-Nano-GenX-1.jpg', 'tata-nano-genx-interior-rear-side-view.jpg', '', 1, 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, 1, NULL, '2021-02-22 05:32:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `id` int(220) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
