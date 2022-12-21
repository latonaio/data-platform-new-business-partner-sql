CREATE TABLE `data_platform_business_partner_customer_partner_function_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Customer`                        int(12) NOT NULL,
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(40) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(12) DEFAULT NULL,
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  `CreationDate`                    date DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Customer`, `PartnerCounter`),

  CONSTRAINT `DPFMBPCustomerPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),  
  CONSTRAINT `DPFMBPCustomerPartnerFunctionDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
  CONSTRAINT `DPFMBPCustomerPartnerFunctionDataPartnerFunctionBP_fk` FOREIGN KEY (`PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
