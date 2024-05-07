CREATE TABLE `data_platform_business_partner_person_data`
(
    `BusinessPartner`           int(12) NOT NULL,
    `BusinessPartnerType`       varchar(2) NOT NULL,
    `FirstName`                 varchar(100) DEFAULT NULL,
    `LastName`                  varchar(100) DEFAULT NULL,
    `FullName`                  varchar(200) DEFAULT NULL,
    `MiddleName`                varchar(100) DEFAULT NULL,
    `NickName`                  varchar(40) NOT NULL,
    `Gender`                    varchar(1) NOT NULL,
    `Language`                  varchar(2) NOT NULL,
    `CorrespondenceLanguage`    varchar(2) DEFAULT NULL,
    `BirthDate`                 date DEFAULT NULL,
    `Nationality`               varchar(3) NOT NULL,
    `EmailAddress`              varchar(200) DEFAULT NULL,
    `MobilePhoneNumber`         varchar(20) DEFAULT NULL,
    `ProfileComment`            varchar(100) DEFAULT NULL,
    `PreferableLocalSubRegion`  varchar(6) NOT NULL,
    `PreferableLocalRegion`     varchar(6) NOT NULL,
    `PreferableCountry`         varchar(3) NOT NULL,
    `ActPurpose`                varchar(4) NOT NULL,
    `CreationDate`              date NOT NULL,
    `LastChangeDate`            date NOT NULL,
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerPersonData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessPartnerPersonDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DPFMBusinessPartnerPersonDataCorrespondenceLanguage_fk` FOREIGN KEY (`CorrespondenceLanguage`) REFERENCES `data_platform_language_language_data` (`Language`),
    CONSTRAINT `DPFMBusinessPartnerPersonDataNationality_fk` FOREIGN KEY (`Nationality`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMBusinessPartnerPersonDataLocalSubRegion_fk` FOREIGN KEY (`PreferableLocalSubRegion`, `PreferableLocalRegion`, `PreferableCountry`) REFERENCES `data_platform_local_sub_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerPersonDataActPurpose_fk` FOREIGN KEY (`ActPurpose`) REFERENCES `data_platform_act_purpose_act_purpose_data` (`ActPurpose`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
