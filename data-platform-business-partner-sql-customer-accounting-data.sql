CREATE TABLE `data_platform_business_partner_customer_accounting_data`
(
    `BusinessPartner`                 int(12) NOT NULL,
    `Customer`                        int(12) NOT NULL,
    `HouseBank`                       varchar(5) DEFAULT NULL,
    `HouseBankAccount`                varchar(5) DEFAULT NULL,
    `CustomerSupplierClearingIsUsed`  tinyint(1) DEFAULT NULL,
    `ReconciliationAccount`           varchar(10) DEFAULT NULL,
    `IsMarkedForDeletion`             tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Customer`),

    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Customer`) REFERENCES `data_platform_business_partner_customer_data` (`BusinessPartner`, `Customer`),
    CONSTRAINT `DataPlatformBusinessPartnerCustomerAccountingDataHouseBank_fk` FOREIGN KEY (`HouseBank`, `HouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
