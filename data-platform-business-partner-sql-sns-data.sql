CREATE TABLE `data_platform_business_partner_sns_data`
(
    `BusinessPartner`           int(12) NOT NULL,
    `BusinessPartnerType`       varchar(2) NOT NULL,
    `XURL`                      varchar(200) DEFAULT NULL,
    `InstagramURL`              varchar(200) DEFAULT NULL,
    `TikTokURL`                 varchar(200) DEFAULT NULL,
    `CreationDate`              date NOT NULL,
    `LastChangeDate`            date NOT NULL,
    `IsMarkedForDeletion`       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBusinessPartnerSNSData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
