-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 12. 04 2016 kl. 10:47:37
-- Serverversion: 10.1.10-MariaDB
-- PHP-version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `grundstoffer`
--

CREATE TABLE `grundstoffer` (
  `Nr` int(11) NOT NULL,
  `Navn` varchar(13) DEFAULT NULL,
  `Symbol` varchar(2) DEFAULT NULL,
  `Masse` float DEFAULT NULL,
  `OpdagerAar` smallint(6) DEFAULT NULL,
  `Opdager` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `grundstoffer`
--

INSERT INTO `grundstoffer` (`Nr`, `Navn`, `Symbol`, `Masse`, `OpdagerAar`, `Opdager`) VALUES
(1, 'Hydrogen', 'H', 1, 1766, 'Cavendish'),
(2, 'Helium', 'He', 4, 1895, 'Ramsay og Cleve'),
(3, 'Lithium', 'Li', 6, 1817, 'Arfvedson'),
(4, 'Beryllium', 'Be', 9, 1797, 'Vauquelin'),
(5, 'Bor', 'B', 10, 1808, 'Davy og Gay-Lussac'),
(6, 'Carbon', 'C', 12, NULL, 'Ukendt'),
(7, 'Nitrogen', 'N', 14, 1772, 'Rutherford'),
(8, 'Oxygen', 'O', 15, 1774, 'Priestley og Scheele'),
(9, 'Fluor', 'F', 18, 1886, 'Moissan'),
(10, 'Neon', 'Ne', 20, 1898, 'Ramsay og Travers'),
(11, 'Natrium', 'Na', 22, 1807, 'Davy'),
(12, 'Magnesium', 'Mg', 24, 1755, 'Black'),
(13, 'Aluminium', 'Al', 26, 1825, '?rsted'),
(14, 'Silicium', 'Si', 28, 1824, 'Berzelius'),
(15, 'Fosfor', 'P', 30, 1669, 'Brandt'),
(16, 'Svovl', 'S', 32, NULL, 'Ukendt'),
(17, 'Klor', 'Cl', 35, 1774, 'Scheele'),
(18, 'Argon', 'Ar', 39, 1894, 'Ramsay og Rayleigh'),
(19, 'Kalium', 'K', 39, 1807, 'Davy'),
(20, 'Calcium', 'Ca', 40, 1808, 'Davy'),
(21, 'Scandium', 'Sc', 44, 1879, 'Nilson'),
(22, 'Titan', 'Ti', 47, 1791, 'Gregor og Klaproth'),
(23, 'Vanadium', 'V', 50, 1801, 'del Rio'),
(24, 'Krom', 'Cr', 51, 1797, 'Vauquelin'),
(25, 'Mangan', 'Mn', 54, 1774, 'Gahn'),
(26, 'Jern', 'Fe', 55, NULL, 'Ukendt'),
(27, 'Kobolt', 'Co', 58, 1735, 'Brandt'),
(28, 'Nikkel', 'Ni', 58, 1751, 'Cronstedt'),
(29, 'Kobber', 'Cu', 63, NULL, 'Ukendt'),
(30, 'Zink', 'Zn', 65, NULL, 'Ukendt'),
(31, 'Gallium', 'Ga', 69, 1875, 'Lecoq de Boiskaudran'),
(32, 'Germanium', 'Ge', 72, 1886, 'Winkler'),
(33, 'Arsen', 'As', 74, 1250, 'Albertus Magnus'),
(34, 'Selen', 'Se', 78, 1817, 'Berzelius'),
(35, 'Brom', 'Br', 79, 1826, 'Balard'),
(36, 'Krypton', 'Kr', 83, 1898, 'Ramsay og Travers'),
(37, 'Rubidium', 'Rb', 85, 1861, 'Bunsen og Kirchhoff'),
(38, 'Strontium', 'Sr', 87, 1790, 'Crawford'),
(39, 'Yttrium', 'Y', 88, 1794, 'Gadolin'),
(40, 'Zirconium', 'Zr', 91, 1789, 'Klaproth'),
(41, 'Niobium', 'Nb', 92, 1801, 'Hatchet'),
(42, 'Molybd?n;Mo', '95', 1778, NULL, NULL),
(43, 'Technetium', 'Tc', 98, 1937, 'Perrier og Segr?\r\n44'),
(45, 'Rhodium', 'Rh', 102, 1803, 'Wollaston'),
(46, 'Palladium', 'Pd', 106, 1803, 'Wollaston'),
(47, 'S?lv', 'Ag', 107, NULL, 'Ukendt'),
(48, 'Cadmium', 'Cd', 112, 1817, 'Stromeyer og Hermann'),
(49, 'Indium', 'In', 114, 1863, 'Reich og Richter'),
(50, 'Tin', 'Sn', 118, NULL, 'Ukendt'),
(51, 'Antimon', 'Sb', 121, NULL, 'Ukendt'),
(52, 'Tellur', 'Te', 127, 1782, 'von Reichenstein'),
(53, 'Iod', 'I', 126, 1811, 'Courtois'),
(54, 'Xenon', 'Xe', 131, 1898, 'Ramsay og Travers'),
(55, 'C?sium', 'Cs', 132, 1860, 'Kirchhoff og Bunsen'),
(56, 'Barium', 'Ba', 137, 1808, 'Davy'),
(57, 'Lanthan', 'La', 138, 1839, 'Mosander'),
(58, 'Cerium', 'Ce', 140, 1803, 'von Hisinger og Berzelius'),
(59, 'Praseodym', 'Pr', 140, 1895, 'von Welsbach'),
(60, 'Neodym', 'Nd', 144, 1895, 'von Welsbach'),
(61, 'Promethium', 'Pm', 146, 1945, 'Marinsky og Glendenin'),
(62, 'Samarium', 'Sm', 150, 1879, 'Lecoq de Boisbaudran'),
(63, 'Europium', 'Eu', 151, 1901, 'Dema?ay'),
(64, 'Gadolinium', 'Gd', 157, 1880, 'de Marignac'),
(65, 'Terbium', 'Tb', 158, 1843, 'Mosander'),
(66, 'Dysprosium', 'Dy', 162, 1886, 'Lecoq de Boisbaudran'),
(67, 'Holmium', 'Ho', 164, 1878, 'Soret'),
(68, 'Erbium', 'Er', 167, 1842, 'Mosander'),
(69, 'Thulium', 'Tm', 168, 1879, 'Cleve'),
(70, 'Ytterbium', 'Yb', 173, 1878, 'de Marignac'),
(71, 'Lutetium', 'Lu', 174, 1907, 'Urbain'),
(72, 'Hafnium', 'Hf', 178, 1923, 'Coster og v?n Hevesy'),
(73, 'Tantal', 'Ta', 180, 1802, 'Ekeberg'),
(74, 'Wolfram', 'W', 183, 1783, 'Brdr. Elhuyar'),
(75, 'Rhenium', 'Re', 186, 1925, 'Noddack, Tacke og Berg'),
(76, 'Osmium', 'Os', 190, 1803, 'Tenant'),
(77, 'Iridium', 'Ir', 192, 1803, 'Tenant m.fl.'),
(78, 'Platin', 'Pt', 195, 1557, 'Scaliger'),
(79, 'Guld', 'Au', 196, NULL, 'Ukendt'),
(80, 'Kviks?lv', 'Hg', 200, NULL, 'Ukendt'),
(81, 'Thallium', 'Tl', 204, 1861, 'Crookes'),
(82, 'Bly', 'Pb', 207, NULL, 'Ukendt'),
(83, 'Bismuth', 'Bi', 208, 1540, 'Agricola'),
(84, 'Polonium', 'Po', 208, 1898, 'Marie og Pierre Curie'),
(85, 'Astat', 'At', 209, 1940, 'Corson og MacKenzie'),
(86, 'Radon', 'Rn', 222, 1900, 'Dorn'),
(87, 'Francium', 'Fr', 223, 1939, 'Perey'),
(88, 'Radium', 'Ra', 226, 1898, 'Marie og Pierre Curie'),
(89, 'Actinium', 'Ac', 227, 1899, 'Debierne'),
(90, 'Thorium', 'Th', 232, 1829, 'Berzelius'),
(91, 'Protactinium', 'Pa', 231, 1917, 'Soddy, Cranston og Hahn'),
(92, 'Uran', 'U', 238, 1789, 'Klaproth'),
(93, 'Neptunium', 'Np', 237, 1940, 'McMillan og Abelson'),
(94, 'Plutonium', 'Pu', 244, 1940, 'Seaborg'),
(95, 'Americium', 'Am', 243, 1944, 'Seaborg'),
(96, 'Curium', 'Cm', 247, 1944, 'Seaborg'),
(97, 'Berkelium', 'Bk', 247, 1949, 'Seaborg'),
(98, 'Californium', 'Cf', 251, 1950, 'Seaborg'),
(99, 'Einsteinium', 'Es', 252, 1952, 'Seaborg'),
(100, 'Fermium', 'Fm', 257, 1952, 'Seaborg'),
(101, 'Mendelevium', 'Md', 258, 1955, 'Seaborg'),
(102, 'Nobelium', 'No', 259, 1958, 'Seaborg'),
(103, 'Lawrencium', 'Lr', 260, 1961, 'Ghiorso'),
(104, 'Rutherfordium', 'Rf', 261, 1964, 'Flerov eller Ghiorso'),
(105, 'Dubnium', 'Db', 262, 1967, 'Flerow eller Ghiorso'),
(106, 'Seaborgium', 'Sg', 263, 1974, 'Oganessian'),
(107, 'Bohrium', 'Bh', 262, 1976, 'Oganessian'),
(108, 'Hassium', 'Hs', 265, 1984, 'Society for Heavy Ion Research'),
(109, 'Meitnerium', 'Mt', 266, 1982, 'Society for Heavy Ion Research'),
(110, 'Darmstadtium', 'Ds', 269, 1994, 'Society for Heavy Ion Research'),
(111, 'R?ntgenium', 'Rg', 272, 1994, 'Society for Heavy Ion Research'),
(112, 'Copernicium', 'Cn', 277, 1996, 'Society for Heavy Ion Research'),
(113, 'Ununtrium', 'Uu', 284, 2003, 'JINR'),
(114, 'Flerovium', 'Fl', 289, 1998, 'JINR'),
(115, 'Ununpentium', 'Uu', 288, 2004, 'JINR'),
(116, 'Livermorium', 'Lv', 292, 2000, 'LLNL og JINR'),
(117, 'Ununseptium', 'Uu', 294, 2010, 'JINR'),
(118, 'Ununoctium', 'Uu', 294, 2006, 'LLNL og JINR');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `grundstoffer`
--
ALTER TABLE `grundstoffer`
  ADD PRIMARY KEY (`Nr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
