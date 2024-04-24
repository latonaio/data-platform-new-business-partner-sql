CREATE TABLE `data_platform_business_partner_general_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `BusinessPartnerType`             varchar(2) NOT NULL,
  `BusinessPartnerFullName`         varchar(200) DEFAULT NULL,
  `BusinessPartnerName`             varchar(100) NOT NULL,
  `Industry`                        varchar(200) DEFAULT NULL,
  `LegalEntityRegistration`         varchar(20) DEFAULT NULL,
  `Country`                         varchar(3) NOT NULL,
  `Language`                        varchar(2) NOT NULL,
  `Currency`                        varchar(5) DEFAULT NULL,
  `OrganizationBPName1`             varchar(100) DEFAULT NULL,
  `OrganizationBPName2`             varchar(100) DEFAULT NULL,
  `OrganizationBPName3`             varchar(100) DEFAULT NULL,
  `OrganizationBPName4`             varchar(100) DEFAULT NULL,
  `Tag1`                            varchar(40) DEFAULT NULL,
  `Tag2`                            varchar(40) DEFAULT NULL,
  `Tag3`                            varchar(40) DEFAULT NULL,
  `Tag4`                            varchar(40) DEFAULT NULL,
  `OrganizationFoundationDate`      date DEFAULT NULL,
  `OrganizationLiquidationDate`     date DEFAULT NULL,
  `BusinessPartnerBirthplaceName`   varchar(100) DEFAULT NULL,
  `BusinessPartnerDeathDate`        date DEFAULT NULL,
  `GroupBusinessPartnerName1`       varchar(100) DEFAULT NULL,
  `GroupBusinessPartnerName2`       varchar(100) DEFAULT NULL,
  `AddressID`                       int(12) NOT NULL,
  `BusinessPartnerIDByExtSystem`    varchar(20) DEFAULT NULL,
  `BusinessPartnerIsBlocked`        tinyint(1) DEFAULT NULL,
  `CertificateAuthorityChain`       varchar(2000) DEFAULT NULL,
  `UsageControlChain`               varchar(2000) DEFAULT NULL,
  `CreationDate`                    date NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerGeneralDataIndustry_fk` FOREIGN KEY (`Industry`) REFERENCES `data_platform_industry_industry_data` (`Industry`),
    CONSTRAINT `DPFMBusinessPartnerGeneralDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMBusinessPartnerGeneralDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DPFMBusinessPartnerGeneralDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DPFMBusinessPartnerGeneralDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
