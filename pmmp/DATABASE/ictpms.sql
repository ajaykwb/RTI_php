-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2018 at 04:35 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ictpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE IF NOT EXISTS `backup` (
`id` int(11) NOT NULL,
  `Proj_code` varchar(30) DEFAULT NULL,
  `Project_name` varchar(255) DEFAULT NULL,
  `Impl_code` varchar(30) DEFAULT NULL,
  `Impl_status` varchar(255) DEFAULT NULL,
  `Proj_status` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Action_required` varchar(255) DEFAULT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`id`, `Proj_code`, `Project_name`, `Impl_code`, `Impl_status`, `Proj_status`, `Remarks`, `Action_required`, `update_date`) VALUES
(1, 'Supply of 77 Desktop Computers', 'CAA4', 'CAA4', 'Project complete. All the 7 PCs were delivered and deployments carried out in three months. Twenty PCs were reserved for the DSSER Exam Centre and 57 deployed elsewhere; a distribution list for all the 77 PCs exists for reference purpose. Some of the repl', 'Stalled', '', '', '2014-08-03'),
(2, 'Supply of IT Spares & Consumab', 'CAA', 'CAA1', 'Deliveries are not made yet. Warranty for the items runs for 12 months and the bank guarantee expires 30th April 2014 (CRANE). Payment is by EFT', 'Running', 'Delay in delivery ', 'Expedient delivery\r\n\r\n', '2014-08-06'),
(3, 'Supply of IT Spares & Consumab', 'CAA', 'CAA1', 'Deliveries are not made yet. Warranty for the items runs for 12 months and the bank guarantee expires 30th April 2014 (CRANE). Payment is by EFT', 'Running', 'Delay in delivery ', 'Expedient delivery\r\n\r\n', '2014-08-06'),
(4, 'Supply of IT Spares & Consumab', 'CAA', 'CAA1', 'Deliveries are not made yet. Warranty for the items runs for 12 months and the bank guarantee expires 30th April 2014 (CRANE). Payment is by EFT', 'Running', 'Delay in delivery ', 'Expedient delivery\r\n\r\n', '2014-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `backupstatus`
--

CREATE TABLE IF NOT EXISTS `backupstatus` (
  `Proj_code` varchar(30) NOT NULL,
  `Impl_code` varchar(30) NOT NULL,
  `Impl_status` varchar(255) NOT NULL,
  `Proj_status` varchar(255) NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Action_required` varchar(255) NOT NULL,
  `update_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `general_information`
--

CREATE TABLE IF NOT EXISTS `general_information` (
  `Proj_code` varchar(30) NOT NULL,
  `Project_name` varchar(255) NOT NULL,
  `Procurement_code` varchar(30) NOT NULL,
  `Procurement_type` varchar(255) NOT NULL,
  `Funding` varchar(255) NOT NULL,
  `AppearsIn_BussPlan` varchar(3) NOT NULL,
  `DateOf_initiation` date NOT NULL,
  `CostAt_initiation` varchar(30) NOT NULL,
  `Proj_implementer` varchar(255) NOT NULL,
  `Proj_manager` varchar(255) NOT NULL,
  `Proj_coordinator` varchar(255) NOT NULL,
  `Purpose` text NOT NULL,
  `Scope` text NOT NULL,
  `DateOf_Contract` date NOT NULL,
  `Planned_costing` varchar(30) NOT NULL,
  `Current_Costing` varchar(30) NOT NULL,
  `Planned_completion` int(11) NOT NULL,
  `Impl_StartDate` date NOT NULL,
  `Impl_EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_information`
--

INSERT INTO `general_information` (`Proj_code`, `Project_name`, `Procurement_code`, `Procurement_type`, `Funding`, `AppearsIn_BussPlan`, `DateOf_initiation`, `CostAt_initiation`, `Proj_implementer`, `Proj_manager`, `Proj_coordinator`, `Purpose`, `Scope`, `DateOf_Contract`, `Planned_costing`, `Current_Costing`, `Planned_completion`, `Impl_StartDate`, `Impl_EndDate`) VALUES
('CAA', 'Supply of IT Spares & Consumables (lot 1)', 'CAA/SRVCS/12-13/00449', 'Contract', 'Capex', 'YES', '2014-06-10', '$37,733 VAT inclusive', 'Computer Point Ltd', 'Manager Information Technology', 'Dr. James Mubiru', 'To provide spares and tools for both DPHS and FIDS', 'To supply 40 IER cleaning kits together with 10 mini PCs', '2014-02-18', '$37,733 VAT inclusive', '$37,733 VAT inclusive', 455, '2014-11-12', '2014-11-12'),
('CAA2', 'Supply of Network Spares (lot 2)', 'CAA/SRVCS/12-13/00449', 'Contract', 'Support Programme', 'YES', '2014-02-02', '555800', 'Computech Ltd', 'Manager Information Technology', 'Dr. James Mubiru', 'To provide network spares and tools for the CAA network infrastructure', 'To supply twenty (20) categories of items. The list including quantities appears in the contract', '2014-02-18', '$31,013 VAT inclusive', '$31,013 VAT inclusive', 493, '2014-07-02', '2014-07-02'),
('CAA3', 'Supply of IT Spares & Consumables (lot 3)', 'CAA/SRVCS/12-13/00449', 'LPO', 'Support Programme', 'YES', '0000-00-00', '5466600', 'Computech Ltd', 'Manager Information Technology', 'Dr. James Mubiru', 'To provide IT spares, consumables and tools to be used in the CAA IT infrastructure', 'To supply nineteen categories of items. The list including quantities, appears in the contract', '2014-02-18', '$31,130 VAT inclusive', '$31,130 VAT inclusive', 1, '2014-10-22', '2014-10-22'),
('CAA4', 'Supply of 77 Desktop Computers & UPS', 'CAA/SRVCS/12-13/00184', 'Contract', 'Capex', 'YES', '0000-00-00', '555800', 'Computech Ltd', 'Manager Information Technology', '', 'To enhance facilitation for computer users through deployment of desktop computers', 'To deploy 77 desktop computers complete with UPS; processor 3GHz, RAM 4GB, hard disk 500GB, OS MS Windows Prof., 19A??,??,? monitor', '2013-10-21', '$58,193', '$58,193', 1, '2014-09-27', '2014-09-27'),
('TST1', 'TEST', 'PRC/VSR', 'LPO', 'Support Programme', 'YES', '2014-07-29', '46000', 'James', 'JACKSON', 'BRIAN', 'For purpose', 'Scope here', '2014-08-29', '320000', '340000', 259, '2014-07-31', '2014-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `implementation_status`
--

CREATE TABLE IF NOT EXISTS `implementation_status` (
  `Proj_code` varchar(30) NOT NULL,
  `Impl_code` varchar(30) NOT NULL,
  `Impl_status` varchar(255) NOT NULL,
  `Proj_status` varchar(255) NOT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `Action_required` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `implementation_status`
--

INSERT INTO `implementation_status` (`Proj_code`, `Impl_code`, `Impl_status`, `Proj_status`, `Remarks`, `Action_required`) VALUES
('CAA', 'CAA1', 'Deliveries are not made yet. Warranty for the items runs for 12 months and the bank guarantee expires 30th April 2014 (CRANE). Payment is by EFT', 'Completed', 'Delay in delivery ', 'Expedient delivery\r\n\r\n'),
('CAA2', 'CAA2', 'Deliveries are not made yet. Warranty for the items runs for 12 months and the performance security is valid up to 31st May 2014 (Diamond Trust Bank). Payment is by EFT', 'Completed', 'Delay in delivery ', 'Expedient delivery'),
('CAA3', 'CAA3', 'Deliveries are not made yet. Warranty for the items runs for 12 months and the performance security is valid upto 31st May 2014 (Diamond Trust Bank). Payment is by EFT', 'Terminated', 'Delay in delivery ', 'Expedient delivery'),
('CAA4', 'CAA4', 'Project complete. All the 7 PCs were delivered and deployments carried out in three months. Twenty PCs were reserved for the DSSER Exam Centre and 57 deployed elsewhere; a distribution list for all the 77 PCs exists for reference purpose. Some of the repl', 'Running', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `department`, `role`, `email_address`, `username`, `password`) VALUES
('', 'demo', 'demo', 'demo', 'demo@demo.com', 'demo', 'demo'),
('A1', 'Admin', 'ITdepatment', 'MIT', 'mit@caa.co.ug', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('A1111', 'sinam', 'sinam', 'sinam', 'harona10@yahoo.com', 'sinam', 'd41d8cd98f00b204e9800998ecf8427e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backupstatus`
--
ALTER TABLE `backupstatus`
 ADD PRIMARY KEY (`Proj_code`,`Impl_code`);

--
-- Indexes for table `general_information`
--
ALTER TABLE `general_information`
 ADD PRIMARY KEY (`Proj_code`);

--
-- Indexes for table `implementation_status`
--
ALTER TABLE `implementation_status`
 ADD PRIMARY KEY (`Proj_code`,`Impl_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `implementation_status`
--
ALTER TABLE `implementation_status`
ADD CONSTRAINT `fk` FOREIGN KEY (`Proj_code`) REFERENCES `general_information` (`Proj_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
