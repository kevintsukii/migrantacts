-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 04, 2015 at 06:27 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `j555s2`
--

-- --------------------------------------------------------

--
-- Table structure for table `legalquiz`
--

CREATE TABLE `legalquiz` (
`option_id` int(7) NOT NULL,
  `selection` varchar(600) NOT NULL,
  `result` varchar(1000) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `legalquiz`
--

INSERT INTO `legalquiz` (`option_id`, `selection`, `result`) VALUES
(1, 'I, or an immediate family member, was a victim of a crime committed in the US that caused me to suffer mental or physical abuse.', 'U-Visa: If you have been the victim of a crime, then you may be eligible for a U visa, a status for certain crime victims and their close family members. Crimes covered include: abduction, abusive sexual contact, blackmail, domestic violence, extortion, false imprisonment, female genital mutation, felonious assualt, foreign labor contractor fraud, hostage, incest, involuntary servitude, kidnapping, manslaughter, murder, obstruction of justice, peonage, perjury, prostitution, rape, sexual assualt, sexual exploitation, slave trade, stalking, torture, trafficking, witness tampering, unlawful criminal restraint'),
(2, 'I have been the victim of abuse caused by a spouse, parent, lawful permanent resident.', 'Regardless of your gender, if you have been abused by a US citizen or lawful permanent resident spouse, parent or adult son or daughter, then you may be eligible to file a VAWA self-petition. Abuse may be physical or psychological.'),
(3, 'I have been convicted of an aggravated felony.', 'Unfortunately, being convicted of a felony may make you ineligible for most programs. If you are currently detained, the government has established a hotline for you to call to discuss possible relief options: 855-448-6903.'),
(4, 'You are less than 18 years old and have been abused by one of your parents.', 'If you are under 18 and you have been abused, abandoned or neglected by at least one parent you may be eligible for Special Immigrant Juvenile Status.'),
(5, 'You have a spouse, parent or adult child who is a citizen.', 'To promote family unity, immigration law allows permanent residents of the United States (green card holders) to petition for certain eligible relatives to come and live permanently in the United States. A permanent resident may petition for his/her spouse'),
(6, 'You have a spouse, parent or adult child who is a green card holder.', 'Green card holders can petition for their spouse or unmarried children. They can also petition for unmarried children under 21 who are relatives.'),
(7, 'You have a spouse, parent or child who is/was in the armed forces.', 'If you are the spouse, parent, son or daughter of someone on active duty in the military, or a veteran, you may be eligible for an immigration relief program known as parole in place.'),
(8, 'At least one of your parents was a US Citizen when you were born.', 'If one or both of your parents was a US citizen when you were born, then you may already be a U.S. citizen through acquisition of citizenship.'),
(9, 'I fled my home country and am afraid of returning. Or, I was seriously harmed in my home country because of my political beliefs, nationality, sexual identity or religions.', 'You may qualify for asylum in the US. To qualify, you must show that you were seriously harmed or presently fear future serious harm by others because of your race, religion, national original, political opinion, membership in a particular social group, or sexual identity.'),
(10, 'I am not a permanent resident but have been in the US for ten continuous years or more. Additionally, being departed would cause extreme hardship to my immediate family members who are citizens or lawful permanent residents.', 'You may be eligible for cancellation of removal for non-permanent residents.'),
(11, 'I have been a permanent resident in the US for at least five years and have physically been in the US for at least seven years.', 'You may be eligible for cancellation of removal for permanent residents.'),
(12, 'None of the above apply to me', 'Search for a lowcost or pro-bono immigration legal service provider <a href="www.immigrationadvocates.org/nonprofit/legaldirectory">near</a> you.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `legalquiz`
--
ALTER TABLE `legalquiz`
 ADD PRIMARY KEY (`option_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `legalquiz`
--
ALTER TABLE `legalquiz`
MODIFY `option_id` int(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;