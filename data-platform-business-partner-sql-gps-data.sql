CREATE TABLE `data_platform_business_partner_gps_data`
(
    `BusinessPartner`           int(12) NOT NULL,
    `BusinessPartnerType`       varchar(2) NOT NULL,
    `XCoordinate`               float(20) NOT NULL,
    `YCoordinate`               float(20) NOT NULL,
    `ZCoordinate`               float(20) NOT NULL,
    `LocalSubRegion`            varchar(6) NOT NULL,
    `LocalRegion`               varchar(3) NOT NULL,
    `Country`                   varchar(3) NOT NULL,
    `CreationDate`              date NOT NULL,
    `CreationTime`              time NOT NULL,
    `LastChangeDate`            date NOT NULL,
    `LastChangeTime`            time NOT NULL,
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerGPSData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessPartnerGPSDataLocalSubRegion_fk` FOREIGN KEY (`LocalSubRegion`, `LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerGPSDataLocalRegion_fk` FOREIGN KEY (`LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_region_data` (`LocalRegion`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerGPSDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
