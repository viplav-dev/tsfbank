

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
`sno` int(3) NOT NULL,
`sender` text NOT NULL,
`receiver` text NOT NULL,
`balance` int(8) NOT NULL,
`datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `users` (
`id` int(3) NOT NULL,
`name` text NOT NULL,
`email` varchar(30) NOT NULL,
`balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Anish', 'anish@gmail.com', 49800),
(2, 'Chinmay', 'chinmay@gmail.com', 450200),
(3, 'priya', 'priya123@gmail.com', 500000),
(4, 'Akhilesh ', 'akhil21@gmail.com', 30000),
(5, 'ansh ', 'ansh2@gmail.com', 23000),
(6, 'dildar', 'dillu12@gmail.com', 20000),
(7, 'faizan', 'faiz122@gmail.com', 700000),
(8, 'shalvi', 'shalvi12@gmail.com',90000),
(9, 'akansha', 'aka90@gmail.com', 100000),
(10, 'ashish', 'ashish12@gmail.com', 876000);


ALTER TABLE `transaction`
ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

