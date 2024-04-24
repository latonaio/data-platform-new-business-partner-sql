CREATE TABLE `data_platform_business_partner_person_mobile_phone_auth_data`
(
    `BusinessPartner`               int(12) NOT NULL,
    `BusinessPartnerType`           varchar(2) NOT NULL,
    `MobilePhoneNumber`             varchar(20) NOT NULL,
    `MobilePhoneIsAuthenticated`    tinyint(1) NOT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerPersonMobilePhoneAuthData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
