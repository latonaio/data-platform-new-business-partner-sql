CREATE TABLE `data_platform_business_partner_customer_partner_function_contact_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Customer`                        int(12) NOT NULL,
  `PartnerCounter`                  int(3) NOT NULL,
  `ContactID`                       int(4) NOT NULL,
  `PartnerFunction`                 varchar(40) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(12) DEFAULT NULL,
  `DefaultPartner`                  tinyint(1) DEFAULT NULL, 
  `ContactPersonName`               varchar(100) DEFAULT NULL,
  `EmailAddress`                    varchar(200) DEFAULT NULL,
  `PhoneNumber`                     varchar(100) DEFAULT NULL,
  `MobilePhoneNumber`               varchar(100) DEFAULT NULL,
  `FaxNumber`                       varchar(100) DEFAULT NULL,
  `ContactTag1`                     varchar(40) DEFAULT NULL,
  `ContactTag2`                     varchar(40) DEFAULT NULL,
  `ContactTag3`                     varchar(40) DEFAULT NULL,
  `ContactTag4`                     varchar(40) DEFAULT NULL,
  `DefaultContact`                  tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Customer`, `PartnerCounter`, `ContactID`),

  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionContactData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `DefaultPartner`) REFERENCES `data_platform_business_partner_customer_partner_function_data` (`BusinessPartner`, `Customer`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `DefaultPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
