CREATE TABLE `data_platform_business_partner_person_instagram_auth_data`
(
    `BusinessPartner`               int(12) NOT NULL,
    `BusinessPartnerType`           varchar(2) NOT NULL,
    `InstagramID`                   varchar(40) NOT NULL,
    `InstagramUserName`             varchar(100) NOT NULL,
    `InstagramHasProfilePricture`   tinyint(1) NOT NULL,
    `InstagramProfilePrictureURI`   varchar(200) DEFAULT NULL,
    `InstagramIsPrivate`            tinyint(1) NOT NULL,
    `InstagramIsPublished`          tinyint(1) NOT NULL,
    `InstagramIsAuthenticated`      tinyint(1) NOT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerPersonInstagramAuthData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
