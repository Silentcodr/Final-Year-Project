-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 21, 2025 at 03:16 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medical_fundraising`
--

-- --------------------------------------------------------

--
-- Table structure for table `mf_admin`
--

CREATE TABLE `mf_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_admin`
--

INSERT INTO `mf_admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mf_donation`
--

CREATE TABLE `mf_donation` (
  `id` int(11) NOT NULL,
  `donator` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_id` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_donation`
--

INSERT INTO `mf_donation` (`id`, `donator`, `uname`, `pid`, `amount`, `trans_id`, `rdate`) VALUES
(1, 'ravi', 'srikanth', 5, 50000, '536214401824', '08-01-2025'),
(2, 'ravi', 'srikanth', 5, 10000, '545457864545', '09-01-2025');

-- --------------------------------------------------------

--
-- Table structure for table `mf_donator`
--

CREATE TABLE `mf_donator` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_donator`
--

INSERT INTO `mf_donator` (`id`, `name`, `mobile`, `email`, `city`, `description`, `uname`, `pass`) VALUES
(1, 'Ravindran', 9645781223, 'ravi23@gmail.com', 'Salem', 'Trust', 'ravi', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `mf_files`
--

CREATE TABLE `mf_files` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `img_count` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_files`
--


-- --------------------------------------------------------

--
-- Table structure for table `mf_patient_data`
--

CREATE TABLE `mf_patient_data` (
  `id` int(11) NOT NULL,
  `pat_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `location` varchar(30) NOT NULL,
  `hos_city` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `treatment` varchar(100) NOT NULL,
  `hospital_status` varchar(100) NOT NULL,
  `bill_amount` double NOT NULL,
  `admit_date` varchar(20) NOT NULL,
  `discharge_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_patient_data`
--

INSERT INTO `mf_patient_data` (`id`, `pat_name`, `gender`, `dob`, `address`, `city`, `aadhar`, `hospital`, `location`, `hos_city`, `patient_id`, `treatment`, `hospital_status`, `bill_amount`, `admit_date`, `discharge_date`) VALUES
(1, 'Sivakumar', 'Male', '12-10-1970', '48, Ramji Nagar', 'Salem', '255514330271', 'KMC', 'Tennur', 'Trichy', 'KM240341', 'Heart operation', 'Discharged from hospital', 73750, '03-10-2024', '28-10-2024'),
(2, 'Ghulam Ghouse', 'Male', '18-01-1961', '12-1-1/A/2B Ground Floor Shalibanda Cross Road Opp', 'Hyderabad', '255674481957', 'Apollo Hospital', 'Sowcarpet', 'Chennai', 'AHB-CS-41799', 'Heart operation', 'Discharged from hospital', 1358355, '02-01-2021', '08-01-2021'),
(3, 'Murugan.S', 'Male', '14-08-1972', 'No.4, 5th Cross, KK Nagar', 'Trichy', '232451417838', 'NTC Hospitals', 'Vaithiyanathapuram', 'Madurai', 'NT240411', 'Neuro surgery', 'Discharged from hospital', 102200, '10-10-2024', '21-10-2024');

-- --------------------------------------------------------

--
-- Table structure for table `mf_patient_files`
--

CREATE TABLE `mf_patient_files` (
  `id` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_patient_files`
--

INSERT INTO `mf_patient_files` (`id`, `detail`, `filename`, `pid`, `status`) VALUES
(1, 'Medical Bill', 'f1_bb.jpg', 1, 0),
(2, 'Medical Bill', 'f2_bill1.jpg', 2, 0),
(3, 'Medical Bill', 'f3_Hospital_bill.docx', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mf_post`
--

CREATE TABLE `mf_post` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pat_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `location` varchar(30) NOT NULL,
  `hos_city` varchar(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `treatment` varchar(100) NOT NULL,
  `hospital_status` varchar(100) NOT NULL,
  `req_amount` double NOT NULL,
  `req_date` varchar(20) NOT NULL,
  `req_status` int(11) NOT NULL,
  `fund_amount` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_post`
--


-- --------------------------------------------------------

--
-- Table structure for table `mf_status`
--

CREATE TABLE `mf_status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_status`
--

INSERT INTO `mf_status` (`id`, `status`) VALUES
(1, 'Currently hospitalized'),
(2, 'Will be hospitalized within 6 months'),
(3, 'Discharged from hospital'),
(4, 'Dose not require hospitalization');

-- --------------------------------------------------------

--
-- Table structure for table `mf_treatment`
--

CREATE TABLE `mf_treatment` (
  `id` int(11) NOT NULL,
  `treatment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_treatment`
--

INSERT INTO `mf_treatment` (`id`, `treatment`) VALUES
(1, 'Cancer treatment'),
(2, 'Accident treatment'),
(3, 'Liver/Kidney transplant'),
(4, 'Heart operation'),
(5, 'Pre-mature baby care(NICU)'),
(6, 'Medicines (Ongoing treatments)'),
(7, 'Neuro surgery');

-- --------------------------------------------------------

--
-- Table structure for table `mf_user`
--

CREATE TABLE `mf_user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `acc_name` varchar(20) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `account` varchar(20) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `gpay_number` bigint(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mf_user`
--

INSERT INTO `mf_user` (`id`, `name`, `mobile`, `email`, `address`, `city`, `acc_name`, `bank_name`, `account`, `branch`, `gpay_number`, `uname`, `pass`) VALUES
(1, 'Srikanth', 9663487148, 'srikanth28@gmail.com', '48, Ramji Nagar', 'Salem', 'Srikanth', 'SBI', '2235600341', 'Ramji Nagar', 9663487148, 'srikanth', '123456');
