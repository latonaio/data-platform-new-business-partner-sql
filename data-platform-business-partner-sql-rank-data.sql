CREATE TABLE `data_platform_business_partner_rank_data`
(
    `BusinessPartner`       int(12) NOT NULL,
    `RankType`              varchar(4) NOT NULL,
    `Rank`                  int(2) NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `CreationDate`          date NOT NULL,
    `LastChangeDate`        date NOT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `RankType`, `Rank`),

    CONSTRAINT `DPFMBusinessPartnerRankData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusinessPartnerRankDataRank_fk` FOREIGN KEY (`RankType`, `Rank`) REFERENCES `data_platform_rank_rank_data` (`RankType`, `Rank`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
