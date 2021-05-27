-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 08:26 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` text CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phonenumber` bigint(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `name`, `emailid`, `phonenumber`, `password`) VALUES
('609cfc4bd8d46', 'aa', 'aa', 'aa@gmail.com', 1111, 'aa'),
('609d6c64108fc', '13', '13', '13@13.com', 1313, '13'),
('609fb19fe330e', 'Rajashree1', 'Rajashree Shedge', 'rajashree11@gmail.com', 9878886656, 'rajashree'),
('60ae79c8c1e33', 'einstein', 'Albsert Einstein', 'alberteinstein@gmail.com', 999999999, 'albert'),
('60ae80b8f394a', 'Sachin', 'Sachin', 'sachin@gmail.com', 13345, 'sahin'),
('60ae83162cf2d', 'tendehar', 'tendehar', 'tendehar@gmail.com', 123242133, 'tendehar'),
('60af08d0b75a3', 'ravisuryawashi', 'Ravi Suryawashi', 'suryawashi.ravi11@gmail.com', 9887898890, 'ravi@math'),
('60af0e286cda1', 'harshasaxena', 'Harsha Saxena', 'harshasaxena112@gmail.com', 9888990099, 'harsh@os'),
('60af10f94d502', 'shilpashindhe', 'Shilpa Shindhe', 'shilphashindhe@gmail.com', 7888990099, 'shilpa@mp'),
('60af1b9447493', 'namitapulgum', 'Namita Pulgum', 'namitapulgum@gmail.com', 8998887709, 'namita@123');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('609cfd0a07db9', '609cfd0a11b94'),
('609cfd0a5512d', '609cfd0a5867f'),
('609cfd0a588ef', '609cfd0a5a448'),
('60ae874fbf246', '60ae874fbf448'),
('60af1d23098b6', '60af1d2309b3e'),
('60af1d23074d5', '60af1d230909d'),
('60ae7d16d23bf', '60ae7d16d28d4'),
('60af1d230a092', '60af1d230a275'),
('60af2876c9da2', '60af2876ca491'),
('60af2876ca845', '60af2876ce412'),
('60ae874fbec98', '60ae874fbeec1'),
('60ae874fbdebb', '60ae874fbe883'),
('60ae82b85118f', '60ae82b8513c9'),
('60ae82b850bd3', '60ae82b850e47'),
('60ae82b845e9e', '60ae82b85088f'),
('60ae874fbf791', '60ae874fc08f9'),
('60af0d456440f', '60af0d456e6d3'),
('60af0d457d117', '60af0d457da6f'),
('60af0d457e278', '60af0d457e5e3'),
('60af0d457eb5a', '60af0d457ee95'),
('60af0d457f4a1', '60af0d458031f'),
('60af101c38620', '60af101c388b3'),
('60af101c38c90', '60af101c38edf'),
('60af101c392a3', '60af101c394c8'),
('60af132137469', '60af132137755'),
('60af132137cb0', '60af132137e3d'),
('60af132138179', '60af132138376'),
('60af13213862f', '60af132138791'),
('60af132138b33', '60af132138d87');

-- --------------------------------------------------------

--
-- Table structure for table `create_quiz_details`
--

CREATE TABLE `create_quiz_details` (
  `eid` text NOT NULL,
  `admin_id` text CHARACTER SET utf8 NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `author` text NOT NULL,
  `qno` int(100) NOT NULL,
  `qright` int(10) NOT NULL,
  `qwrong` int(10) NOT NULL,
  `qtime` bigint(250) NOT NULL,
  `qdescription` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_quiz_details`
--

INSERT INTO `create_quiz_details` (`eid`, `admin_id`, `qtitle`, `author`, `qno`, `qright`, `qwrong`, `qtime`, `qdescription`) VALUES
('60af0b5d9c5f3', '60af08d0b75a3', 'Maths-4(quiz 1)', 'Ravi Suryawashi', 5, 4, 1, 10, 'This quiz is based on Linear Algebra. Try to solve all Questions.'),
('60af11e0bc597', '60af10f94d502', 'Microprocessor(quiz 1)', 'Shilpa Shindhe', 5, 4, 1, 10, 'This quiz is based on Intel Microprocessor 8086.'),
('60af1bf4b2452', '60af1b9447493', 'AOA(quiz 1)', 'Namita Pulgum', 3, 4, 1, 6, 'This quiz is based on sorting algorithm'),
('60af0ee9767b8', '60af0e286cda1', 'OS(quiz-1)', 'Harsha Saxena', 3, 4, 1, 6, 'This quiz is based on Deadlock'),
('60af2818a9bcd', '60af08d0b75a3', 'maths(quiz 2)', 'Ravi Suryawashi', 2, 2, 1, 5, 'solve it'),
('60ae83db0de23', '60ae83162cf2d', 'GK 2', 'tendehar', 4, 2, 0, 10, 'some basic gk questions'),
('60ae80ecefc44', '60ae80b8f394a', 'GK-1', 'Sachin', 3, 2, 0, 5, 'This is just a really basic GK quiz');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(10) NOT NULL,
  `level` int(11) NOT NULL,
  `qright` int(10) NOT NULL,
  `qwrong` int(10) NOT NULL,
  `qNA` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `qright`, `qwrong`, `qNA`, `date`) VALUES
('ss@gmai.com', '1111', 3, 1, 1, 0, 0, '2021-05-26 08:22:52'),
('a@gmail.com', '60ae80ecefc44', 0, 1, 0, 0, 1, '2021-05-27 04:12:01'),
('a@gmail.com', '60ae83db0de23', 6, 4, 3, 1, 0, '2021-05-27 04:13:58'),
('', '60af0b5d9c5f3', 0, 5, 2, 8, 0, '2021-05-27 04:35:37'),
('', '60af2818a9bcd', 0, 1, 0, 0, 1, '2021-05-27 05:05:16'),
('adityasingh@gmail.com', '60af0b5d9c5f3', 5, 5, 2, 3, 1, '2021-05-27 05:07:32'),
('mehulsonawane@gmail.com', '60af0ee9767b8', -3, 3, 0, 3, 0, '2021-05-27 04:02:47'),
('pranaysuryarao@gmail.com', '60af0ee9767b8', -3, 3, 0, 3, 0, '2021-05-27 03:55:12'),
('kovidnarkar@gmail.com', '60af0ee9767b8', 7, 3, 2, 1, 0, '2021-05-27 03:55:52'),
('omkarukirde@gmail.com', '60af11e0bc597', -5, 5, 0, 5, 0, '2021-05-27 03:57:42'),
('omkarukirde@gmail.com', '60af0ee9767b8', 2, 3, 1, 2, 0, '2021-05-27 03:58:01'),
('aniketrathod@gmail.com', '60af11e0bc597', 5, 5, 2, 3, 0, '2021-05-27 03:58:25'),
('aniketrathod@gmail.com', '60af0ee9767b8', 6, 3, 2, 2, 0, '2021-05-27 03:59:06'),
('aniketrathod@gmail.com', '60af0ee9767b8', 6, 3, 2, 2, 0, '2021-05-27 03:59:06'),
('mehulsonawane@gmail.com', '60af11e0bc597', 5, 5, 2, 3, 0, '2021-05-27 04:02:27'),
('kovidnarkar@gmail.com', '60af11e0bc597', -5, 5, 0, 5, 0, '2021-05-27 03:55:15'),
('ramaeshkadam11@gmail.com', '1111', 6, 2, 2, 0, 0, '2021-05-26 07:38:01'),
('kovidnarkar@gmail.com', '60af0b5d9c5f3', -5, 5, 0, 5, 0, '2021-05-27 03:54:29'),
('pranaysuryarao@gmail.com', '60af11e0bc597', 5, 5, 2, 3, 0, '2021-05-27 03:54:51'),
('tejasveer@gmail.com', '60ae83db0de23', 6, 4, 3, 1, 0, '2021-05-27 03:48:55'),
('tejasveer@gmail.com', '60af11e0bc597', 5, 5, 2, 3, 0, '2021-05-27 03:46:19'),
('tejasveer@gmail.com', '60ae80ecefc44', 6, 3, 3, 0, 0, '2021-05-27 03:42:01'),
('pranaysuryarao@gmail.com', '60af0b5d9c5f3', 15, 5, 4, 1, 0, '2021-05-27 03:43:53'),
('aniketrathod@gmail.com', '60af0b5d9c5f3', -5, 5, 0, 5, 0, '2021-05-27 03:46:05'),
('', '60af0b5d9c5f3', 0, 5, 2, 8, 0, '2021-05-27 04:35:37'),
('tejasveer@gmail.com', '60af0b5d9c5f3', 5, 5, 2, 3, 0, '2021-05-27 03:39:31'),
('omkarukirde@gmail.com', '60af0b5d9c5f3', 15, 5, 4, 1, 0, '2021-05-27 03:40:36'),
('mehulsonawane@gmail.com', '60af0b5d9c5f3', 0, 5, 1, 4, 0, '2021-05-27 03:41:40'),
('tejasveer@gmail.com', '60af0ee9767b8', -3, 3, 0, 3, 0, '2021-05-27 03:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('609cfd0a07db9', 'a', '609cfd0a11b94'),
('609cfd0a07db9', 'aa', '609cfd0a11b99'),
('609cfd0a07db9', 'aaa', '609cfd0a11b9a'),
('609cfd0a07db9', 'aaaa', '609cfd0a11b9b'),
('609cfd0a5512d', 'q', '609cfd0a5867b'),
('609cfd0a5512d', 'qq', '609cfd0a5867f'),
('609cfd0a5512d', 'qqq', '609cfd0a58680'),
('609cfd0a5512d', 'qqqq', '609cfd0a58681'),
('609cfd0a588ef', 'w', '609cfd0a5a442'),
('609cfd0a588ef', 'ww', '609cfd0a5a446'),
('609cfd0a588ef', 'www', '609cfd0a5a448'),
('609cfd0a588ef', 'wwww', '609cfd0a5a449'),
('60ae874fbf791', 'King of Clubs', '60ae874fc08fa'),
('60ae874fbec98', 'gamma , delta , pi , sigma', '60ae874fbeebc'),
('60ae874fbec98', 'epsilon , pi , sigma , nu', '60ae874fbeec0'),
('60ae874fbec98', 'gamma , pi , sigma , delta', '60ae874fbeec1'),
('60ae874fbec98', 'mu, pi , sigma , kappa', '60ae874fbeec2'),
('60ae874fbf246', 'Tokyo Tower', '60ae874fbf443'),
('60ae874fbf246', 'Statue of zeus', '60ae874fbf448'),
('60ae874fbf246', 'Colloseum of italy', '60ae874fbf449'),
('60ae874fbf246', 'Statue of liberty', '60ae874fbf44a'),
('60ae874fbf791', 'King ofSpades', '60ae874fc08f4'),
('60ae874fbf791', 'King of Hearts', '60ae874fc08f9'),
('60af1d230a092', 'O(nLogn)', '60af1d230a275'),
('60af1d230a092', 'O(n^2)', '60af1d230a273'),
('60af1d230a092', 'O(n Logn Logn)', '60af1d230a274'),
('60af1d23074d5', 'Recurrence is T(n) = T(n/10) + T(9n/10) + O(n) and time complexity is O(nLogn)', '60af1d23090a0'),
('60af1d23098b6', 'Insertion sort', '60af1d2309b37'),
('60af1d23098b6', 'Selection sort', '60af1d2309b3e'),
('60af1d23098b6', 'Bubble sort', '60af1d2309b40'),
('60af1d23098b6', 'Merge sort', '60af1d2309b41'),
('60af1d230a092', 'O(n^2 Logn)', '60af1d230a270'),
('60af1d23074d5', 'Recurrence is T(n) = T(n-1) + O(n) and time complexity is O(n^2)', '60af1d230909d'),
('60af1d23074d5', 'Recurrence is T(n) = 2T(n/2) + O(n) and time complexity is O(nLogn)', '60af1d230909f'),
('60af1d23074d5', 'Recurrence is T(n) = T(n-2) + O(n) and time complexity is O(n^2)', '60af1d2309088'),
('60ae7d16d23bf', 'The probability that it is in a certain place at a given time ', '60ae7d16d28d4'),
('60ae7d16d23bf', 'The mass of the particle ', '60ae7d16d28d0'),
('60ae7d16d23bf', ' Whether a Higgs boson is present ', '60ae7d16d28cb'),
('60ae7d16d23bf', 'The probability that it will decay at a given timeIncorrect response ', '60ae7d16d28c0'),
('60af2876c9da2', 'a', '60af2876ca491'),
('60af2876c9da2', '\\[\\sum_{a\\infty }^{\\infty } log (sin a))\\]', '60af2876ca498'),
('60af2876c9da2', 'aa', '60af2876ca499'),
('60af2876c9da2', 'a', '60af2876ca49a'),
('60af2876ca845', '\\[\\sum_{a\\infty }^{\\infty } log (sin a))\\]', '60af2876ce40d'),
('60af2876ca845', 'e', '60af2876ce412'),
('60af2876ca845', 'r', '60af2876ce413'),
('60af2876ca845', 't', '60af2876ce414'),
('60ae874fbdebb', 'shatranj', '60ae874fbe884'),
('60ae874fbdebb', 'xiangqi', '60ae874fbe883'),
('60ae874fbdebb', 'Chess', '60ae874fbe872'),
('60ae874fbdebb', 'Shogi ', '60ae874fbe86b'),
('60ae82b85118f', 'atlantic', '60ae82b8513cb'),
('60ae82b85118f', 'arabian', '60ae82b8513c9'),
('60ae82b85118f', 'indian', '60ae82b8513c7'),
('60ae82b85118f', 'pacific', '60ae82b8513c2'),
('60ae82b850bd3', 'not possible in mathematics', '60ae82b850e48'),
('60ae82b850bd3', 'yes', '60ae82b850e40'),
('60ae82b845e9e', 'elephant', '60ae82b85088f'),
('60ae82b845e9e', 'lion', '60ae82b85088e'),
('60ae82b850bd3', 'maybe', '60ae82b850e47'),
('60ae82b850bd3', 'no', '60ae82b850e46'),
('60ae82b845e9e', 'giraffe', '60ae82b85088d'),
('60ae82b845e9e', 'zebra', '60ae82b850889'),
('60ae874fbf791', 'King of Diamonds', '60ae874fc08fb'),
('60af0d456440f', '2x + y = 100', '60af0d456e6d3'),
('60af0d456440f', ' 2x + 2y = 100', '60af0d456e6dd'),
('60af0d456440f', '2x + y = 200', '60af0d456e6e0'),
('60af0d456440f', 'x + y = 100', '60af0d456e6e2'),
('60af0d457d117', 'flat objects', '60af0d457da5e'),
('60af0d457d117', 'line', '60af0d457da69'),
('60af0d457d117', 'Planes', '60af0d457da6f'),
('60af0d457d117', ' Both A and C', '60af0d457da74'),
('60af0d457e278', 'Square Matrix', '60af0d457e5d6'),
('60af0d457e278', 'Scalar Matrix', '60af0d457e5dd'),
('60af0d457e278', 'Trace Matrix', '60af0d457e5e0'),
('60af0d457e278', 'Term Matrix', '60af0d457e5e3'),
('60af0d457eb5a', 'x+xy+y2', '60af0d457ee8b'),
('60af0d457eb5a', 'x2+xy', '60af0d457ee90'),
('60af0d457eb5a', 'x2+y2', '60af0d457ee93'),
('60af0d457eb5a', ' x2+xy+y2', '60af0d457ee95'),
('60af0d457f4a1', 'x1 = 1, x2 = 1, x3 = 2', '60af0d4580316'),
('60af0d457f4a1', 'x1 = 0, x2 = 0, x3 = 0', '60af0d458031f'),
('60af0d457f4a1', 'x1 = 3, x2 = -1, x3 = -1', '60af0d4580321'),
('60af0d457f4a1', 'x1 = 0, x2 = -2, x3 = 4', '60af0d4580322'),
('60af101c38620', 'that can be used by one process at a time and is not depleted by that use', '60af101c388b3'),
('60af101c38620', 'that can be used by more than one process at a time', '60af101c388b5'),
('60af101c38620', ' that can be shared between various threads', '60af101c388b6'),
('60af101c38620', 'none of the mentioned', '60af101c388b7'),
('60af101c38c90', 'mutual exclusion', '60af101c38ed2'),
('60af101c38c90', 'a process may hold allocated resources while awaiting assignment of other resources', '60af101c38edb'),
('60af101c38c90', 'no resource can be forcibly removed from a process holding it', '60af101c38edd'),
('60af101c38c90', 'all of the mentioned', '60af101c38edf'),
('60af101c392a3', 'there must be a fixed number of resources to allocate', '60af101c394c8'),
('60af101c392a3', 'resource allocation must be done only once', '60af101c394d1'),
('60af101c392a3', 'all deadlocked processes must be aborted', '60af101c394d4'),
('60af101c392a3', 'inversion technique can be used', '60af101c394d5'),
('60af132137469', '2', '60af132137755'),
('60af132137469', '3', '60af13213775b'),
('60af132137469', '4', '60af13213775e'),
('60af132137469', '5', '60af132137760'),
('60af132137cb0', 'It uses two stages of pipelining', '60af132137e34'),
('60af132137cb0', 'It is available in 3 versions based on the frequency of operation', '60af132137e3b'),
('60af132137cb0', 'Fetch stage can prefetch up to 6 bytes of instructions', '60af132137e3c'),
('60af132137cb0', 'It has 512 vectored interrupts.', '60af132137e3d'),
('60af132138179', '512KB', '60af132138373'),
('60af132138179', '1Mb', '60af132138376'),
('60af132138179', '2Mb', '60af132138377'),
('60af132138179', '256KB', '60af132138378'),
('60af13213862f', '16-bit', '60af13213878a'),
('60af13213862f', '18-bit', '60af132138790'),
('60af13213862f', '20-bit', '60af132138791'),
('60af13213862f', '24-bit', '60af132138792'),
('60af132138b33', 'IR', '60af132138d78'),
('60af132138b33', 'HLDA', '60af132138d82'),
('60af132138b33', 'HR', '60af132138d85'),
('60af132138b33', 'WR', '60af132138d87');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `questions` varchar(5000) NOT NULL,
  `qimage` varchar(100) NOT NULL,
  `ch` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `questions`, `qimage`, `ch`, `sn`) VALUES
('609cfca1e6466', '609cfd0a07db9', 'aaaaaaaa', '', 4, 1),
('609cfca1e6466', '609cfd0a5512d', '.', '1.PNG', 4, 2),
('609cfca1e6466', '609cfd0a588ef', '.', '2.PNG', 4, 3),
('60af2818a9bcd', '60af2876c9da2', '\\[\\sum_{a\\infty }^{\\infty } log (sin a))\\]\r\n', '', 4, 1),
('60af2818a9bcd', '60af2876ca845', '', 'download.jpg', 4, 2),
('60af1bf4b2452', '60af1d23074d5', 'What is recurrence for worst case of QuickSort and what is the time complexity in Worst case?', '', 4, 1),
('60ae83db0de23', '60ae874fbdebb', 'what is name of the game in the below image', 'fe0848b9e6969d3dc22f2eb7abaa0b33.jpg', 4, 1),
('60ae80ecefc44', '60ae82b85118f', 'which of the following is not an ocean', '', 4, 3),
('60ae80ecefc44', '60ae82b850bd3', 'Can you solve this mathematical equations ??\r\n\\[\\int_{0}^{2}xdx\\]\r\n', '', 4, 2),
('60ae80ecefc44', '60ae82b845e9e', 'what is name of animal in the below picture', 'dreamstime_xxl_2584709-scaled.jpg', 4, 1),
('60af1bf4b2452', '60af1d23098b6', 'Which of the following is not a stable sorting algorithm?', '', 4, 2),
('60af1bf4b2452', '60af1d230a092', 'Suppose we have a O(n) time algorithm that finds median of an unsorted array. Now consider a QuickSort implementation where we first find median using the above algorithm, then use median as pivot. What will be the worst case time complexity of this modified QuickSort.', '', 4, 3),
('60ae83db0de23', '60ae874fbec98', 'What are name of the Following Greek letters used in mathematics\r\n\\[\\Gamma \\prod \\sum \\delta\\]\r\n', '', 4, 2),
('60ae83db0de23', '60ae874fbf246', 'Which of following is Seven Wonders of the world', '', 4, 3),
('60ae83db0de23', '60ae874fbf791', 'who is known as the sacrificial king among the 4 KIngs ina deck of 52 Playing cards', 'four-kings-vintage-playing-cards-isolated-white-four-kings-vintage-playing-cards-isolated-176012146.', 4, 4),
('60af0b5d9c5f3', '60af0d456440f', 'Suppose that price of 2 balls and 1 bat is 100 units, then What will be the representation of problems in Linear Algebra in the form of x and y?', '', 4, 1),
('60af0b5d9c5f3', '60af0d457d117', ' A linear equation in three variables represents a?', '', 4, 2),
('60af0b5d9c5f3', '60af0d457e278', 'Which of the following is not a type of matrix?', '', 4, 3),
('60af0b5d9c5f3', '60af0d457eb5a', 'What is the canonical form of the matrix A = \\[\\begin{bmatrix}1 & 0 \\\\ 1 & 1\\end{bmatrix}\\]?', '', 4, 4),
('60af0b5d9c5f3', '60af0d457f4a1', 'The solution of the given matrix equation is _____', 'Capture.PNG', 4, 5),
('60af0ee9767b8', '60af101c38620', 'What is a reusable resource?', '', 4, 1),
('60af0ee9767b8', '60af101c38c90', 'Which of the following condition is required for a deadlock to be possible?', '', 4, 2),
('60af0ee9767b8', '60af101c392a3', 'To avoid deadlock ____________', '', 4, 3),
('60af11e0bc597', '60af132137469', '8086 Microprocessor supports _______ modes of operation.', '', 4, 1),
('60af11e0bc597', '60af132137cb0', ' Which of the following is not a Features of 8086?', '', 4, 2),
('60af11e0bc597', '60af132138179', '8086 can access up to?', '', 4, 3),
('60af11e0bc597', '60af13213862f', '8086 has ___ address bus.', '', 4, 4),
('60af11e0bc597', '60af132138b33', ' It is used to write the data into the memory or the output device depending on the status of M/IO signal.', '', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`email`, `eid`, `score`, `time`) VALUES
('zz@g.com', '609d0083e2016', -8, '2021-05-15 08:14:19'),
('ramaeshkadam11@gmail.com', '609fb38f02465', 8, '2021-05-26 07:47:42'),
('ramaeshkadam11@gmail.com', '609e581f07994', 1, '2021-05-26 07:46:18'),
('b@b.com', '609d0083e2016', 68, '2021-05-26 08:19:52'),
('b@b.com', '609fac9ad9025', 68, '2021-05-26 08:19:52'),
('ramaeshkadam11@gmail.com', '1111', 6, '2021-05-26 07:38:01'),
('ramaeshkadam11@gmail.com', '609fdbbe94c46', 7, '2021-05-26 07:36:34'),
('zz@g.com', '609e5f4bf216c', -8, '2021-05-15 08:14:19'),
('zz@g.com', '609d043005c1a', -8, '2021-05-15 08:14:19'),
('zz@g.com', '609ea3e1945bb', -8, '2021-05-15 08:14:19'),
('zz@g.com', '609e5f2041411', -1, '2021-05-15 08:45:09'),
('zz@g.com', '609f8c97de234', -1, '2021-05-15 09:58:27'),
('zz@g.com', '609f8c75c50f3', 1, '2021-05-15 09:58:37'),
('aniketrathod123@gmail.com', '609fac9ad9025', 4, '2021-05-15 16:42:27'),
('omkarukirde4@gmail.com', '609fac9ad9025', 12, '2021-05-25 08:15:09'),
('tejasveer41@gmail.com', '609fac9ad9025', 9, '2021-05-15 16:24:17'),
('a@a.com', '609fac9ad9025', 242, '2021-05-26 07:34:28'),
('zz@g.com', '609fb38f02465', 2, '2021-05-15 14:51:51'),
('zz@g.com', '609e5a0585883', -1, '2021-05-15 15:52:17'),
('zz@g.com', '609f9c3e953ca', 2, '2021-05-15 16:20:12'),
('zz@g.com', '609faae8193cb', 2, '2021-05-15 16:20:27'),
('tejasveer41@gmail.com', '609e581f07994', 9, '2021-05-15 16:24:17'),
('tejasveer41@gmail.com', '609d0083e2016', 9, '2021-05-15 16:24:17'),
('tejasveer41@gmail.com', '609fdbbe94c46', 9, '2021-05-15 16:24:17'),
('tejasveer41@gmail.com', '609faae8193cb', 2, '2021-05-15 16:24:42'),
('tejasveer41@gmail.com', '609e596766121', 1, '2021-05-15 16:24:55'),
('tejasveer41@gmail.com', '609e5be198b23', 1, '2021-05-15 16:29:19'),
('tejasveer41@gmail.com', '609e5cab476b7', 1, '2021-05-15 16:29:44'),
('tejasveer41@gmail.com', '609f9c3e953ca', 1, '2021-05-15 16:31:13'),
('aniketrathod123@gmail.com', '609d0083e2016', 4, '2021-05-15 16:42:27'),
('aniketrathod123@gmail.com', '609e581f07994', 4, '2021-05-15 16:42:27'),
('aniketrathod123@gmail.com', '609f9c3e953ca', 1, '2021-05-15 16:46:39'),
('aniketrathod123@gmail.com', '609d6c8199217', 1, '2021-05-15 16:47:47'),
('ramaeshkadam11@gmail.com', '609d043005c1a', 96, '2021-05-26 07:34:15'),
('ramaeshkadam11@gmail.com', '609fac9ad9025', 7, '2021-05-15 08:45:09'),
('gaikwad.ganesh@gmail.com', '609fac9ad9025', -2, '2021-05-26 09:47:21'),
('ramaeshkadam11@gmail.com', '609e5aa6b0b6a', 1, '2021-05-26 07:53:20'),
('ramaeshkadam11@gmail.com', '609e5cab476b7', 1, '2021-05-26 07:53:36'),
('ss@gmai.com', '609d043005c1a', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609d0083e2016', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609fb38f02465', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609fdbbe94c46', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609fac9ad9025', -3, '2021-05-26 09:41:48'),
('b@b.com', '609d043005c1a', 68, '2021-05-26 08:19:52'),
('b@b.com', '609faae8193cb', 68, '2021-05-26 08:19:52'),
('b@b.com', '609fb38f02465', 68, '2021-05-26 08:19:52'),
('b@b.com', '609fdbbe94c46', 8, '2021-05-26 08:20:27'),
('b@b.com', '609e581f07994', 1, '2021-05-26 08:20:45'),
('ss@gmai.com', '609e581f07994', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '1111', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609f9c3e953ca', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609f9eed07d24', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609faae8193cb', -3, '2021-05-26 09:41:48'),
('ss@gmai.com', '609d6c8199217', -3, '2021-05-26 09:41:48'),
('gaikwad.ganesh@gmail.com', '609d043005c1a', -2, '2021-05-26 09:47:21'),
('gaikwad.ganesh@gmail.com', '609fb38f02465', -2, '2021-05-26 09:47:21'),
('gaikwad.ganesh@gmail.com', '609fdbbe94c46', -2, '2021-05-26 09:47:21'),
('gaikwad.ganesh@gmail.com', '609d0083e2016', -2, '2021-05-26 09:47:21'),
('a@a.com', '609fb38f02465', -1, '2021-05-26 09:49:44'),
('tejasveer@gmail.com', '60af0b5d9c5f3', 5, '2021-05-27 03:39:31'),
('omkarukirde@gmail.com', '60af0b5d9c5f3', 15, '2021-05-27 03:40:36'),
('mehulsonawane@gmail.com', '60af0b5d9c5f3', 0, '2021-05-27 03:41:40'),
('tejasveer@gmail.com', '60ae80ecefc44', 6, '2021-05-27 03:42:01'),
('pranaysuryarao@gmail.com', '60af0b5d9c5f3', 15, '2021-05-27 03:43:53'),
('aniketrathod@gmail.com', '60af0b5d9c5f3', 9, '2021-05-27 03:59:06'),
('tejasveer@gmail.com', '60af11e0bc597', 5, '2021-05-27 03:46:19'),
('tejasveer@gmail.com', '60ae83db0de23', 6, '2021-05-27 03:48:55'),
('tejasveer@gmail.com', '60af0ee9767b8', -3, '2021-05-27 03:50:06'),
('kovidnarkar@gmail.com', '60af0b5d9c5f3', -5, '2021-05-27 03:54:29'),
('pranaysuryarao@gmail.com', '60af11e0bc597', 5, '2021-05-27 03:54:51'),
('pranaysuryarao@gmail.com', '60af0ee9767b8', -3, '2021-05-27 03:55:12'),
('kovidnarkar@gmail.com', '60af11e0bc597', -5, '2021-05-27 03:55:15'),
('kovidnarkar@gmail.com', '60af0ee9767b8', 7, '2021-05-27 03:55:52'),
('omkarukirde@gmail.com', '60af11e0bc597', -5, '2021-05-27 03:57:42'),
('omkarukirde@gmail.com', '60af0ee9767b8', 2, '2021-05-27 03:58:01'),
('aniketrathod@gmail.com', '60af11e0bc597', 9, '2021-05-27 03:59:06'),
('aniketrathod@gmail.com', '60af0ee9767b8', 9, '2021-05-27 03:59:06'),
('mehulsonawane@gmail.com', '60af11e0bc597', 5, '2021-05-27 04:02:27'),
('mehulsonawane@gmail.com', '60af0ee9767b8', -3, '2021-05-27 04:02:47'),
('a@gmail.com', '60ae80ecefc44', 0, '2021-05-27 04:12:01'),
('a@gmail.com', '60ae83db0de23', 6, '2021-05-27 04:13:58'),
('adityasingh@gmail.com', '60af0b5d9c5f3', 5, '2021-05-27 05:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` int(50) NOT NULL,
  `min` int(50) NOT NULL,
  `sec` int(50) NOT NULL,
  `timeleft` bigint(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`username`, `eid`, `qtitle`, `date`, `hour`, `min`, `sec`, `timeleft`) VALUES
('ss', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('ss', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('ss', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('ss', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('zz', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('zz', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('zz', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('zz', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609d5bd42ae35', '', NULL, 0, 0, 0, 60),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d5bd42ae35', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609d5bd42ae35', '', NULL, 0, 0, 0, 60),
('', '609d5bd42ae35', '', NULL, 0, 0, 0, 60),
('', '609d5bd42ae35', '', NULL, 0, 0, 0, 60),
('', '609d5bd42ae35', '', NULL, 0, 0, 0, 60),
('', '609d66518d853', '', NULL, 0, 0, 0, 60),
('', '609d66518d853', '', NULL, 0, 0, 0, 60),
('', '609d66518d853', '', NULL, 0, 0, 0, 60),
('', '609d66518d853', '', NULL, 0, 0, 0, 60),
('', '609d66518d853', '', NULL, 0, 0, 0, 60),
('', '609d66518d853', '', NULL, 0, 0, 0, 60),
('', '609d679175690', '', NULL, 0, 0, 0, 60),
('', '609d679175690', '', NULL, 0, 0, 0, 60),
('', '609d679175690', '', NULL, 0, 0, 0, 60),
('', '609d6add1b29a', '', NULL, 0, 0, 0, 60),
('', '609d6bef301d8', '', NULL, 0, 0, 0, 60),
('bb', '609d6c8199217', '', NULL, 0, 0, 0, 60),
('bb', '609d6c8199217', '', NULL, 0, 0, 0, 60),
('', '609d6d08453d7', '', NULL, 0, 0, 0, 60),
('bb', '609d6c8199217', '', NULL, 0, 0, 0, 60),
('', '609d6d08453d7', '', NULL, 0, 0, 0, 60),
('bb', '609d6c8199217', '', NULL, 0, 0, 0, 60),
('', '609d6d08453d7', '', NULL, 0, 0, 0, 60),
('', '609d7067cb9d5', '', NULL, 0, 0, 0, 60),
('', '609d7067cb9d5', '', NULL, 0, 0, 0, 60),
('', '609d7067cb9d5', '', NULL, 0, 0, 0, 60),
('', '609d7067cb9d5', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609d7067cb9d5', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e0f2352e54', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609d7067cb9d5', '', NULL, 0, 0, 0, 60),
('', '609d60d4563b0', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e174c4139d', '', NULL, 0, 0, 0, 60),
('', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('ss', '609d66518d853', '', NULL, 0, 0, 0, 60),
('ss', '609d66518d853', '', NULL, 0, 0, 0, 60),
('ss', '609e5f4bf216c', '', NULL, 0, 0, 0, 60),
('ss', '609e5f4bf216c', '', NULL, 0, 0, 0, 60),
('ss', '609e5f2041411', '', NULL, 0, 0, 0, 60),
('ss', '609e582158e28', '', NULL, 0, 0, 0, 60),
('ss', '609e5ec75a7a0', '', NULL, 0, 0, 0, 60),
('ss', '609e581f07994', '', NULL, 0, 0, 0, 60),
('ss', '609e56bc3263f', '', NULL, 0, 0, 0, 60),
('ss', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('ss', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('ss', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('ss', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('ss', '609e29a348fb1', '', NULL, 0, 0, 0, 60),
('', '609e492c8e8c7', '', NULL, 0, 0, 0, 60),
('', '609e5f4bf216c', '', NULL, 0, 0, 0, 60),
('', '609ea3e1945bb', '', NULL, 0, 0, 0, 120),
('', '609ea3e1945bb', '', NULL, 0, 0, 0, 120),
('', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609e5f4bf216c', '', NULL, 0, 0, 0, 60),
('', '609e431357833', '', NULL, 0, 0, 0, 60),
('', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609e431357833', '', NULL, 0, 0, 0, 60),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('', '609d0083e2016', '', NULL, 0, 0, 0, 300),
('ss', '609e29a348fb1', '', '0000-00-00', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '0000-00-00', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e492c8e8c7', 'aaaaa', '2021-05-15', 0, 1, 1, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 1, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609d6c8199217', 'jn', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 1, 0, 60),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 1621065285),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 1621066200),
('ss', '609e431357833', 'M-1', '2021-05-15', 0, 0, 0, 1621066280),
('ss', '609e5f2041411', 'ou1', '2021-05-15', 0, 0, 0, 1621066295),
('zz', '609e5f4bf216c', 'ou2', '2021-05-15', 0, 0, 0, 1621066336),
('zz', '609d043005c1a', 'test 2', '2021-05-15', 0, 0, 0, 1621066363),
('zz', '609ea3e1945bb', 'test 3', '2021-05-15', 0, 0, 0, 1621066443),
('zz', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 1621066887),
('zz', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 1621067749),
('zz', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 1621068036),
('zz', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 1621068184),
('zz', '609e5f2041411', 'ou1', '2021-05-15', 0, 0, 0, 1621068365),
('zz', '609e29a348fb1', 'maths 1', '2021-05-15', 0, 0, 0, 1621072740),
('zz', '609e5ec75a7a0', 'ou', '2021-05-15', 0, 0, 0, 1621072753),
('zz', '609f8c97de234', 'qqsqe', '2021-05-15', 0, 0, 0, 1621072822),
('zz', '609f8c75c50f3', 'qwwe', '2021-05-15', 0, 0, 0, 1621072775),
('ss', '609f9b8801e1b', 'test 4', '2021-05-15', 0, 0, 0, 1621072986),
('ss', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621073177),
('ss', '609f8c75c50f3', 'qwwe', '2021-05-15', 0, 0, 0, 1621073257),
('ss', '609f8c97de234', 'qqsqe', '2021-05-15', 0, 0, 0, 1621073417),
('aa', '1111', '1', '2021-05-15', 0, 0, 0, 1621073615),
('aa', '609e5f4bf216c', 'ou2', '2021-05-15', 0, 0, 0, 1621073504),
('aniket123', '609fac9ad9025', 'Maths  - 2', '2021-05-15', 0, 0, 0, 1621078364),
('omkarukirde2001', '609fac9ad9025', 'Maths  - 2', '2021-05-15', 0, 0, 0, 1621078499),
('tejas41', '609fac9ad9025', 'Maths  - 2', '2021-05-15', 0, 0, 0, 1621078735),
('ss', '609fb38f02465', 'test 6', '2021-05-15', 0, 0, 0, 1621079700),
('ss', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-15', 0, 0, 0, 1621088962),
('ss', '609e596766121', 'eeeee', '2021-05-15', 0, 0, 0, 1621088970),
('ss', '609fac9ad9025', 'Maths  - 2', '2021-05-15', 0, 0, 0, 1621089531),
('zz', '609fb38f02465', 'test 6', '2021-05-15', 0, 0, 0, 1621090889),
('zz', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-15', 0, 0, 0, 1621090909),
('zz', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-15', 0, 0, 0, 1621090992),
('zz', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621090999),
('zz', '609e581f07994', 'math', '2021-05-15', 0, 0, 0, 1621091006),
('zz', '609e5a0585883', 'aaaaaaaa', '2021-05-15', 0, 0, 0, 1621091078),
('zz', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-15', 0, 0, 0, 1621091097),
('zz', '609e581f07994', 'math', '2021-05-15', 0, 0, 0, 1621091104),
('zz', '609e5a0585883', 'aaaaaaaa', '2021-05-15', 0, 0, 0, 1621091253),
('zz', '609fac9ad9025', 'Maths  - 2', '2021-05-15', 0, 0, 0, 1621094544),
('zz', '609d6c8199217', 'jn', '2021-05-15', 0, 0, 0, 1621094705),
('zz', '609fdbbe94c46', 'test 7', '2021-05-15', 0, 0, 0, 1621095538),
('zz', '609e5be198b23', 'bbbbbb', '2021-05-15', 0, 0, 0, 1621095558),
('zz', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621095578),
('zz', '609faae8193cb', 'dwdws', '2021-05-15', 0, 0, 0, 1621095682),
('tejas41', '609fdbbe94c46', 'test 7', '2021-05-15', 0, 0, 0, 1621096268),
('tejas41', '609e581f07994', 'math', '2021-05-15', 0, 0, 0, 1621095743),
('tejas41', '609d043005c1a', 'test 2', '2021-05-15', 0, 0, 0, 1621095758),
('tejas41', '609d0083e2016', 'test 1', '2021-05-15', 0, 0, 0, 1621096011),
('tejas41', '609fdbbe94c46', 'test 7', '2021-05-15', 0, 0, 0, 1621096425),
('tejas41', '609faae8193cb', 'dwdws', '2021-05-15', 0, 0, 0, 1621095937),
('tejas41', '609e596766121', 'eeeee', '2021-05-15', 0, 0, 0, 1621095950),
('tejas41', '609e5be198b23', 'bbbbbb', '2021-05-15', 0, 0, 0, 1621096071),
('tejas41', '609e5cab476b7', 'sxsxnj', '2021-05-15', 0, 0, 0, 1621096231),
('tejas41', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621096330),
('aniket123', '609d0083e2016', 'test 1', '2021-05-15', 0, 0, 0, 1621096596),
('aniket123', '609d043005c1a', 'test 2', '2021-05-15', 0, 0, 0, 1621096515),
('aniket123', '609e581f07994', 'math', '2021-05-15', 0, 0, 0, 1621096700),
('aniket123', '1111', '1', '2021-05-15', 0, 0, 0, 1621096939),
('aniket123', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-15', 0, 0, 0, 1621096826),
('aniket123', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-15', 0, 0, 0, 1621096832),
('aniket123', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621096838),
('aniket123', '609e581f07994', 'math', '2021-05-15', 0, 0, 0, 1621096844),
('aniket123', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621097092),
('aniket123', '609f9c3e953ca', 'qqqq', '2021-05-15', 0, 0, 0, 1621097254),
('aniket123', '609d6c8199217', 'jn', '2021-05-15', 0, 0, 0, 1621097266),
('ss', '609d6c8199217', 'jn', '2021-05-17', 0, 0, 0, 1621260487),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621262897),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621262920),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621263363),
('ss', '1111', '1', '2021-05-17', 0, 0, 0, 1621263117),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621263123),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621263173),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621263563),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621263866),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621263928),
('ss', '609d0083e2016', 'test 1', '2021-05-17', 0, 0, 0, 1621264288),
('ss', '609d0083e2016', 'test 1', '2021-05-22', 0, 0, 0, 1621698798),
('ss', '609d0083e2016', 'test 1', '2021-05-22', 0, 0, 0, 1621698909),
('ss', '609d0083e2016', 'test 1', '2021-05-22', 0, 0, 0, 1621699057),
('ss', '609d0083e2016', 'test 1', '2021-05-22', 0, 0, 0, 1621699420),
('ss', '609e581f07994', 'math', '2021-05-22', 0, 0, 0, 1621699429),
('ss', '609d043005c1a', 'test 2', '2021-05-22', 0, 0, 0, 1621699441),
('ss', '609fb38f02465', 'test 6', '2021-05-22', 0, 0, 0, 1621699450),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621699463),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621699483),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621699580),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621699955),
('ss', '609fb38f02465', 'test 6', '2021-05-22', 0, 0, 0, 1621699993),
('ss', '609fac9ad9025', 'Maths  - 2', '2021-05-22', 0, 0, 0, 1621700032),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621700174),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621700220),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621700244),
('ss', '609d043005c1a', 'test 2', '2021-05-22', 0, 0, 0, 1621700283),
('ss', '609d043005c1a', 'test 2', '2021-05-22', 0, 0, 0, 1621700307),
('ss', '609fdbbe94c46', 'test 7', '2021-05-22', 0, 0, 0, 1621700478),
('ramesh11', '609fac9ad9025', 'Maths  - 2', '2021-05-25', 0, 0, 0, 1621928187),
('ramesh11', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622013603),
('ramesh11', '609fac9ad9025', '', NULL, 0, 0, 0, 600),
('ramesh11', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622013693),
('ramesh11', '609fac9ad9025', '', NULL, 0, 0, 0, 600),
('aa', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622013724),
('aa', '609fac9ad9025', '', NULL, 0, 0, 0, 600),
('ramesh11', '609d043005c1a', 'test 2', '2021-05-26', 0, 0, 0, 1622013746),
('ramesh11', '609d043005c1a', '', NULL, 0, 0, 0, 60),
('aa', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622013849),
('aa', '609fac9ad9025', '', NULL, 0, 0, 0, 600),
('aa', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622014006),
('ramesh11', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622014010),
('ramesh11', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622014075),
('ramesh11', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622014135),
('ramesh11', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622014151),
('ramesh11', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622014196),
('aa', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622014200),
('aa', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622014319),
('ramesh11', '609d043005c1a', 'test 2', '2021-05-26', 0, 0, 0, 1622014321),
('ramesh11', '609d043005c1a', 'test 2', '2021-05-26', 0, 0, 0, 1622014478),
('ramesh11', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622014488),
('ramesh11', '609fdbbe94c46', 'test 7', '2021-05-26', 0, 0, 0, 1622014596),
('ramesh11', '1111', '1', '2021-05-26', 0, 0, 0, 1622014691),
('bb', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622014695),
('bb', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622014892),
('ramesh11', '609e581f07994', 'math', '2021-05-26', 0, 0, 0, 1622015177),
('ramesh11', '609fb38f02465', 'test 6', '2021-05-26', 0, 0, 0, 1622015261),
('ramesh11', '609faae8193cb', 'dwdws', '2021-05-26', 0, 0, 0, 1622015591),
('ramesh11', '609f9c3e953ca', 'qqqq', '2021-05-26', 0, 0, 0, 1622015604),
('ramesh11', '609e5aa6b0b6a', 'aqqq', '2021-05-26', 0, 0, 0, 1622015610),
('ramesh11', '609e5cab476b7', 'sxsxnj', '2021-05-26', 0, 0, 0, 1622015626),
('ss', '609d043005c1a', 'test 2', '2021-05-26', 0, 0, 0, 1622015645),
('ss', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622015657),
('ss', '609fb38f02465', 'test 6', '2021-05-26', 0, 0, 0, 1622015713),
('ss', '609fdbbe94c46', 'test 7', '2021-05-26', 0, 0, 0, 1622015786),
('ss', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622015891),
('bb', '609d043005c1a', 'test 2', '2021-05-26', 0, 0, 0, 1622016027),
('bb', '609fb38f02465', 'test 6', '2021-05-26', 0, 0, 0, 1622016188),
('bb', '609faae8193cb', 'dwdws', '2021-05-26', 0, 0, 0, 1622016307),
('bb', '1111', '1', '2021-05-26', 0, 0, 0, 1622017214),
('bb', '609fdbbe94c46', 'test 7', '2021-05-26', 0, 0, 0, 1622017222),
('bb', '609e581f07994', 'math', '2021-05-26', 0, 0, 0, 1622017255),
('ss', '609e581f07994', 'math', '2021-05-26', 0, 0, 0, 1622017277),
('ss', '1111', '1', '2021-05-26', 0, 0, 0, 1622017371),
('ss', '609f9c3e953ca', 'qqqq', '2021-05-26', 0, 0, 0, 1622017480),
('ss', '609f9eed07d24', 'aaaaaaaaaaaaa', '2021-05-26', 0, 0, 0, 1622167491),
('ss', '609faae8193cb', 'dwdws', '2021-05-26', 0, 0, 0, 1622167732),
('ss', '609e5a0585883', 'aaaaaaaa', '2021-05-26', 0, 0, 0, 1622168879),
('ss', '609d6c8199217', 'jn', '2021-05-26', 0, 0, 0, 1622169578),
('ganesh123', '609d043005c1a', 'test 2', '2021-05-26', 0, 0, 0, 1622172178),
('ganesh123', '609fb38f02465', 'test 6', '2021-05-26', 0, 0, 0, 1622022227),
('ganesh123', '609fdbbe94c46', 'test 7', '2021-05-26', 0, 0, 0, 1622022257),
('ganesh123', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622022314),
('ganesh123', '609d0083e2016', 'test 1', '2021-05-26', 0, 0, 0, 1622022355),
('aa', '609fb38f02465', 'test 6', '2021-05-26', 0, 0, 0, 1622022582),
('cc', '609fac9ad9025', 'Maths  - 2', '2021-05-26', 0, 0, 0, 1622047281),
('tejas', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622086694),
('tejas', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622087340),
('omkar', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622087363),
('mehul', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622087471),
('tejas', '60ae80ecefc44', 'GK-1', '2021-05-27', 0, 0, 0, 1622087193),
('prany', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622087603),
('aniket', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622087728),
('tejas', '60af11e0bc597', 'Microprocessor(quiz 1)', '2021-05-27', 0, 0, 0, 1622087758),
('tejas', '60ae83db0de23', 'GK 2', '2021-05-27', 0, 0, 0, 1622087799),
('tejas', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622087754),
('kovid', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622088239),
('prany', '60af11e0bc597', 'Microprocessor(quiz 1)', '2021-05-27', 0, 0, 0, 1622088269),
('kovid', '60af11e0bc597', 'Microprocessor(quiz 1)', '2021-05-27', 0, 0, 0, 1622088285),
('prany', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622088057),
('kovid', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622088087),
('omkar', '60af11e0bc597', 'Microprocessor(quiz 1)', '2021-05-27', 0, 0, 0, 1622088431),
('omkar', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622088228),
('aniket', '60af11e0bc597', 'Microprocessor(quiz 1)', '2021-05-27', 0, 0, 0, 1622088476),
('aniket', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622088289),
('aniket', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622088294),
('mehul', '60af11e0bc597', 'Microprocessor(quiz 1)', '2021-05-27', 0, 0, 0, 1622088726),
('mehul', '60af0ee9767b8', 'OS(quiz-1)', '2021-05-27', 0, 0, 0, 1622088514),
('aa', '60ae80ecefc44', 'GK-1', '2021-05-27', 0, 0, 0, 1622088718),
('aa', '60ae83db0de23', 'GK 2', '2021-05-27', 0, 0, 0, 1622089358),
('aditya', '60af0b5d9c5f3', 'Maths-4(quiz 1)', '2021-05-27', 0, 0, 0, 1622092555);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` bigint(13) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `email`, `phonenumber`, `password`) VALUES
('omkar', 'Omkar Ukirde', 'omkarukirde@gmail.com', 9985978624, 'omkar@123'),
('tejas', 'Tejas Veer', 'tejasveer@gmail.com', 9875921255, 'tejas@123'),
('aniket', 'Aniket Rathod', 'aniketrathod@gmail.com', 8449532887, 'aniket@123'),
('prany', 'Pranay Suryarao', 'pranaysuryarao@gmail.com', 772484986, 'pranay@123'),
('kovid', 'Kovid Narkar', 'kovidnarkar@gmail.com', 9872656598, 'kovid@123'),
('mehul', 'Mehul Sonawane', 'mehulsonawane@gmail.com', 896549856, 'mehul@123'),
('aditya', 'Aditya Singh', 'adityasingh@gmail.com', 8954495248, 'aditya@123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
