CREATE TABLE `data_platform_business_partner_accounting_data`
(
  `BusinessPartner`                 int(12) NOT NULL,
  `ChartOfAccounts`                 varchar(4) NOT NULL,
  `FiscalYearVariant`               varchar(4) NOT NULL,
  `CreationDate`                    date NOT NULL,
  `LastChangeDate`                  date NOT NULL,
  `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

  PRIMARY KEY (`BusinessPartner`),
  
  CONSTRAINT `DPFMBusinessPartnerAccountingData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
