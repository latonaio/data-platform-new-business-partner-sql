CREATE TABLE `data_platform_business_partner_general_fin_inst_data`
(
  `BusinessPartner`           int(12) NOT NULL,
  `FinInstIdentification`     int(4) NOT NULL,
  `ValidityEndDate`           date NOT NULL,
  `ValidityStartDate`         date NOT NULL,
  `FinInstCountry`            varchar(3) NOT NULL,
  `FinInstCode`               varchar(10) NOT NULL,
  `FinInstBranchCode`         varchar(10) NOT NULL,
  `FinInstFullCode`           varchar(15) NOT NULL,
  `FinInstName`               varchar(100) DEFAULT NULL,
  `FinInstBranchName`         varchar(100) DEFAULT NULL,
  `SWIFTCode`                 varchar(11) DEFAULT NULL,
  `InternalFinInstCustomerID` int(12) DEFAULT NULL,
  `InternalFinInstAccountID`  int(12) DEFAULT NULL,
  `FinInstControlKey`         varchar(2) DEFAULT NULL,
  `FinInstAccountName`        varchar(40) DEFAULT NULL,
  `FinInstAccount`            varchar(18) DEFAULT NULL,
  `HouseBank`                 varchar(5) DEFAULT NULL,
  `HouseBankAccount`          varchar(5) DEFAULT NULL,
  `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `FinInstIdentification`, `ValidityEndDate`, `ValidityStartDate`),

  CONSTRAINT `DataPlatformBusinessPartnerFinInstData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
  CONSTRAINT `DataPlatformBusinessPartnerFinInstDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_account_item_data` (`FinInstCountry`, `FinInstNumber`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`),
  CONSTRAINT `DataPlatformBusinessPartnerFinInstDataHouseBank_fk` FOREIGN KEY (`HouseBank`, `HouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
