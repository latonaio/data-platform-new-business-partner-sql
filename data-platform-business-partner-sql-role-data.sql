CREATE TABLE `data_platform_business_partner_role_data`
(
    `BusinessPartner`       int(12) NOT NULL,
    `BusinessPartnerRole`   varchar(40) NOT NULL,
    `ValidityStartDate`     date NOT NULL,
    `ValidityEndDate`       date NOT NULL,
    `CreationDate`          date NOT NULL,
    `LastChangeDate`        date NOT NULL,
    `IsMarkedForDeletion`   tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `BusinessPartnerRole`),

    CONSTRAINT `DPFMBusinessPartnerRoleData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
