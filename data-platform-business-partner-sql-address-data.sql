CREATE TABLE `data_platform_business_partner_address_data`
(
    `BusinessPartner`         int(12) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalSubRegion`          varchar(6) NOT NULL,
    `LocalRegion`             varchar(3) NOT NULL,
    `Country`                 varchar(3) NOT NULL,
    `GlobalRegion`            varchar(3) NOT NULL,
    `TimeZone`                varchar(3) NOT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    `XCoordinate`             float(20) DEFAULT NULL,
    `YCoordinate`             float(20) DEFAULT NULL,
    `ZCoordinate`             float(20) DEFAULT NULL,
    `Site`                    int(16) DEFAULT NULL,
    
    PRIMARY KEY (`BusinessPartner`, `AddressID`),
    
    CONSTRAINT `DPFMBusinessPartnerAddressData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataPostalCode_fk` FOREIGN KEY (`PostalCode`, `Country`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataLocalSubRegion_fk` FOREIGN KEY (`LocalSubRegion`, `LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataLocalRegion_fk` FOREIGN KEY (`LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_region_data` (`LocalRegion`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataCountry_fk` FOREIGN KEY (`Country`) REFERENCES `data_platform_country_country_data` (`Country`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataGlobalRegion_fk` FOREIGN KEY (`GlobalRegion`) REFERENCES `data_platform_global_region_global_region_data` (`GlobalRegion`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataTimeZone_fk` FOREIGN KEY (`TimeZone`) REFERENCES `data_platform_time_zone_time_zone_data` (`TimeZone`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataDistrict_fk` FOREIGN KEY (`District`, `Country`) REFERENCES `data_platform_district_district_data` (`District`, `Country`),
    CONSTRAINT `DPFMBusinessPartnerAddressDataSite_fk` FOREIGN KEY (`Site`) REFERENCES `data_platform_site_header_data` (`Site`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
