CREATE TABLE `data_platform_business_partner_accounting_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `ChartOfAccounts`                 varchar(4) DEFAULT NULL,
  `FiscalYearVariant`               varchar(4) DEFAULT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`),
  
  CONSTRAINT `DataPlatformBusinessPartnerAccountingData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
