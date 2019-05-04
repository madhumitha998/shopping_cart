SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `customers`
--
CREATE DATABASE IF NOT EXISTS `customers` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `customers`;

-- --------------------------------------------------------
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` varchar(64) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `points` int(11) NOT NULL,
  `birth_date` varchar(15) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `points`, `birth_date`, `contact_number`, `email_address`) VALUES
('12345678901', 'Customer A', 2, '01-01-1991', '6512345678', 'email@gmail.com'),
('12345678902', 'Customer B', 3, '02-02-1992', '6512345678', 'email@gmail.com'),
('12345678903', 'Hamizan', 4, '03-03-1993', '6583553690', 'hamizanalia.2017@sis.smu.edu.sg'),
('12345678904', 'Jeyavani', 5, '04-04-1994', '6512345678', 'rjeyavani.2017@sis.smu.edu.sg'),
('12345678905', 'Gracia', 6, '05-05-1995', '6512345678', 'graciay.2017@sis.smu.edu.sg'),
('12345678906', 'Shurti', 7, '06-06-1996', '6512345678', 'shurtit.2017@sis.smu.edu.sg'),
('12345678907', 'Madhu', 8, '07-07-1997', '6512345678', 'madhumithak.2017@sis.smu.edu.sg'),
('12345678908', 'Marcus', 9, '08-08-1998', '6512345678', 'marcustay.2017@sis.smu.edu.sg'),
('12345678911', 'Alan', 10, '09-09-1999', '6512345678', 'alanmegargel@smu.edu.sg'),
('12345678999', 'Eng Kit', 10, '09-09-1999', '6512345678', 'eklum@smu.edu.sg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
