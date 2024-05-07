CREATE TABLE `data_platform_business_partner_person_organization_data`
(
    `BusinessPartner`               int(12) NOT NULL,
    `BusinessPartnerType`           varchar(2) NOT NULL,
    `OrganizationBusinessPartner`   int(12) NOT NULL,
    `CreationDate`                  date NOT NULL,
    `LastChangeDate`                date NOT NULL,
    `IsMarkedForDeletion`           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusinessPartner`),

    CONSTRAINT `DPFMBPPersonOrganizationData_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBPPersonOrganizationDataOrganizationBP_fk` FOREIGN KEY (`OrganizationBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
