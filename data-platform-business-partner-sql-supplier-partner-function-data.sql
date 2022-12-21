CREATE TABLE `data_platform_business_partner_supplier_partner_function_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Supplier`                        int(12) NOT NULL,
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(40) DEFAULT NULL,
  `PartnerFunctionBusinessPartner`  int(12) DEFAULT NULL,
  `DefaultPartner`                  tinyint(1) DEFAULT NULL,
  `CreationDate`                    date DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PartnerCounter`),

  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerFunctionData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerFunctionDataPartnerFunction_fk` FOREIGN KEY (`PartnerFunction`) REFERENCES `data_platform_partner_function_partner_function_data` (`PartnerFunction`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerPartnerFunctionDataPartnerFunctionBusinessPartner_fk` FOREIGN KEY (`PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
