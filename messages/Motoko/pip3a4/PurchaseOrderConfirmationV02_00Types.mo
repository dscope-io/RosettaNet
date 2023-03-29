module {
	public type ShippingServiceLevelTypeV01_01 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type SpecialFulfillmentRequestContentTypeV01_03 = {
		#AQM;
		#BIG;
		#BON;
		#BOO;
		#BOS;
		#COM;
		#CON;
		#CSD;
		#DNP;
		#DNS;
		#EIQ;
		#EPA;
		#FAS;
		#FIK;
		#GUS;
		#IIQ;
		#LPS;
		#LSA;
		#MAP;
		#MUD;
		#MYA;
		#NBO;
		#NOS;
		#NPS;
		#OQB;
		#OQM;
		#OUS;
		#PLS;
		#RAS;
		#REI;
		#RHB;
		#RIP;
		#RQP;
		#RUC;
		#RYI;
		#SA8;
		#SAI;
		#SAS;
		#SBA;
		#SBS;
		#SDS;
		#SFT;
		#SHC;
		#SIA;
		#SIP;
		#SMP;
		#SP1;
		#SP2;
		#SP3;
		#SP4;
		#SP5;
		#SP6;
		#SPR;
		#SPS;
		#SRA;
		#SRN;
		#URP;
		#WAR;
		#WHS;
	};

	public type SpecialFulfillmentRequestTypeV01_03 = {
		value : SpecialFulfillmentRequestContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type SpecialHandlingTypeV01_03 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type SpecialHandlingInstructionTypeV02_05 = {
		Text : ?Text;
		schemaVersion : ?Text;
		SpecialHandling : ?[SpecialHandlingTypeV01_03];

	};

	public type ShipmentTermsContentTypeV01_03 = {
		#ADC;
		#ADP;
		#CAA;
		#CAD;
		#CFC;
		#CFR;
		#CIF;
		#CIP;
		#COL;
		#CPT;
		#CRC;
		#CUP;
		#DAF;
		#DDP;
		#DDU;
		#DEQ;
		#DES;
		#EXW;
		#FAS;
		#FCA;
		#FOB;
		#LEC;
		#NOS;
		#PAE;
		#PCC;
		#PIU;
		#PRE;
		#PRS;
		#RFC;
		#RFF;
		#RFS;
		#TPP;
	};

	public type ShipmentTermsTypeV01_03 = {
		value : ShipmentTermsContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type CarrierInformationTypeV01_04 = {
		SCAC : Text;
		schemaVersion : ?Text;
		Identifier : ?Text;
	};

	public type FreeOnBoardContentTypeV01_01 = {
		#DES;
		#NMA;
		#ORG;
	};

	public type FreeOnBoardTypeV01_01 = {
		value : FreeOnBoardContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type OrderShippingInformationTypeV02_05 = {
		ShippingServiceLevel : ?ShippingServiceLevelTypeV01_01;
		PackList : ?Text;
		SpecialFulfillmentRequest : ?[SpecialFulfillmentRequestTypeV01_03];

		SpecialHandlingInstruction : ?SpecialHandlingInstructionTypeV02_05;
		ShipmentTerms : ?ShipmentTermsTypeV01_03;
		CarrierInformation : ?CarrierInformationTypeV01_04;
		schemaVersion : ?Text;
		FreeOnBoard : ?FreeOnBoardTypeV01_01;
	};

	public type AlternativeIdentifierTypeV01_03 = {
		Authority : Text;
		schemaVersion : ?Text;
		Identifier : Text;
	};

	public type PartnerIdentificationTypeV01_07 = {
		GLN : ?Text;
		PartnerName : ?Text;
		DUNS : ?Text;
		DUNSPlus4 : ?Text;
		AlternativeIdentifier : ?[AlternativeIdentifierTypeV01_03];

		schemaVersion : ?Text;
	};

	public type ContactInformationTypeV01_02 = {
		Fax : ?Text;
		Email : ?Text;
		Phone : ?Text;
		schemaVersion : ?Text;
		Identifier : ?Text;
		Contact : Text;
	};

	public type LocationTypeV01_03 = {
		GLN : ?Text;
		DUNS : ?Text;
		DUNSPlus4 : ?Text;
		AlternativeIdentifier : ?[AlternativeIdentifierTypeV01_03];

		schemaVersion : ?Text;
	};

	public type CountrySubdivisionTypeV01_02 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type CountryTypeV01_02 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type PhysicalAddressTypeV01_03 = {
		PostOfficeBox : ?Text;
		PostalCode : ?Text;
		CityName : Text;
		AddressLine1 : Text;
		AddressLine2 : ?Text;
		AddressLine3 : ?Text;
		AddressLine4 : ?Text;
		AddressLine5 : ?Text;
		CountrySubdivision : ?CountrySubdivisionTypeV01_02;
		schemaVersion : ?Text;
		Country : CountryTypeV01_02;
	};

	public type SpecifiedNewPartnerTypeV01_07 = {
		PartnerIdentification : [PartnerIdentificationTypeV01_07];
		ContactInformation : [ContactInformationTypeV01_02];
		Location : LocationTypeV01_03;
		schemaVersion : ?Text;
		PhysicalAddress : PhysicalAddressTypeV01_03;
	};

	public type SpecifiedFullPartnerTypeV01_07 = {
		PartnerIdentification : ?[PartnerIdentificationTypeV01_07];

		ContactInformation : ?[ContactInformationTypeV01_02];

		Location : ?LocationTypeV01_03;
		schemaVersion : ?Text;
		PhysicalAddress : ?PhysicalAddressTypeV01_03;
	};

	public type SpecifiedKnownPartnerTypeV01_07 = {
		PartnerIdentification : PartnerIdentificationTypeV01_07;
		schemaVersion : ?Text;
	};

	public type SpecifiedKnownPartnerContactTypeV01_07 = {
		SpecifiedKnownPartner : SpecifiedKnownPartnerTypeV01_07;
		ContactInformation : ?[ContactInformationTypeV01_02];

		schemaVersion : ?Text;
	};

	public type SpecifiedIntermittentPartnerTypeV01_07 = {
		ContactInformation : ContactInformationTypeV01_02;
		schemaVersion : ?Text;
		PhysicalAddress : PhysicalAddressTypeV01_03;
	};

	public type SpecifiedPartnerDescriptionTypeV01_07 = {
		SpecifiedNewPartner : ?SpecifiedNewPartnerTypeV01_07;
		SpecifiedFullPartner : ?SpecifiedFullPartnerTypeV01_07;
		SpecifiedKnownPartnerContact : ?SpecifiedKnownPartnerContactTypeV01_07;
		schemaVersion : ?Text;
		SpecifiedIntermittentPartner : ?SpecifiedIntermittentPartnerTypeV01_07;
	};

	public type TaxJurisdictionTypeV01_02 = {
		Rate : ?Float;
		Location : ?Text;
		schemaVersion : ?Text;
		Identifier : ?Text;
		Country : CountryTypeV01_02;
	};

	public type TaxTypeContentTypeV01_02 = {
		#FET;
		#STT;
	};

	public type TaxTypeTypeV01_02 = {
		value : TaxTypeContentTypeV01_02;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type CurrencyTypeV01_02 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type FinancialAmountTypeV01_02 = {
		Amount : ?Float;
		Currency : CurrencyTypeV01_02;
		schemaVersion : ?Text;
	};

	public type TaxAmountTypeV01_02 = {
		TaxJurisdiction : ?TaxJurisdictionTypeV01_02;
		TaxType : TaxTypeTypeV01_02;
		schemaVersion : ?Text;
		FinancialAmount : FinancialAmountTypeV01_02;
	};

	public type AmountTypeContentTypeV01_01 = {
		#DIS;
		#FRE;
		#INS;
		#MAT;
		#MIS;
		#PRC;
		#TOD;
		#TOT;
		#TOV;
		#UNI;
		#VAD;
	};

	public type AmountTypeTypeV01_01 = {
		value : AmountTypeContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type InvoiceChargeTypeContentTypeV01_01 = {
		#ALC;
		#CUC;
		#DEA;
		#FRC;
		#HAC;
		#QUD;
	};

	public type InvoiceChargeTypeTypeV01_01 = {
		value : InvoiceChargeTypeContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type MonetaryAmountTypeContentTypeV01_01 = {
		#CRE;
		#DEB;
		#ZER;
	};

	public type MonetaryAmountTypeTypeV01_01 = {
		value : MonetaryAmountTypeContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type MonetaryAmountTypeV01_04 = {
		AmountType : ?AmountTypeTypeV01_01;
		InvoiceChargeType : ?InvoiceChargeTypeTypeV01_01;
		schemaVersion : ?Text;
		MonetaryAmountType : ?MonetaryAmountTypeTypeV01_01;
		FinancialAmount : FinancialAmountTypeV01_02;
	};

	public type TaxSummaryTypeV02_00 = {
		TaxAmount : [TaxAmountTypeV01_02];
		TotalAmount : ?MonetaryAmountTypeV01_04;
		schemaVersion : ?Text;
	};

	public type ContractInformationTypeV02_05 = {
		Notes : ?Text;
		schemaVersion : ?Text;
		Identifier : Text;
	};

	public type GovernmentPriorityRatingContentTypeV01_03 = {
		#ATE;
		#DEF;
		#DOE;
		#ENP;
		#OTH;
	};

	public type GovernmentPriorityRatingTypeV01_03 = {
		value : GovernmentPriorityRatingContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type PurchaseOrderAcknowledgmentReasonContentTypeV01_03 = {
		#ACC;
		#ALA;
		#CNO;
		#CRH;
		#DAT;
		#DSN;
		#EXR;
		#IBI;
		#IBT;
		#IFC;
		#IGT;
		#IID;
		#INB;
		#INC;
		#INI;
		#INP;
		#IPL;
		#IPO;
		#IQR;
		#ISL;
		#ISN;
		#IST;
		#NAU;
		#OGT;
		#PAR;
		#PAS;
		#PEN;
		#PPO;
		#PRI;
		#PRS;
		#QTY;
		#RNC;
		#RNW;
		#SRL;
	};

	public type PurchaseOrderAcknowledgmentReasonTypeV01_03 = {
		value : PurchaseOrderAcknowledgmentReasonContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type ConfirmationTypeContentTypeV01_03 = {
		#AMC;
		#ANC;
		#APC;
		#APS;
		#ASC;
	};

	public type ConfirmationTypeTypeV01_03 = {
		value : ConfirmationTypeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type TaxExemptionCodeContentTypeV01_03 = {
		#AGR;
		#AQT;
		#BTL;
		#CPT;
		#CRT;
		#CSM;
		#DIS;
		#DIV;
		#DPI;
		#DRD;
		#EFE;
		#EFR;
		#EVD;
		#EVI;
		#EXC;
		#FAD;
		#FFE;
		#FTZ;
		#GND;
		#GST;
		#HOM;
		#ICT;
		#IET;
		#IFS;
		#IGC;
		#IMM;
		#ITA;
		#ITS;
		#LAE;
		#LFC;
		#LFV;
		#LOF;
		#LON;
		#LOS;
		#LPT;
		#MAE;
		#MFE;
		#MNE;
		#MPT;
		#NDF;
		#NE1;
		#NE2;
		#NFR;
		#NOH;
		#NOT;
		#NTL;
		#O65;
		#OLR;
		#OPA;
		#OPS;
		#OPT;
		#OSV;
		#OTZ;
		#PSL;
		#PST;
		#REE;
		#SEG;
		#SFD;
		#SPD;
		#SPT;
		#SRG;
		#TNT;
		#TOE;
		#TOS;
		#TPT;
		#USE;
		#USG;
		#WOF;
	};

	public type TaxExemptionCodeTypeV01_03 = {
		value : TaxExemptionCodeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type TaxExemptionTypeV02_05 = {
		CertificationIdentifier : ?Text;
		Mode : ?Text;
		TaxExemptionCode : TaxExemptionCodeTypeV01_03;
		schemaVersion : ?Text;
	};

	public type TaxExemptStatusTypeV02_05 = {
		IsTaxExempt : ?Bool;
		schemaVersion : ?Text;
		TaxExemption : ?TaxExemptionTypeV02_05;
	};

	public type PurchaseOrderFillPriorityContentTypeV01_03 = {
		#HIG;
		#LOW;
		#MED;
		#PR1;
		#PR2;
		#PR3;
		#PR4;
		#PR5;
		#PR6;
		#PR7;
		#PR8;
		#PR9;
	};

	public type PurchaseOrderFillPriorityTypeV01_03 = {
		value : PurchaseOrderFillPriorityContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type FinanceTermsContentTypeV01_03 = {
		#BDO;
		#BNK;
		#CDC;
		#CSM;
		#EPS;
		#IKP;
		#LOC;
		#LSA;
		#MDT;
		#NMI;
		#PBC;
		#PCC;
		#PPC;
		#PPW;
		#PVC;
		#PVN;
		#TET;
		#WRT;
		#WVD;
	};

	public type FinanceTermsTypeV01_03 = {
		value : FinanceTermsContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type PaymentConditionContentTypeV01_03 = {
		#ACC;
		#CON;
		#REG;
		#REI;
		#SHI;
	};

	public type PaymentConditionTypeV01_03 = {
		value : PaymentConditionContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type NetTermsTypeV02_05 = {
		Day : ?Int;
		Days : ?Int;
		schemaVersion : ?Text;
	};

	public type DiscountsTypeV02_05 = {
		Day : ?Int;
		Days : ?Int;
		Percent : ?Float;
		schemaVersion : ?Text;
	};

	public type PaymentTermsTypeV02_05 = {
		PaymentCondition : ?PaymentConditionTypeV01_03;
		schemaVersion : ?Text;
		NetTerms : NetTermsTypeV02_05;
		PercentDue : ?Float;
		Discounts : ?[DiscountsTypeV02_05];

	};

	public type FinancingTermsTypeV02_05 = {
		FinanceTerms : ?FinanceTermsTypeV01_03;
		PaymentTerms : ?[PaymentTermsTypeV02_05];

		schemaVersion : ?Text;
	};

	public type DatePeriodTypeV01_03 = {
		End : Int;
		Begin : Int;
		schemaVersion : ?Text;
	};

	public type Duration = {
		#seconds : Nat;
		#nanoseconds : Nat;
	};

	public type DurationTypeV01_04 = {
		Period : Duration;
		StartDate : ?Int;
		schemaVersion : ?Text;
	};

	public type DatePeriodAndDurationTypeV01_04 = {
		schemaVersion : ?Text;
		DatePeriod : ?DatePeriodTypeV01_03;
		Duration : ?DurationTypeV01_04;
	};

	public type ProductIdentificationTypeV01_03 = {
		GTIN : ?Text;
		ProductName : ?Text;
		AlternativeIdentifier : ?[AlternativeIdentifierTypeV01_03];

		Revision : ?Text;
		schemaVersion : ?Text;
	};

	public type DocumentTypeContentTypeV01_04 = {
		#CBN;
		#CCN;
		#CFA;
		#CIN;
		#CNM;
		#CON;
		#COT;
		#CRN;
		#DEM;
		#DEN;
		#DIN;
		#DRN;
		#FUO;
		#INV;
		#LID;
		#MEN;
		#MID;
		#MON;
		#OCL;
		#OPO;
		#OPR;
		#PFA;
		#PII;
		#PLS;
		#POI;
		#PON;
		#POO;
		#PRC;
		#PSI;
		#PUO;
		#QUO;
		#REC;
		#REO;
		#REQ;
		#RMA;
		#RPO;
		#SAO;
		#SBC;
		#SBD;
		#SBI;
		#SBN;
		#SCA;
		#SEN;
		#SEO;
		#SHD;
		#SNC;
		#SPC;
		#SPN;
		#SPO;
		#SPR;
		#SPW;
		#SRI;
		#TRO;
		#WAB;
		#WAC;
		#WOO;
	};

	public type DocumentTypeTypeV01_04 = {
		value : DocumentTypeContentTypeV01_04;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type BusinessDocumentReferenceTypeV01_03 = {
		Line : ?Text;
		Revision : ?Text;
		DateTime : ?Int;
		schemaVersion : ?Text;
		Identifier : Text;
		DocumentType : DocumentTypeTypeV01_04;
		SubLine : ?Text;
	};

	public type OrderQuantityTypeV02_05 = {
		ScheduledShipQuantity : ?Float;
		RequestedQuantity : ?Float;
		schemaVersion : ?Text;
	};

	public type PricingTypeCodeContentTypeV01_02 = {
		#ACR;
		#ACS;
		#ACT;
		#ANY;
		#ARS;
		#ASP;
		#BPP;
		#BSH;
		#CAT;
		#CMC;
		#CMD;
		#CMF;
		#CON;
		#COS;
		#DBC;
		#DFR;
		#DIS;
		#DPD;
		#DTP;
		#EDU;
		#ERT;
		#EXC;
		#FGM;
		#GEN;
		#HIE;
		#LCL;
		#LGM;
		#LIS;
		#MPR;
		#MRP;
		#MSR;
		#MUS;
		#NPF;
		#OEM;
		#OVP;
		#PED;
		#QUO;
		#RCS;
		#RFB;
		#RIN;
		#RSP;
		#SCE;
		#SEC;
		#SED;
		#SEV;
		#SGM;
		#SPD;
		#SPE;
		#SPL;
		#SRP;
		#STR;
		#THP;
		#TOC;
	};

	public type PricingTypeCodeTypeV01_02 = {
		value : PricingTypeCodeContentTypeV01_02;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type ProductPricingTypeV01_04 = {
		MonetaryAmount : MonetaryAmountTypeV01_04;
		PricingTypeCode : PricingTypeCodeTypeV01_02;
		schemaVersion : ?Text;
	};

	public type PurchaseOrderTypeContentTypeV01_04 = {
		#ADD;
		#BLA;
		#CCO;
		#COO;
		#DCO;
		#DNS;
		#DSO;
		#ERS;
		#ESD;
		#EVA;
		#EXO;
		#FUL;
		#GOV;
		#NCO;
		#NON;
		#PAP;
		#PRD;
		#QUO;
		#RCO;
		#REP;
		#RPD;
		#RPN;
		#RWK;
		#SAM;
		#SIT;
		#SSO;
		#STD;
		#SVC;
		#UCO;
		#WDW;
		#WRM;
		#WRP;
	};

	public type PurchaseOrderTypeTypeV01_04 = {
		value : PurchaseOrderTypeContentTypeV01_04;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type SpecialDiscountTypeV02_05 = {
		DiscountedPrice : ?ProductPricingTypeV01_04;
		schemaVersion : ?Text;
		Identifier : Text;
		Percentage : ?Float;
	};

	public type PurchaseOrderStatusContentTypeV01_03 = {
		#ACC;
		#PEN;
		#REJ;
	};

	public type PurchaseOrderStatusTypeV01_03 = {
		value : PurchaseOrderStatusContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type ServiceLineItemTypeV02_00 = {
		ServiceIdentification : ?[Text];

		ServicePeriod : ?DatePeriodAndDurationTypeV01_04;
		ContractInformation : ?ContractInformationTypeV02_05;
		ProductIdentification : ?ProductIdentificationTypeV01_03;
		PurchaseOrderReference : BusinessDocumentReferenceTypeV01_03;
		PurchaseOrderAcknowledgmentReason : ?[PurchaseOrderAcknowledgmentReasonTypeV01_03];

		HandlingInstruction : ?Text;
		ServiceOrderQuantity : ?OrderQuantityTypeV02_05;
		ProductLineNumber : ?Text;
		LineNumber : Text;
		ProductSerialIdentifier : ?[Text];

		ListPrice : ?ProductPricingTypeV01_04;
		ResponseDescription : ?Text;
		PurchaseOrderType : PurchaseOrderTypeTypeV01_04;
		SpecialDiscount : ?[SpecialDiscountTypeV02_05];

		ProductOrderQuantity : ?OrderQuantityTypeV02_05;
		schemaVersion : ?Text;
		OrderPricing : [ProductPricingTypeV01_04];
		BusinessDocumentReference : ?[BusinessDocumentReferenceTypeV01_03];

		InstallAt : ?SpecifiedPartnerDescriptionTypeV01_07;
		ServiceLevel : Text;
		PurchaseOrderStatus : PurchaseOrderStatusTypeV01_03;
	};

	public type UnitOfMeasureTypeV01_02 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type ShippedQuantityInformationTypeV02_05 = {
		DateTime : Int;
		schemaVersion : ?Text;
		BusinessDocumentReference : ?[BusinessDocumentReferenceTypeV01_03];

		ShippedQuantity : ?Float;
	};

	public type ProcessRoleIdentifierContentTypeV01_04 = {
		#ADM;
		#ALT;
		#APP;
		#BIF;
		#BIT;
		#CBK;
		#CLM;
		#CNC;
		#COR;
		#COW;
		#CRA;
		#CRE;
		#DCT;
		#DIS;
		#DST;
		#FIN;
		#FOR;
		#INL;
		#INO;
		#ITF;
		#ITT;
		#MFG;
		#OWN;
		#PUR;
		#REA;
		#REC;
		#REQ;
		#RES;
		#RET;
		#REV;
		#RLS;
		#RTT;
		#SBF;
		#SBT;
		#SCP;
		#SHF;
		#SHT;
		#SLD;
		#SOB;
		#SPL;
		#SRT;
		#STR;
		#SVA;
		#TFR;
		#TRA;
		#TTR;
		#ULR;
		#USE;
		#UST;
	};

	public type ProcessRoleIdentifierTypeV01_04 = {
		value : ProcessRoleIdentifierContentTypeV01_04;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type NewPartnerTypeV01_07 = {
		PartnerIdentification : [PartnerIdentificationTypeV01_07];
		ProcessRoleIdentifier : ProcessRoleIdentifierTypeV01_04;
		ContactInformation : [ContactInformationTypeV01_02];
		Location : LocationTypeV01_03;
		schemaVersion : ?Text;
		PhysicalAddress : PhysicalAddressTypeV01_03;
	};

	public type IntermittentPartnerTypeV01_07 = {
		ProcessRoleIdentifier : ProcessRoleIdentifierTypeV01_04;
		ContactInformation : ContactInformationTypeV01_02;
		schemaVersion : ?Text;
		PhysicalAddress : PhysicalAddressTypeV01_03;
	};

	public type KnownPartnerTypeV01_07 = {
		PartnerIdentification : PartnerIdentificationTypeV01_07;
		ProcessRoleIdentifier : ProcessRoleIdentifierTypeV01_04;
		schemaVersion : ?Text;
	};

	public type KnownPartnerContactTypeV01_07 = {
		KnownPartner : KnownPartnerTypeV01_07;
		ContactInformation : ?[ContactInformationTypeV01_02];

		schemaVersion : ?Text;
	};

	public type FullPartnerTypeV01_07 = {
		PartnerIdentification : ?[PartnerIdentificationTypeV01_07];

		ProcessRoleIdentifier : ProcessRoleIdentifierTypeV01_04;
		ContactInformation : ?[ContactInformationTypeV01_02];

		Location : ?LocationTypeV01_03;
		schemaVersion : ?Text;
		PhysicalAddress : ?PhysicalAddressTypeV01_03;
	};

	public type PartnerDescriptionTypeV01_07 = {
		NewPartner : ?NewPartnerTypeV01_07;
		IntermittentPartner : ?IntermittentPartnerTypeV01_07;
		schemaVersion : ?Text;
		KnownPartnerContact : ?KnownPartnerContactTypeV01_07;
		FullPartner : ?FullPartnerTypeV01_07;
	};

	public type CustomerTypeContentTypeV01_03 = {
		#ENC;
		#ULC;
	};

	public type CustomerTypeTypeV01_03 = {
		value : CustomerTypeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type CustomerInformationTypeV02_05 = {
		PartnerDescription : PartnerDescriptionTypeV01_07;
		schemaVersion : ?Text;
		CustomerType : CustomerTypeTypeV01_03;
		ProjectIdentifier : ?Text;
	};

	public type DateTimePeriodTypeV01_03 = {
		End : Int;
		Begin : Int;
		schemaVersion : ?Text;
	};

	public type TransportEventContentTypeV01_03 = {
		#DOC;
		#PIC;
		#SHP;
	};

	public type TransportEventTypeV01_03 = {
		value : TransportEventContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type TransportationEventTypeV02_05 = {
		DateTimePeriod : ?DateTimePeriodTypeV01_03;
		TransportEvent : TransportEventTypeV01_03;
		schemaVersion : ?Text;
	};

	public type ProductSubLineItemTypeV02_00 = {
		OrderShippingInformation : ?OrderShippingInformationTypeV02_05;
		BuyerSubLineItem : ?Text;
		RequestedShipFrom : ?[LocationTypeV01_03];

		ContractInformation : ?[ContractInformationTypeV02_05];

		ShipToPartnerSubLine : ?SpecifiedNewPartnerTypeV01_07;
		PurchaseOrderAcknowledgmentReason : ?[PurchaseOrderAcknowledgmentReasonTypeV01_03];

		PurchaseOrderFillPriority : ?PurchaseOrderFillPriorityTypeV01_03;
		UnitOfMeasure : UnitOfMeasureTypeV01_02;
		ShippedQuantityInformation : ?[ShippedQuantityInformationTypeV02_05];

		IsDropShip : ?Bool;
		UnitPrice : ?MonetaryAmountTypeV01_04;
		OrderQuantity : OrderQuantityTypeV02_05;
		Information : ?Text;
		CustomerInformation : ?[CustomerInformationTypeV02_05];

		Comments : ?Text;
		ResponseDescription : ?Text;
		InstallAtSubLine : ?SpecifiedKnownPartnerContactTypeV01_07;
		SpecialDiscount : ?[SpecialDiscountTypeV02_05];

		ExpediteReferenceIdentifier : ?Text;
		schemaVersion : ?Text;
		RequestedEvent : TransportationEventTypeV02_05;
		Identifier : ?[Text];

		SubLineItem : Text;
		CountryOfOrigin : ?CountryTypeV01_02;
		PurchaseOrderStatus : PurchaseOrderStatusTypeV01_03;
	};

	public type ProductSubstitutionReasonContentTypeV01_03 = {
		#BEP;
		#CMP;
		#DWN;
		#IPN;
		#PRE;
		#QRH;
		#REP;
		#RPL;
		#SCC;
	};

	public type ProductSubstitutionReasonTypeV01_03 = {
		value : ProductSubstitutionReasonContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type SubstituteProductReferenceTypeV02_05 = {
		ProductIdentification : [ProductIdentificationTypeV01_03];
		ProductSubstitutionReason : ProductSubstitutionReasonTypeV01_03;
		schemaVersion : ?Text;
	};

	public type ProductLineItemTypeV02_00 = {
		OrderShippingInformation : ?OrderShippingInformationTypeV02_05;
		RequestedShipFrom : ?[LocationTypeV01_03];

		ShipFrom : ?[SpecifiedPartnerDescriptionTypeV01_07];

		BuyerLineItem : Text;
		TaxSummary : ?TaxSummaryTypeV02_00;
		ProductSubLineItem : ?[ProductSubLineItemTypeV02_00];

		ContractInformation : ?[ContractInformationTypeV02_05];

		ProductIdentification : ProductIdentificationTypeV01_03;
		PurchaseOrderAcknowledgmentReason : ?[PurchaseOrderAcknowledgmentReasonTypeV01_03];

		TaxExemptStatus : ?TaxExemptStatusTypeV02_05;
		PurchaseOrderFillPriority : ?PurchaseOrderFillPriorityTypeV01_03;
		UnitOfMeasure : UnitOfMeasureTypeV01_02;
		ShipTo : ?SpecifiedPartnerDescriptionTypeV01_07;
		ShippedQuantityInformation : ?[ShippedQuantityInformationTypeV02_05];

		IsDropShip : ?Bool;
		UnitPrice : ?MonetaryAmountTypeV01_04;
		LineNumber : Text;
		OrderQuantity : OrderQuantityTypeV02_05;
		Information : ?Text;
		ListPrice : ?ProductPricingTypeV01_04;
		TotalLineItemAmount : ?MonetaryAmountTypeV01_04;
		CustomerInformation : ?[CustomerInformationTypeV02_05];

		Comments : ?Text;
		ResponseDescription : ?Text;
		SpecialDiscount : ?[SpecialDiscountTypeV02_05];

		ExpediteReferenceIdentifier : ?Text;
		SubstituteProductReference : ?[SubstituteProductReferenceTypeV02_05];

		ScheduledEvent : ?TransportationEventTypeV02_05;
		schemaVersion : ?Text;
		RequestedEvent : TransportationEventTypeV02_05;
		Identifier : ?[Text];

		BusinessDocumentReference : ?[BusinessDocumentReferenceTypeV01_03];

		RequestedUnitPrice : ?MonetaryAmountTypeV01_04;
		CountryOfOrigin : ?CountryTypeV01_02;
		InstallAtPartnerLine : ?SpecifiedNewPartnerTypeV01_07;
		PurchaseOrderStatus : PurchaseOrderStatusTypeV01_03;
	};

	public type RequestOptionContentTypeV01_01 = {
		#CON;
		#PRO;
		#SIT;
		#WQO;
	};

	public type RequestOptionTypeV01_01 = {
		value : RequestOptionContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type ServiceLineItemByOptionTypeV02_00 = {
		ServiceIdentification : ?[Text];

		ServicePeriod : ?DatePeriodAndDurationTypeV01_04;
		ExpiringBy : ?DatePeriodAndDurationTypeV01_04;
		ContractInformation : ?ContractInformationTypeV02_05;
		RequestOption : RequestOptionTypeV01_01;
		ProductIdentification : ?ProductIdentificationTypeV01_03;
		PurchaseOrderReference : BusinessDocumentReferenceTypeV01_03;
		PurchaseOrderAcknowledgmentReason : ?[PurchaseOrderAcknowledgmentReasonTypeV01_03];

		HandlingInstruction : ?Text;
		ServiceOrderQuantity : OrderQuantityTypeV02_05;
		ProductLineNumber : ?Text;
		LineNumber : Text;
		ProductSerialIdentifier : ?[Text];

		ListPrice : ?ProductPricingTypeV01_04;
		ResponseDescription : ?Text;
		PurchaseOrderType : PurchaseOrderTypeTypeV01_04;
		SpecialDiscount : ?[SpecialDiscountTypeV02_05];

		ProductOrderQuantity : ?OrderQuantityTypeV02_05;
		schemaVersion : ?Text;
		OrderPricing : [ProductPricingTypeV01_04];
		BusinessDocumentReference : ?[BusinessDocumentReferenceTypeV01_03];

		InstallAt : ?SpecifiedPartnerDescriptionTypeV01_07;
		ServiceLevel : ?Text;
		PurchaseOrderStatus : PurchaseOrderStatusTypeV01_03;
	};

	public type OrderLineItemTypeV02_00 = {
		ServiceLineItem : ?ServiceLineItemTypeV02_00;
		ProductLineItem : ?ProductLineItemTypeV02_00;
		ServiceLineItemByOption : ?ServiceLineItemByOptionTypeV02_00;
		schemaVersion : ?Text;
	};

	public type SecondaryBuyerTypeV02_05 = {
		PartnerDescription : PartnerDescriptionTypeV01_07;
		schemaVersion : ?Text;
		Identifier : ?Text;
	};

	public type CreditCardClassificationContentTypeV01_03 = {
		#AMX;
		#DIS;
		#EUC;
		#JCU;
		#MAC;
		#PRO;
		#VIS;
	};

	public type CreditCardClassificationTypeV01_03 = {
		value : CreditCardClassificationContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type CreditCardTypeV02_05 = {
		CardHolderName : Text;
		ExpiryDate : Int;
		CidIdentifier : ?Text;
		schemaVersion : ?Text;
		Identifier : Text;
		CreditCardClassification : CreditCardClassificationTypeV01_03;
	};

	public type PaymentMethodContentTypeV01_01 = {
		#BAD;
		#CRC;
		#DBT;
		#DWO;
		#LAP;
		#LOC;
		#MOD;
		#MOR;
		#NPR;
		#OTH;
		#PAM;
		#PAN;
		#PAS;
		#PBC;
		#PBS;
		#PCC;
		#PIK;
		#PME;
		#PMI;
		#PMN;
		#PPC;
		#PPW;
		#PWT;
		#PYN;
		#TGT;
		#TOF;
	};

	public type PaymentMethodTypeV01_01 = {
		value : PaymentMethodContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type AccountClassificationContentTypeV01_03 = {
		#CHK;
		#CRC;
		#SAV;
	};

	public type AccountClassificationTypeV01_03 = {
		value : AccountClassificationContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type AccountDescriptionTypeV02_05 = {
		AccountNumber : ?Text;
		CreditCard : ?CreditCardTypeV02_05;
		PrePaymentCheckNumber : ?Text;
		PartnerDescription : ?[PartnerDescriptionTypeV01_07];

		WireTransferIdentifier : ?Text;
		PaymentMethod : ?PaymentMethodTypeV01_01;
		AccountName : ?Text;
		AccountClassification : ?AccountClassificationTypeV01_03;
		schemaVersion : ?Text;
	};

	public type PurchaseOrderTypeV02_00 = {
		OrderShippingInformation : ?OrderShippingInformationTypeV02_05;
		ShipFrom : ?[SpecifiedPartnerDescriptionTypeV01_07];

		BillTo : ?SpecifiedPartnerDescriptionTypeV01_07;
		ContractOwner : ?SpecifiedPartnerDescriptionTypeV01_07;
		TaxSummary : ?TaxSummaryTypeV02_00;
		ContractInformation : ?[ContractInformationTypeV02_05];

		GovernmentPriorityRating : ?GovernmentPriorityRatingTypeV01_03;
		PurchaseOrderAcknowledgmentReason : ?[PurchaseOrderAcknowledgmentReasonTypeV01_03];

		ConfirmationType : ?ConfirmationTypeTypeV01_03;
		TaxExemptStatus : ?TaxExemptStatusTypeV02_05;
		PurchaseOrderFillPriority : ?PurchaseOrderFillPriorityTypeV01_03;
		FinancingTerms : ?[FinancingTermsTypeV02_05];

		OrderLineItem : [OrderLineItemTypeV02_00];
		ShipTo : ?SpecifiedPartnerDescriptionTypeV01_07;
		GovernmentContractIdentifier : ?BusinessDocumentReferenceTypeV01_03;
		IsDropShip : ?Bool;
		Information : ?Text;
		TotalAmount : ?MonetaryAmountTypeV01_04;
		ListPrice : ?ProductPricingTypeV01_04;
		Comments : ?Text;
		ResponseDescription : ?Text;
		PurchaseOrderType : [PurchaseOrderTypeTypeV01_04];
		SpecialDiscount : ?[SpecialDiscountTypeV02_05];

		ScheduledEvent : ?TransportationEventTypeV02_05;
		Location : ?[LocationTypeV01_03];

		schemaVersion : ?Text;
		RequestedEvent : ?TransportationEventTypeV02_05;
		BusinessDocumentReference : ?[BusinessDocumentReferenceTypeV01_03];

		RespondTo : ?[SpecifiedPartnerDescriptionTypeV01_07];

		SecondaryBuyer : ?SecondaryBuyerTypeV02_05;
		InstallAt : ?SpecifiedPartnerDescriptionTypeV01_07;
		AccountDescription : ?AccountDescriptionTypeV02_05;
		PurchaseOrderStatus : PurchaseOrderStatusTypeV01_03;
	};

	public type MimeTypeQualifierContentTypeV01_02 = {
		#application_vnd_shana_informed_formdata;
		#application_vnd_uplanet_alert_wbxml;
		#application_vnd_wap_wbxml;
		#image_vnd_fastbidsheet;
		#audio_vnd_cns_anp1;
		#application_hyperstudio;
		#text_sgml;
		#text_t140;
		#application_mathematica;
		#application_pgp_signature;
		#application_pkix_cert;
		#application_vnd_uplanet_list_wbxml;
		#audio_mpeg;
		#application_cnrp_xml;
		#application_vnd_kde_kformula;
		#application_vnd_trueapp;
		#application_vnd_truedoc;
		#audio_vnd_cns_inf1;
		#application_x400_bp;
		#application_vnd_wrq_hp3000_labelled;
		#application_commonground;
		#application_vnd_fujixerox_docuworks;
		#application_vnd_llamagraphics_life_balance_desktop;
		#audio_tone;
		#application_vnd_pg_format;
		#application_vnd_uplanet_bearer_choice_wbxml;
		#application_prs_alvestrand_titrax_sheet;
		#application_riscos;
		#image_tiff_fx;
		#audio_vnd_nortel_vbk;
		#application_vnd_ecowin_chart;
		#application_vnd_uplanet_cacheop;
		#application_atomicmail;
		#application_vnd_visio;
		#application_dicom;
		#text_enriched;
		#application_vnd_japannet_directory_service;
		#audio_vnd_3gpp_iufp;
		#application_vnd_powerbuilder6_s;
		#application_vnd_powerbuilder7_s;
		#application_vnd_ms_powerpoint;
		#application_vnd_motorola_flexsuite_gotap;
		#application_vnd_epson_quickanime;
		#audio_vnd_digital_winds;
		#application_timestamp_reply;
		#audio_vnd_vmx_cvsd;
		#application_vnd_liberty_request_xml;
		#application_vnd_sss_cod;
		#application_vnd_sss_dtf;
		#application_vnd_sss_ntf;
		#application_vnd_kde_kivio;
		#application_vnd_japannet_verification;
		#application_vnd_uplanet_list;
		#application_xml_external_parsed_entity;
		#application_vnd_street_stream;
		#application_vnd_ibm_modcap;
		#message_disposition_notification;
		#application_dec_dx;
		#application_vnd_aether_imp;
		#application_vnd_powerbuilder75_s;
		#message_rfc822;
		#application_vnd_uplanet_alert;
		#application_vnd_vividence_scriptfile;
		#application_vnd_uplanet_bearer_choice;
		#application_index_response;
		#application_vnd_japannet_setstore_wakeup;
		#application_vnd_japannet_registration_wakeup;
		#application_vnd_kde_kword;
		#application_beep_xml;
		#image_vnd_fujixerox_edmics_mmr;
		#image_vnd_fujixerox_edmics_rlc;
		#multipart_report;
		#application_vnd_powerbuilder6;
		#application_vnd_powerbuilder7;
		#application_news_message_id;
		#image_vnd_net_fpx;
		#application_vnd_triscape_mxs;
		#video_CelB;
		#application_vnd_dreamfactory;
		#application_set_registration;
		#application_vnd_shana_informed_interchange;
		#multipart_alternative;
		#application_vnd_cups_postscript;
		#model_vnd_parasolid_transmit_text;
		#video_H261;
		#video_H263;
		#message_sipfrag;
		#application_vnd_ms_works;
		#application_vnd_acucobol;
		#video_JPEG;
		#application_wordperfect5_1;
		#video_MP1S;
		#video_MP2P;
		#video_MP2T;
		#model_vnd_flatland_3dml;
		#application_vnd_lotus_approach;
		#audio_vnd_rhetorex_32kadpcm;
		#text_xml_external_parsed_entity;
		#application_vnd_lotus_freelance;
		#application_vnd_japannet_payment_wakeup;
		#audio_AMR_WB;
		#image_cgm;
		#image_gif;
		#image_ief;
		#image_png;
		#image_t38;
		#multipart_encrypted;
		#application_vnd_s3sms;
		#image_vnd_dwg;
		#image_vnd_dxf;
		#image_vnd_fpx;
		#image_vnd_fst;
		#image_vnd_mix;
		#image_vnd_svf;
		#application_vnd_epson_esf;
		#application_vnd_epson_msf;
		#application_vnd_epson_ssf;
		#model_vnd_gs_gdl;
		#application_vnd_kde_kpresenter;
		#application_vnd_blueice_multipass;
		#audio_vnd_qcelp;
		#application_prs_cww;
		#application_andrew_inset;
		#application_vnd_fujitsu_oasysgp;
		#application_vnd_hp_PCL;
		#application_vnd_hp_hps;
		#model_iges;
		#image_vnd_globalgraphics_pgb;
		#application_vnd_intertrust_nncp;
		#application_pgp_keys;
		#audio_32kadpcm;
		#model_mesh;
		#application_vnd_ecowin_seriesrequest;
		#application_vnd_meridian_slingshot;
		#video_vnd_mpegurl;
		#application_vnd_ecowin_series;
		#text_vnd_motorola_reflex;
		#audio_basic;
		#video_mpeg;
		#application_vnd_kde_kspread;
		#multipart_voice_message;
		#model_vrml;
		#application_postscript;
		#application_vnd_ecowin_seriesupdate;
		#application_vnd_framemaker;
		#text_vnd_fmi_flexstor;
		#application_vnd_lotus_1_2_3;
		#application_cpl_xml;
		#application_vnd_ibm_MiniPay;
		#application_vnd_pwg_xhtml_print_xml;
		#application_vnd_powerbuilder75;
		#application_vnd_motorola_flexsuite_fis;
		#application_vnd_motorola_flexsuite_kmr;
		#application_vnd_motorola_flexsuite_ttc;
		#application_vnd_motorola_flexsuite_wem;
		#text_vnd_latex_z;
		#text_prs_lines_tag;
		#application_prs_plucker;
		#video_pointer;
		#application_vnd_adobe_xfdf;
		#text_vnd_IPTC_NewsML;
		#text_css;
		#text_rtf;
		#text_xml;
		#application_vnd_ibm_afplinedata;
		#video_vnd_motorola_video;
		#audio_vnd_octel_sbc;
		#text_vnd_wap_wmlscript;
		#application_vnd_groove_injector;
		#application_vnd_ecdis_update;
		#application_vnd_ms_artgalry;
		#application_vnd_netfpx;
		#application_pgp_encrypted;
		#application_vnd_is_xpr;
		#text_directory;
		#application_vnd_fujixerox_docuworks_binder;
		#application_pkcs10;
		#application_vnd_groove_account;
		#video_vnd_motorola_videop;
		#application_vnd_pwg_multiplexed;
		#application_octet_stream;
		#application_vnd_ibm_secure_container;
		#multipart_appledouble;
		#text_vnd_wap_si;
		#text_vnd_wap_sl;
		#audio_QCELP;
		#application_vnd_musician;
		#application_parityfec;
		#application_font_tdpfr;
		#audio_CN;
		#audio_L8;
		#application_vnd_fujitsu_oasys2;
		#application_vnd_fujitsu_oasys3;
		#text_vnd_in3d_3dml;
		#image_vnd_cns_inf2;
		#application_EDI_Consent;
		#application_vnd_groove_identity_message;
		#application_vnd_cybank;
		#application_vnd_motorola_flexsuite_adsi;
		#video_H263_1998;
		#video_H263_2000;
		#application_cals_1840;
		#audio_parityfec;
		#application_whoispp_query;
		#application_vnd_intertrust_digibox;
		#application_vnd_noblenet_directory;
		#application_vemmi;
		#image_jpeg;
		#application_vnd_Quark_QuarkXPress;
		#video_BMPEG;
		#application_vnd_lotus_notes;
		#application_vnd_Mobius_DAF;
		#application_vnd_Mobius_DIS;
		#audio_AMR;
		#application_vnd_Mobius_MBK;
		#application_vnd_Mobius_MQY;
		#application_vnd_Mobius_MSL;
		#audio_GSM;
		#application_vnd_Mobius_PLC;
		#audio_L16;
		#audio_L20;
		#audio_L24;
		#audio_LPC;
		#audio_MPA;
		#application_vnd_Mobius_TXF;
		#audio_RED;
		#audio_SMV;
		#application_vnd_groove_tool_message;
		#application_pkix_crl;
		#application_macwriteii;
		#application_vnd_data_vision_rdz;
		#video_BT656;
		#image_tiff;
		#video_MPV;
		#application_vnd_wap_wmlc;
		#application_vnd_seemail;
		#image_prs_pti;
		#application_vnd_groove_tool_template;
		#application_vnd_intercon_formnet;
		#application_vnd_fsc_weblaunch;
		#image_g3fax;
		#application_xml_dtd;
		#application_vnd_commerce_battelle;
		#video_parityfec;
		#application_vnd_uplanet_listcmd_wbxml;
		#application_vnd_japannet_registration;
		#message_s_http;
		#application_vnd_kde_kontour;
		#application_vnd_lotus_organizer;
		#audio_MP4A_LATM;
		#message_sip;
		#text_vnd_net2phone_commcenter_command;
		#application_vnd_minisoft_hp3000_save;
		#application_vnd_motorola_flexsuite;
		#image_vnd_ms_modi;
		#text_vnd_curl;
		#application_vnd_wt_stf;
		#audio_EVRC0;
		#application_vnd_osa_netdeploy;
		#application_vnd_hp_HPGL;
		#text_vnd_abc;
		#text_vnd_fly;
		#application_vnd_3gpp_pic_bw_var;
		#application_vnd_music_niff;
		#application_vnd_cups_raster;
		#audio_mpa_robust;
		#application_set_payment_initiation;
		#application_vnd_httphone;
		#audio_vnd_cisco_nse;
		#application_vnd_novadigm_EDM;
		#application_vnd_novadigm_EDX;
		#application_vnd_novadigm_EXT;
		#application_timestamp_query;
		#application_vnd_informix_visionary;
		#application_vnd_publishare_delta_tree;
		#application_vnd_previewsystems_box;
		#text_vnd_IPTC_NITF;
		#text_vnd_in3d_spot;
		#application_applefile;
		#application_vnd_FloGraphIt;
		#application_vnd_anser_web_funds_transfer_initiation;
		#application_vnd_noblenet_sealer;
		#application_vnd_commonspace;
		#audio_vnd_nuera_ecelp4800;
		#application_vnd_fujitsu_oasys;
		#model_vnd_dwf;
		#model_vnd_gdl;
		#model_vnd_gtw;
		#model_vnd_mts;
		#model_vnd_vtu;
		#audio_vnd_nuera_ecelp7470;
		#application_EDIFACT;
		#application_vnd_audiograph;
		#audio_vnd_nuera_ecelp9600;
		#audio_G729D;
		#audio_G729E;
		#application_vnd_dpgraph;
		#audio_prs_sid;
		#image_vnd_wap_wbmp;
		#text_vnd_ms_mediapackage;
		#application_vnd_swiftview_ics;
		#application_vnd_webturbo;
		#application_whoispp_response;
		#application_vnd_hp_hpid;
		#image_vnd_djvu;
		#application_vnd_japannet_jpnstore_wakeup;
		#application_cybercash;
		#application_vnd_3M_Post_it_Notes;
		#application_vnd_hzn_3d_crossword;
		#application_sgml_open_catalog;
		#audio_vnd_everad_plj;
		#application_vnd_kde_karbon;
		#text_richtext;
		#application_vnd_ctc_posml;
		#application_vnd_fut_misnet;
		#application_vnd_intu_qbo;
		#application_vnd_intu_qfx;
		#video_MP4V_ES;
		#application_EDI_X12;
		#application_vnd_ms_tnef;
		#message_partial;
		#multipart_byteranges;
		#audio_GSM_EFR;
		#image_vnd_xiff;
		#application_vnd_3gpp_pic_bw_large;
		#application_vnd_lotus_screencam;
		#image_naplps;
		#audio_G_722_1;
		#application_eshop;
		#text_vnd_DMClientScript;
		#application_vnd_vidsoft_vidconference;
		#application_vnd_mozilla_xul_xml;
		#multipart_form_data;
		#application_vnd_ibm_electronic_media;
		#application_vnd_yellowriver_custom_menu;
		#application_vnd_cups_raw;
		#application_reginfo_xml;
		#application_news_transmission;
		#application_sieve;
		#message_http;
		#application_slate;
		#model_vnd_parasolid_transmit_binary;
		#application_pkixcmp;
		#application_vnd_3gpp_pic_bw_small;
		#video_quicktime;
		#video_vnd_vivo;
		#application_vnd_claymore;
		#application_vnd_uplanet_channel;
		#application_vnd_mitsubishi_misty_guard_trustweb;
		#message_news;
		#application_activemessage;
		#text_plain;
		#application_vnd_rapid;
		#application_vnd_cosmocaller;
		#application_vnd_hhe_lesson_player;
		#video_vnd_nokia_interleaved_multimedia;
		#application_vnd_ms_project;
		#application_ocsp_request;
		#application_vnd_kde_kchart;
		#application_remote_printing;
		#multipart_parallel;
		#application_vnd_ericsson_quickcall;
		#application_vnd_canon_cpdl;
		#text_vnd_wap_wml;
		#application_vnd_micrografx_flo;
		#application_vnd_micrografx_igx;
		#application_vnd_businessobjects;
		#application_vnd_uplanet_channel_wbxml;
		#application_xhtml_xml;
		#application_vnd_pvi_ptid1;
		#application_vnd_epson_salt;
		#application_vnd_canon_lips;
		#application_mac_binhex40;
		#application_vnd_mediastation_cdkey;
		#message_delivery_status;
		#application_prs_nprend;
		#application_set_payment;
		#application_set_registration_initiation;
		#application_vnd_enliven;
		#audio_G726_16;
		#audio_G726_24;
		#audio_G726_32;
		#audio_G726_40;
		#application_vnd_ms_excel;
		#application_vnd_anser_web_certificate_issue_initiation;
		#application_vnd_wap_sic;
		#application_vnd_wap_slc;
		#application_msword;
		#application_vnd_wv_csp_wbxml;
		#application_ocsp_response;
		#multipart_signed;
		#audio_vnd_lucent_voice;
		#multipart_digest;
		#multipart_related;
		#application_vnd_japannet_verification_wakeup;
		#application_vnd_fujitsu_oasysprs;
		#video_DV;
		#video_nv;
		#multipart_header_set;
		#application_vnd_uplanet_signal;
		#application_vnd_fujixerox_ddd;
		#application_vnd_mophun_certificate;
		#video_vnd_objectvideo;
		#message_external_body;
		#application_vnd_irepository_package_xml;
		#text_calendar;
		#multipart_mixed;
		#text_parityfec;
		#application_vnd_ffsns;
		#application_vnd_vectorworks;
		#text_tab_separated_values;
		#application_vnd_kenameaapp;
		#application_vnd_noblenet_web;
		#application_vnd_eudora_data;
		#application_vnd_visionary;
		#application_vnd_contact_cmsg;
		#application_vnd_shana_informed_formtemplate;
		#audio_telephone_event;
		#application_index_cmd;
		#application_vnd_ecowin_filerequest;
		#application_index_obj;
		#application_index_vnd;
		#application_vnd_curl;
		#application_vnd_lotus_wordpro;
		#application_batch_SMTP;
		#audio_DAT12;
		#application_vnd_wap_wmlscriptc;
		#application_vnd_pg_osasli;
		#application_vnd_mophun_application;
		#application_vnd_hbci;
		#application_pkcs7_signature;
		#application_dca_rft;
		#application_vnd_jisp;
		#application_vnd_koan;
		#audio_DVI4;
		#application_vnd_groove_vcard;
		#audio_EVRC;
		#application_vnd_mseq;
		#application_dvcs;
		#image_prs_btif;
		#audio_G722;
		#audio_G723;
		#audio_G728;
		#audio_G729;
		#application_vnd_msign;
		#application_vnd_palm;
		#application_pkcs7_mime;
		#application_http;
		#text_rfc822_headers;
		#application_iges;
		#application_iotp;
		#application_isup;
		#application_vnd_smaf;
		#application_vnd_cinderella;
		#application_vnd_acucorp;
		#application_vnd_ufdl;
		#application_vnd_amiga_ami;
		#application_marc;
		#audio_PCMA;
		#audio_PCMU;
		#application_vnd_xara;
		#application_vnd_xfdl;
		#application_tve_trigger;
		#application_vnd_groove_help;
		#application_ipp;
		#application_oda;
		#application_ogg;
		#application_pdf;
		#application_rtf;
		#application_sdp;
		#application_xml;
		#application_zip;
		#application_vnd_accpac_simply_aso;
		#application_vnd_accpac_simply_imp;
		#audio_SMV0;
		#application_qsig;
		#application_vnd_ms_asf;
		#application_vnd_ms_lrm;
		#application_vnd_ms_wpl;
		#application_sgml;
		#application_vnd_bmi;
		#application_vnd_dna;
		#application_vnd_dxr;
		#application_vnd_fdf;
		#application_vnd_mcd;
		#application_vnd_mif;
		#application_vnd_obn;
		#application_vnd_svd;
		#application_vnd_vcx;
		#application_vnd_vsf;
		#audio_VDVI;
		#application_vnd_ecowin_fileupdate;
		#video_SMPTE292M;
		#application_vnd_uplanet_cacheop_wbxml;
		#application_wita;
		#application_index;
		#text_uri_list;
		#video_vnd_fvt;
		#application_vnd_sealed_net;
		#application_vnd_uplanet_listcmd;
		#application_vnd_3gpp_sms;
		#application_vnd_shana_informed_package;
		#text_html;
		#text_vnd_sun_j2me_app_descriptor;
		#application_vnd_grafeq;
		#application_vnd_hp_PCLXL;
	};

	public type MimeTypeQualifierTypeV01_02 = {
		value : MimeTypeQualifierContentTypeV01_02;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type LanguageTypeV01_02 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type ManifestItemTypeV01_10 = {
		MimeTypeQualifier : MimeTypeQualifierTypeV01_02;
		Description : ?Text;
		Language : ?LanguageTypeV01_02;
		UniversalResourceIdentifier : Text;
		schemaVersion : ?Text;
		Length : ?Int;
	};

	public type DocumentManifestTypeV01_10 = {
		NumberOfItems : Int;
		MultipleType : ?Bool;
		schemaVersion : ?Text;
		ManifestItem : [ManifestItemTypeV01_10];
	};

	public type StandardDocumentIdentificationTypeV01_10 = {
		Version : Text;
		schemaVersion : ?Text;
		Standard : ?Text;
	};

	public type TPIRFileTypeContentTypeV01_01 = {
		#PDF;
		#XDP;
		#XML;
	};

	public type TPIRFileTypeTypeV01_01 = {
		value : TPIRFileTypeContentTypeV01_01;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type TpirPipIdentificationTypeV01_10 = {
		Uri : ?Text;
		PartnerId : Text;
		FileType : ?TPIRFileTypeTypeV01_01;
		TpirBusinessProcessIdentifier : ?Text;
		TpirPipVersion : Text;
		schemaVersion : ?Text;
		PipIdentifier : Text;
		PipVersion : Text;
	};

	public type DocumentIdentificationTypeV01_10 = {
		StandardDocumentIdentification : ?StandardDocumentIdentificationTypeV01_10;
		Type : ?Text;
		TpirPipIdentification : ?TpirPipIdentificationTypeV01_10;
		schemaVersion : ?Text;
		Identifier : Text;
	};

	public type DocumentSecurityTypeV01_10 = {
		NonRepudiableReceipt : ?Bool;
		PersistentEncryption : ?Bool;
		schemaVersion : ?Text;
		PersistentSignature : ?Bool;
	};

	public type DocumentInformationTypeV01_10 = {
		Creation : Int;
		DocumentManifest : ?DocumentManifestTypeV01_10;
		DocumentIdentification : DocumentIdentificationTypeV01_10;
		schemaVersion : ?Text;
		DocumentSecurity : ?DocumentSecurityTypeV01_10;
	};

	public type ContractInformationTypeV01_10 = {
		ContractType : ?Text;
		ContractIdentifier : ?Text;
		schemaVersion : ?Text;
	};

	public type RequestingDocumentInformationTypeV01_10 = {
		RequestingDocumentInstanceIdentifier : Text;
		RequestingDocumentCreationDateTime : ?Int;
		BusinessProcessInstanceIdentifier : ?Text;
		ResponseDateTime : ?Int;
		schemaVersion : ?Text;
	};

	public type CorrelationInformationTypeV01_10 = {
		ContractInformation : ?ContractInformationTypeV01_10;
		RequestingDocumentInformation : ?RequestingDocumentInformationTypeV01_10;
		schemaVersion : ?Text;
	};

	public type BusinessServiceInformationTypeV01_10 = {
		ProcessReference : ?Text;
		ProcessState : ?Text;
		ProcessIdentifier : Text;
		ActionName : Text;
		schemaVersion : ?Text;
		ServiceName : Text;
	};

	public type SenderTypeV01_10 = {
		PartnerIdentification : PartnerIdentificationTypeV01_07;
		BusinessServiceInformation : ?BusinessServiceInformationTypeV01_10;
		ContactInformation : ?[ContactInformationTypeV01_02];

		schemaVersion : ?Text;
	};

	public type ReceiverTypeV01_10 = {
		PartnerIdentification : PartnerIdentificationTypeV01_07;
		BusinessServiceInformation : ?BusinessServiceInformationTypeV01_10;
		ContactInformation : ?[ContactInformationTypeV01_02];

		schemaVersion : ?Text;
	};

	public type DocumentHeaderTypeV01_10 = {
		DocumentInformation : DocumentInformationTypeV01_10;
		HeaderVersion : ?Text;
		CorrelationInformation : ?CorrelationInformationTypeV01_10;
		Sender : SenderTypeV01_10;
		Receiver : ReceiverTypeV01_10;
		schemaVersion : ?Text;
	};

	public type PurchaseOrderConfirmationTypeV02_00 = {
		schemaVersion : ?Text;
		PurchaseOrder : PurchaseOrderTypeV02_00;
		DocumentHeader : ?DocumentHeaderTypeV01_10;
	};

}