CREATE TABLE `data_platform_business_partner_supplier_partner_plant_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `Supplier`                        int(12) NOT NULL,
  `PartnerCounter`                  int(3) NOT NULL,
  `PartnerFunction`                 varchar(40) NOT NULL,
  `PartnerFunctionBusinessPartner`  int(12) NOT NULL,
  `PlantCounter`                    int(3) NOT NULL,
  `Plant`                           varchar(4) DEFAULT NULL,
  `DefaultPlant`                    tinyint(1) DEFAULT NULL,
  `DefaultStockConfirmationPlant`   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,
  
  PRIMARY KEY (`BusinessPartner`, `Supplier`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`, `PlantCounter`),
  
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerPlantData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`) REFERENCES `data_platform_business_partner_supplier_partner_function_data` (`BusinessPartner`, `Supplier`, `PartnerCounter`, `PartnerFunction`, `PartnerFunctionBusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerSupplierPartnerPlantDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
