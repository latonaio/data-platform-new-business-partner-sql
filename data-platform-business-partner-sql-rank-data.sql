CREATE TABLE `data_platform_business_partner_rank_data`
(
    `BusinessPartner`       int(12) NOT NULL,
    `Rank`                  varchar(5) NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `CreationDate`          date NOT NULL,
    `LastChangeDate`        date NOT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `Rank`),

    CONSTRAINT `DataPlatformBusinessPartnerRankData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
