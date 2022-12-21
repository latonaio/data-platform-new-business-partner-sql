CREATE TABLE `data_platform_business_partner_supplier_accounting_data`
(
    `BusinessPartner`                   int(12) NOT NULL,
    `Supplier`                          int(12) NOT NULL,
    `HouseBank`                         varchar(5) DEFAULT NULL,
    `HouseBankAccount`                  varchar(5) DEFAULT NULL,
    `CustomerSupplierClearingIsUsed`    tinyint(1) DEFAULT NULL,
    `ReconciliationAccount`             varchar(10) DEFAULT NULL,
    `IsMarkedForDeletion`               tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Supplier`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierAccountingDataHouseBank_fk` FOREIGN KEY (`HouseBank`, `HouseBankAccount`) REFERENCES `data_platform_house_bank_house_bank_data` (`HouseBank`, `HouseBankAccount`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
