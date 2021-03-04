-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2021 at 06:46 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webclwfv_galapia`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `contact_time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `feedback` varchar(400) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `sno` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `medicine_form` varchar(200) NOT NULL,
  `ingredients` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `prescription` varchar(500) NOT NULL,
  `pack` varchar(200) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `segment` varchar(100) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `indications` varchar(255) DEFAULT NULL,
  `mrp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`sno`, `product_name`, `medicine_form`, `ingredients`, `description`, `brand`, `prescription`, `pack`, `speciality`, `segment`, `image1`, `image2`, `image3`, `image4`, `youtube_url`, `indications`, `mrp`) VALUES
(41, 'Glutima Gold', 'Tablet', ' L- Glutathione 500 mg + L-Carnitine 500 mg + Ubiquinol 100 mg + Magnesium 50 mg + N-Acetyl Cysteine 100 mg', 'Glutima Gold is combination of super detoxification agent/antioxidants which are produced by liver in body naturally. This naturally produced antioxidant detoxify cell organelles and prevents ageing/death of cells. ', 'Galipea', 'Not Required/Dietary Supplement', '10 tablet per strips', 'Orthopedic', '', '20210301120111pm1464923298g-gold-2.jpg', '20210301120111pm107380825g-gold-1.jpg', '', '', '', '* Increase the glutathione level in cell which is main component of mitochondria a power house of cell & body. * Detoxify the cell and tissue in human body. * Remove/degrade heavy metal/chemical from cells/tissues. * Increases insulin production and decre', '0.00'),
(42, 'Galico-D3', 'Syrup', 'Cholecalciferol IP 60000 IU Shots', 'Treatment and prevention of vitamin D deficiency states DOSAGE AND ADMINISTRATION Adults: Vitamin D3 60000 IU to be given once a week for a period of 8 weeks, followed by maintenance daily dose as directed by the physician.', 'Galipea', 'Not Required/Dietary Supplement', '5ml syrup', 'Orthopedic', '', '20210301120917pm398859332d3-1.jpg', '20210301120917pm1581768258d3-2.jpg', '', '', '', 'Arthritis, Back Pain, Muscles Weakness, Bone Fracture.', '0.00'),
(43, 'R-Viton', 'Syrup', 'Grape seed extract 18.65mg + Lycopene 5000 mcg +Ginseng 42.75 mg + Biotin + Calcium 22.75 mg +Iron 10.25 mg +Essential VIT.B1,B2,B3,B5,B6,B9,B12,A,C,E,D3+ Essential Mineral chromium, magnesium, iodine, copper zinc, selenium, molybdenum, Iglutamic acid, I-Lysine hydrochloride .', 'R-Viton protects against oxidative cell damage from free radicals, prevent high insulin spikes . R-Viton is promoted as an adaptogen. R-Viton is a powerful antioxidant that may help protect cells from damage. R-Viton helps the body break down fats, carbohydrates, and other substances.', 'Galipea', 'Not Required/Dietary Supplement', '200 ml Syrup', '', '', '20210301122346pm277463778rviton-2.jpg', '20210301122346pm947968261rviton-1.jpg', '', '', '', 'Protect against free radicals that damage cells. ? Used in treatment of cancer. ? Lowering high cholesterol levels. ? Improving the blood flow and reducing short-term memory loss. ? Help in formation of hemoglobin as well as bones. ? Treatment of allergie', '0.00'),
(44, 'Colipro', 'Sachet', 'Saccharomyces Boulardii 250mg + Zinc 4mg', 'No antibiotic compounds that enhance antibiotic activity either by blocking resistance or by boosting the host response to infection.', 'Galipea', 'Not Required/Dietary Supplement', '1 gm ', '', '', '20210301124400pm1996071133colipro-3.jpg', '20210301124400pm102860885colipro-1.jpg', '', '', '', 'Most commonly used for treating and preventing diarrhea, including infectious types such as rotaviral diarrhea in children, diarrhea caused by gastrointestinal (GI) take-over (overgrowth) by \"bad\" bacteria in adults, traveler\'s diarrhea, and diarrhea asso', '0.00'),
(45, 'Galony Gel', 'Ointment', 'Diclofenac diethylamine 1.16 % w/w + Menthyl salisylate10% w/w + Menthol 5% w/w + Linseed oil 3% w/w + Benzyl alcohole 1% w/w Gel', 'A topical gel nonsteroidal anti-inflammatory drug (NSAID) used to treat pain of osteoarthritis of joints that are amenable to topical treatment, such the hands and knees', 'Galipea', 'Not Required/Dietary Supplement', '30 gm', '', 'Pain Relief', '20210301125250pm2086259045g-gel-1.jpg', '20210301125250pm642549673g-gel-2.jpg', '', '', '', '* Rheumatoid Arthritis * Osteoarthritis * Ankylosing Spondylitis * Dysmenorrhea * Mild to moderate pain * Migraine * Bursitis * Tendinitis', '0.00'),
(46, 'Gutout', 'Sachet', 'Lactitol Monohydrate + 10gm + Ispaghula husk 3.5gm ', 'Used for Constipation, Irritable bowel syndrome, Hypercholesterolemia, Hepatic encephalopathy.', 'Galipea', 'Not Required/Dietary Supplement', '90 gm Jar', '', '', '20210302023312pm903388486gutout-1.jpg', '20210302023312pm187722235gutout-2.jpg', '', '', '', 'Constipation, Hepatic Encephalopathy', '0.00'),
(47, 'Naveli', 'Tablet', 'Drosperone 3mg, Ethinylestradiol 0.03mg', 'Used to treat premenstrual dysphoric disorder (PMDD) or moderate acne.(PMDD causes emotional and physical symptoms like Mood swings, Depression or feelings of hopelessness Intense anger and conflict with other people, Tension, anxiety, and irritability, Decreased interest in usual activities, Difficulty concentrating, Fatigue.)', 'Galipea', 'Required', '21 Tablet in a Strip', 'Gynaecology', '', '20210302032410pm1584038026naveli-3.jpg', '20210302032410pm1411277946naveli-2.jpg', '', '', '', 'To prevent pregnancy. Make your periods more regular Decrease blood loss and painful periods. Decrease risk of ovarian cysts.', '0.00'),
(48, 'Galmoxy CV 625', 'Tablet', 'Amoxicillin 500 mg + Calavulanic Acid 125 mg', 'A combination penicillin-type antibiotic used to treat a wide variety of bacterial infections. It works by stopping the growth of bacteria. This antibiotic treats certain infections caused by bacteria, including infections of the ears, lungs, sinus, skin, and urinary tract.', 'Galipea', 'Required', '10 tablet per strip', '', 'Antibiotic', '20210302034022pm963975439cv-625.jpg', '20210302034022pm139593304cv-625-(2).jpg', '', '', '', 'Bacterial Meningitis (e.g. Caused by N. Meningitidis, Strep. Pneumonia).  Bone and Joint infection(e.g. Staphylococcous Auresus). Skin and Soft tissue infection (e.g. with Strep. Pyrogenes or Staph. Aurous).  Animal Bites Infection Pharyngitis Otitis Medi', '0.00'),
(49, 'GALCOLIV  300', 'Tablet', 'Ursodeoxy Cholic Acid 300 Mg', 'Galcoliv is used to treat the symptoms and slow the progression of this disease of the liver and the bile duct. Used to break and dissolve stones\r\nof the gall bladder which are formed by cholesterol deposit. Used to prevent gall stone formation.', 'Galipea', 'Required', '10 tablet per strip', 'Gynaecology', '', '20210303113200am1147718557g-300.jpg', '', '', '', '', 'Relives. Improve Maternal Itching. Improve Bile Flow And May Dissolve Gallstone. Improve Liver Function', '0.00'),
(50, 'Galip Z', 'Capsule', 'Calcium Citrate 500 mg + Zinc 20 mg + Calcitriol  0.25 mg + Magnesium 40 mg ', 'The regulation of the absorption of calcium from the gastrointestinal tract and its utilization in the body. Helps in the softening of the bones, typically\r\nthrough a deficiency of vitamin D or calcium.', 'Galipea', 'Required', '10 tablet per strip', 'Orthopedic', '', '20210303120545pm1091563004galip-z-2.jpg', '20210303120545pm874604608galip-z.jpg', '', '', '', 'Calcium citrate reduce the risk of oxalate deposition in the kidney. Calcium citrate was better absorbed than calcium carbonate in postmenopausal women. With PPIs drugs calcium citrate can use as calcium supplements. In secondary hyperparathyroidism. Weak', '0.00'),
(51, 'Galpra DSR', 'Capsule', 'Domperidone 30mg + Pantoprazole 40 mg ', 'Galpra DSR Inhibit the final step in gastric acid production. In the gastric parietal cell of the stomach. Acts as a gastrointestinal emptying (delayed) adjunct and peristaltic stimulant', 'Galipea', 'Required', '10 tablet per strip', '', '', '20210303123332pm1724801382dsr.jpg', '20210303123332pm541571665dsr-2.jpg', '', '', '', 'Peptic Ulcers.  Reflux Oesophagitis. As one component therapy for Helicobacter Pylori infection*.  Zollinger-Ellison syndrome** (a rare condition caused by gastrin secreting tumors.  NSAID Induced Dyspepsia.  GERD.  Flatulence', '0.00'),
(52, 'Galofen SP', 'Tablet', 'Aceclofenac 100mg + Paracetamol 325 mg + Serrtiopeptidase 15 mg', 'Galofen SP used in  pain and inflammation in osteoarthritis, rheumatoid arthritis and ankylosing spondylitis. Galofen SP is a proteolytic enzyme preparation used to breaking down abnormal proteins at the site of inflammation and promotes healing.', 'Galipea', 'Required', '10 tablet per strip', '', '', '20210303125333pm925518019sp.jpg', '', '', '', '', 'Osteo/ Rheumatoid Arthritis. Ankylosing Spondylitis. Dental Pain. Post Operative Pain. Dysmenorrhoea. Acute Lumbago. Gonalgia. Musculoskeletal Trauma. Trauma Surgery', '0.00'),
(53, 'Cortigal 6', 'Tablet', 'Deflazacort 6 mg', 'Cortigal 6 is a corticosteroid prodrug, its active metabolite, 21-desDFZ, acts on the glucocorticoid receptor to exert anti-inflammatory and immunosuppressive effects.', 'Galipea', 'Required', '10 tablet per strip', '', '', '20210303012935pm937776643cortigal-6.jpg', '', '', '', '', 'Anaphylaxis, asthma, severe hypersensitivity reactions Rheumatoid arthritis, juvenile chronic arthritis, polymyalgia rheumatica Systemic lupus erythematosus, dermatomyositis, mixed connective tissue disease (other than systemic sclerosis), polyarteritis n', '0.00'),
(54, 'Alfovit M', 'Tablet', 'Methylcobalamin 1500 mcg + Alpha Lipoic Acid USP 100 mg + Vitamin D3 IP 1000 IU + Pyridoxine Hydrochloride IP 3 mg + Folic Acid IP 1.5 mg', 'A Homocysteine regulator (Methylcobalamine, Pyridoxine Hcl, Folic Acid), Universal antioxidant ( Alp ha lipoic acid), Bioenhancer ( Vitamin D3 )', 'Galipea', 'Required', '10 tablet per strip', '', '', '20210303015855pm2113649907alfovit-m.jpg', '', '', '', '', 'Pregnancy & Lactation, Dyslipidemia, Hypertension, Osteoporosis, Arthritis, Demenita', '0.00'),
(55, 'Galpenum', 'Injection', 'Meropenem 1 Gm', 'Galpenum is used to treat severe infections of the skin or stomach. Also used to treat bacterial meningitis (infection that causes inflammation of the tissue that covers the brain and spinal cord). This medication is known as a carbapenem-type antibiotic.', 'Galipea', 'Required', '1 Gm Per ', '', '', '20210303031404pm950544663galpenum.jpg', '', '', '', '', 'Intra-abdominal infections Meningitis, bacterial Skin and skin structure infection, complicated Anthrax Bite wound infection, treatment, animal or human bite Bloodstream infection (gram-negative bacteremia) Diabetic foot infection, moderate to severe Cyst', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `sno` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`sno`, `name`, `user_name`, `password`, `email`, `image`, `date`) VALUES
(1, 'Galipea', 'admin', '$2y$10$4o/p/50LJPYM0lLftivZkuxSN0/sfm9VK0TCnA0DwFqVQcH5EuFr6', 'micro2mega@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
