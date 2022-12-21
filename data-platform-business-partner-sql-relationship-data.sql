CREATE TABLE `data_platform_business_partner_relationship_data`
(
    `BusinessPartner`                int(12) NOT NULL,
    `RelationshipNumber`             int(4) NOT NULL,
    `ValidityEndDate`                date NOT NULL,
    `ValidityStartDate`              date NOT NULL,
    `RelationshipCategory`           varchar(20) DEFAULT NULL,
    `RelationshipBusinessPartner`    int(12) DEFAULT NULL,
    `BusinessPartnerPerson`          varchar(100) DEFAULT NULL,
    `IsStandardRelationship`         tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`, `RelationshipNumber`, `ValidityEndDate`, `ValidityStartDate`),

    CONSTRAINT `DataPlatformBusinessPartnerRelationshipData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformBusinessPartnerRelationshipDataRelationshipBusinessPartner_fk` FOREIGN KEY (`RelationshipBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
