SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db_m318`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `poolStats`
--

CREATE TABLE `poolStats` (
  `date` datetime NOT NULL,
  `sport` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `small` int(11) NOT NULL,
  `ice` int(11) NOT NULL,
  `guid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `poolStats`
--
ALTER TABLE `poolStats`
  ADD UNIQUE KEY `guid` (`guid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE poolStats_history (
    guid CHAR(36) NOT NULL PRIMARY KEY DEFAULT (UUID()), -- Generates a unique identifier for each entry
    weekday VARCHAR(10),        -- Day of the week (e.g., "Monday", "Tuesday")
    time TIME,                  -- Time in HH:MM:SS format
    sport INT,                  -- Sport column (integer value)
    family INT,                 -- Family column (integer value)
    small INT,                  -- Small column (integer value)
    ice INT,                     -- Ice column (integer value)
    update_datetime DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Track last update timestamp
);