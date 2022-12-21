CREATE TABLE `data_platform_business_partner_supplier_tax_data`
(
    `BusinessPartner`                 int(12) NOT NULL,
    `Supplier`                        int(12) NOT NULL,
    `DepartureCountry`                varchar(3) NOT NULL,
    `TaxCategory`                     varchar(4) DEFAULT NULL,
    `BPTaxClassification`             varchar(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Supplier`, `DepartureCountry`),

    CONSTRAINT `DataPlatformBusinessPartnerSupplierTaxData_fk` FOREIGN KEY (`BusinessPartner`, `Supplier`) REFERENCES `data_platform_business_partner_supplier_data` (`BusinessPartner`, `Supplier`),
    CONSTRAINT `DataPlatformBusinessPartnerSupplierTaxDataDepartureCountry_fk` FOREIGN KEY (`DepartureCountry`) REFERENCES `data_platform_country_country_data` (`Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
