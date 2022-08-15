SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit3048-activating wellness`
--


CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `con_name` varchar(64) NOT NULL,
  `con_is_company` tinyint(1) DEFAULT 0,
  `con_address_line_one` varchar(128) DEFAULT NULL,
  `con_address_line_two` varchar(128) DEFAULT NULL,
  `con_postcode` int(8) DEFAULT NULL,
  `con_city` varchar(24) DEFAULT NULL,
  `con_state` varchar(24) DEFAULT NULL,
  `con_country` varchar(24) DEFAULT NULL,
  `con_email` varchar(128) DEFAULT NULL,
  `con_phone_main` int(24) DEFAULT NULL,
  `con_phone_alt` int(24) DEFAULT NULL,
  `con_birthdate` date DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `con_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `con_archived` tinyint(1) NOT NULL DEFAULT 0,
  `con_is_master` tinyint(1) DEFAULT 0,
  `con_abn` int(24) DEFAULT NULL,
  `con_image` varchar(256) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `con_notes` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `contact_titles` (
  `id` int(11) NOT NULL,
  `title_name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `inv_reference` varchar(64) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `inv_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `invoice_stage_id` int(11) NOT NULL DEFAULT 1,
  `invoice_line_id` int(11) DEFAULT NULL,
  `invoice_status_id` int(11) NOT NULL DEFAULT 1,
  `inv_archived` tinyint(1) NOT NULL DEFAULT 0,
  `inv_total_inc` float(11) DEFAULT 0.0,
  `inv_total_exc` float(11) DEFAULT 0.0,
  `inv_due_date` datetime DEFAULT NULL,
  `inv_amount_paid` float(11) DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `invoice_lines` (
  `id` int(11) NOT NULL,
  `line_description` varchar(128) NOT NULL DEFAULT '',
  `line_qty` int(11) DEFAULT 1,
  `line_cost` float(11) DEFAULT 0.0,
  `line_total` float(11) DEFAULT 0.0,
  `invoice_id` int(11) NOT NULL,
  `tax_id` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `invoice_stages` (
  `id` int(11) NOT NULL,
  `inv_stage_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `invoice_statuses` (
  `id` int(11) NOT NULL,
  `inv_status_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `tax_name` varchar(48) NOT NULL,
  `tax_percentage` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_email` varchar(64) NOT NULL,
  `user_archived` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contact_titles_contacts` (`title_id`) USING BTREE,
  ADD KEY `fk_contacts_contacts` (`contact_id`) USING BTREE;

ALTER TABLE `contact_titles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_invoice_stages_invoices` (`invoice_stage_id`) USING BTREE,
  ADD KEY `fk_invoice_lines_invoices` (`invoice_line_id`) USING BTREE,
  ADD KEY `fk_invoice_statuses_invoices` (`invoice_status_id`) USING BTREE,
  ADD KEY `fk_users_invoices` (`user_id`) USING BTREE,
  ADD KEY `fk_contacts_invoices` (`contact_id`) USING BTREE;

ALTER TABLE `invoice_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_taxes_invoice_lines` (`tax_id`) USING BTREE;

ALTER TABLE `invoice_stages`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `invoice_statuses`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `contact_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `invoice_lines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `invoice_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `invoice_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_ibfk_2` FOREIGN KEY (`title_id`) REFERENCES `contact_titles` (`id`),
  ADD CONSTRAINT `contacts_ibfk_3` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`invoice_stage_id`) REFERENCES `invoice_stages` (`id`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`invoice_line_id`) REFERENCES `invoice_lines` (`id`),
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`invoice_status_id`) REFERENCES `invoice_statuses` (`id`),
  ADD CONSTRAINT `invoices_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `invoices_ibfk_5` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

ALTER TABLE `invoice_lines`
  ADD CONSTRAINT `invoice_lines_ibfk_1` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);


  INSERT INTO `contacts` (`con_name`, `con_is_company`, `con_address_line_one`, `con_address_line_two`, `con_postcode`, `con_city`, `con_state`, `con_country`, `con_email`, `con_phone_main`, `con_birthdate`, `contact_id`, `con_created`, `con_archived`, `con_is_master`, `con_notes`) VALUES
  ('Shuning Li', 0, '10 Example St', 'Suite 1', 3101, 'Shanghi', 'East China', 'China', 'slii0120@student.monash.edu', 1234567890, '2022-08-19', NULL, '2022-08-08 16:40:52', 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id orci at justo ultrices ornare. Donec fringilla nisi non condimentum auctor. Donec viverra dictum tortor, id aliquam nulla luctus vitae. Ut lobortis ligula nec accumsan lacinia. Morbi tincidunt est nulla, id fermentum erat condimentum ullamcorper. Aenean sit amet libero metus. Praesent tempus augue et arcu pellentesque posuere. Cras id vehicula tellus. Nam aliquam placerat sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris varius, risus quis gravida convallis, mauris enim fermentum ex, quis tincidunt ante dui pretium ex. Cras finibus metus non diam facilisis, non ornare purus bibendum. '),
  ('Yueke Zhou', 0, '11 Example St', 'Suite 2', 3102, 'Shanghi', 'East China', 'China', 'yzho0077@student.monash.edu', 1234567890, '2022-08-19', NULL, '2022-08-08 16:40:52', 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id orci at justo ultrices ornare. Donec fringilla nisi non condimentum auctor. Donec viverra dictum tortor, id aliquam nulla luctus vitae. Ut lobortis ligula nec accumsan lacinia. Morbi tincidunt est nulla, id fermentum erat condimentum ullamcorper. Aenean sit amet libero metus. Praesent tempus augue et arcu pellentesque posuere. Cras id vehicula tellus. Nam aliquam placerat sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris varius, risus quis gravida convallis, mauris enim fermentum ex, quis tincidunt ante dui pretium ex. Cras finibus metus non diam facilisis, non ornare purus bibendum. '),
  ('Jason Siu', 0, '12 Example St', NULL, 3103, 'Melbourne', 'Victoria', 'Australia', 'csiu0002@student.monash.edu', 1234567890, '2022-08-19', NULL, '2022-08-08 16:40:52', 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id orci at justo ultrices ornare. Donec fringilla nisi non condimentum auctor. Donec viverra dictum tortor, id aliquam nulla luctus vitae. Ut lobortis ligula nec accumsan lacinia. Morbi tincidunt est nulla, id fermentum erat condimentum ullamcorper. Aenean sit amet libero metus. Praesent tempus augue et arcu pellentesque posuere. Cras id vehicula tellus. Nam aliquam placerat sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris varius, risus quis gravida convallis, mauris enim fermentum ex, quis tincidunt ante dui pretium ex. Cras finibus metus non diam facilisis, non ornare purus bibendum. '),
  ('Karl Cheam', 0, '13 Example St', NULL, 3104, 'Melbourne', 'Victoria', 'Australia', 'kche0024@student.monash.edu', 1234567890, '2022-08-19', NULL, '2022-08-08 16:40:52', 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id orci at justo ultrices ornare. Donec fringilla nisi non condimentum auctor. Donec viverra dictum tortor, id aliquam nulla luctus vitae. Ut lobortis ligula nec accumsan lacinia. Morbi tincidunt est nulla, id fermentum erat condimentum ullamcorper. Aenean sit amet libero metus. Praesent tempus augue et arcu pellentesque posuere. Cras id vehicula tellus. Nam aliquam placerat sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris varius, risus quis gravida convallis, mauris enim fermentum ex, quis tincidunt ante dui pretium ex. Cras finibus metus non diam facilisis, non ornare purus bibendum. '),
  ('Huw Davies', 0, '14 Example St', NULL, 3105, 'Melbourne', 'Victoria', 'Australia', 'hdav0013@student.monash.edu', 1234567890, '2022-08-19', NULL, '2022-08-08 16:40:52', 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id orci at justo ultrices ornare. Donec fringilla nisi non condimentum auctor. Donec viverra dictum tortor, id aliquam nulla luctus vitae. Ut lobortis ligula nec accumsan lacinia. Morbi tincidunt est nulla, id fermentum erat condimentum ullamcorper. Aenean sit amet libero metus. Praesent tempus augue et arcu pellentesque posuere. Cras id vehicula tellus. Nam aliquam placerat sodales. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris varius, risus quis gravida convallis, mauris enim fermentum ex, quis tincidunt ante dui pretium ex. Cras finibus metus non diam facilisis, non ornare purus bibendum. ');

  INSERT INTO `contact_titles` (`title_name`) VALUES
  ('Mr'),
  ('Mrs'),
  ('Miss'),
  ('Ms'),
  ('Dr'),
  ('Sir'),
  ('Madam');

  INSERT INTO `invoice_stages` (`inv_stage_name`) VALUES
  ('Draft'),
  ('Posted'),
  ('Paid'),
  ('Cancelled');

  INSERT INTO `invoice_statuses` (`inv_status_name`) VALUES
  ('Not Sent'),
  ('Payment Requested'),
  ('Payment Received'),
  ('Receipt Sent');

  INSERT INTO `taxes` (`tax_name`, `tax_percentage`) VALUES
  ('GST', '10'),
  ('No GST', '0'),
  ('GST Incuded', '0');

  INSERT INTO `users` (`user_name`, `user_password`, `user_email`, `user_archived`) VALUES
  ('admin', 'admin', 'admin@activatingwellness.com.au', 0);



COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
