CREATE TABLE `data_platform_business_partner_customer_contact_data`
(
  `BusinessPartner`               int(12) NOT NULL,
  `Customer`                      int(12) NOT NULL,
  `ContactID`                     int(4) NOT NULL,
  `ContactPersonName`             varchar(100) DEFAULT NULL,
  `EmailAddress`                  varchar(200) DEFAULT NULL,
  `PhoneNumber`                   varchar(100) DEFAULT NULL,
  `MobilePhoneNumber`             varchar(100) DEFAULT NULL,
  `FaxNumber`                     varchar(100) DEFAULT NULL,
  `ContactTag1`                   varchar(40) DEFAULT NULL,
  `ContactTag2`                   varchar(40) DEFAULT NULL,
  `ContactTag3`                   varchar(40) DEFAULT NULL,
  `ContactTag4`                   varchar(40) DEFAULT NULL,
  `DefaultContact`                tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Customer`, `ContactID`),

  CONSTRAINT `DataPlatformBusinessPartnerCustomerContactData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
