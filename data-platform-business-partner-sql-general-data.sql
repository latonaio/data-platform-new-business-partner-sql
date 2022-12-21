CREATE TABLE `data_platform_business_partner_general_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,
  `BusinessPartnerName`             varchar(100) NOT NULL,
  `CreationDate`                    date NOT NULL,
  `CreationTime`                    time DEFAULT NULL,
  `Industry`                        varchar(200) DEFAULT NULL,
  `LegalEntityRegistration`         varchar(20) DEFAULT NULL,  -- Peppol対応
  `Country`                         varchar(3) NOT NULL,
  `Language`                        varchar(2) NOT NULL,
  `Currency`                        varchar(5) NOT NULL,
  `LastChangeDate`                  date DEFAULT NULL,
  `LastChangeTime`                  time DEFAULT NULL,
  `OrganizationBPName1`             varchar(100) DEFAULT NULL,
  `OrganizationBPName2`             varchar(100) DEFAULT NULL,
  `OrganizationBPName3`             varchar(100) DEFAULT NULL,
  `OrganizationBPName4`             varchar(100) DEFAULT NULL,
  `BPTag1`                          varchar(40) DEFAULT NULL,
  `BPTag2`                          varchar(40) DEFAULT NULL,
  `BPTag3`                          varchar(40) DEFAULT NULL,
  `BPTag4`                          varchar(40) DEFAULT NULL,
  `OrganizationFoundationDate`      date DEFAULT NULL,
  `OrganizationLiquidationDate`     date DEFAULT NULL,
  `BusinessPartnerBirthplaceName`   varchar(100) DEFAULT NULL,
  `BusinessPartnerDeathDate`        date DEFAULT NULL,
  `BusinessPartnerIsBlocked`        tinyint(1) DEFAULT NULL,
  `GroupBusinessPartnerName1`       varchar(100) DEFAULT NULL,
  `GroupBusinessPartnerName2`       varchar(100) DEFAULT NULL,
  `AddressID`                       int(12) DEFAULT NULL,
  `BusinessPartnerIDByExtSystem`    varchar(20) DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DataPlatformBusinessPartnerGeneralDataIndustry_fk` FOREIGN KEY (`Industry`) REFERENCES `data_platform_industry_industry_data` (`Industry`),
    CONSTRAINT `DataPlatformBusinessPartnerGeneralDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DataPlatformBusinessPartnerGeneralDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DataPlatformBusinessPartnerGeneralDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformBusinessPartnerGeneralDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
