CREATE TABLE `data_platform_business_partner_customer_fin_inst_data`
(
  `BusinessPartner`           int(12) NOT NULL,
  `Customer`                  int(12) NOT NULL,
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
  `InternalFinInstCustomerID` int(10) DEFAULT NULL,
  `InternalFinInstAccountID`  int(10) DEFAULT NULL,
  `FinInstControlKey`         varchar(2) DEFAULT NULL,
  `FinInstAccountName`        varchar(40) DEFAULT NULL,
  `FinInstAccount`            varchar(18) DEFAULT NULL,
  `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`, `Customer`, `FinInstIdentification`, `ValidityEndDate`, `ValidityStartDate`),

  CONSTRAINT `DataPlatformBusinessPartnerCustomerFinInstData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),
  CONSTRAINT `DataPlatformBusinessPartnerCustomerFinInstDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
