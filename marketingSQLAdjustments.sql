-- --------------------------------------------------------

--
-- Table structure for table `marketing_contacts`
--

CREATE TABLE `marketing_contacts` (
  `m_id` int(10) UNSIGNED NOT NULL,
  `m_salutation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_mname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_desig` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_add1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_add2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_ctype` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `m_csource` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `m_subscription` varchar(255) NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_contact_numbers`
--

CREATE TABLE `marketing_contact_numbers` (
  `mno_id` int(10) UNSIGNED NOT NULL,
  `mno_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_emails`
--

CREATE TABLE `marketing_emails` (
  `mem_id` int(10) UNSIGNED NOT NULL,
  `mem_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



--
-- Table structure for table `csv_temp_data`
--

CREATE TABLE `csv_temp_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `csv_filename` text NOT NULL,
  `csv_header` text NOT NULL,
  `csv_data` text NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Indexes for table `marketing_contacts`
--
ALTER TABLE `marketing_contacts`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `marketing_contact_numbers`
--
ALTER TABLE `marketing_contact_numbers`
  ADD PRIMARY KEY (`mno_id`),
  ADD UNIQUE KEY `marketing_contact_numbers_mno_number_unique` (`mno_number`),
  ADD KEY `marketing_contact_numbers_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `marketing_emails`
--
ALTER TABLE `marketing_emails`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `marketing_emails_mem_email` (`mem_email`),
  ADD KEY `marketing_emails_owner_id_foreign` (`owner_id`);


--
-- Indexes for table `csv_temp_data`
--
ALTER TABLE `csv_temp_data`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `marketing_contacts`
--
ALTER TABLE `marketing_contacts`
  MODIFY `m_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `marketing_contact_numbers`
--
ALTER TABLE `marketing_contact_numbers`
  MODIFY `mno_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `marketing_emails`
--
ALTER TABLE `marketing_emails`
  MODIFY `mem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;



--
-- AUTO_INCREMENT for table `csv_temp_data`
--
ALTER TABLE `csv_temp_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
