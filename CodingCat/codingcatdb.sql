-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 08:44 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingcatdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `algorithms`
--

CREATE TABLE `algorithms` (
  `problem_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `problem_name` varchar(255) NOT NULL,
  `max_score` int(3) NOT NULL,
  `difficulty` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `input_format` text DEFAULT NULL,
  `output_format` text DEFAULT NULL,
  `constrains` text DEFAULT NULL,
  `sample_input` text NOT NULL,
  `sample_output` text NOT NULL,
  `notes` text DEFAULT NULL,
  `test_cases` text DEFAULT NULL,
  `test_case_output` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `algorithms`
--

INSERT INTO `algorithms` (`problem_id`, `category`, `problem_name`, `max_score`, `difficulty`, `description`, `input_format`, `output_format`, `constrains`, `sample_input`, `sample_output`, `notes`, `test_cases`, `test_case_output`) VALUES
(1, 'algorithms', 'The 3n+1 Problem', 10, 'Medium', 'Problems in Computer Science are often classified as belonging to a certain class of problems (e.g.,\r\nNP, Unsolvable, Recursive). In this problem you will be analyzing a property of an algorithm whose\r\nclassification is not known for all possible inputs.\r\nConsider the following algorithm:\r\n1. input n\r\n2. print n\r\n3. if n = 1 then STOP\r\n4. if n is odd then n ?? 3n + 1\r\n5. else n ?? n/2\r\n6. GOTO 2\r\nGiven the input 22, the following sequence of numbers will be printed\r\n22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1\r\nIt is conjectured that the algorithm above will terminate (when a 1 is printed) for any integral input\r\nvalue. Despite the simplicity of the algorithm, it is unknown whether this conjecture is true. It has\r\nbeen verified, however, for all integers n such that 0 < n < 1, 000, 000 (and, in fact, for many more\r\nnumbers than this.)\r\nGiven an input n, it is possible to determine the number of numbers printed before and including\r\nthe 1 is printed. For a given n this is called the cycle-length of n. In the example above, the cycle\r\nlength of 22 is 16.\r\nFor any two numbers i and j you are to determine the maximum cycle length over all numbers\r\nbetween and including both i and j.', 'The input will consist of a series of pairs of integers i and j, one pair of integers per line. All integers\r\nwill be less than 10,000 and greater than 0.\r\nYou should process all pairs of integers and for each pair determine the maximum cycle length over\r\nall integers between and including i and j.\r\nYou can assume that no operation overflows a 32-bit integer.\r\n', 'For each pair of input integers i and j you should output i, j, and the maximum cycle length for\r\nintegers between and including i and j. These three numbers should be separated by at least one space\r\nwith all three numbers on one line and with one line of output for each line of input. The integers i\r\nand j must appear in the output in the same order in which they appeared in the input and should be\r\nfollowed by the maximum cycle length (on the same line).', NULL, '1 10\r\n100 200\r\n201 210\r\n900 1000', '1 10 20\r\n100 200 125\r\n201 210 89\r\n900 1000 174', NULL, '', 'ABC'),
(2, 'algorithms', 'Two Cats', 1, 'Easy', 'Complete the function solveMeFirst to compute the sum of two integers.\r\n\r\nFunction prototype:\r\n\r\nint solveMeFirst(int a, int b);\r\n\r\nwhere,\r\n\r\na is the first integer input.\r\nb is the second integer input\r\nReturn values\r\n\r\nsum of the above two integers', NULL, NULL, '1 < a,b < 1000', 'a = 2\r\nb = 3', '5', 'The sum of the two integers a and b is computed as: 2 + 3 = 5', '', '1'),
(3, 'algorithms', 'The Cat in the Hat', 20, 'Hard', '(An homage to Theodore Seuss Geisel)\r\nThe Cat in the Hat is a nasty creature,\r\nBut the striped hat he is wearing has a rather nifty feature.\r\nWith one flick of his wrist he pops his top off.\r\nDo you know what’s inside that Cat’s hat?\r\nA bunch of small cats, each with its own striped hat.\r\nEach little cat does the same as line three,\r\nAll except the littlest ones, who just say “Why me?”\r\nBecause the littlest cats have to clean all the grime,\r\nAnd they’re tired of doing it time after time!\r\nA clever cat walks into a messy room which he needs to clean. Instead of doing the work alone,\r\nit decides to have its helper cats do the work. It keeps its (smaller) helper cats inside its hat. Each\r\nhelper cat also has helper cats in its own hat, and so on. Eventually, the cats reach a smallest size.\r\nThese smallest cats have no additional cats in their hats. These unfortunate smallest cats have to do\r\nthe cleaning.\r\nThe number of cats inside each (non-smallest) cat’s hat is a constant, N. The height of these\r\ncats-in-a-hat is 1\r\nN+1 times the height of the cat whose hat they are in.\r\nThe smallest cats are of height one;\r\nthese are the cats that get the work done.\r\nAll heights are positive integers.\r\nGiven the height of the initial cat and the number of worker cats (of height one), find the number\r\nof cats that are not doing any work (cats of height greater than one) and also determine the sum of all\r\nthe cats’ heights (the height of a stack of all cats standing one on top of another).', 'The input consists of a sequence of cat-in-hat specifications. Each specification is a single line consisting\r\nof two positive integers, separated by white space. The first integer is the height of the initial cat, and\r\nthe second integer is the number of worker cats.\r\nA pair of ‘0’s on a line indicates the end of input.', 'For each input line (cat-in-hat specification), print the number of cats that are not working, followed\r\nby a space, followed by the height of the stack of cats. There should be one output line for each input\r\nline other than the ‘0 0’ that terminates input.', 'Time limit: 3.000 seconds', '216 125\r\n5764801 1679616\r\n0 0\r\n', '31 671\r\n335923 30275911', NULL, '', 'Meow!'),
(8, '', '', 0, '', '', '', '', '', '', '', '', '', ''),
(9, '', '', 0, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_test`
--

CREATE TABLE `assessment_test` (
  `assessmenttest_id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `problemsetter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businessuser`
--

CREATE TABLE `businessuser` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `company` varchar(255) NOT NULL,
  `signupdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businessuser`
--

INSERT INTO `businessuser` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `company`, `signupdate`) VALUES
(1, 'aa', NULL, NULL, 'new@gmail.com', '$2y$10$ZoU2FRDdylTf3Pd1LGrXCOxlag9snQito84EPHj2XUNVAZF/xFQQ6', 'afaf', '2019-10-10'),
(4, 'a', NULL, NULL, 'a@gmail.com', '$2y$10$RpHiyy9PUJ4BEasFm0kIJOmpubo56sSFVirKP4hcH9IzL2issFTwK', 'a', '2019-10-14'),
(5, 'x', NULL, NULL, 'x@x.com', '$2y$10$zpWEGfQGcy9tgWo8OuFx7OitNgm9GAWSDNr0OUn2Wz2ctq3QXHp6i', 'x', '2019-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `mail_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`mail_id`, `firstname`, `lastname`, `email`, `phone`, `message`) VALUES
(1, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agasg'),
(2, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(3, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(4, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(5, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(6, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(7, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(8, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'agsarhtekjukutk'),
(9, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'aagag'),
(10, 'Rahat', 'Bin Osman', 'agag@faf.com', '', 'aagag'),
(11, 'ag', 'gaga', 'agag@faf.com', 'agag', 'agagag'),
(12, 'ag', 'gaga', 'agag@faf.com', 'agag', 'agagag'),
(13, 'ag', 'gaga', 'agag@faf.com', 'agag', 'agagag'),
(14, 'ag', 'gaga', 'agag@faf.com', 'agag', 'agagag'),
(15, 'Rahat', 'Bin Osman', 'agag@faf.com', 'a', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `problemsetter`
--

CREATE TABLE `problemsetter` (
  `problemsetter_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problemsetter`
--

INSERT INTO `problemsetter` (`problemsetter_id`, `username`, `password`, `email`) VALUES
(1, 'abc', 'abc', 'abc@gmail.com'),
(2, 'new', 'newpassword', 'whatever@xyz.com');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submission_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `result` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `signup_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `bio` text DEFAULT NULL,
  `photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `signup_date`, `bio`, `photo`) VALUES
(1, 'rahatos', '$2y$10$IwicEKW1Qg808g5pNzfwGeEUEA62mb5ffK/Ex0Lxb5UtI2xKvgCR2', 'rahat@gmail.com', '2019-04-08 05:54:03', NULL, NULL),
(3, 'quaqua', '$2y$10$W2tSZJBLIVELn4VKLb.48uJTYB.BBG7aTuQy623mhGe67AmO/hoYG', 'qua@gmail.com', '2019-04-08 11:11:05', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `algorithms`
--
ALTER TABLE `algorithms`
  ADD PRIMARY KEY (`problem_id`);

--
-- Indexes for table `businessuser`
--
ALTER TABLE `businessuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `problemsetter`
--
ALTER TABLE `problemsetter`
  ADD PRIMARY KEY (`problemsetter_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `algorithms`
--
ALTER TABLE `algorithms`
  MODIFY `problem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `businessuser`
--
ALTER TABLE `businessuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `problemsetter`
--
ALTER TABLE `problemsetter`
  MODIFY `problemsetter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
