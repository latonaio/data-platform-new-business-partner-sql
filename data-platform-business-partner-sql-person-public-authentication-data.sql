CREATE TABLE `data_platform_business_partner_person_public_authentication_data`
(
    `BusinessPartner`           int(12) NOT NULL,
    `Country`                   varchar(3) NOT NULL,
    `BusinessPartnerType`       varchar(2) NOT NULL,
    `PublicAuthIsConfirmed`     tinyint(1) NOT NULL,
    `PublicID`                  varchar(300) NOT NULL,
    `CreationDate`              date NOT NULL,
    `LastChangeDate`            date NOT NULL,
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Country`),

    CONSTRAINT `DPFMBusinessPartnerPersonPublicAuthData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessPartnerPersonPublicAuthDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
