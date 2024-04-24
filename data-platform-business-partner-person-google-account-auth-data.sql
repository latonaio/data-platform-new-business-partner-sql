CREATE TABLE `data_platform_business_partner_person_google_account_auth_data`
(
    `BusinessPartner`               int(12) NOT NULL,
    `BusinessPartnerType`           varchar(2) NOT NULL,
    `EmailAddress`                  varchar(200) NOT NULL,
    `GoogleID`                      varchar(40) NOT NULL,
    `GoogleAccountIsAuthenticated`  tinyint(1) NOT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerPersonGoogleAccountAuthData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
