module {
	public type PricingTypeCodeContentTypeV01_04 = {
		#ACR;
		#ACS;
		#ACT;
		#ANY;
		#ARS;
		#ASP;
		#BPA;
		#BPP;
		#BSH;
		#CAT;
		#CLM;
		#CMC;
		#CMD;
		#CMF;
		#CON;
		#COS;
		#CPL;
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
		#REX;
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

	public type PricingTypeCodeTypeV01_04 = {
		value : PricingTypeCodeContentTypeV01_04;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type DatePeriodTypeV01_03 = {
		End : Int;
		Begin : Int;
		schemaVersion : ?Text;
	};

	public type DocumentTypeContentTypeV01_13 = {
		#APM;
		#ARA;
		#CAR;
		#CBN;
		#CCN;
		#CFA;
		#CIN;
		#CNM;
		#COA;
		#CON;
		#COS;
		#COT;
		#CRN;
		#DEM;
		#DEN;
		#DIN;
		#DOR;
		#DRN;
		#DRR;
		#ECO;
		#EDD;
		#EIR;
		#EOL;
		#FUO;
		#IDD;
		#INV;
		#LID;
		#MEN;
		#MID;
		#MON;
		#NTS;
		#OCL;
		#OGA;
		#OPO;
		#OPR;
		#PCN;
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
		#REN;
		#REO;
		#REQ;
		#RMA;
		#RPO;
		#RTA;
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
		#SWT;
		#TCS;
		#TRO;
		#WAB;
		#WAC;
		#WOO;
	};

	public type DocumentTypeTypeV01_13 = {
		value : DocumentTypeContentTypeV01_13;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type BusinessDocumentReferenceTypeV01_12 = {
		Line : ?Text;
		Revision : ?Text;
		DateTime : ?Int;
		schemaVersion : ?Text;
		Identifier : Text;
		DocumentType : DocumentTypeTypeV01_13;
		SubLine : ?Text;
	};

	public type PriceConditionTypeV02_27 = {
		SpecialPriceCondition : ?Text;
		SpecialPricingDatePeriod : ?DatePeriodTypeV01_03;
		GeneralServiceAdministrationNumber : ?BusinessDocumentReferenceTypeV01_12;
		ContractIdentifier : ?BusinessDocumentReferenceTypeV01_12;
		schemaVersion : ?Text;
	};

	public type AmountTypeContentTypeV01_03 = {
		#DIP;
		#DIS;
		#FRE;
		#INS;
		#MAT;
		#MIS;
		#NET;
		#PRC;
		#TOD;
		#TOT;
		#TOV;
		#UNI;
		#VAD;
	};

	public type AmountTypeTypeV01_03 = {
		value : AmountTypeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type InvoiceChargeTypeContentTypeV01_02 = {
		#ALC;
		#CUC;
		#DEA;
		#ESC;
		#FRC;
		#HAC;
		#LEC;
		#LIC;
		#MAC;
		#PUC;
		#QUD;
		#REC;
	};

	public type InvoiceChargeTypeTypeV01_02 = {
		value : InvoiceChargeTypeContentTypeV01_02;
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

	public type CurrencyTypeV01_03 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type FinancialAmountTypeV01_06 = {
		Amount : ?Float;
		Currency : CurrencyTypeV01_03;
		schemaVersion : ?Text;
		Identifier : ?Text;
	};

	public type MonetaryAmountTypeV01_17 = {
		AmountType : ?AmountTypeTypeV01_03;
		InvoiceChargeType : ?InvoiceChargeTypeTypeV01_02;
		schemaVersion : ?Text;
		MonetaryAmountType : ?MonetaryAmountTypeTypeV01_01;
		FinancialAmount : FinancialAmountTypeV01_06;
	};

	public type ProductPricingDetailTypeV02_27 = {
		PricingTypeCode : ?PricingTypeCodeTypeV01_04;
		UnitPrice : MonetaryAmountTypeV01_17;
		schemaVersion : ?Text;
	};

	public type AlternativeIdentifierTypeV01_04 = {
		Authority : Text;
		schemaVersion : ?Text;
		Identifier : Text;
	};

	public type ProductIdentificationTypeV01_04 = {
		GTIN : ?Text;
		ProductName : ?Text;
		AlternativeIdentifier : ?[AlternativeIdentifierTypeV01_04];

		Revision : ?Text;
		schemaVersion : ?Text;
	};

	public type ProductQuantityRangeTypeV02_27 = {
		MaximumOrderQuantity : ?Float;
		MinimumOrderQuantity : ?Float;
		schemaVersion : ?Text;
	};

	public type StepPricingTypeV02_27 = {
		MonetaryAmount : MonetaryAmountTypeV01_17;
		PricingTypeCode : ?PricingTypeCodeTypeV01_04;
		ProductQuantityRange : ProductQuantityRangeTypeV02_27;
		schemaVersion : ?Text;
		DatePeriod : DatePeriodTypeV01_03;
	};

	public type ProductAvailabilityCodeContentTypeV01_03 = {
		#FON;
		#INV;
		#MPF;
		#NTF;
	};

	public type ProductAvailabilityCodeTypeV01_03 = {
		value : ProductAvailabilityCodeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type CustomerAuthorizationCodeContentTypeV01_03 = {
		#NOL;
		#NRS;
		#NSL;
		#REQ;
	};

	public type CustomerAuthorizationCodeTypeV01_03 = {
		value : CustomerAuthorizationCodeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
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

	public type SubstituteProductReferenceTypeV02_27 = {
		ProductIdentification : [ProductIdentificationTypeV01_04];
		ProductSubstitutionReason : ProductSubstitutionReasonTypeV01_03;
		schemaVersion : ?Text;
	};

	public type AdditionalProductPriceAndAvailabilityLineItemTypeV02_01 = {
		Description : Text;
		StepPricing : ?[StepPricingTypeV02_27];

		ProductAvailabilityCode : ?ProductAvailabilityCodeTypeV01_03;
		CustomerAuthorizationCode : ?CustomerAuthorizationCodeTypeV01_03;
		ManufacturerMinimumPackageQuantity : ?Float;
		PackingQuantity : ?Float;
		SubstituteProductReference : ?[SubstituteProductReferenceTypeV02_27];

		schemaVersion : ?Text;
		SmallestPackingQuantity : ?Float;
	};

	public type UnitOfMeasureTypeV01_04 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type PriceListTypeV02_27 = {
		MonetaryAmount : ?MonetaryAmountTypeV01_17;
		PricingTypeCode : ?PricingTypeCodeTypeV01_04;
		PriceListIdentifier : Text;
		schemaVersion : ?Text;
	};

	public type ProductStatusCodeContentTypeV01_01 = {
		#ACT;
		#ALO;
		#BOR;
		#DCN;
		#NPR;
		#POS;
		#REP;
	};

	public type ProductStatusCodeTypeV01_01 = {
		value : ProductStatusCodeContentTypeV01_01;
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

	public type ProductAvailabilityTypeV02_27 = {
		EstimatedAvailabilityDate : ?DatePeriodTypeV01_03;
		ProductQuantity : Float;
		schemaVersion : ?Text;
		CountryOfOrigin : ?CountryTypeV01_02;
	};

	public type LeadTimeClassificationCodeContentTypeV01_03 = {
		#ASA;
		#ASS;
		#CLF;
		#DTS;
		#EOL;
		#INS;
		#MAR;
		#NOS;
		#ODP;
		#PLA;
		#PRC;
		#PRD;
		#SUP;
		#TRN;
	};

	public type LeadTimeClassificationCodeTypeV01_03 = {
		value : LeadTimeClassificationCodeContentTypeV01_03;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type PackageTypeCodeTypeV01_01 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type LocationTypeV01_04 = {
		GLN : ?Text;
		DUNS : ?Text;
		DUNSPlus4 : ?Text;
		AlternativeIdentifier : ?[AlternativeIdentifierTypeV01_04];

		schemaVersion : ?Text;
	};

	public type CountrySubdivisionTypeV01_02 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type PhysicalAddressTypeV01_04 = {
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

	public type WarehouseLocationTypeV02_27 = {
		Location : ?LocationTypeV01_04;
		schemaVersion : ?Text;
		PhysicalAddress : ?PhysicalAddressTypeV01_04;
	};

	public type WarehouseQuantityInformationTypeV02_27 = {
		schemaVersion : ?Text;
		WarehouseAvailabilityDate : ?DatePeriodTypeV01_03;
		WarehouseQuantity : ?Float;
	};

	public type WarehouseInformationTypeV02_27 = {
		WarehouseLocation : WarehouseLocationTypeV02_27;
		WarehouseQuantityInformation : ?[WarehouseQuantityInformationTypeV02_27];

		schemaVersion : ?Text;
	};

	public type IntervalTypeV01_01 = {
		value : Text;
		codeListVersion : ?Text;
		agency : ?Text;
		schemaVersion : ?Text;
		identifier : ?Text;
	};

	public type LeadTimeQuantityTypeV02_27 = {
		OrderSizeRoundingQuantity : ?Float;
		ProductQuantityRange : ProductQuantityRangeTypeV02_27;
		schemaVersion : ?Text;
	};

	public type ProductLeadTimeTypeV02_27 = {
		Interval : IntervalTypeV01_01;
		PeriodNumber : Text;
		IsCallFactory : ?Bool;
		LeadTimeClassificationCode : ?LeadTimeClassificationCodeTypeV01_03;
		schemaVersion : ?Text;
		LeadTimeQuantity : ?LeadTimeQuantityTypeV02_27;
	};

	public type ProductPriceAndAvailabilityLineItemTypeV02_01 = {
		ProductPricingDetail : [ProductPricingDetailTypeV02_27];
		IsAdditionalInformationIncluded : ?Bool;
		PricingTypeCode : ?[PricingTypeCodeTypeV01_04];

		ProductIdentification : ProductIdentificationTypeV01_04;
		AdditionalProductPriceAndAvailabilityLineItem : ?AdditionalProductPriceAndAvailabilityLineItemTypeV02_01;
		EstimatedAvailabilityDate : ?DatePeriodTypeV01_03;
		UnitOfMeasure : ?[UnitOfMeasureTypeV01_04];

		PriceList : ?[PriceListTypeV02_27];

		LineNumber : Text;
		IsSpecialPricingExists : ?Bool;
		ProductStatusCode : ?ProductStatusCodeTypeV01_01;
		IsNonCancelNonReturnable : ?Bool;
		ProductAvailability : [ProductAvailabilityTypeV02_27];
		LeadTimeClassificationCode : ?LeadTimeClassificationCodeTypeV01_03;
		PackageTypeCode : ?[PackageTypeCodeTypeV01_01];

		schemaVersion : ?Text;
		WarehouseInformation : ?[WarehouseInformationTypeV02_27];

		ProductLeadTime : ?[ProductLeadTimeTypeV02_27];

	};

	public type ProductPriceAndAvailabilityTypeV02_01 = {
		IsAdditionalInformationIncluded : ?Bool;
		PricingTypeCode : ?[PricingTypeCodeTypeV01_04];

		PriceCondition : ?PriceConditionTypeV02_27;
		PriceListIdentifier : Text;
		IsSpecialPricingExists : ?Bool;
		schemaVersion : ?Text;
		ProductPriceAndAvailabilityLineItem : [ProductPriceAndAvailabilityLineItemTypeV02_01];
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

	public type ManifestItemTypeV01_23 = {
		MimeTypeQualifier : MimeTypeQualifierTypeV01_02;
		Description : ?Text;
		Language : ?LanguageTypeV01_02;
		UniversalResourceIdentifier : Text;
		schemaVersion : ?Text;
		Length : ?Int;
	};

	public type DocumentManifestTypeV01_23 = {
		NumberOfItems : Int;
		MultipleType : ?Bool;
		schemaVersion : ?Text;
		ManifestItem : [ManifestItemTypeV01_23];
	};

	public type StandardDocumentIdentificationTypeV01_23 = {
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

	public type TpirPipIdentificationTypeV01_23 = {
		Uri : ?Text;
		PartnerId : Text;
		FileType : ?TPIRFileTypeTypeV01_01;
		TpirBusinessProcessIdentifier : ?Text;
		TpirPipVersion : Text;
		schemaVersion : ?Text;
		PipIdentifier : Text;
		PipVersion : Text;
	};

	public type DocumentIdentificationTypeV01_23 = {
		StandardDocumentIdentification : ?StandardDocumentIdentificationTypeV01_23;
		Type : ?Text;
		TpirPipIdentification : ?TpirPipIdentificationTypeV01_23;
		schemaVersion : ?Text;
		Identifier : Text;
	};

	public type DocumentSecurityTypeV01_23 = {
		NonRepudiableReceipt : ?Bool;
		PersistentEncryption : ?Bool;
		schemaVersion : ?Text;
		PersistentSignature : ?Bool;
	};

	public type DocumentInformationTypeV01_23 = {
		Creation : Int;
		DocumentManifest : ?DocumentManifestTypeV01_23;
		DocumentIdentification : DocumentIdentificationTypeV01_23;
		schemaVersion : ?Text;
		DocumentSecurity : ?DocumentSecurityTypeV01_23;
	};

	public type ContractInformationTypeV01_23 = {
		ContractType : ?Text;
		ContractIdentifier : ?Text;
		schemaVersion : ?Text;
	};

	public type RequestingDocumentInformationTypeV01_23 = {
		RequestingDocumentInstanceIdentifier : Text;
		RequestingDocumentCreationDateTime : ?Int;
		BusinessProcessInstanceIdentifier : ?Text;
		ResponseDateTime : ?Int;
		schemaVersion : ?Text;
	};

	public type CorrelationInformationTypeV01_23 = {
		ContractInformation : ?ContractInformationTypeV01_23;
		RequestingDocumentInformation : ?RequestingDocumentInformationTypeV01_23;
		schemaVersion : ?Text;
	};

	public type PartnerIdentificationTypeV01_16 = {
		GLN : ?Text;
		PartnerName : ?Text;
		DUNS : ?Text;
		DUNSPlus4 : ?Text;
		AlternativeIdentifier : ?[AlternativeIdentifierTypeV01_04];

		schemaVersion : ?Text;
	};

	public type BusinessServiceInformationTypeV01_23 = {
		ProcessReference : ?Text;
		ProcessState : ?Text;
		ProcessIdentifier : Text;
		ActionName : Text;
		schemaVersion : ?Text;
		ServiceName : Text;
	};

	public type ContactInformationTypeV01_04 = {
		Fax : ?Text;
		Email : ?Text;
		Phone : ?Text;
		schemaVersion : ?Text;
		IdentifierCode : ?Text;
		Identifier : ?Text;
		Contact : Text;
	};

	public type SenderTypeV01_23 = {
		PartnerIdentification : PartnerIdentificationTypeV01_16;
		BusinessServiceInformation : ?BusinessServiceInformationTypeV01_23;
		ContactInformation : ?[ContactInformationTypeV01_04];

		schemaVersion : ?Text;
	};

	public type ReceiverTypeV01_23 = {
		PartnerIdentification : PartnerIdentificationTypeV01_16;
		BusinessServiceInformation : ?BusinessServiceInformationTypeV01_23;
		ContactInformation : ?[ContactInformationTypeV01_04];

		schemaVersion : ?Text;
	};

	public type DocumentHeaderTypeV01_23 = {
		DocumentInformation : DocumentInformationTypeV01_23;
		HeaderVersion : ?Text;
		CorrelationInformation : ?CorrelationInformationTypeV01_23;
		Sender : SenderTypeV01_23;
		Receiver : ReceiverTypeV01_23;
		schemaVersion : ?Text;
	};

	public type PriceAndAvailabilityResponseTypeV02_01 = {
		ProductPriceAndAvailability : [ProductPriceAndAvailabilityTypeV02_01];
		schemaVersion : ?Text;
		DocumentHeader : ?DocumentHeaderTypeV01_23;
	};

}