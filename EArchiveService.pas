// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL
//  >Import : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL>0
//  >Import : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL>1
//  >Import : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL>2
//  >Import : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL>3
//  >Import : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL>4
// Encoding : utf-8
// Version  : 1.0
// (25.12.2018 15:34:41 - - $Rev: 90173 $)
// ************************************************************************ //

unit EArchiveService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_ATTR = $0010;
  IS_TEXT = $0020;
  IS_REF  = $0080;
  IS_QUAL = $0100;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:token           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:normalizedString - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  EARCHIVEINV          = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  EARCHIVE_INVOICE     = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  INVOICE              = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ATTRIBUTESTYPE       = class;                 { "http://schemas.i2i.com/ei/common"[GblCplx] }
  ArchiveGenericDocumentResponse = class;       { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetEArchiveInvoiceListResponse = class;       { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetEArchiveInvoiceResponse = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  CHANGE_INFOType      = class;                 { "http://schemas.i2i.com/ei/common"[GblCplx] }
  GetEArchiveReportResponse = class;            { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveGenericDocumentRequest = class;        { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetEArchiveInvoiceStatusResponse = class;     { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  CancelEArchiveInvoiceResponse = class;        { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceCopyResponse = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  EArchiveInvoiceCountRequest = class;          { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  CancelEDefterRequest = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  CancelEDefterResponse = class;                { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GenericReadResponse  = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  CancelEArchiveInvoiceRequest = class;         { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GenericReadRequest   = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceReadResponse = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ReadEArchiveReportResponse = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceExtendedRequest = class;        { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceWriteRequest = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  LoginRes             = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  GetEArchiveInvoiceRequest = class;            { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetEArchiveReportRequest = class;             { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetEmailEarchiveInvoiceRequest = class;       { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  INVOICE_PROPERTIES   = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  PDF_PROPERTIES       = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  MARK                 = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  GetEArchiveInvoiceStatusRequest = class;      { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  CancelEArsivInvoiceContent = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  HEADER               = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  CancelEDefterContent = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  GENERIC_CONTENT      = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceExtendedResponse = class;       { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  base64Binary         = class;                 { "http://www.w3.org/2005/05/xmlmime"[GblCplx] }
  HEADER2              = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  REPORT               = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  DOCUMENT             = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  ArchiveInvoiceWriteResponse = class;          { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetGenericArchiveStatusRequest = class;       { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetGenericArchiveStatusResponse = class;      { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  DataObject           = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  GetEmailEarchiveInvoiceResponse = class;      { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetGenericArchiveByPeriodRequest = class;     { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  GetGenericArchiveByPeriodResponse = class;    { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceReadRequest = class;            { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  EArchiveInvoiceCountResponse = class;         { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveGetInvoiceInfoResponse = class;        { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveInvoiceCopyRequest = class;            { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  ArchiveGetInvoiceInfoRequest = class;         { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  Elements             = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  EARSIV_PROPERTIES    = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  REQUEST_ERRORType    = class;                 { "http://schemas.i2i.com/ei/entity"[GblCplx] }
  REQUEST_RETURNType   = class;                 { "http://schemas.i2i.com/ei/entity"[GblCplx] }
  HEADER3              = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[Cplx] }
  ReadEArchiveReportRequest = class;            { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  DataModelObject      = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  MarkEArchiveInvoiceRequest = class;           { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  Customer             = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  CustomerExtended     = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  GetEArchiveInvoiceListRequest = class;        { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  REPORT_INVOICE       = class;                 { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  REQUEST_HEADERType   = class;                 { "http://schemas.i2i.com/ei/entity"[GblCplx] }
  MarkEArchiveInvoiceResponse = class;          { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://schemas.i2i.com/ei/wsdl/archive"[GblSmpl] }
  DOC_TYPE = (KEBIR_DEFTERI, YEVMIYE_DEFTERI, KEBIR_BERATI, YEVMIYE_BERATI);

  { "http://schemas.i2i.com/ei/wsdl/archive"[GblSmpl] }
  FLAG_VALUE = (Y, N);

  { "http://schemas.i2i.com/ei/entity"[Smpl] }
  SIGN_STATUS = (SIGNED, SIGN_BY_CLIENTCER_TIFICATE, SIGN_BY_ENTEGRATOR_CERTIFICATE, NOSIGN);

  { "http://schemas.i2i.com/ei/wsdl/archive"[GblSmpl] }
  SUB_STATUS_VALUE = (NEW, DRAFT);

  { "http://schemas.i2i.com/ei/wsdl/archive"[GblSmpl] }
  EARSIV_TYPE_VALUE = (INTERNET, NORMAL);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : EARCHIVEINV, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  EARCHIVEINV = class(TRemotable)
  private
    FHEADER: HEADER2;
    FHEADER_Specified: boolean;
    FCONTENT: base64Binary;
    FCONTENT_Specified: boolean;
    procedure SetHEADER(Index: Integer; const AHEADER2: HEADER2);
    function  HEADER_Specified(Index: Integer): boolean;
    procedure SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HEADER:  HEADER2       Index (IS_OPTN or IS_UNQL) read FHEADER write SetHEADER stored HEADER_Specified;
    property CONTENT: base64Binary  Index (IS_OPTN or IS_UNQL) read FCONTENT write SetCONTENT stored CONTENT_Specified;
  end;

  Array_Of_REPORT_INVOICE = array of REPORT_INVOICE;   { "http://schemas.i2i.com/ei/wsdl/archive"[GblUbnd] }


  // ************************************************************************ //
  // XML       : EARCHIVE_INVOICE, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  EARCHIVE_INVOICE = class(TRemotable)
  private
    FHEADER: HEADER3;
    FHEADER_Specified: boolean;
    procedure SetHEADER(Index: Integer; const AHEADER3: HEADER3);
    function  HEADER_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HEADER: HEADER3  Index (IS_OPTN or IS_UNQL) read FHEADER write SetHEADER stored HEADER_Specified;
  end;

  Array_Of_ATTRIBUTESTYPE = array of ATTRIBUTESTYPE;   { "http://schemas.i2i.com/ei/common"[GblUbnd] }


  // ************************************************************************ //
  // XML       : INVOICE, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  INVOICE = class(TRemotable)
  private
    FHEADER: HEADER;
    FHEADER_Specified: boolean;
    procedure SetHEADER(Index: Integer; const AHEADER: HEADER);
    function  HEADER_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property HEADER: HEADER  Index (IS_OPTN or IS_UNQL) read FHEADER write SetHEADER stored HEADER_Specified;
  end;

  Array_Of_DOCUMENT = array of DOCUMENT;        { "http://schemas.i2i.com/ei/wsdl/archive"[Ubnd] }


  // ************************************************************************ //
  // XML       : ATTRIBUTESTYPE, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/common
  // ************************************************************************ //
  ATTRIBUTESTYPE = class(TRemotable)
  private
    FNAME_: string;
    FNAME__Specified: boolean;
    procedure SetNAME_(Index: Integer; const Astring: string);
    function  NAME__Specified(Index: Integer): boolean;
  published
    property NAME_: string  Index (IS_ATTR or IS_OPTN) read FNAME_ write SetNAME_ stored NAME__Specified;
  end;

  Array_Of_base64Binary = array of base64Binary;   { "http://www.w3.org/2005/05/xmlmime"[GblUbnd] }
  Array_Of_INVOICE = array of INVOICE;          { "http://schemas.i2i.com/ei/wsdl/archive"[GblUbnd] }
  Array_Of_CancelEArsivInvoiceContent = array of CancelEArsivInvoiceContent;   { "http://schemas.i2i.com/ei/wsdl/archive"[Ubnd] }
  Array_Of_CancelEDefterContent = array of CancelEDefterContent;   { "http://schemas.i2i.com/ei/wsdl/archive"[Ubnd] }
  Array_Of_GENERIC_CONTENT = array of GENERIC_CONTENT;   { "http://schemas.i2i.com/ei/wsdl/archive"[GblUbnd] }
  Array_Of_EARCHIVE_INVOICE = array of EARCHIVE_INVOICE;   { "http://schemas.i2i.com/ei/wsdl/archive"[GblUbnd] }
  ArrayOfArchiveInvoiceWriteContentElements = array of Elements;   { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }
  Array_Of_EARCHIVEINV = array of EARCHIVEINV;   { "http://schemas.i2i.com/ei/wsdl/archive"[GblUbnd] }
  Array_Of_REPORT = array of REPORT;            { "http://schemas.i2i.com/ei/wsdl/archive"[GblUbnd] }
  ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES = array of INVOICE_PROPERTIES;   { "http://schemas.i2i.com/ei/wsdl/archive"[GblCplx] }


  // ************************************************************************ //
  // XML       : ArchiveGenericDocumentResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveGenericDocumentResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveInvoiceListResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveInvoiceListResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    FINVOICE: Array_Of_EARCHIVEINV;
    FINVOICE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArray_Of_EARCHIVEINV: Array_Of_EARCHIVEINV);
    function  INVOICE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType    Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType     Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
    property INVOICE:        Array_Of_EARCHIVEINV  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveInvoiceResponse = class(TRemotable)
  private
    FINVOICE: Array_Of_base64Binary;
    FINVOICE_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetINVOICE(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE:        Array_Of_base64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property REQUEST_RETURN: REQUEST_RETURNType     Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType      Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : CHANGE_INFOType, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/common
  // ************************************************************************ //
  CHANGE_INFOType = class(TRemotable)
  private
    FCDATE: TXSDate;
    FCPOSITION_ID: Int64;
    FCUSER_ID: Int64;
    FUDATE: TXSDate;
    FUDATE_Specified: boolean;
    FUPOSITION_ID: Int64;
    FUPOSITION_ID_Specified: boolean;
    FUUSER_ID: Int64;
    FUUSER_ID_Specified: boolean;
    procedure SetUDATE(Index: Integer; const ATXSDate: TXSDate);
    function  UDATE_Specified(Index: Integer): boolean;
    procedure SetUPOSITION_ID(Index: Integer; const AInt64: Int64);
    function  UPOSITION_ID_Specified(Index: Integer): boolean;
    procedure SetUUSER_ID(Index: Integer; const AInt64: Int64);
    function  UUSER_ID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CDATE:        TXSDate  Index (IS_UNQL) read FCDATE write FCDATE;
    property CPOSITION_ID: Int64    Index (IS_UNQL) read FCPOSITION_ID write FCPOSITION_ID;
    property CUSER_ID:     Int64    Index (IS_UNQL) read FCUSER_ID write FCUSER_ID;
    property UDATE:        TXSDate  Index (IS_OPTN or IS_UNQL) read FUDATE write SetUDATE stored UDATE_Specified;
    property UPOSITION_ID: Int64    Index (IS_OPTN or IS_UNQL) read FUPOSITION_ID write SetUPOSITION_ID stored UPOSITION_ID_Specified;
    property UUSER_ID:     Int64    Index (IS_OPTN or IS_UNQL) read FUUSER_ID write SetUUSER_ID stored UUSER_ID_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveReportResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveReportResponse = class(TRemotable)
  private
    FREPORT: Array_Of_REPORT;
    FREPORT_Specified: boolean;
    FINVOICE: Array_Of_REPORT_INVOICE;
    FINVOICE_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREPORT(Index: Integer; const AArray_Of_REPORT: Array_Of_REPORT);
    function  REPORT_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArray_Of_REPORT_INVOICE: Array_Of_REPORT_INVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REPORT:         Array_Of_REPORT          Index (IS_OPTN or IS_UNBD or IS_UNQL) read FREPORT write SetREPORT stored REPORT_Specified;
    property INVOICE:        Array_Of_REPORT_INVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property REQUEST_RETURN: REQUEST_RETURNType       Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType        Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveGenericDocumentRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveGenericDocumentRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FGENERIC_CONTENT: Array_Of_GENERIC_CONTENT;
    FGENERIC_CONTENT_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetGENERIC_CONTENT(Index: Integer; const AArray_Of_GENERIC_CONTENT: Array_Of_GENERIC_CONTENT);
    function  GENERIC_CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:  REQUEST_HEADERType        Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property GENERIC_CONTENT: Array_Of_GENERIC_CONTENT  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FGENERIC_CONTENT write SetGENERIC_CONTENT stored GENERIC_CONTENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveInvoiceStatusResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveInvoiceStatusResponse = class(TRemotable)
  private
    FINVOICE: Array_Of_EARCHIVE_INVOICE;
    FINVOICE_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetINVOICE(Index: Integer; const AArray_Of_EARCHIVE_INVOICE: Array_Of_EARCHIVE_INVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE:        Array_Of_EARCHIVE_INVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property REQUEST_RETURN: REQUEST_RETURNType         Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType          Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelEArchiveInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  CancelEArchiveInvoiceResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceCopyResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceCopyResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : EArchiveInvoiceCountRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  EArchiveInvoiceCountRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FISSUE_DATE_START: TXSDate;
    FISSUE_DATE_START_Specified: boolean;
    FISSUE_DATE_END: TXSDate;
    FISSUE_DATE_END_Specified: boolean;
    FCDATE_START: TXSDate;
    FCDATE_START_Specified: boolean;
    FCDATE_END: TXSDate;
    FCDATE_END_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetISSUE_DATE_START(Index: Integer; const ATXSDate: TXSDate);
    function  ISSUE_DATE_START_Specified(Index: Integer): boolean;
    procedure SetISSUE_DATE_END(Index: Integer; const ATXSDate: TXSDate);
    function  ISSUE_DATE_END_Specified(Index: Integer): boolean;
    procedure SetCDATE_START(Index: Integer; const ATXSDate: TXSDate);
    function  CDATE_START_Specified(Index: Integer): boolean;
    procedure SetCDATE_END(Index: Integer; const ATXSDate: TXSDate);
    function  CDATE_END_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:   REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property ISSUE_DATE_START: TXSDate             Index (IS_OPTN or IS_UNQL) read FISSUE_DATE_START write SetISSUE_DATE_START stored ISSUE_DATE_START_Specified;
    property ISSUE_DATE_END:   TXSDate             Index (IS_OPTN or IS_UNQL) read FISSUE_DATE_END write SetISSUE_DATE_END stored ISSUE_DATE_END_Specified;
    property CDATE_START:      TXSDate             Index (IS_OPTN or IS_UNQL) read FCDATE_START write SetCDATE_START stored CDATE_START_Specified;
    property CDATE_END:        TXSDate             Index (IS_OPTN or IS_UNQL) read FCDATE_END write SetCDATE_END stored CDATE_END_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelEDefterRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  CancelEDefterRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FCancelEDefterContent: Array_Of_CancelEDefterContent;
    FCancelEDefterContent_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetCancelEDefterContent(Index: Integer; const AArray_Of_CancelEDefterContent: Array_Of_CancelEDefterContent);
    function  CancelEDefterContent_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:       REQUEST_HEADERType             Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property CancelEDefterContent: Array_Of_CancelEDefterContent  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FCancelEDefterContent write SetCancelEDefterContent stored CancelEDefterContent_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelEDefterResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  CancelEDefterResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GenericReadResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GenericReadResponse = class(TRemotable)
  private
    FGEN_ARCHIVE_DOC: Array_Of_base64Binary;
    FGEN_ARCHIVE_DOC_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetGEN_ARCHIVE_DOC(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property GEN_ARCHIVE_DOC: Array_Of_base64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FGEN_ARCHIVE_DOC write SetGEN_ARCHIVE_DOC stored GEN_ARCHIVE_DOC_Specified;
    property REQUEST_RETURN:  REQUEST_RETURNType     Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:      REQUEST_ERRORType      Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelEArchiveInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  CancelEArchiveInvoiceRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FCancelEArsivInvoiceContent: Array_Of_CancelEArsivInvoiceContent;
    FCancelEArsivInvoiceContent_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetCancelEArsivInvoiceContent(Index: Integer; const AArray_Of_CancelEArsivInvoiceContent: Array_Of_CancelEArsivInvoiceContent);
    function  CancelEArsivInvoiceContent_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:             REQUEST_HEADERType                   Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property CancelEArsivInvoiceContent: Array_Of_CancelEArsivInvoiceContent  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FCancelEArsivInvoiceContent write SetCancelEArsivInvoiceContent stored CancelEArsivInvoiceContent_Specified;
  end;



  // ************************************************************************ //
  // XML       : GenericReadRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GenericReadRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FDOCUMENT: Array_Of_DOCUMENT;
    FDOCUMENT_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetDOCUMENT(Index: Integer; const AArray_Of_DOCUMENT: Array_Of_DOCUMENT);
    function  DOCUMENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property DOCUMENT:       Array_Of_DOCUMENT   Index (IS_OPTN or IS_UNBD or IS_UNQL) read FDOCUMENT write SetDOCUMENT stored DOCUMENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceReadResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceReadResponse = class(TRemotable)
  private
    FINVOICE: Array_Of_base64Binary;
    FINVOICE_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetINVOICE(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE:        Array_Of_base64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property REQUEST_RETURN: REQUEST_RETURNType     Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType      Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;

  ArrayOfCustomerExtended = array of CustomerExtended;   { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : ReadEArchiveReportResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ReadEArchiveReportResponse = class(TRemotable)
  private
    FEARCHIVEREPORT: Array_Of_base64Binary;
    FEARCHIVEREPORT_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetEARCHIVEREPORT(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  EARCHIVEREPORT_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property EARCHIVEREPORT: Array_Of_base64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FEARCHIVEREPORT write SetEARCHIVEREPORT stored EARCHIVEREPORT_Specified;
    property REQUEST_RETURN: REQUEST_RETURNType     Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType      Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceExtendedRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceExtendedRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FArchiveInvoiceExtendedContent: ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES;
    FArchiveInvoiceExtendedContent_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetArchiveInvoiceExtendedContent(Index: Integer; const AArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES: ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES);
    function  ArchiveInvoiceExtendedContent_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:                REQUEST_HEADERType                                      Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property ArchiveInvoiceExtendedContent: ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES  Index (IS_OPTN or IS_UNQL) read FArchiveInvoiceExtendedContent write SetArchiveInvoiceExtendedContent stored ArchiveInvoiceExtendedContent_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceWriteRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceWriteRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FArchiveInvoiceWriteContent: ArrayOfArchiveInvoiceWriteContentElements;
    FArchiveInvoiceWriteContent_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetArchiveInvoiceWriteContent(Index: Integer; const AArrayOfArchiveInvoiceWriteContentElements: ArrayOfArchiveInvoiceWriteContentElements);
    function  ArchiveInvoiceWriteContent_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:             REQUEST_HEADERType                         Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property ArchiveInvoiceWriteContent: ArrayOfArchiveInvoiceWriteContentElements  Index (IS_OPTN or IS_UNQL) read FArchiveInvoiceWriteContent write SetArchiveInvoiceWriteContent stored ArchiveInvoiceWriteContent_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoginRes, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  LoginRes = class(TRemotable)
  private
    FIsSuccessLogin: Boolean;
    FSessionId: string;
    FSessionId_Specified: boolean;
    FMessage_: string;
    FMessage__Specified: boolean;
    FCustomerList: ArrayOfCustomerExtended;
    FCustomerList_Specified: boolean;
    procedure SetSessionId(Index: Integer; const Astring: string);
    function  SessionId_Specified(Index: Integer): boolean;
    procedure SetMessage_(Index: Integer; const Astring: string);
    function  Message__Specified(Index: Integer): boolean;
    procedure SetCustomerList(Index: Integer; const AArrayOfCustomerExtended: ArrayOfCustomerExtended);
    function  CustomerList_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property IsSuccessLogin: Boolean                  read FIsSuccessLogin write FIsSuccessLogin;
    property SessionId:      string                   Index (IS_OPTN) read FSessionId write SetSessionId stored SessionId_Specified;
    property Message_:       string                   Index (IS_OPTN) read FMessage_ write SetMessage_ stored Message__Specified;
    property CustomerList:   ArrayOfCustomerExtended  Index (IS_OPTN) read FCustomerList write SetCustomerList stored CustomerList_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveInvoiceRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FWEB_VALIDATION_KEY: string;
    FWEB_VALIDATION_KEY_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetWEB_VALIDATION_KEY(Index: Integer; const Astring: string);
    function  WEB_VALIDATION_KEY_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:     REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property WEB_VALIDATION_KEY: string              Index (IS_OPTN or IS_UNQL) read FWEB_VALIDATION_KEY write SetWEB_VALIDATION_KEY stored WEB_VALIDATION_KEY_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveReportRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveReportRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FREPORT_PERIOD: string;
    FREPORT_PERIOD_Specified: boolean;
    FREPORT_STATUS_FLAG: string;
    FREPORT_STATUS_FLAG_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetREPORT_PERIOD(Index: Integer; const Astring: string);
    function  REPORT_PERIOD_Specified(Index: Integer): boolean;
    procedure SetREPORT_STATUS_FLAG(Index: Integer; const Astring: string);
    function  REPORT_STATUS_FLAG_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:     REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property REPORT_PERIOD:      string              Index (IS_OPTN or IS_UNQL) read FREPORT_PERIOD write SetREPORT_PERIOD stored REPORT_PERIOD_Specified;
    property REPORT_STATUS_FLAG: string              Index (IS_OPTN or IS_UNQL) read FREPORT_STATUS_FLAG write SetREPORT_STATUS_FLAG stored REPORT_STATUS_FLAG_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEmailEarchiveInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEmailEarchiveInvoiceRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FFATURA_UUID: string;
    FFATURA_UUID_Specified: boolean;
    FFATURA_ID: string;
    FFATURA_ID_Specified: boolean;
    FEMAIL: string;
    FEMAIL_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetFATURA_UUID(Index: Integer; const Astring: string);
    function  FATURA_UUID_Specified(Index: Integer): boolean;
    procedure SetFATURA_ID(Index: Integer; const Astring: string);
    function  FATURA_ID_Specified(Index: Integer): boolean;
    procedure SetEMAIL(Index: Integer; const Astring: string);
    function  EMAIL_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property FATURA_UUID:    string              Index (IS_OPTN or IS_UNQL) read FFATURA_UUID write SetFATURA_UUID stored FATURA_UUID_Specified;
    property FATURA_ID:      string              Index (IS_OPTN or IS_UNQL) read FFATURA_ID write SetFATURA_ID stored FATURA_ID_Specified;
    property EMAIL:          string              Index (IS_OPTN or IS_UNQL) read FEMAIL write SetEMAIL stored EMAIL_Specified;
  end;



  // ************************************************************************ //
  // XML       : INVOICE_PROPERTIES, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  INVOICE_PROPERTIES = class(TRemotable)
  private
    FEARSIV_FLAG: FLAG_VALUE;
    FEARSIV_PROPERTIES: EARSIV_PROPERTIES;
    FEARSIV_PROPERTIES_Specified: boolean;
    FPDF_PROPERTIES: PDF_PROPERTIES;
    FPDF_PROPERTIES_Specified: boolean;
    FARCHIVE_NOTE: string;
    FARCHIVE_NOTE_Specified: boolean;
    FINVOICE_CONTENT: base64Binary;
    FINVOICE_CONTENT_Specified: boolean;
    procedure SetEARSIV_PROPERTIES(Index: Integer; const AEARSIV_PROPERTIES: EARSIV_PROPERTIES);
    function  EARSIV_PROPERTIES_Specified(Index: Integer): boolean;
    procedure SetPDF_PROPERTIES(Index: Integer; const APDF_PROPERTIES: PDF_PROPERTIES);
    function  PDF_PROPERTIES_Specified(Index: Integer): boolean;
    procedure SetARCHIVE_NOTE(Index: Integer; const Astring: string);
    function  ARCHIVE_NOTE_Specified(Index: Integer): boolean;
    procedure SetINVOICE_CONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  INVOICE_CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property EARSIV_FLAG:       FLAG_VALUE         Index (IS_UNQL) read FEARSIV_FLAG write FEARSIV_FLAG;
    property EARSIV_PROPERTIES: EARSIV_PROPERTIES  Index (IS_OPTN or IS_UNQL) read FEARSIV_PROPERTIES write SetEARSIV_PROPERTIES stored EARSIV_PROPERTIES_Specified;
    property PDF_PROPERTIES:    PDF_PROPERTIES     Index (IS_OPTN or IS_UNQL) read FPDF_PROPERTIES write SetPDF_PROPERTIES stored PDF_PROPERTIES_Specified;
    property ARCHIVE_NOTE:      string             Index (IS_OPTN or IS_UNQL) read FARCHIVE_NOTE write SetARCHIVE_NOTE stored ARCHIVE_NOTE_Specified;
    property INVOICE_CONTENT:   base64Binary       Index (IS_OPTN or IS_UNQL) read FINVOICE_CONTENT write SetINVOICE_CONTENT stored INVOICE_CONTENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : PDF_PROPERTIES, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  PDF_PROPERTIES = class(TRemotable)
  private
    FEARSIV_PDF_FLAG: FLAG_VALUE;
    FEARSIV_PDF_FLAG_Specified: boolean;
    FPDF_SIGNATURE_FLAG: FLAG_VALUE;
    FPDF_SIGNATURE_FLAG_Specified: boolean;
    FPDF_NAME: string;
    FPDF_NAME_Specified: boolean;
    FEARCHIVE_PDF_XSLT_FILENAME: string;
    FEARCHIVE_PDF_XSLT_FILENAME_Specified: boolean;
    FPDF_CONTENT: base64Binary;
    FPDF_CONTENT_Specified: boolean;
    FEARCHIVE_PDF_VISUALSIGN_FILE: string;
    FEARCHIVE_PDF_VISUALSIGN_FILE_Specified: boolean;
    procedure SetEARSIV_PDF_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
    function  EARSIV_PDF_FLAG_Specified(Index: Integer): boolean;
    procedure SetPDF_SIGNATURE_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
    function  PDF_SIGNATURE_FLAG_Specified(Index: Integer): boolean;
    procedure SetPDF_NAME(Index: Integer; const Astring: string);
    function  PDF_NAME_Specified(Index: Integer): boolean;
    procedure SetEARCHIVE_PDF_XSLT_FILENAME(Index: Integer; const Astring: string);
    function  EARCHIVE_PDF_XSLT_FILENAME_Specified(Index: Integer): boolean;
    procedure SetPDF_CONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  PDF_CONTENT_Specified(Index: Integer): boolean;
    procedure SetEARCHIVE_PDF_VISUALSIGN_FILE(Index: Integer; const Astring: string);
    function  EARCHIVE_PDF_VISUALSIGN_FILE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property EARSIV_PDF_FLAG:              FLAG_VALUE    Index (IS_OPTN or IS_UNQL) read FEARSIV_PDF_FLAG write SetEARSIV_PDF_FLAG stored EARSIV_PDF_FLAG_Specified;
    property PDF_SIGNATURE_FLAG:           FLAG_VALUE    Index (IS_OPTN or IS_UNQL) read FPDF_SIGNATURE_FLAG write SetPDF_SIGNATURE_FLAG stored PDF_SIGNATURE_FLAG_Specified;
    property PDF_NAME:                     string        Index (IS_OPTN or IS_UNQL) read FPDF_NAME write SetPDF_NAME stored PDF_NAME_Specified;
    property EARCHIVE_PDF_XSLT_FILENAME:   string        Index (IS_OPTN or IS_UNQL) read FEARCHIVE_PDF_XSLT_FILENAME write SetEARCHIVE_PDF_XSLT_FILENAME stored EARCHIVE_PDF_XSLT_FILENAME_Specified;
    property PDF_CONTENT:                  base64Binary  Index (IS_OPTN or IS_UNQL) read FPDF_CONTENT write SetPDF_CONTENT stored PDF_CONTENT_Specified;
    property EARCHIVE_PDF_VISUALSIGN_FILE: string        Index (IS_OPTN or IS_UNQL) read FEARCHIVE_PDF_VISUALSIGN_FILE write SetEARCHIVE_PDF_VISUALSIGN_FILE stored EARCHIVE_PDF_VISUALSIGN_FILE_Specified;
  end;



  // ************************************************************************ //
  // XML       : MARK, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  MARK = class(TRemotable)
  private
    Fvalue: string;
    Fvalue_Specified: boolean;
    FEARCHIVE_INVOICE: Array_Of_EARCHIVEINV;
    FEARCHIVE_INVOICE_Specified: boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
    procedure SetEARCHIVE_INVOICE(Index: Integer; const AArray_Of_EARCHIVEINV: Array_Of_EARCHIVEINV);
    function  EARCHIVE_INVOICE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property value:            string                Index (IS_ATTR or IS_OPTN) read Fvalue write Setvalue stored value_Specified;
    property EARCHIVE_INVOICE: Array_Of_EARCHIVEINV  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FEARCHIVE_INVOICE write SetEARCHIVE_INVOICE stored EARCHIVE_INVOICE_Specified;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : GetEArchiveInvoiceStatusRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveInvoiceStatusRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FUUID: Array_Of_string;
    FUUID_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  UUID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property UUID:           Array_Of_string     Index (IS_OPTN or IS_UNBD or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelEArsivInvoiceContent, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  CancelEArsivInvoiceContent = class(TRemotable)
  private
    FUPLOAD_FLAG: FLAG_VALUE;
    FUPLOAD_FLAG_Specified: boolean;
    FFATURA_UUID: string;
    FFATURA_UUID_Specified: boolean;
    FFATURA_ID: string;
    FFATURA_ID_Specified: boolean;
    FEARSIV_CANCEL_EMAIL: string;
    FEARSIV_CANCEL_EMAIL_Specified: boolean;
    FDELETE_FLAG: string;
    FDELETE_FLAG_Specified: boolean;
    FIPTAL_TARIHI: TXSDate;
    FIPTAL_TARIHI_Specified: boolean;
    FTOPLAM_TUTAR: TXSDecimal;
    FTOPLAM_TUTAR_Specified: boolean;
    FINVOICE_CONTENT: base64Binary;
    FINVOICE_CONTENT_Specified: boolean;
    procedure SetUPLOAD_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
    function  UPLOAD_FLAG_Specified(Index: Integer): boolean;
    procedure SetFATURA_UUID(Index: Integer; const Astring: string);
    function  FATURA_UUID_Specified(Index: Integer): boolean;
    procedure SetFATURA_ID(Index: Integer; const Astring: string);
    function  FATURA_ID_Specified(Index: Integer): boolean;
    procedure SetEARSIV_CANCEL_EMAIL(Index: Integer; const Astring: string);
    function  EARSIV_CANCEL_EMAIL_Specified(Index: Integer): boolean;
    procedure SetDELETE_FLAG(Index: Integer; const Astring: string);
    function  DELETE_FLAG_Specified(Index: Integer): boolean;
    procedure SetIPTAL_TARIHI(Index: Integer; const ATXSDate: TXSDate);
    function  IPTAL_TARIHI_Specified(Index: Integer): boolean;
    procedure SetTOPLAM_TUTAR(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  TOPLAM_TUTAR_Specified(Index: Integer): boolean;
    procedure SetINVOICE_CONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  INVOICE_CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property UPLOAD_FLAG:         FLAG_VALUE    Index (IS_OPTN or IS_UNQL) read FUPLOAD_FLAG write SetUPLOAD_FLAG stored UPLOAD_FLAG_Specified;
    property FATURA_UUID:         string        Index (IS_OPTN or IS_UNQL) read FFATURA_UUID write SetFATURA_UUID stored FATURA_UUID_Specified;
    property FATURA_ID:           string        Index (IS_OPTN or IS_UNQL) read FFATURA_ID write SetFATURA_ID stored FATURA_ID_Specified;
    property EARSIV_CANCEL_EMAIL: string        Index (IS_OPTN or IS_UNQL) read FEARSIV_CANCEL_EMAIL write SetEARSIV_CANCEL_EMAIL stored EARSIV_CANCEL_EMAIL_Specified;
    property DELETE_FLAG:         string        Index (IS_OPTN or IS_UNQL) read FDELETE_FLAG write SetDELETE_FLAG stored DELETE_FLAG_Specified;
    property IPTAL_TARIHI:        TXSDate       Index (IS_OPTN or IS_UNQL) read FIPTAL_TARIHI write SetIPTAL_TARIHI stored IPTAL_TARIHI_Specified;
    property TOPLAM_TUTAR:        TXSDecimal    Index (IS_OPTN or IS_UNQL) read FTOPLAM_TUTAR write SetTOPLAM_TUTAR stored TOPLAM_TUTAR_Specified;
    property INVOICE_CONTENT:     base64Binary  Index (IS_OPTN or IS_UNQL) read FINVOICE_CONTENT write SetINVOICE_CONTENT stored INVOICE_CONTENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : HEADER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  HEADER = class(TRemotable)
  private
    FINVOICE_ID: string;
    FINVOICE_ID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FPROFILE_ID: string;
    FPROFILE_ID_Specified: boolean;
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSUB_STATUS: string;
    FSUB_STATUS_Specified: boolean;
    FISSUE_DATE: string;
    FISSUE_DATE_Specified: boolean;
    FCDATE: string;
    FCDATE_Specified: boolean;
    FSENDER: string;
    FSENDER_Specified: boolean;
    FRECEIVER: string;
    FRECEIVER_Specified: boolean;
    procedure SetINVOICE_ID(Index: Integer; const Astring: string);
    function  INVOICE_ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetPROFILE_ID(Index: Integer; const Astring: string);
    function  PROFILE_ID_Specified(Index: Integer): boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSUB_STATUS(Index: Integer; const Astring: string);
    function  SUB_STATUS_Specified(Index: Integer): boolean;
    procedure SetISSUE_DATE(Index: Integer; const Astring: string);
    function  ISSUE_DATE_Specified(Index: Integer): boolean;
    procedure SetCDATE(Index: Integer; const Astring: string);
    function  CDATE_Specified(Index: Integer): boolean;
    procedure SetSENDER(Index: Integer; const Astring: string);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const Astring: string);
    function  RECEIVER_Specified(Index: Integer): boolean;
  published
    property INVOICE_ID: string  Index (IS_OPTN or IS_UNQL) read FINVOICE_ID write SetINVOICE_ID stored INVOICE_ID_Specified;
    property UUID:       string  Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property PROFILE_ID: string  Index (IS_OPTN or IS_UNQL) read FPROFILE_ID write SetPROFILE_ID stored PROFILE_ID_Specified;
    property STATUS:     string  Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property SUB_STATUS: string  Index (IS_OPTN or IS_UNQL) read FSUB_STATUS write SetSUB_STATUS stored SUB_STATUS_Specified;
    property ISSUE_DATE: string  Index (IS_OPTN or IS_UNQL) read FISSUE_DATE write SetISSUE_DATE stored ISSUE_DATE_Specified;
    property CDATE:      string  Index (IS_OPTN or IS_UNQL) read FCDATE write SetCDATE stored CDATE_Specified;
    property SENDER:     string  Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER:   string  Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelEDefterContent, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  CancelEDefterContent = class(TRemotable)
  private
    FVKN: string;
    FVKN_Specified: boolean;
    FDONEM: string;
    FDONEM_Specified: boolean;
    procedure SetVKN(Index: Integer; const Astring: string);
    function  VKN_Specified(Index: Integer): boolean;
    procedure SetDONEM(Index: Integer; const Astring: string);
    function  DONEM_Specified(Index: Integer): boolean;
  published
    property VKN:   string  Index (IS_OPTN or IS_UNQL) read FVKN write SetVKN stored VKN_Specified;
    property DONEM: string  Index (IS_OPTN or IS_UNQL) read FDONEM write SetDONEM stored DONEM_Specified;
  end;



  // ************************************************************************ //
  // XML       : GENERIC_CONTENT, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GENERIC_CONTENT = class(TRemotable)
  private
    FFILE_NAME: string;
    FFILE_NAME_Specified: boolean;
    FPAR_INDEX1: string;
    FPAR_INDEX1_Specified: boolean;
    FPAR_INDEX2: string;
    FPAR_INDEX2_Specified: boolean;
    FPAR_INDEX3: string;
    FPAR_INDEX3_Specified: boolean;
    FPAR_INDEX4: string;
    FPAR_INDEX4_Specified: boolean;
    FPAR_INDEX5: string;
    FPAR_INDEX5_Specified: boolean;
    FPAR_INDEX6: string;
    FPAR_INDEX6_Specified: boolean;
    FFIX_PAR1: string;
    FFIX_PAR1_Specified: boolean;
    FFIX_PAR2: string;
    FFIX_PAR2_Specified: boolean;
    FFIX_PAR3: string;
    FFIX_PAR3_Specified: boolean;
    FFIX_PAR4: string;
    FFIX_PAR4_Specified: boolean;
    FFIX_PAR5: string;
    FFIX_PAR5_Specified: boolean;
    FFIX_PAR6: string;
    FFIX_PAR6_Specified: boolean;
    FDATE_INDEX1: TXSDate;
    FDATE_INDEX1_Specified: boolean;
    FDATE_INDEX2: TXSDate;
    FDATE_INDEX2_Specified: boolean;
    FDATE_INDEX3: TXSDate;
    FDATE_INDEX3_Specified: boolean;
    FARCHIVE_TYPE: string;
    FARCHIVE_TYPE_Specified: boolean;
    FARCHIVE_SUB_TYPE: string;
    FARCHIVE_SUB_TYPE_Specified: boolean;
    FFILE_TYPE: string;
    FFILE_TYPE_Specified: boolean;
    FDIRECTION: string;
    FDIRECTION_Specified: boolean;
    FPARSE_FLAG: string;
    FPARSE_FLAG_Specified: boolean;
    FOVERRIDE_: string;
    FOVERRIDE__Specified: boolean;
    FCONTENT: Array_Of_base64Binary;
    FCONTENT_Specified: boolean;
    procedure SetFILE_NAME(Index: Integer; const Astring: string);
    function  FILE_NAME_Specified(Index: Integer): boolean;
    procedure SetPAR_INDEX1(Index: Integer; const Astring: string);
    function  PAR_INDEX1_Specified(Index: Integer): boolean;
    procedure SetPAR_INDEX2(Index: Integer; const Astring: string);
    function  PAR_INDEX2_Specified(Index: Integer): boolean;
    procedure SetPAR_INDEX3(Index: Integer; const Astring: string);
    function  PAR_INDEX3_Specified(Index: Integer): boolean;
    procedure SetPAR_INDEX4(Index: Integer; const Astring: string);
    function  PAR_INDEX4_Specified(Index: Integer): boolean;
    procedure SetPAR_INDEX5(Index: Integer; const Astring: string);
    function  PAR_INDEX5_Specified(Index: Integer): boolean;
    procedure SetPAR_INDEX6(Index: Integer; const Astring: string);
    function  PAR_INDEX6_Specified(Index: Integer): boolean;
    procedure SetFIX_PAR1(Index: Integer; const Astring: string);
    function  FIX_PAR1_Specified(Index: Integer): boolean;
    procedure SetFIX_PAR2(Index: Integer; const Astring: string);
    function  FIX_PAR2_Specified(Index: Integer): boolean;
    procedure SetFIX_PAR3(Index: Integer; const Astring: string);
    function  FIX_PAR3_Specified(Index: Integer): boolean;
    procedure SetFIX_PAR4(Index: Integer; const Astring: string);
    function  FIX_PAR4_Specified(Index: Integer): boolean;
    procedure SetFIX_PAR5(Index: Integer; const Astring: string);
    function  FIX_PAR5_Specified(Index: Integer): boolean;
    procedure SetFIX_PAR6(Index: Integer; const Astring: string);
    function  FIX_PAR6_Specified(Index: Integer): boolean;
    procedure SetDATE_INDEX1(Index: Integer; const ATXSDate: TXSDate);
    function  DATE_INDEX1_Specified(Index: Integer): boolean;
    procedure SetDATE_INDEX2(Index: Integer; const ATXSDate: TXSDate);
    function  DATE_INDEX2_Specified(Index: Integer): boolean;
    procedure SetDATE_INDEX3(Index: Integer; const ATXSDate: TXSDate);
    function  DATE_INDEX3_Specified(Index: Integer): boolean;
    procedure SetARCHIVE_TYPE(Index: Integer; const Astring: string);
    function  ARCHIVE_TYPE_Specified(Index: Integer): boolean;
    procedure SetARCHIVE_SUB_TYPE(Index: Integer; const Astring: string);
    function  ARCHIVE_SUB_TYPE_Specified(Index: Integer): boolean;
    procedure SetFILE_TYPE(Index: Integer; const Astring: string);
    function  FILE_TYPE_Specified(Index: Integer): boolean;
    procedure SetDIRECTION(Index: Integer; const Astring: string);
    function  DIRECTION_Specified(Index: Integer): boolean;
    procedure SetPARSE_FLAG(Index: Integer; const Astring: string);
    function  PARSE_FLAG_Specified(Index: Integer): boolean;
    procedure SetOVERRIDE_(Index: Integer; const Astring: string);
    function  OVERRIDE__Specified(Index: Integer): boolean;
    procedure SetCONTENT(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FILE_NAME:        string                 Index (IS_OPTN or IS_UNQL) read FFILE_NAME write SetFILE_NAME stored FILE_NAME_Specified;
    property PAR_INDEX1:       string                 Index (IS_OPTN or IS_UNQL) read FPAR_INDEX1 write SetPAR_INDEX1 stored PAR_INDEX1_Specified;
    property PAR_INDEX2:       string                 Index (IS_OPTN or IS_UNQL) read FPAR_INDEX2 write SetPAR_INDEX2 stored PAR_INDEX2_Specified;
    property PAR_INDEX3:       string                 Index (IS_OPTN or IS_UNQL) read FPAR_INDEX3 write SetPAR_INDEX3 stored PAR_INDEX3_Specified;
    property PAR_INDEX4:       string                 Index (IS_OPTN or IS_UNQL) read FPAR_INDEX4 write SetPAR_INDEX4 stored PAR_INDEX4_Specified;
    property PAR_INDEX5:       string                 Index (IS_OPTN or IS_UNQL) read FPAR_INDEX5 write SetPAR_INDEX5 stored PAR_INDEX5_Specified;
    property PAR_INDEX6:       string                 Index (IS_OPTN or IS_UNQL) read FPAR_INDEX6 write SetPAR_INDEX6 stored PAR_INDEX6_Specified;
    property FIX_PAR1:         string                 Index (IS_OPTN or IS_UNQL) read FFIX_PAR1 write SetFIX_PAR1 stored FIX_PAR1_Specified;
    property FIX_PAR2:         string                 Index (IS_OPTN or IS_UNQL) read FFIX_PAR2 write SetFIX_PAR2 stored FIX_PAR2_Specified;
    property FIX_PAR3:         string                 Index (IS_OPTN or IS_UNQL) read FFIX_PAR3 write SetFIX_PAR3 stored FIX_PAR3_Specified;
    property FIX_PAR4:         string                 Index (IS_OPTN or IS_UNQL) read FFIX_PAR4 write SetFIX_PAR4 stored FIX_PAR4_Specified;
    property FIX_PAR5:         string                 Index (IS_OPTN or IS_UNQL) read FFIX_PAR5 write SetFIX_PAR5 stored FIX_PAR5_Specified;
    property FIX_PAR6:         string                 Index (IS_OPTN or IS_UNQL) read FFIX_PAR6 write SetFIX_PAR6 stored FIX_PAR6_Specified;
    property DATE_INDEX1:      TXSDate                Index (IS_OPTN or IS_UNQL) read FDATE_INDEX1 write SetDATE_INDEX1 stored DATE_INDEX1_Specified;
    property DATE_INDEX2:      TXSDate                Index (IS_OPTN or IS_UNQL) read FDATE_INDEX2 write SetDATE_INDEX2 stored DATE_INDEX2_Specified;
    property DATE_INDEX3:      TXSDate                Index (IS_OPTN or IS_UNQL) read FDATE_INDEX3 write SetDATE_INDEX3 stored DATE_INDEX3_Specified;
    property ARCHIVE_TYPE:     string                 Index (IS_OPTN or IS_UNQL) read FARCHIVE_TYPE write SetARCHIVE_TYPE stored ARCHIVE_TYPE_Specified;
    property ARCHIVE_SUB_TYPE: string                 Index (IS_OPTN or IS_UNQL) read FARCHIVE_SUB_TYPE write SetARCHIVE_SUB_TYPE stored ARCHIVE_SUB_TYPE_Specified;
    property FILE_TYPE:        string                 Index (IS_OPTN or IS_UNQL) read FFILE_TYPE write SetFILE_TYPE stored FILE_TYPE_Specified;
    property DIRECTION:        string                 Index (IS_OPTN or IS_UNQL) read FDIRECTION write SetDIRECTION stored DIRECTION_Specified;
    property PARSE_FLAG:       string                 Index (IS_OPTN or IS_UNQL) read FPARSE_FLAG write SetPARSE_FLAG stored PARSE_FLAG_Specified;
    property OVERRIDE_:        string                 Index (IS_OPTN or IS_UNQL) read FOVERRIDE_ write SetOVERRIDE_ stored OVERRIDE__Specified;
    property CONTENT:          Array_Of_base64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FCONTENT write SetCONTENT stored CONTENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceExtendedResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceExtendedResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    FINVOICE_ID: string;
    FINVOICE_ID_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
    procedure SetINVOICE_ID(Index: Integer; const Astring: string);
    function  INVOICE_ID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
    property INVOICE_ID:     string              Index (IS_OPTN or IS_UNQL) read FINVOICE_ID write SetINVOICE_ID stored INVOICE_ID_Specified;
  end;



  // ************************************************************************ //
  // XML       : base64Binary, global, <complexType>
  // Namespace : http://www.w3.org/2005/05/xmlmime
  // ************************************************************************ //
  base64Binary = class(TRemotable)
  private
    FText: TByteDynArray;
    FcontentType: string;
    FcontentType_Specified: boolean;
    procedure SetcontentType(Index: Integer; const Astring: string);
    function  contentType_Specified(Index: Integer): boolean;
  published
    property Text:        TByteDynArray  Index (IS_TEXT) read FText write FText;
    property contentType: string         Index (IS_ATTR or IS_OPTN or IS_QUAL) read FcontentType write SetcontentType stored contentType_Specified;
  end;



  // ************************************************************************ //
  // XML       : HEADER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  HEADER2 = class(TRemotable)
  private
    FINVOICE_ID: string;
    FINVOICE_ID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FSENDER_NAME: string;
    FSENDER_NAME_Specified: boolean;
    FSENDER_IDENTIFIER: string;
    FSENDER_IDENTIFIER_Specified: boolean;
    FCUSTOMER_NAME: string;
    FCUSTOMER_NAME_Specified: boolean;
    FCUSTOMER_IDENTIFIER: string;
    FCUSTOMER_IDENTIFIER_Specified: boolean;
    FPROFILE_ID: string;
    FPROFILE_ID_Specified: boolean;
    FINVOICE_TYPE: string;
    FINVOICE_TYPE_Specified: boolean;
    FEARCHIVE_TYPE: string;
    FEARCHIVE_TYPE_Specified: boolean;
    FSENDING_TYPE: string;
    FSENDING_TYPE_Specified: boolean;
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSTATUS_CODE: string;
    FSTATUS_CODE_Specified: boolean;
    FISSUE_DATE: string;
    FISSUE_DATE_Specified: boolean;
    FPAYABLE_AMOUNT: string;
    FPAYABLE_AMOUNT_Specified: boolean;
    FTAXABLE_AMOUNT: string;
    FTAXABLE_AMOUNT_Specified: boolean;
    FCURRENCY_CODE: string;
    FCURRENCY_CODE_Specified: boolean;
    FREPORTED: string;
    FREPORTED_Specified: boolean;
    procedure SetINVOICE_ID(Index: Integer; const Astring: string);
    function  INVOICE_ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetSENDER_NAME(Index: Integer; const Astring: string);
    function  SENDER_NAME_Specified(Index: Integer): boolean;
    procedure SetSENDER_IDENTIFIER(Index: Integer; const Astring: string);
    function  SENDER_IDENTIFIER_Specified(Index: Integer): boolean;
    procedure SetCUSTOMER_NAME(Index: Integer; const Astring: string);
    function  CUSTOMER_NAME_Specified(Index: Integer): boolean;
    procedure SetCUSTOMER_IDENTIFIER(Index: Integer; const Astring: string);
    function  CUSTOMER_IDENTIFIER_Specified(Index: Integer): boolean;
    procedure SetPROFILE_ID(Index: Integer; const Astring: string);
    function  PROFILE_ID_Specified(Index: Integer): boolean;
    procedure SetINVOICE_TYPE(Index: Integer; const Astring: string);
    function  INVOICE_TYPE_Specified(Index: Integer): boolean;
    procedure SetEARCHIVE_TYPE(Index: Integer; const Astring: string);
    function  EARCHIVE_TYPE_Specified(Index: Integer): boolean;
    procedure SetSENDING_TYPE(Index: Integer; const Astring: string);
    function  SENDING_TYPE_Specified(Index: Integer): boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSTATUS_CODE(Index: Integer; const Astring: string);
    function  STATUS_CODE_Specified(Index: Integer): boolean;
    procedure SetISSUE_DATE(Index: Integer; const Astring: string);
    function  ISSUE_DATE_Specified(Index: Integer): boolean;
    procedure SetPAYABLE_AMOUNT(Index: Integer; const Astring: string);
    function  PAYABLE_AMOUNT_Specified(Index: Integer): boolean;
    procedure SetTAXABLE_AMOUNT(Index: Integer; const Astring: string);
    function  TAXABLE_AMOUNT_Specified(Index: Integer): boolean;
    procedure SetCURRENCY_CODE(Index: Integer; const Astring: string);
    function  CURRENCY_CODE_Specified(Index: Integer): boolean;
    procedure SetREPORTED(Index: Integer; const Astring: string);
    function  REPORTED_Specified(Index: Integer): boolean;
  published
    property INVOICE_ID:          string  Index (IS_OPTN or IS_UNQL) read FINVOICE_ID write SetINVOICE_ID stored INVOICE_ID_Specified;
    property UUID:                string  Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property SENDER_NAME:         string  Index (IS_OPTN or IS_UNQL) read FSENDER_NAME write SetSENDER_NAME stored SENDER_NAME_Specified;
    property SENDER_IDENTIFIER:   string  Index (IS_OPTN or IS_UNQL) read FSENDER_IDENTIFIER write SetSENDER_IDENTIFIER stored SENDER_IDENTIFIER_Specified;
    property CUSTOMER_NAME:       string  Index (IS_OPTN or IS_UNQL) read FCUSTOMER_NAME write SetCUSTOMER_NAME stored CUSTOMER_NAME_Specified;
    property CUSTOMER_IDENTIFIER: string  Index (IS_OPTN or IS_UNQL) read FCUSTOMER_IDENTIFIER write SetCUSTOMER_IDENTIFIER stored CUSTOMER_IDENTIFIER_Specified;
    property PROFILE_ID:          string  Index (IS_OPTN or IS_UNQL) read FPROFILE_ID write SetPROFILE_ID stored PROFILE_ID_Specified;
    property INVOICE_TYPE:        string  Index (IS_OPTN or IS_UNQL) read FINVOICE_TYPE write SetINVOICE_TYPE stored INVOICE_TYPE_Specified;
    property EARCHIVE_TYPE:       string  Index (IS_OPTN or IS_UNQL) read FEARCHIVE_TYPE write SetEARCHIVE_TYPE stored EARCHIVE_TYPE_Specified;
    property SENDING_TYPE:        string  Index (IS_OPTN or IS_UNQL) read FSENDING_TYPE write SetSENDING_TYPE stored SENDING_TYPE_Specified;
    property STATUS:              string  Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property STATUS_CODE:         string  Index (IS_OPTN or IS_UNQL) read FSTATUS_CODE write SetSTATUS_CODE stored STATUS_CODE_Specified;
    property ISSUE_DATE:          string  Index (IS_OPTN or IS_UNQL) read FISSUE_DATE write SetISSUE_DATE stored ISSUE_DATE_Specified;
    property PAYABLE_AMOUNT:      string  Index (IS_OPTN or IS_UNQL) read FPAYABLE_AMOUNT write SetPAYABLE_AMOUNT stored PAYABLE_AMOUNT_Specified;
    property TAXABLE_AMOUNT:      string  Index (IS_OPTN or IS_UNQL) read FTAXABLE_AMOUNT write SetTAXABLE_AMOUNT stored TAXABLE_AMOUNT_Specified;
    property CURRENCY_CODE:       string  Index (IS_OPTN or IS_UNQL) read FCURRENCY_CODE write SetCURRENCY_CODE stored CURRENCY_CODE_Specified;
    property REPORTED:            string  Index (IS_OPTN or IS_UNQL) read FREPORTED write SetREPORTED stored REPORTED_Specified;
  end;



  // ************************************************************************ //
  // XML       : REPORT, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  REPORT = class(TRemotable)
  private
    FREPORT_NO: string;
    FREPORT_NO_Specified: boolean;
    FREPORT_PERIOD: string;
    FREPORT_PERIOD_Specified: boolean;
    FREPORT_STATUS: string;
    FREPORT_STATUS_Specified: boolean;
    FREPORT_SUB_STATUS: string;
    FREPORT_SUB_STATUS_Specified: boolean;
    procedure SetREPORT_NO(Index: Integer; const Astring: string);
    function  REPORT_NO_Specified(Index: Integer): boolean;
    procedure SetREPORT_PERIOD(Index: Integer; const Astring: string);
    function  REPORT_PERIOD_Specified(Index: Integer): boolean;
    procedure SetREPORT_STATUS(Index: Integer; const Astring: string);
    function  REPORT_STATUS_Specified(Index: Integer): boolean;
    procedure SetREPORT_SUB_STATUS(Index: Integer; const Astring: string);
    function  REPORT_SUB_STATUS_Specified(Index: Integer): boolean;
  published
    property REPORT_NO:         string  Index (IS_OPTN or IS_UNQL) read FREPORT_NO write SetREPORT_NO stored REPORT_NO_Specified;
    property REPORT_PERIOD:     string  Index (IS_OPTN or IS_UNQL) read FREPORT_PERIOD write SetREPORT_PERIOD stored REPORT_PERIOD_Specified;
    property REPORT_STATUS:     string  Index (IS_OPTN or IS_UNQL) read FREPORT_STATUS write SetREPORT_STATUS stored REPORT_STATUS_Specified;
    property REPORT_SUB_STATUS: string  Index (IS_OPTN or IS_UNQL) read FREPORT_SUB_STATUS write SetREPORT_SUB_STATUS stored REPORT_SUB_STATUS_Specified;
  end;



  // ************************************************************************ //
  // XML       : DOCUMENT, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  DOCUMENT = class(TRemotable)
  private
    FDONEM: string;
    FDONEM_Specified: boolean;
    FDOC_NAME: string;
    FDOC_NAME_Specified: boolean;
    FDOC_TYPE: DOC_TYPE;
    FSUBE_NO: string;
    FSUBE_NO_Specified: boolean;
    procedure SetDONEM(Index: Integer; const Astring: string);
    function  DONEM_Specified(Index: Integer): boolean;
    procedure SetDOC_NAME(Index: Integer; const Astring: string);
    function  DOC_NAME_Specified(Index: Integer): boolean;
    procedure SetSUBE_NO(Index: Integer; const Astring: string);
    function  SUBE_NO_Specified(Index: Integer): boolean;
  published
    property DONEM:    string    Index (IS_OPTN or IS_UNQL) read FDONEM write SetDONEM stored DONEM_Specified;
    property DOC_NAME: string    Index (IS_OPTN or IS_UNQL) read FDOC_NAME write SetDOC_NAME stored DOC_NAME_Specified;
    property DOC_TYPE: DOC_TYPE  Index (IS_UNQL) read FDOC_TYPE write FDOC_TYPE;
    property SUBE_NO:  string    Index (IS_OPTN or IS_UNQL) read FSUBE_NO write SetSUBE_NO stored SUBE_NO_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceWriteResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceWriteResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetGenericArchiveStatusRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetGenericArchiveStatusRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FDONEM: string;
    FDONEM_Specified: boolean;
    FDONEM_PARCA_SAYISI: string;
    FDONEM_PARCA_SAYISI_Specified: boolean;
    FDONEM_PARCA_KODU: string;
    FDONEM_PARCA_KODU_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetDONEM(Index: Integer; const Astring: string);
    function  DONEM_Specified(Index: Integer): boolean;
    procedure SetDONEM_PARCA_SAYISI(Index: Integer; const Astring: string);
    function  DONEM_PARCA_SAYISI_Specified(Index: Integer): boolean;
    procedure SetDONEM_PARCA_KODU(Index: Integer; const Astring: string);
    function  DONEM_PARCA_KODU_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:     REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property DONEM:              string              Index (IS_OPTN or IS_UNQL) read FDONEM write SetDONEM stored DONEM_Specified;
    property DONEM_PARCA_SAYISI: string              Index (IS_OPTN or IS_UNQL) read FDONEM_PARCA_SAYISI write SetDONEM_PARCA_SAYISI stored DONEM_PARCA_SAYISI_Specified;
    property DONEM_PARCA_KODU:   string              Index (IS_OPTN or IS_UNQL) read FDONEM_PARCA_KODU write SetDONEM_PARCA_KODU stored DONEM_PARCA_KODU_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetGenericArchiveStatusResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetGenericArchiveStatusResponse = class(TRemotable)
  private
    FGEN_ARCHIVE_DOC: base64Binary;
    FGEN_ARCHIVE_DOC_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetGEN_ARCHIVE_DOC(Index: Integer; const Abase64Binary: base64Binary);
    function  GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property GEN_ARCHIVE_DOC: base64Binary        Index (IS_OPTN or IS_UNQL) read FGEN_ARCHIVE_DOC write SetGEN_ARCHIVE_DOC stored GEN_ARCHIVE_DOC_Specified;
    property REQUEST_RETURN:  REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:      REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : DataObject, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  DataObject = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : GetEmailEarchiveInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEmailEarchiveInvoiceResponse = class(TRemotable)
  private
    FGEN_ARCHIVE_DOC: base64Binary;
    FGEN_ARCHIVE_DOC_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetGEN_ARCHIVE_DOC(Index: Integer; const Abase64Binary: base64Binary);
    function  GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property GEN_ARCHIVE_DOC: base64Binary        Index (IS_OPTN or IS_UNQL) read FGEN_ARCHIVE_DOC write SetGEN_ARCHIVE_DOC stored GEN_ARCHIVE_DOC_Specified;
    property REQUEST_RETURN:  REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:      REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetGenericArchiveByPeriodRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetGenericArchiveByPeriodRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FDONEM: string;
    FDONEM_Specified: boolean;
    FVKN: string;
    FVKN_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetDONEM(Index: Integer; const Astring: string);
    function  DONEM_Specified(Index: Integer): boolean;
    procedure SetVKN(Index: Integer; const Astring: string);
    function  VKN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property DONEM:          string              Index (IS_OPTN or IS_UNQL) read FDONEM write SetDONEM stored DONEM_Specified;
    property VKN:            string              Index (IS_OPTN or IS_UNQL) read FVKN write SetVKN stored VKN_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetGenericArchiveByPeriodResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetGenericArchiveByPeriodResponse = class(TRemotable)
  private
    FGEN_ARCHIVE_DOC: base64Binary;
    FGEN_ARCHIVE_DOC_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetGEN_ARCHIVE_DOC(Index: Integer; const Abase64Binary: base64Binary);
    function  GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property GEN_ARCHIVE_DOC: base64Binary        Index (IS_OPTN or IS_UNQL) read FGEN_ARCHIVE_DOC write SetGEN_ARCHIVE_DOC stored GEN_ARCHIVE_DOC_Specified;
    property REQUEST_RETURN:  REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:      REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceReadRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceReadRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FINVOICEID: string;
    FINVOICEID_Specified: boolean;
    FPORTAL_DIRECTION: string;
    FPORTAL_DIRECTION_Specified: boolean;
    FEXTERNAL_ID: Integer;
    FEXTERNAL_ID_Specified: boolean;
    FPROFILE: string;
    FPROFILE_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetINVOICEID(Index: Integer; const Astring: string);
    function  INVOICEID_Specified(Index: Integer): boolean;
    procedure SetPORTAL_DIRECTION(Index: Integer; const Astring: string);
    function  PORTAL_DIRECTION_Specified(Index: Integer): boolean;
    procedure SetEXTERNAL_ID(Index: Integer; const AInteger: Integer);
    function  EXTERNAL_ID_Specified(Index: Integer): boolean;
    procedure SetPROFILE(Index: Integer; const Astring: string);
    function  PROFILE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:   REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property INVOICEID:        string              Index (IS_OPTN or IS_UNQL) read FINVOICEID write SetINVOICEID stored INVOICEID_Specified;
    property PORTAL_DIRECTION: string              Index (IS_OPTN or IS_UNQL) read FPORTAL_DIRECTION write SetPORTAL_DIRECTION stored PORTAL_DIRECTION_Specified;
    property EXTERNAL_ID:      Integer             Index (IS_OPTN or IS_UNQL) read FEXTERNAL_ID write SetEXTERNAL_ID stored EXTERNAL_ID_Specified;
    property PROFILE:          string              Index (IS_OPTN or IS_UNQL) read FPROFILE write SetPROFILE stored PROFILE_Specified;
  end;



  // ************************************************************************ //
  // XML       : EArchiveInvoiceCountResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  EArchiveInvoiceCountResponse = class(TRemotable)
  private
    FPORTAL: Integer;
    FPORTAL_Specified: boolean;
    FWS: Integer;
    FWS_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetPORTAL(Index: Integer; const AInteger: Integer);
    function  PORTAL_Specified(Index: Integer): boolean;
    procedure SetWS(Index: Integer; const AInteger: Integer);
    function  WS_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property PORTAL:     Integer            Index (IS_OPTN or IS_UNQL) read FPORTAL write SetPORTAL stored PORTAL_Specified;
    property WS:         Integer            Index (IS_OPTN or IS_UNQL) read FWS write SetWS stored WS_Specified;
    property ERROR_TYPE: REQUEST_ERRORType  Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveGetInvoiceInfoResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveGetInvoiceInfoResponse = class(TRemotable)
  private
    FPAGE_SIZE: Integer;
    FPAGE_SIZE_Specified: boolean;
    FPAGE_NUMBER: Integer;
    FPAGE_NUMBER_Specified: boolean;
    FTOTAL_INVOICE_COUNT: Integer;
    FTOTAL_INVOICE_COUNT_Specified: boolean;
    FINVOICE: Array_Of_INVOICE;
    FINVOICE_Specified: boolean;
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetPAGE_SIZE(Index: Integer; const AInteger: Integer);
    function  PAGE_SIZE_Specified(Index: Integer): boolean;
    procedure SetPAGE_NUMBER(Index: Integer; const AInteger: Integer);
    function  PAGE_NUMBER_Specified(Index: Integer): boolean;
    procedure SetTOTAL_INVOICE_COUNT(Index: Integer; const AInteger: Integer);
    function  TOTAL_INVOICE_COUNT_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArray_Of_INVOICE: Array_Of_INVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property PAGE_SIZE:           Integer             Index (IS_OPTN or IS_UNQL) read FPAGE_SIZE write SetPAGE_SIZE stored PAGE_SIZE_Specified;
    property PAGE_NUMBER:         Integer             Index (IS_OPTN or IS_UNQL) read FPAGE_NUMBER write SetPAGE_NUMBER stored PAGE_NUMBER_Specified;
    property TOTAL_INVOICE_COUNT: Integer             Index (IS_OPTN or IS_UNQL) read FTOTAL_INVOICE_COUNT write SetTOTAL_INVOICE_COUNT stored TOTAL_INVOICE_COUNT_Specified;
    property INVOICE:             Array_Of_INVOICE    Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property REQUEST_RETURN:      REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:          REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveInvoiceCopyRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveInvoiceCopyRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FINVOICE_UUID: Array_Of_string;
    FINVOICE_UUID_Specified: boolean;
    FPORTAL_DIRECTION: string;
    FPORTAL_DIRECTION_Specified: boolean;
    FEXTERNAL_ID: Integer;
    FEXTERNAL_ID_Specified: boolean;
    FARCHIVE_NOTE: string;
    FARCHIVE_NOTE_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetINVOICE_UUID(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  INVOICE_UUID_Specified(Index: Integer): boolean;
    procedure SetPORTAL_DIRECTION(Index: Integer; const Astring: string);
    function  PORTAL_DIRECTION_Specified(Index: Integer): boolean;
    procedure SetEXTERNAL_ID(Index: Integer; const AInteger: Integer);
    function  EXTERNAL_ID_Specified(Index: Integer): boolean;
    procedure SetARCHIVE_NOTE(Index: Integer; const Astring: string);
    function  ARCHIVE_NOTE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:   REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property INVOICE_UUID:     Array_Of_string     Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE_UUID write SetINVOICE_UUID stored INVOICE_UUID_Specified;
    property PORTAL_DIRECTION: string              Index (IS_OPTN or IS_UNQL) read FPORTAL_DIRECTION write SetPORTAL_DIRECTION stored PORTAL_DIRECTION_Specified;
    property EXTERNAL_ID:      Integer             Index (IS_OPTN or IS_UNQL) read FEXTERNAL_ID write SetEXTERNAL_ID stored EXTERNAL_ID_Specified;
    property ARCHIVE_NOTE:     string              Index (IS_OPTN or IS_UNQL) read FARCHIVE_NOTE write SetARCHIVE_NOTE stored ARCHIVE_NOTE_Specified;
  end;



  // ************************************************************************ //
  // XML       : ArchiveGetInvoiceInfoRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ArchiveGetInvoiceInfoRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FPAGE_SIZE: Integer;
    FPAGE_NUMBER: Integer;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property PAGE_SIZE:      Integer             Index (IS_UNQL) read FPAGE_SIZE write FPAGE_SIZE;
    property PAGE_NUMBER:    Integer             Index (IS_UNQL) read FPAGE_NUMBER write FPAGE_NUMBER;
  end;



  // ************************************************************************ //
  // XML       : Elements, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  Elements = class(TRemotable)
  private
    FElementType: string;
    FElementType_Specified: boolean;
    FElementCount: Integer;
    FElementList: Array_Of_base64Binary;
    FElementList_Specified: boolean;
    procedure SetElementType(Index: Integer; const Astring: string);
    function  ElementType_Specified(Index: Integer): boolean;
    procedure SetElementList(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
    function  ElementList_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ElementType:  string                 Index (IS_OPTN or IS_UNQL) read FElementType write SetElementType stored ElementType_Specified;
    property ElementCount: Integer                Index (IS_UNQL) read FElementCount write FElementCount;
    property ElementList:  Array_Of_base64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FElementList write SetElementList stored ElementList_Specified;
  end;



  // ************************************************************************ //
  // XML       : EARSIV_PROPERTIES, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  EARSIV_PROPERTIES = class(TRemotable)
  private
    FEARSIV_TYPE: EARSIV_TYPE_VALUE;
    FEARSIV_EMAIL_FLAG: FLAG_VALUE;
    FEARSIV_EMAIL_FLAG_Specified: boolean;
    FEARSIV_EMAIL: Array_Of_string;
    FEARSIV_EMAIL_Specified: boolean;
    FSUB_STATUS: SUB_STATUS_VALUE;
    FSUB_STATUS_Specified: boolean;
    FARCH_INVOICE_ID: Integer;
    FARCH_INVOICE_ID_Specified: boolean;
    FSERI: string;
    FSERI_Specified: boolean;
    FEARCHIVE_TEST_FLAG: FLAG_VALUE;
    FEARCHIVE_TEST_FLAG_Specified: boolean;
    procedure SetEARSIV_EMAIL_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
    function  EARSIV_EMAIL_FLAG_Specified(Index: Integer): boolean;
    procedure SetEARSIV_EMAIL(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  EARSIV_EMAIL_Specified(Index: Integer): boolean;
    procedure SetSUB_STATUS(Index: Integer; const ASUB_STATUS_VALUE: SUB_STATUS_VALUE);
    function  SUB_STATUS_Specified(Index: Integer): boolean;
    procedure SetARCH_INVOICE_ID(Index: Integer; const AInteger: Integer);
    function  ARCH_INVOICE_ID_Specified(Index: Integer): boolean;
    procedure SetSERI(Index: Integer; const Astring: string);
    function  SERI_Specified(Index: Integer): boolean;
    procedure SetEARCHIVE_TEST_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
    function  EARCHIVE_TEST_FLAG_Specified(Index: Integer): boolean;
  published
    property EARSIV_TYPE:        EARSIV_TYPE_VALUE  Index (IS_UNQL) read FEARSIV_TYPE write FEARSIV_TYPE;
    property EARSIV_EMAIL_FLAG:  FLAG_VALUE         Index (IS_OPTN or IS_UNQL) read FEARSIV_EMAIL_FLAG write SetEARSIV_EMAIL_FLAG stored EARSIV_EMAIL_FLAG_Specified;
    property EARSIV_EMAIL:       Array_Of_string    Index (IS_OPTN or IS_UNBD or IS_UNQL) read FEARSIV_EMAIL write SetEARSIV_EMAIL stored EARSIV_EMAIL_Specified;
    property SUB_STATUS:         SUB_STATUS_VALUE   Index (IS_OPTN or IS_UNQL) read FSUB_STATUS write SetSUB_STATUS stored SUB_STATUS_Specified;
    property ARCH_INVOICE_ID:    Integer            Index (IS_OPTN or IS_UNQL) read FARCH_INVOICE_ID write SetARCH_INVOICE_ID stored ARCH_INVOICE_ID_Specified;
    property SERI:               string             Index (IS_OPTN or IS_UNQL) read FSERI write SetSERI stored SERI_Specified;
    property EARCHIVE_TEST_FLAG: FLAG_VALUE         Index (IS_OPTN or IS_UNQL) read FEARCHIVE_TEST_FLAG write SetEARCHIVE_TEST_FLAG stored EARCHIVE_TEST_FLAG_Specified;
  end;



  // ************************************************************************ //
  // XML       : REQUEST_ERRORType, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/entity
  // ************************************************************************ //
  REQUEST_ERRORType = class(TRemotable)
  private
    FINTL_TXN_ID: Int64;
    FTXN_ID: string;
    FTXN_ID_Specified: boolean;
    FERROR_CODE: Integer;
    FERROR_SHORT_DES: string;
    FERROR_SHORT_DES_Specified: boolean;
    FERROR_LONG_DES: string;
    FERROR_LONG_DES_Specified: boolean;
    FSTACKTRACE: string;
    FSTACKTRACE_Specified: boolean;
    FERROR_ELEMENT_INDEX: Integer;
    FERROR_ELEMENT_INDEX_Specified: boolean;
    procedure SetTXN_ID(Index: Integer; const Astring: string);
    function  TXN_ID_Specified(Index: Integer): boolean;
    procedure SetERROR_SHORT_DES(Index: Integer; const Astring: string);
    function  ERROR_SHORT_DES_Specified(Index: Integer): boolean;
    procedure SetERROR_LONG_DES(Index: Integer; const Astring: string);
    function  ERROR_LONG_DES_Specified(Index: Integer): boolean;
    procedure SetSTACKTRACE(Index: Integer; const Astring: string);
    function  STACKTRACE_Specified(Index: Integer): boolean;
    procedure SetERROR_ELEMENT_INDEX(Index: Integer; const AInteger: Integer);
    function  ERROR_ELEMENT_INDEX_Specified(Index: Integer): boolean;
  published
    property INTL_TXN_ID:         Int64    Index (IS_UNQL) read FINTL_TXN_ID write FINTL_TXN_ID;
    property TXN_ID:              string   Index (IS_OPTN or IS_UNQL) read FTXN_ID write SetTXN_ID stored TXN_ID_Specified;
    property ERROR_CODE:          Integer  Index (IS_UNQL) read FERROR_CODE write FERROR_CODE;
    property ERROR_SHORT_DES:     string   Index (IS_OPTN or IS_UNQL) read FERROR_SHORT_DES write SetERROR_SHORT_DES stored ERROR_SHORT_DES_Specified;
    property ERROR_LONG_DES:      string   Index (IS_OPTN or IS_UNQL) read FERROR_LONG_DES write SetERROR_LONG_DES stored ERROR_LONG_DES_Specified;
    property STACKTRACE:          string   Index (IS_OPTN or IS_UNQL) read FSTACKTRACE write SetSTACKTRACE stored STACKTRACE_Specified;
    property ERROR_ELEMENT_INDEX: Integer  Index (IS_OPTN or IS_UNQL) read FERROR_ELEMENT_INDEX write SetERROR_ELEMENT_INDEX stored ERROR_ELEMENT_INDEX_Specified;
  end;



  // ************************************************************************ //
  // XML       : REQUEST_RETURNType, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/entity
  // ************************************************************************ //
  REQUEST_RETURNType = class(TRemotable)
  private
    FINTL_TXN_ID: Int64;
    FCLIENT_TXN_ID: string;
    FCLIENT_TXN_ID_Specified: boolean;
    FRETURN_CODE: Integer;
    FWARNINGS: Array_Of_string;
    FWARNINGS_Specified: boolean;
    procedure SetCLIENT_TXN_ID(Index: Integer; const Astring: string);
    function  CLIENT_TXN_ID_Specified(Index: Integer): boolean;
    procedure SetWARNINGS(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  WARNINGS_Specified(Index: Integer): boolean;
  published
    property INTL_TXN_ID:   Int64            Index (IS_UNQL) read FINTL_TXN_ID write FINTL_TXN_ID;
    property CLIENT_TXN_ID: string           Index (IS_OPTN or IS_UNQL) read FCLIENT_TXN_ID write SetCLIENT_TXN_ID stored CLIENT_TXN_ID_Specified;
    property RETURN_CODE:   Integer          Index (IS_UNQL) read FRETURN_CODE write FRETURN_CODE;
    property WARNINGS:      Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FWARNINGS write SetWARNINGS stored WARNINGS_Specified;
  end;



  // ************************************************************************ //
  // XML       : HEADER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  HEADER3 = class(TRemotable)
  private
    FINVOICE_ID: string;
    FINVOICE_ID_Specified: boolean;
    FPROFILE: string;
    FPROFILE_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FINVOICE_DATE: string;
    FINVOICE_DATE_Specified: boolean;
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSTATUS_DESC: string;
    FSTATUS_DESC_Specified: boolean;
    FEMAIL_STATUS: string;
    FEMAIL_STATUS_Specified: boolean;
    FEMAIL_STATUS_DESC: string;
    FEMAIL_STATUS_DESC_Specified: boolean;
    FREPORT_ID: Integer;
    FREPORT_ID_Specified: boolean;
    procedure SetINVOICE_ID(Index: Integer; const Astring: string);
    function  INVOICE_ID_Specified(Index: Integer): boolean;
    procedure SetPROFILE(Index: Integer; const Astring: string);
    function  PROFILE_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetINVOICE_DATE(Index: Integer; const Astring: string);
    function  INVOICE_DATE_Specified(Index: Integer): boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSTATUS_DESC(Index: Integer; const Astring: string);
    function  STATUS_DESC_Specified(Index: Integer): boolean;
    procedure SetEMAIL_STATUS(Index: Integer; const Astring: string);
    function  EMAIL_STATUS_Specified(Index: Integer): boolean;
    procedure SetEMAIL_STATUS_DESC(Index: Integer; const Astring: string);
    function  EMAIL_STATUS_DESC_Specified(Index: Integer): boolean;
    procedure SetREPORT_ID(Index: Integer; const AInteger: Integer);
    function  REPORT_ID_Specified(Index: Integer): boolean;
  published
    property INVOICE_ID:        string   Index (IS_OPTN or IS_UNQL) read FINVOICE_ID write SetINVOICE_ID stored INVOICE_ID_Specified;
    property PROFILE:           string   Index (IS_OPTN or IS_UNQL) read FPROFILE write SetPROFILE stored PROFILE_Specified;
    property UUID:              string   Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property INVOICE_DATE:      string   Index (IS_OPTN or IS_UNQL) read FINVOICE_DATE write SetINVOICE_DATE stored INVOICE_DATE_Specified;
    property STATUS:            string   Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property STATUS_DESC:       string   Index (IS_OPTN or IS_UNQL) read FSTATUS_DESC write SetSTATUS_DESC stored STATUS_DESC_Specified;
    property EMAIL_STATUS:      string   Index (IS_OPTN or IS_UNQL) read FEMAIL_STATUS write SetEMAIL_STATUS stored EMAIL_STATUS_Specified;
    property EMAIL_STATUS_DESC: string   Index (IS_OPTN or IS_UNQL) read FEMAIL_STATUS_DESC write SetEMAIL_STATUS_DESC stored EMAIL_STATUS_DESC_Specified;
    property REPORT_ID:         Integer  Index (IS_OPTN or IS_UNQL) read FREPORT_ID write SetREPORT_ID stored REPORT_ID_Specified;
  end;



  // ************************************************************************ //
  // XML       : ReadEArchiveReportRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  ReadEArchiveReportRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FRAPOR_NO: string;
    FRAPOR_NO_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetRAPOR_NO(Index: Integer; const Astring: string);
    function  RAPOR_NO_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property RAPOR_NO:       string              Index (IS_OPTN or IS_UNQL) read FRAPOR_NO write SetRAPOR_NO stored RAPOR_NO_Specified;
  end;



  // ************************************************************************ //
  // XML       : DataModelObject, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  DataModelObject = class(DataObject)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : MarkEArchiveInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  MarkEArchiveInvoiceRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FMARK: MARK;
    FMARK_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetMARK(Index: Integer; const AMARK: MARK);
    function  MARK_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property MARK:           MARK                Index (IS_OPTN or IS_UNQL) read FMARK write SetMARK stored MARK_Specified;
  end;



  // ************************************************************************ //
  // XML       : Customer, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Customer = class(DataModelObject)
  private
    FCustomerId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FTaxoridno: string;
    FTaxoridno_Specified: boolean;
    FTaxOffice: string;
    FTaxOffice_Specified: boolean;
    FCustomerName: string;
    FCustomerName_Specified: boolean;
    FPostboxAlias: string;
    FPostboxAlias_Specified: boolean;
    FSenderAlias: string;
    FSenderAlias_Specified: boolean;
    FIsIndividualCompany: Boolean;
    FIsBatch: Boolean;
    FBatchId: string;
    FBatchId_Specified: boolean;
    FBatchDescription: string;
    FBatchDescription_Specified: boolean;
    FPhonedesc: Integer;
    FPhoneNr: string;
    FPhoneNr_Specified: boolean;
    FFaxNr: string;
    FFaxNr_Specified: boolean;
    FEmailAddr: string;
    FEmailAddr_Specified: boolean;
    FBuildingNr: string;
    FBuildingNr_Specified: boolean;
    FStreetName: string;
    FStreetName_Specified: boolean;
    FAddressStreet2: string;
    FAddressStreet2_Specified: boolean;
    FDistrict: Integer;
    FCity: Integer;
    FCountry: Integer;
    FPostalCode: string;
    FPostalCode_Specified: boolean;
    FWebSiteUrl: string;
    FWebSiteUrl_Specified: boolean;
    FNaceCode: string;
    FNaceCode_Specified: boolean;
    FIsNameChanged: Boolean;
    FRegistryDate: TXSDateTime;
    FInvoice: Integer;
    FEarchive: Integer;
    procedure SetTaxoridno(Index: Integer; const Astring: string);
    function  Taxoridno_Specified(Index: Integer): boolean;
    procedure SetTaxOffice(Index: Integer; const Astring: string);
    function  TaxOffice_Specified(Index: Integer): boolean;
    procedure SetCustomerName(Index: Integer; const Astring: string);
    function  CustomerName_Specified(Index: Integer): boolean;
    procedure SetPostboxAlias(Index: Integer; const Astring: string);
    function  PostboxAlias_Specified(Index: Integer): boolean;
    procedure SetSenderAlias(Index: Integer; const Astring: string);
    function  SenderAlias_Specified(Index: Integer): boolean;
    procedure SetBatchId(Index: Integer; const Astring: string);
    function  BatchId_Specified(Index: Integer): boolean;
    procedure SetBatchDescription(Index: Integer; const Astring: string);
    function  BatchDescription_Specified(Index: Integer): boolean;
    procedure SetPhoneNr(Index: Integer; const Astring: string);
    function  PhoneNr_Specified(Index: Integer): boolean;
    procedure SetFaxNr(Index: Integer; const Astring: string);
    function  FaxNr_Specified(Index: Integer): boolean;
    procedure SetEmailAddr(Index: Integer; const Astring: string);
    function  EmailAddr_Specified(Index: Integer): boolean;
    procedure SetBuildingNr(Index: Integer; const Astring: string);
    function  BuildingNr_Specified(Index: Integer): boolean;
    procedure SetStreetName(Index: Integer; const Astring: string);
    function  StreetName_Specified(Index: Integer): boolean;
    procedure SetAddressStreet2(Index: Integer; const Astring: string);
    function  AddressStreet2_Specified(Index: Integer): boolean;
    procedure SetPostalCode(Index: Integer; const Astring: string);
    function  PostalCode_Specified(Index: Integer): boolean;
    procedure SetWebSiteUrl(Index: Integer; const Astring: string);
    function  WebSiteUrl_Specified(Index: Integer): boolean;
    procedure SetNaceCode(Index: Integer; const Astring: string);
    function  NaceCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CustomerId:          Integer      read FCustomerId write FCustomerId;
    property Deleted:             Boolean      read FDeleted write FDeleted;
    property CreateDate:          TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate:          TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser:          Integer      read FCreateUser write FCreateUser;
    property UpdateUser:          Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property Taxoridno:           string       Index (IS_OPTN) read FTaxoridno write SetTaxoridno stored Taxoridno_Specified;
    property TaxOffice:           string       Index (IS_OPTN) read FTaxOffice write SetTaxOffice stored TaxOffice_Specified;
    property CustomerName:        string       Index (IS_OPTN) read FCustomerName write SetCustomerName stored CustomerName_Specified;
    property PostboxAlias:        string       Index (IS_OPTN) read FPostboxAlias write SetPostboxAlias stored PostboxAlias_Specified;
    property SenderAlias:         string       Index (IS_OPTN) read FSenderAlias write SetSenderAlias stored SenderAlias_Specified;
    property IsIndividualCompany: Boolean      read FIsIndividualCompany write FIsIndividualCompany;
    property IsBatch:             Boolean      read FIsBatch write FIsBatch;
    property BatchId:             string       Index (IS_OPTN) read FBatchId write SetBatchId stored BatchId_Specified;
    property BatchDescription:    string       Index (IS_OPTN) read FBatchDescription write SetBatchDescription stored BatchDescription_Specified;
    property Phonedesc:           Integer      read FPhonedesc write FPhonedesc;
    property PhoneNr:             string       Index (IS_OPTN) read FPhoneNr write SetPhoneNr stored PhoneNr_Specified;
    property FaxNr:               string       Index (IS_OPTN) read FFaxNr write SetFaxNr stored FaxNr_Specified;
    property EmailAddr:           string       Index (IS_OPTN) read FEmailAddr write SetEmailAddr stored EmailAddr_Specified;
    property BuildingNr:          string       Index (IS_OPTN) read FBuildingNr write SetBuildingNr stored BuildingNr_Specified;
    property StreetName:          string       Index (IS_OPTN) read FStreetName write SetStreetName stored StreetName_Specified;
    property AddressStreet2:      string       Index (IS_OPTN) read FAddressStreet2 write SetAddressStreet2 stored AddressStreet2_Specified;
    property District:            Integer      read FDistrict write FDistrict;
    property City:                Integer      read FCity write FCity;
    property Country:             Integer      read FCountry write FCountry;
    property PostalCode:          string       Index (IS_OPTN) read FPostalCode write SetPostalCode stored PostalCode_Specified;
    property WebSiteUrl:          string       Index (IS_OPTN) read FWebSiteUrl write SetWebSiteUrl stored WebSiteUrl_Specified;
    property NaceCode:            string       Index (IS_OPTN) read FNaceCode write SetNaceCode stored NaceCode_Specified;
    property IsNameChanged:       Boolean      read FIsNameChanged write FIsNameChanged;
    property RegistryDate:        TXSDateTime  Index (IS_NLBL) read FRegistryDate write FRegistryDate;
    property Invoice:             Integer      read FInvoice write FInvoice;
    property Earchive:            Integer      read FEarchive write FEarchive;
  end;



  // ************************************************************************ //
  // XML       : CustomerExtended, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  CustomerExtended = class(Customer)
  private
    FFullName: string;
    FFullName_Specified: boolean;
    procedure SetFullName(Index: Integer; const Astring: string);
    function  FullName_Specified(Index: Integer): boolean;
  published
    property FullName: string  Index (IS_OPTN) read FFullName write SetFullName stored FullName_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEArchiveInvoiceListRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  GetEArchiveInvoiceListRequest = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    FLIMIT: Integer;
    FLIMIT_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FSTART_DATE: TXSDateTime;
    FSTART_DATE_Specified: boolean;
    FEND_DATE: TXSDateTime;
    FEND_DATE_Specified: boolean;
    FPERIOD: string;
    FPERIOD_Specified: boolean;
    FPREFIX: string;
    FPREFIX_Specified: boolean;
    FREPORT_ID: Integer;
    FREPORT_ID_Specified: boolean;
    FREPORT_INCLUDED: Boolean;
    FREPORT_INCLUDED_Specified: boolean;
    FREPORT_FLAG: string;
    FREPORT_FLAG_Specified: boolean;
    FHEADER_ONLY: string;
    FHEADER_ONLY_Specified: boolean;
    FCONTENT_TYPE: string;
    FCONTENT_TYPE_Specified: boolean;
    FREAD_INCLUDED: string;
    FREAD_INCLUDED_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
    procedure SetLIMIT(Index: Integer; const AInteger: Integer);
    function  LIMIT_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetSTART_DATE(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  START_DATE_Specified(Index: Integer): boolean;
    procedure SetEND_DATE(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  END_DATE_Specified(Index: Integer): boolean;
    procedure SetPERIOD(Index: Integer; const Astring: string);
    function  PERIOD_Specified(Index: Integer): boolean;
    procedure SetPREFIX(Index: Integer; const Astring: string);
    function  PREFIX_Specified(Index: Integer): boolean;
    procedure SetREPORT_ID(Index: Integer; const AInteger: Integer);
    function  REPORT_ID_Specified(Index: Integer): boolean;
    procedure SetREPORT_INCLUDED(Index: Integer; const ABoolean: Boolean);
    function  REPORT_INCLUDED_Specified(Index: Integer): boolean;
    procedure SetREPORT_FLAG(Index: Integer; const Astring: string);
    function  REPORT_FLAG_Specified(Index: Integer): boolean;
    procedure SetHEADER_ONLY(Index: Integer; const Astring: string);
    function  HEADER_ONLY_Specified(Index: Integer): boolean;
    procedure SetCONTENT_TYPE(Index: Integer; const Astring: string);
    function  CONTENT_TYPE_Specified(Index: Integer): boolean;
    procedure SetREAD_INCLUDED(Index: Integer; const Astring: string);
    function  READ_INCLUDED_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER:  REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
    property LIMIT:           Integer             Index (IS_OPTN or IS_UNQL) read FLIMIT write SetLIMIT stored LIMIT_Specified;
    property ID:              string              Index (IS_OPTN or IS_UNQL) read FID write SetID stored ID_Specified;
    property UUID:            string              Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property START_DATE:      TXSDateTime         Index (IS_OPTN or IS_UNQL) read FSTART_DATE write SetSTART_DATE stored START_DATE_Specified;
    property END_DATE:        TXSDateTime         Index (IS_OPTN or IS_UNQL) read FEND_DATE write SetEND_DATE stored END_DATE_Specified;
    property PERIOD:          string              Index (IS_OPTN or IS_UNQL) read FPERIOD write SetPERIOD stored PERIOD_Specified;
    property PREFIX:          string              Index (IS_OPTN or IS_UNQL) read FPREFIX write SetPREFIX stored PREFIX_Specified;
    property REPORT_ID:       Integer             Index (IS_OPTN or IS_UNQL) read FREPORT_ID write SetREPORT_ID stored REPORT_ID_Specified;
    property REPORT_INCLUDED: Boolean             Index (IS_OPTN or IS_UNQL) read FREPORT_INCLUDED write SetREPORT_INCLUDED stored REPORT_INCLUDED_Specified;
    property REPORT_FLAG:     string              Index (IS_OPTN or IS_UNQL) read FREPORT_FLAG write SetREPORT_FLAG stored REPORT_FLAG_Specified;
    property HEADER_ONLY:     string              Index (IS_OPTN or IS_UNQL) read FHEADER_ONLY write SetHEADER_ONLY stored HEADER_ONLY_Specified;
    property CONTENT_TYPE:    string              Index (IS_OPTN or IS_UNQL) read FCONTENT_TYPE write SetCONTENT_TYPE stored CONTENT_TYPE_Specified;
    property READ_INCLUDED:   string              Index (IS_OPTN or IS_UNQL) read FREAD_INCLUDED write SetREAD_INCLUDED stored READ_INCLUDED_Specified;
  end;



  // ************************************************************************ //
  // XML       : REPORT_INVOICE, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  REPORT_INVOICE = class(TRemotable)
  private
    FINVOICE_ID: string;
    FINVOICE_ID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSTATUS_DESC: string;
    FSTATUS_DESC_Specified: boolean;
    FINVOICE_DATE: TXSDate;
    FCDATE: TXSDateTime;
    FPAYABLE_AMOUNT: Integer;
    FEMAIL_STATUS: string;
    FEMAIL_STATUS_Specified: boolean;
    FEMAIL_STATUS_DESC: string;
    FEMAIL_STATUS_DESC_Specified: boolean;
    procedure SetINVOICE_ID(Index: Integer; const Astring: string);
    function  INVOICE_ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSTATUS_DESC(Index: Integer; const Astring: string);
    function  STATUS_DESC_Specified(Index: Integer): boolean;
    procedure SetEMAIL_STATUS(Index: Integer; const Astring: string);
    function  EMAIL_STATUS_Specified(Index: Integer): boolean;
    procedure SetEMAIL_STATUS_DESC(Index: Integer; const Astring: string);
    function  EMAIL_STATUS_DESC_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE_ID:        string       Index (IS_OPTN or IS_UNQL) read FINVOICE_ID write SetINVOICE_ID stored INVOICE_ID_Specified;
    property UUID:              string       Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property STATUS:            string       Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property STATUS_DESC:       string       Index (IS_OPTN or IS_UNQL) read FSTATUS_DESC write SetSTATUS_DESC stored STATUS_DESC_Specified;
    property INVOICE_DATE:      TXSDate      Index (IS_UNQL) read FINVOICE_DATE write FINVOICE_DATE;
    property CDATE:             TXSDateTime  Index (IS_UNQL) read FCDATE write FCDATE;
    property PAYABLE_AMOUNT:    Integer      Index (IS_UNQL) read FPAYABLE_AMOUNT write FPAYABLE_AMOUNT;
    property EMAIL_STATUS:      string       Index (IS_OPTN or IS_UNQL) read FEMAIL_STATUS write SetEMAIL_STATUS stored EMAIL_STATUS_Specified;
    property EMAIL_STATUS_DESC: string       Index (IS_OPTN or IS_UNQL) read FEMAIL_STATUS_DESC write SetEMAIL_STATUS_DESC stored EMAIL_STATUS_DESC_Specified;
  end;



  // ************************************************************************ //
  // XML       : REQUEST_HEADERType, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/entity
  // ************************************************************************ //
  REQUEST_HEADERType = class(TRemotable)
  private
    FSESSION_ID: string;
    FSESSION_ID_Specified: boolean;
    FCLIENT_TXN_ID: string;
    FCLIENT_TXN_ID_Specified: boolean;
    FINTL_TXN_ID: Int64;
    FINTL_TXN_ID_Specified: boolean;
    FINTL_PARENT_TXN_ID: Int64;
    FINTL_PARENT_TXN_ID_Specified: boolean;
    FACTION_DATE: TXSDateTime;
    FACTION_DATE_Specified: boolean;
    FCHANGE_INFO: CHANGE_INFOType;
    FCHANGE_INFO_Specified: boolean;
    FREASON: string;
    FREASON_Specified: boolean;
    FAPPLICATION_NAME: string;
    FAPPLICATION_NAME_Specified: boolean;
    FHOSTNAME: string;
    FHOSTNAME_Specified: boolean;
    FCHANNEL_NAME: string;
    FCHANNEL_NAME_Specified: boolean;
    FSIMULATION_FLAG: string;
    FSIMULATION_FLAG_Specified: boolean;
    FCOMPRESSED: string;
    FCOMPRESSED_Specified: boolean;
    FSIGN_STATUS: SIGN_STATUS;
    FSIGN_STATUS_Specified: boolean;
    FATTRIBUTES: Array_Of_ATTRIBUTESTYPE;
    FATTRIBUTES_Specified: boolean;
    procedure SetSESSION_ID(Index: Integer; const Astring: string);
    function  SESSION_ID_Specified(Index: Integer): boolean;
    procedure SetCLIENT_TXN_ID(Index: Integer; const Astring: string);
    function  CLIENT_TXN_ID_Specified(Index: Integer): boolean;
    procedure SetINTL_TXN_ID(Index: Integer; const AInt64: Int64);
    function  INTL_TXN_ID_Specified(Index: Integer): boolean;
    procedure SetINTL_PARENT_TXN_ID(Index: Integer; const AInt64: Int64);
    function  INTL_PARENT_TXN_ID_Specified(Index: Integer): boolean;
    procedure SetACTION_DATE(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  ACTION_DATE_Specified(Index: Integer): boolean;
    procedure SetCHANGE_INFO(Index: Integer; const ACHANGE_INFOType: CHANGE_INFOType);
    function  CHANGE_INFO_Specified(Index: Integer): boolean;
    procedure SetREASON(Index: Integer; const Astring: string);
    function  REASON_Specified(Index: Integer): boolean;
    procedure SetAPPLICATION_NAME(Index: Integer; const Astring: string);
    function  APPLICATION_NAME_Specified(Index: Integer): boolean;
    procedure SetHOSTNAME(Index: Integer; const Astring: string);
    function  HOSTNAME_Specified(Index: Integer): boolean;
    procedure SetCHANNEL_NAME(Index: Integer; const Astring: string);
    function  CHANNEL_NAME_Specified(Index: Integer): boolean;
    procedure SetSIMULATION_FLAG(Index: Integer; const Astring: string);
    function  SIMULATION_FLAG_Specified(Index: Integer): boolean;
    procedure SetCOMPRESSED(Index: Integer; const Astring: string);
    function  COMPRESSED_Specified(Index: Integer): boolean;
    procedure SetSIGN_STATUS(Index: Integer; const ASIGN_STATUS: SIGN_STATUS);
    function  SIGN_STATUS_Specified(Index: Integer): boolean;
    procedure SetATTRIBUTES(Index: Integer; const AArray_Of_ATTRIBUTESTYPE: Array_Of_ATTRIBUTESTYPE);
    function  ATTRIBUTES_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SESSION_ID:         string                   Index (IS_OPTN or IS_UNQL) read FSESSION_ID write SetSESSION_ID stored SESSION_ID_Specified;
    property CLIENT_TXN_ID:      string                   Index (IS_OPTN or IS_UNQL) read FCLIENT_TXN_ID write SetCLIENT_TXN_ID stored CLIENT_TXN_ID_Specified;
    property INTL_TXN_ID:        Int64                    Index (IS_OPTN or IS_UNQL) read FINTL_TXN_ID write SetINTL_TXN_ID stored INTL_TXN_ID_Specified;
    property INTL_PARENT_TXN_ID: Int64                    Index (IS_OPTN or IS_UNQL) read FINTL_PARENT_TXN_ID write SetINTL_PARENT_TXN_ID stored INTL_PARENT_TXN_ID_Specified;
    property ACTION_DATE:        TXSDateTime              Index (IS_OPTN or IS_UNQL) read FACTION_DATE write SetACTION_DATE stored ACTION_DATE_Specified;
    property CHANGE_INFO:        CHANGE_INFOType          Index (IS_OPTN or IS_UNQL) read FCHANGE_INFO write SetCHANGE_INFO stored CHANGE_INFO_Specified;
    property REASON:             string                   Index (IS_OPTN or IS_UNQL) read FREASON write SetREASON stored REASON_Specified;
    property APPLICATION_NAME:   string                   Index (IS_OPTN or IS_UNQL) read FAPPLICATION_NAME write SetAPPLICATION_NAME stored APPLICATION_NAME_Specified;
    property HOSTNAME:           string                   Index (IS_OPTN or IS_UNQL) read FHOSTNAME write SetHOSTNAME stored HOSTNAME_Specified;
    property CHANNEL_NAME:       string                   Index (IS_OPTN or IS_UNQL) read FCHANNEL_NAME write SetCHANNEL_NAME stored CHANNEL_NAME_Specified;
    property SIMULATION_FLAG:    string                   Index (IS_OPTN or IS_UNQL) read FSIMULATION_FLAG write SetSIMULATION_FLAG stored SIMULATION_FLAG_Specified;
    property COMPRESSED:         string                   Index (IS_OPTN or IS_UNQL) read FCOMPRESSED write SetCOMPRESSED stored COMPRESSED_Specified;
    property SIGN_STATUS:        SIGN_STATUS              Index (IS_OPTN or IS_UNQL) read FSIGN_STATUS write SetSIGN_STATUS stored SIGN_STATUS_Specified;
    property ATTRIBUTES:         Array_Of_ATTRIBUTESTYPE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FATTRIBUTES write SetATTRIBUTES stored ATTRIBUTES_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkEArchiveInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl/archive
  // ************************************************************************ //
  MarkEArchiveInvoiceResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    FERROR_TYPE: REQUEST_ERRORType;
    FERROR_TYPE_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
    procedure SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
    function  ERROR_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
    property ERROR_TYPE:     REQUEST_ERRORType   Index (IS_OPTN or IS_UNQL) read FERROR_TYPE write SetERROR_TYPE stored ERROR_TYPE_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://parkentegrasyon.com.tr/
  // soapAction: http://parkentegrasyon.com.tr/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : EArchiveServiceSoap
  // service   : EArchiveService
  // port      : EArchiveServiceSoap
  // URL       : https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx
  // ************************************************************************ //
  EArchiveServiceSoap = interface(IInvokable)
  ['{6C8F995D-63BE-0E83-5FFD-766D790D0EF7}']
    function  Login(const userName: string; const password: string): LoginRes; stdcall;
    function  LoginWithTaxOrIdNo(const userName: string; const password: string; const taxOrIdNo: string; const batchId: string): LoginRes; stdcall;
    function  Logout(const sessionId: string): Int64; stdcall;
    function  ArchiveGenericDocument(const ArchiveGenericDocumentRequest: ArchiveGenericDocumentRequest): ArchiveGenericDocumentResponse; stdcall;
    function  ArchiveGetInvoiceInfo(const ArchiveGetInvoiceInfoRequest: ArchiveGetInvoiceInfoRequest): ArchiveGetInvoiceInfoResponse; stdcall;
    function  CancelEArchiveInvoice(const CancelEArchiveInvoiceRequest: CancelEArchiveInvoiceRequest): CancelEArchiveInvoiceResponse; stdcall;
    function  CancelEDefter(const CancelEDefterRequest: CancelEDefterRequest): CancelEDefterResponse; stdcall;
    function  CopyToArchive(const ArchiveInvoiceCopyRequest: ArchiveInvoiceCopyRequest): ArchiveInvoiceCopyResponse; stdcall;
    function  EArchiveInvoiceCount(const EArchiveInvoiceCountRequest: EArchiveInvoiceCountRequest): EArchiveInvoiceCountResponse; stdcall;
    function  GenericRead(const GenericReadRequest: GenericReadRequest): GenericReadResponse; stdcall;
    function  GetEArchiveInvoice(const GetEArchiveInvoiceRequest: GetEArchiveInvoiceRequest): GetEArchiveInvoiceResponse; stdcall;
    function  GetEArchiveInvoiceList(const GetEArchiveInvoiceListRequest: GetEArchiveInvoiceListRequest): GetEArchiveInvoiceListResponse; stdcall;
    function  GetEArchiveInvoiceStatus(const GetEArchiveInvoiceStatusRequest: GetEArchiveInvoiceStatusRequest): GetEArchiveInvoiceStatusResponse; stdcall;
    function  GetEArchiveReport(const GetEArchiveReportRequest: GetEArchiveReportRequest): GetEArchiveReportResponse; stdcall;
    function  GetEmailEarchiveInvoice(const GetEmailEarchiveInvoiceRequest: GetEmailEarchiveInvoiceRequest): GetEmailEarchiveInvoiceResponse; stdcall;
    function  GetGenericArchiveByPeriod(const GetGenericArchiveByPeriodRequest: GetGenericArchiveByPeriodRequest): GetGenericArchiveByPeriodResponse; stdcall;
    function  GetGenericArchiveStatus(const GetGenericArchiveStatusRequest: GetGenericArchiveStatusRequest): GetGenericArchiveStatusResponse; stdcall;
    function  MarkEArchiveInvoice(const MarkEArchiveInvoiceRequest: MarkEArchiveInvoiceRequest): MarkEArchiveInvoiceResponse; stdcall;
    function  ReadEArchiveReport(const ReadEArchiveReportRequest: ReadEArchiveReportRequest): ReadEArchiveReportResponse; stdcall;
    function  ReadFromArchive(const ArchiveInvoiceReadRequest: ArchiveInvoiceReadRequest): ArchiveInvoiceReadResponse; stdcall;
    function  WriteToArchive(const ArchiveInvoiceWriteRequest: ArchiveInvoiceWriteRequest): ArchiveInvoiceWriteResponse; stdcall;
    function  WriteToArchiveExtended(const ArchiveInvoiceExtendedRequest: ArchiveInvoiceExtendedRequest): ArchiveInvoiceExtendedResponse; stdcall;
  end;

function GetEArchiveServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EArchiveServiceSoap;


implementation
  uses System.SysUtils;

function GetEArchiveServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EArchiveServiceSoap;
const
  defWSDL = 'https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx?WSDL';
  defURL  = 'https://wstest.parkentegrasyon.com.tr/EArchiveService.asmx';
  defSvc  = 'EArchiveService';
  defPrt  = 'EArchiveServiceSoap';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as EArchiveServiceSoap);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor EARCHIVEINV.Destroy;
begin
  System.SysUtils.FreeAndNil(FHEADER);
  System.SysUtils.FreeAndNil(FCONTENT);
  inherited Destroy;
end;

procedure EARCHIVEINV.SetHEADER(Index: Integer; const AHEADER2: HEADER2);
begin
  FHEADER := AHEADER2;
  FHEADER_Specified := True;
end;

function EARCHIVEINV.HEADER_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_Specified;
end;

procedure EARCHIVEINV.SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FCONTENT := Abase64Binary;
  FCONTENT_Specified := True;
end;

function EARCHIVEINV.CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FCONTENT_Specified;
end;

destructor EARCHIVE_INVOICE.Destroy;
begin
  System.SysUtils.FreeAndNil(FHEADER);
  inherited Destroy;
end;

procedure EARCHIVE_INVOICE.SetHEADER(Index: Integer; const AHEADER3: HEADER3);
begin
  FHEADER := AHEADER3;
  FHEADER_Specified := True;
end;

function EARCHIVE_INVOICE.HEADER_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_Specified;
end;

destructor INVOICE.Destroy;
begin
  System.SysUtils.FreeAndNil(FHEADER);
  inherited Destroy;
end;

procedure INVOICE.SetHEADER(Index: Integer; const AHEADER: HEADER);
begin
  FHEADER := AHEADER;
  FHEADER_Specified := True;
end;

function INVOICE.HEADER_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_Specified;
end;

procedure ATTRIBUTESTYPE.SetNAME_(Index: Integer; const Astring: string);
begin
  FNAME_ := Astring;
  FNAME__Specified := True;
end;

function ATTRIBUTESTYPE.NAME__Specified(Index: Integer): boolean;
begin
  Result := FNAME__Specified;
end;

destructor ArchiveGenericDocumentResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ArchiveGenericDocumentResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ArchiveGenericDocumentResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ArchiveGenericDocumentResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ArchiveGenericDocumentResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor GetEArchiveInvoiceListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetEArchiveInvoiceListResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetEArchiveInvoiceListResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetEArchiveInvoiceListResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetEArchiveInvoiceListResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

procedure GetEArchiveInvoiceListResponse.SetINVOICE(Index: Integer; const AArray_Of_EARCHIVEINV: Array_Of_EARCHIVEINV);
begin
  FINVOICE := AArray_Of_EARCHIVEINV;
  FINVOICE_Specified := True;
end;

function GetEArchiveInvoiceListResponse.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

destructor GetEArchiveInvoiceResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetEArchiveInvoiceResponse.SetINVOICE(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FINVOICE := AArray_Of_base64Binary;
  FINVOICE_Specified := True;
end;

function GetEArchiveInvoiceResponse.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure GetEArchiveInvoiceResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetEArchiveInvoiceResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetEArchiveInvoiceResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetEArchiveInvoiceResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor CHANGE_INFOType.Destroy;
begin
  System.SysUtils.FreeAndNil(FCDATE);
  System.SysUtils.FreeAndNil(FUDATE);
  inherited Destroy;
end;

procedure CHANGE_INFOType.SetUDATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FUDATE := ATXSDate;
  FUDATE_Specified := True;
end;

function CHANGE_INFOType.UDATE_Specified(Index: Integer): boolean;
begin
  Result := FUDATE_Specified;
end;

procedure CHANGE_INFOType.SetUPOSITION_ID(Index: Integer; const AInt64: Int64);
begin
  FUPOSITION_ID := AInt64;
  FUPOSITION_ID_Specified := True;
end;

function CHANGE_INFOType.UPOSITION_ID_Specified(Index: Integer): boolean;
begin
  Result := FUPOSITION_ID_Specified;
end;

procedure CHANGE_INFOType.SetUUSER_ID(Index: Integer; const AInt64: Int64);
begin
  FUUSER_ID := AInt64;
  FUUSER_ID_Specified := True;
end;

function CHANGE_INFOType.UUSER_ID_Specified(Index: Integer): boolean;
begin
  Result := FUUSER_ID_Specified;
end;

destructor GetEArchiveReportResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FREPORT)-1 do
    System.SysUtils.FreeAndNil(FREPORT[I]);
  System.SetLength(FREPORT, 0);
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetEArchiveReportResponse.SetREPORT(Index: Integer; const AArray_Of_REPORT: Array_Of_REPORT);
begin
  FREPORT := AArray_Of_REPORT;
  FREPORT_Specified := True;
end;

function GetEArchiveReportResponse.REPORT_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_Specified;
end;

procedure GetEArchiveReportResponse.SetINVOICE(Index: Integer; const AArray_Of_REPORT_INVOICE: Array_Of_REPORT_INVOICE);
begin
  FINVOICE := AArray_Of_REPORT_INVOICE;
  FINVOICE_Specified := True;
end;

function GetEArchiveReportResponse.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure GetEArchiveReportResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetEArchiveReportResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetEArchiveReportResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetEArchiveReportResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ArchiveGenericDocumentRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGENERIC_CONTENT)-1 do
    System.SysUtils.FreeAndNil(FGENERIC_CONTENT[I]);
  System.SetLength(FGENERIC_CONTENT, 0);
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ArchiveGenericDocumentRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ArchiveGenericDocumentRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure ArchiveGenericDocumentRequest.SetGENERIC_CONTENT(Index: Integer; const AArray_Of_GENERIC_CONTENT: Array_Of_GENERIC_CONTENT);
begin
  FGENERIC_CONTENT := AArray_Of_GENERIC_CONTENT;
  FGENERIC_CONTENT_Specified := True;
end;

function ArchiveGenericDocumentRequest.GENERIC_CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FGENERIC_CONTENT_Specified;
end;

destructor GetEArchiveInvoiceStatusResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetEArchiveInvoiceStatusResponse.SetINVOICE(Index: Integer; const AArray_Of_EARCHIVE_INVOICE: Array_Of_EARCHIVE_INVOICE);
begin
  FINVOICE := AArray_Of_EARCHIVE_INVOICE;
  FINVOICE_Specified := True;
end;

function GetEArchiveInvoiceStatusResponse.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure GetEArchiveInvoiceStatusResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetEArchiveInvoiceStatusResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetEArchiveInvoiceStatusResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetEArchiveInvoiceStatusResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor CancelEArchiveInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure CancelEArchiveInvoiceResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function CancelEArchiveInvoiceResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure CancelEArchiveInvoiceResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function CancelEArchiveInvoiceResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ArchiveInvoiceCopyResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ArchiveInvoiceCopyResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ArchiveInvoiceCopyResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ArchiveInvoiceCopyResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ArchiveInvoiceCopyResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor EArchiveInvoiceCountRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  System.SysUtils.FreeAndNil(FISSUE_DATE_START);
  System.SysUtils.FreeAndNil(FISSUE_DATE_END);
  System.SysUtils.FreeAndNil(FCDATE_START);
  System.SysUtils.FreeAndNil(FCDATE_END);
  inherited Destroy;
end;

procedure EArchiveInvoiceCountRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function EArchiveInvoiceCountRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure EArchiveInvoiceCountRequest.SetISSUE_DATE_START(Index: Integer; const ATXSDate: TXSDate);
begin
  FISSUE_DATE_START := ATXSDate;
  FISSUE_DATE_START_Specified := True;
end;

function EArchiveInvoiceCountRequest.ISSUE_DATE_START_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_START_Specified;
end;

procedure EArchiveInvoiceCountRequest.SetISSUE_DATE_END(Index: Integer; const ATXSDate: TXSDate);
begin
  FISSUE_DATE_END := ATXSDate;
  FISSUE_DATE_END_Specified := True;
end;

function EArchiveInvoiceCountRequest.ISSUE_DATE_END_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_END_Specified;
end;

procedure EArchiveInvoiceCountRequest.SetCDATE_START(Index: Integer; const ATXSDate: TXSDate);
begin
  FCDATE_START := ATXSDate;
  FCDATE_START_Specified := True;
end;

function EArchiveInvoiceCountRequest.CDATE_START_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_START_Specified;
end;

procedure EArchiveInvoiceCountRequest.SetCDATE_END(Index: Integer; const ATXSDate: TXSDate);
begin
  FCDATE_END := ATXSDate;
  FCDATE_END_Specified := True;
end;

function EArchiveInvoiceCountRequest.CDATE_END_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_END_Specified;
end;

destructor CancelEDefterRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FCancelEDefterContent)-1 do
    System.SysUtils.FreeAndNil(FCancelEDefterContent[I]);
  System.SetLength(FCancelEDefterContent, 0);
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure CancelEDefterRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function CancelEDefterRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure CancelEDefterRequest.SetCancelEDefterContent(Index: Integer; const AArray_Of_CancelEDefterContent: Array_Of_CancelEDefterContent);
begin
  FCancelEDefterContent := AArray_Of_CancelEDefterContent;
  FCancelEDefterContent_Specified := True;
end;

function CancelEDefterRequest.CancelEDefterContent_Specified(Index: Integer): boolean;
begin
  Result := FCancelEDefterContent_Specified;
end;

destructor CancelEDefterResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure CancelEDefterResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function CancelEDefterResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure CancelEDefterResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function CancelEDefterResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor GenericReadResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGEN_ARCHIVE_DOC)-1 do
    System.SysUtils.FreeAndNil(FGEN_ARCHIVE_DOC[I]);
  System.SetLength(FGEN_ARCHIVE_DOC, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GenericReadResponse.SetGEN_ARCHIVE_DOC(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FGEN_ARCHIVE_DOC := AArray_Of_base64Binary;
  FGEN_ARCHIVE_DOC_Specified := True;
end;

function GenericReadResponse.GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
begin
  Result := FGEN_ARCHIVE_DOC_Specified;
end;

procedure GenericReadResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GenericReadResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GenericReadResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GenericReadResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor CancelEArchiveInvoiceRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FCancelEArsivInvoiceContent)-1 do
    System.SysUtils.FreeAndNil(FCancelEArsivInvoiceContent[I]);
  System.SetLength(FCancelEArsivInvoiceContent, 0);
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure CancelEArchiveInvoiceRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function CancelEArchiveInvoiceRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure CancelEArchiveInvoiceRequest.SetCancelEArsivInvoiceContent(Index: Integer; const AArray_Of_CancelEArsivInvoiceContent: Array_Of_CancelEArsivInvoiceContent);
begin
  FCancelEArsivInvoiceContent := AArray_Of_CancelEArsivInvoiceContent;
  FCancelEArsivInvoiceContent_Specified := True;
end;

function CancelEArchiveInvoiceRequest.CancelEArsivInvoiceContent_Specified(Index: Integer): boolean;
begin
  Result := FCancelEArsivInvoiceContent_Specified;
end;

destructor GenericReadRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FDOCUMENT)-1 do
    System.SysUtils.FreeAndNil(FDOCUMENT[I]);
  System.SetLength(FDOCUMENT, 0);
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GenericReadRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GenericReadRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GenericReadRequest.SetDOCUMENT(Index: Integer; const AArray_Of_DOCUMENT: Array_Of_DOCUMENT);
begin
  FDOCUMENT := AArray_Of_DOCUMENT;
  FDOCUMENT_Specified := True;
end;

function GenericReadRequest.DOCUMENT_Specified(Index: Integer): boolean;
begin
  Result := FDOCUMENT_Specified;
end;

destructor ArchiveInvoiceReadResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ArchiveInvoiceReadResponse.SetINVOICE(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FINVOICE := AArray_Of_base64Binary;
  FINVOICE_Specified := True;
end;

function ArchiveInvoiceReadResponse.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure ArchiveInvoiceReadResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ArchiveInvoiceReadResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ArchiveInvoiceReadResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ArchiveInvoiceReadResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ReadEArchiveReportResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FEARCHIVEREPORT)-1 do
    System.SysUtils.FreeAndNil(FEARCHIVEREPORT[I]);
  System.SetLength(FEARCHIVEREPORT, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ReadEArchiveReportResponse.SetEARCHIVEREPORT(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FEARCHIVEREPORT := AArray_Of_base64Binary;
  FEARCHIVEREPORT_Specified := True;
end;

function ReadEArchiveReportResponse.EARCHIVEREPORT_Specified(Index: Integer): boolean;
begin
  Result := FEARCHIVEREPORT_Specified;
end;

procedure ReadEArchiveReportResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ReadEArchiveReportResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ReadEArchiveReportResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ReadEArchiveReportResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ArchiveInvoiceExtendedRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FArchiveInvoiceExtendedContent)-1 do
    System.SysUtils.FreeAndNil(FArchiveInvoiceExtendedContent[I]);
  System.SetLength(FArchiveInvoiceExtendedContent, 0);
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ArchiveInvoiceExtendedRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ArchiveInvoiceExtendedRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure ArchiveInvoiceExtendedRequest.SetArchiveInvoiceExtendedContent(Index: Integer; const AArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES: ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES);
begin
  FArchiveInvoiceExtendedContent := AArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES;
  FArchiveInvoiceExtendedContent_Specified := True;
end;

function ArchiveInvoiceExtendedRequest.ArchiveInvoiceExtendedContent_Specified(Index: Integer): boolean;
begin
  Result := FArchiveInvoiceExtendedContent_Specified;
end;

destructor ArchiveInvoiceWriteRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FArchiveInvoiceWriteContent)-1 do
    System.SysUtils.FreeAndNil(FArchiveInvoiceWriteContent[I]);
  System.SetLength(FArchiveInvoiceWriteContent, 0);
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ArchiveInvoiceWriteRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ArchiveInvoiceWriteRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure ArchiveInvoiceWriteRequest.SetArchiveInvoiceWriteContent(Index: Integer; const AArrayOfArchiveInvoiceWriteContentElements: ArrayOfArchiveInvoiceWriteContentElements);
begin
  FArchiveInvoiceWriteContent := AArrayOfArchiveInvoiceWriteContentElements;
  FArchiveInvoiceWriteContent_Specified := True;
end;

function ArchiveInvoiceWriteRequest.ArchiveInvoiceWriteContent_Specified(Index: Integer): boolean;
begin
  Result := FArchiveInvoiceWriteContent_Specified;
end;

destructor LoginRes.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FCustomerList)-1 do
    System.SysUtils.FreeAndNil(FCustomerList[I]);
  System.SetLength(FCustomerList, 0);
  inherited Destroy;
end;

procedure LoginRes.SetSessionId(Index: Integer; const Astring: string);
begin
  FSessionId := Astring;
  FSessionId_Specified := True;
end;

function LoginRes.SessionId_Specified(Index: Integer): boolean;
begin
  Result := FSessionId_Specified;
end;

procedure LoginRes.SetMessage_(Index: Integer; const Astring: string);
begin
  FMessage_ := Astring;
  FMessage__Specified := True;
end;

function LoginRes.Message__Specified(Index: Integer): boolean;
begin
  Result := FMessage__Specified;
end;

procedure LoginRes.SetCustomerList(Index: Integer; const AArrayOfCustomerExtended: ArrayOfCustomerExtended);
begin
  FCustomerList := AArrayOfCustomerExtended;
  FCustomerList_Specified := True;
end;

function LoginRes.CustomerList_Specified(Index: Integer): boolean;
begin
  Result := FCustomerList_Specified;
end;

destructor GetEArchiveInvoiceRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GetEArchiveInvoiceRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetEArchiveInvoiceRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetEArchiveInvoiceRequest.SetWEB_VALIDATION_KEY(Index: Integer; const Astring: string);
begin
  FWEB_VALIDATION_KEY := Astring;
  FWEB_VALIDATION_KEY_Specified := True;
end;

function GetEArchiveInvoiceRequest.WEB_VALIDATION_KEY_Specified(Index: Integer): boolean;
begin
  Result := FWEB_VALIDATION_KEY_Specified;
end;

destructor GetEArchiveReportRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GetEArchiveReportRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetEArchiveReportRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetEArchiveReportRequest.SetREPORT_PERIOD(Index: Integer; const Astring: string);
begin
  FREPORT_PERIOD := Astring;
  FREPORT_PERIOD_Specified := True;
end;

function GetEArchiveReportRequest.REPORT_PERIOD_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_PERIOD_Specified;
end;

procedure GetEArchiveReportRequest.SetREPORT_STATUS_FLAG(Index: Integer; const Astring: string);
begin
  FREPORT_STATUS_FLAG := Astring;
  FREPORT_STATUS_FLAG_Specified := True;
end;

function GetEArchiveReportRequest.REPORT_STATUS_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_STATUS_FLAG_Specified;
end;

destructor GetEmailEarchiveInvoiceRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GetEmailEarchiveInvoiceRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetEmailEarchiveInvoiceRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetEmailEarchiveInvoiceRequest.SetFATURA_UUID(Index: Integer; const Astring: string);
begin
  FFATURA_UUID := Astring;
  FFATURA_UUID_Specified := True;
end;

function GetEmailEarchiveInvoiceRequest.FATURA_UUID_Specified(Index: Integer): boolean;
begin
  Result := FFATURA_UUID_Specified;
end;

procedure GetEmailEarchiveInvoiceRequest.SetFATURA_ID(Index: Integer; const Astring: string);
begin
  FFATURA_ID := Astring;
  FFATURA_ID_Specified := True;
end;

function GetEmailEarchiveInvoiceRequest.FATURA_ID_Specified(Index: Integer): boolean;
begin
  Result := FFATURA_ID_Specified;
end;

procedure GetEmailEarchiveInvoiceRequest.SetEMAIL(Index: Integer; const Astring: string);
begin
  FEMAIL := Astring;
  FEMAIL_Specified := True;
end;

function GetEmailEarchiveInvoiceRequest.EMAIL_Specified(Index: Integer): boolean;
begin
  Result := FEMAIL_Specified;
end;

destructor INVOICE_PROPERTIES.Destroy;
begin
  System.SysUtils.FreeAndNil(FEARSIV_PROPERTIES);
  System.SysUtils.FreeAndNil(FPDF_PROPERTIES);
  System.SysUtils.FreeAndNil(FINVOICE_CONTENT);
  inherited Destroy;
end;

procedure INVOICE_PROPERTIES.SetEARSIV_PROPERTIES(Index: Integer; const AEARSIV_PROPERTIES: EARSIV_PROPERTIES);
begin
  FEARSIV_PROPERTIES := AEARSIV_PROPERTIES;
  FEARSIV_PROPERTIES_Specified := True;
end;

function INVOICE_PROPERTIES.EARSIV_PROPERTIES_Specified(Index: Integer): boolean;
begin
  Result := FEARSIV_PROPERTIES_Specified;
end;

procedure INVOICE_PROPERTIES.SetPDF_PROPERTIES(Index: Integer; const APDF_PROPERTIES: PDF_PROPERTIES);
begin
  FPDF_PROPERTIES := APDF_PROPERTIES;
  FPDF_PROPERTIES_Specified := True;
end;

function INVOICE_PROPERTIES.PDF_PROPERTIES_Specified(Index: Integer): boolean;
begin
  Result := FPDF_PROPERTIES_Specified;
end;

procedure INVOICE_PROPERTIES.SetARCHIVE_NOTE(Index: Integer; const Astring: string);
begin
  FARCHIVE_NOTE := Astring;
  FARCHIVE_NOTE_Specified := True;
end;

function INVOICE_PROPERTIES.ARCHIVE_NOTE_Specified(Index: Integer): boolean;
begin
  Result := FARCHIVE_NOTE_Specified;
end;

procedure INVOICE_PROPERTIES.SetINVOICE_CONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FINVOICE_CONTENT := Abase64Binary;
  FINVOICE_CONTENT_Specified := True;
end;

function INVOICE_PROPERTIES.INVOICE_CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_CONTENT_Specified;
end;

destructor PDF_PROPERTIES.Destroy;
begin
  System.SysUtils.FreeAndNil(FPDF_CONTENT);
  inherited Destroy;
end;

procedure PDF_PROPERTIES.SetEARSIV_PDF_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
begin
  FEARSIV_PDF_FLAG := AFLAG_VALUE;
  FEARSIV_PDF_FLAG_Specified := True;
end;

function PDF_PROPERTIES.EARSIV_PDF_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FEARSIV_PDF_FLAG_Specified;
end;

procedure PDF_PROPERTIES.SetPDF_SIGNATURE_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
begin
  FPDF_SIGNATURE_FLAG := AFLAG_VALUE;
  FPDF_SIGNATURE_FLAG_Specified := True;
end;

function PDF_PROPERTIES.PDF_SIGNATURE_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FPDF_SIGNATURE_FLAG_Specified;
end;

procedure PDF_PROPERTIES.SetPDF_NAME(Index: Integer; const Astring: string);
begin
  FPDF_NAME := Astring;
  FPDF_NAME_Specified := True;
end;

function PDF_PROPERTIES.PDF_NAME_Specified(Index: Integer): boolean;
begin
  Result := FPDF_NAME_Specified;
end;

procedure PDF_PROPERTIES.SetEARCHIVE_PDF_XSLT_FILENAME(Index: Integer; const Astring: string);
begin
  FEARCHIVE_PDF_XSLT_FILENAME := Astring;
  FEARCHIVE_PDF_XSLT_FILENAME_Specified := True;
end;

function PDF_PROPERTIES.EARCHIVE_PDF_XSLT_FILENAME_Specified(Index: Integer): boolean;
begin
  Result := FEARCHIVE_PDF_XSLT_FILENAME_Specified;
end;

procedure PDF_PROPERTIES.SetPDF_CONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FPDF_CONTENT := Abase64Binary;
  FPDF_CONTENT_Specified := True;
end;

function PDF_PROPERTIES.PDF_CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FPDF_CONTENT_Specified;
end;

procedure PDF_PROPERTIES.SetEARCHIVE_PDF_VISUALSIGN_FILE(Index: Integer; const Astring: string);
begin
  FEARCHIVE_PDF_VISUALSIGN_FILE := Astring;
  FEARCHIVE_PDF_VISUALSIGN_FILE_Specified := True;
end;

function PDF_PROPERTIES.EARCHIVE_PDF_VISUALSIGN_FILE_Specified(Index: Integer): boolean;
begin
  Result := FEARCHIVE_PDF_VISUALSIGN_FILE_Specified;
end;

destructor MARK.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FEARCHIVE_INVOICE)-1 do
    System.SysUtils.FreeAndNil(FEARCHIVE_INVOICE[I]);
  System.SetLength(FEARCHIVE_INVOICE, 0);
  inherited Destroy;
end;

procedure MARK.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function MARK.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure MARK.SetEARCHIVE_INVOICE(Index: Integer; const AArray_Of_EARCHIVEINV: Array_Of_EARCHIVEINV);
begin
  FEARCHIVE_INVOICE := AArray_Of_EARCHIVEINV;
  FEARCHIVE_INVOICE_Specified := True;
end;

function MARK.EARCHIVE_INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FEARCHIVE_INVOICE_Specified;
end;

destructor GetEArchiveInvoiceStatusRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GetEArchiveInvoiceStatusRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetEArchiveInvoiceStatusRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetEArchiveInvoiceStatusRequest.SetUUID(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FUUID := AArray_Of_string;
  FUUID_Specified := True;
end;

function GetEArchiveInvoiceStatusRequest.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

destructor CancelEArsivInvoiceContent.Destroy;
begin
  System.SysUtils.FreeAndNil(FIPTAL_TARIHI);
  System.SysUtils.FreeAndNil(FTOPLAM_TUTAR);
  System.SysUtils.FreeAndNil(FINVOICE_CONTENT);
  inherited Destroy;
end;

procedure CancelEArsivInvoiceContent.SetUPLOAD_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
begin
  FUPLOAD_FLAG := AFLAG_VALUE;
  FUPLOAD_FLAG_Specified := True;
end;

function CancelEArsivInvoiceContent.UPLOAD_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FUPLOAD_FLAG_Specified;
end;

procedure CancelEArsivInvoiceContent.SetFATURA_UUID(Index: Integer; const Astring: string);
begin
  FFATURA_UUID := Astring;
  FFATURA_UUID_Specified := True;
end;

function CancelEArsivInvoiceContent.FATURA_UUID_Specified(Index: Integer): boolean;
begin
  Result := FFATURA_UUID_Specified;
end;

procedure CancelEArsivInvoiceContent.SetFATURA_ID(Index: Integer; const Astring: string);
begin
  FFATURA_ID := Astring;
  FFATURA_ID_Specified := True;
end;

function CancelEArsivInvoiceContent.FATURA_ID_Specified(Index: Integer): boolean;
begin
  Result := FFATURA_ID_Specified;
end;

procedure CancelEArsivInvoiceContent.SetEARSIV_CANCEL_EMAIL(Index: Integer; const Astring: string);
begin
  FEARSIV_CANCEL_EMAIL := Astring;
  FEARSIV_CANCEL_EMAIL_Specified := True;
end;

function CancelEArsivInvoiceContent.EARSIV_CANCEL_EMAIL_Specified(Index: Integer): boolean;
begin
  Result := FEARSIV_CANCEL_EMAIL_Specified;
end;

procedure CancelEArsivInvoiceContent.SetDELETE_FLAG(Index: Integer; const Astring: string);
begin
  FDELETE_FLAG := Astring;
  FDELETE_FLAG_Specified := True;
end;

function CancelEArsivInvoiceContent.DELETE_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FDELETE_FLAG_Specified;
end;

procedure CancelEArsivInvoiceContent.SetIPTAL_TARIHI(Index: Integer; const ATXSDate: TXSDate);
begin
  FIPTAL_TARIHI := ATXSDate;
  FIPTAL_TARIHI_Specified := True;
end;

function CancelEArsivInvoiceContent.IPTAL_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FIPTAL_TARIHI_Specified;
end;

procedure CancelEArsivInvoiceContent.SetTOPLAM_TUTAR(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FTOPLAM_TUTAR := ATXSDecimal;
  FTOPLAM_TUTAR_Specified := True;
end;

function CancelEArsivInvoiceContent.TOPLAM_TUTAR_Specified(Index: Integer): boolean;
begin
  Result := FTOPLAM_TUTAR_Specified;
end;

procedure CancelEArsivInvoiceContent.SetINVOICE_CONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FINVOICE_CONTENT := Abase64Binary;
  FINVOICE_CONTENT_Specified := True;
end;

function CancelEArsivInvoiceContent.INVOICE_CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_CONTENT_Specified;
end;

procedure HEADER.SetINVOICE_ID(Index: Integer; const Astring: string);
begin
  FINVOICE_ID := Astring;
  FINVOICE_ID_Specified := True;
end;

function HEADER.INVOICE_ID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_ID_Specified;
end;

procedure HEADER.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function HEADER.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure HEADER.SetPROFILE_ID(Index: Integer; const Astring: string);
begin
  FPROFILE_ID := Astring;
  FPROFILE_ID_Specified := True;
end;

function HEADER.PROFILE_ID_Specified(Index: Integer): boolean;
begin
  Result := FPROFILE_ID_Specified;
end;

procedure HEADER.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function HEADER.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure HEADER.SetSUB_STATUS(Index: Integer; const Astring: string);
begin
  FSUB_STATUS := Astring;
  FSUB_STATUS_Specified := True;
end;

function HEADER.SUB_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSUB_STATUS_Specified;
end;

procedure HEADER.SetISSUE_DATE(Index: Integer; const Astring: string);
begin
  FISSUE_DATE := Astring;
  FISSUE_DATE_Specified := True;
end;

function HEADER.ISSUE_DATE_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_Specified;
end;

procedure HEADER.SetCDATE(Index: Integer; const Astring: string);
begin
  FCDATE := Astring;
  FCDATE_Specified := True;
end;

function HEADER.CDATE_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_Specified;
end;

procedure HEADER.SetSENDER(Index: Integer; const Astring: string);
begin
  FSENDER := Astring;
  FSENDER_Specified := True;
end;

function HEADER.SENDER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_Specified;
end;

procedure HEADER.SetRECEIVER(Index: Integer; const Astring: string);
begin
  FRECEIVER := Astring;
  FRECEIVER_Specified := True;
end;

function HEADER.RECEIVER_Specified(Index: Integer): boolean;
begin
  Result := FRECEIVER_Specified;
end;

procedure CancelEDefterContent.SetVKN(Index: Integer; const Astring: string);
begin
  FVKN := Astring;
  FVKN_Specified := True;
end;

function CancelEDefterContent.VKN_Specified(Index: Integer): boolean;
begin
  Result := FVKN_Specified;
end;

procedure CancelEDefterContent.SetDONEM(Index: Integer; const Astring: string);
begin
  FDONEM := Astring;
  FDONEM_Specified := True;
end;

function CancelEDefterContent.DONEM_Specified(Index: Integer): boolean;
begin
  Result := FDONEM_Specified;
end;

destructor GENERIC_CONTENT.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FCONTENT)-1 do
    System.SysUtils.FreeAndNil(FCONTENT[I]);
  System.SetLength(FCONTENT, 0);
  System.SysUtils.FreeAndNil(FDATE_INDEX1);
  System.SysUtils.FreeAndNil(FDATE_INDEX2);
  System.SysUtils.FreeAndNil(FDATE_INDEX3);
  inherited Destroy;
end;

procedure GENERIC_CONTENT.SetFILE_NAME(Index: Integer; const Astring: string);
begin
  FFILE_NAME := Astring;
  FFILE_NAME_Specified := True;
end;

function GENERIC_CONTENT.FILE_NAME_Specified(Index: Integer): boolean;
begin
  Result := FFILE_NAME_Specified;
end;

procedure GENERIC_CONTENT.SetPAR_INDEX1(Index: Integer; const Astring: string);
begin
  FPAR_INDEX1 := Astring;
  FPAR_INDEX1_Specified := True;
end;

function GENERIC_CONTENT.PAR_INDEX1_Specified(Index: Integer): boolean;
begin
  Result := FPAR_INDEX1_Specified;
end;

procedure GENERIC_CONTENT.SetPAR_INDEX2(Index: Integer; const Astring: string);
begin
  FPAR_INDEX2 := Astring;
  FPAR_INDEX2_Specified := True;
end;

function GENERIC_CONTENT.PAR_INDEX2_Specified(Index: Integer): boolean;
begin
  Result := FPAR_INDEX2_Specified;
end;

procedure GENERIC_CONTENT.SetPAR_INDEX3(Index: Integer; const Astring: string);
begin
  FPAR_INDEX3 := Astring;
  FPAR_INDEX3_Specified := True;
end;

function GENERIC_CONTENT.PAR_INDEX3_Specified(Index: Integer): boolean;
begin
  Result := FPAR_INDEX3_Specified;
end;

procedure GENERIC_CONTENT.SetPAR_INDEX4(Index: Integer; const Astring: string);
begin
  FPAR_INDEX4 := Astring;
  FPAR_INDEX4_Specified := True;
end;

function GENERIC_CONTENT.PAR_INDEX4_Specified(Index: Integer): boolean;
begin
  Result := FPAR_INDEX4_Specified;
end;

procedure GENERIC_CONTENT.SetPAR_INDEX5(Index: Integer; const Astring: string);
begin
  FPAR_INDEX5 := Astring;
  FPAR_INDEX5_Specified := True;
end;

function GENERIC_CONTENT.PAR_INDEX5_Specified(Index: Integer): boolean;
begin
  Result := FPAR_INDEX5_Specified;
end;

procedure GENERIC_CONTENT.SetPAR_INDEX6(Index: Integer; const Astring: string);
begin
  FPAR_INDEX6 := Astring;
  FPAR_INDEX6_Specified := True;
end;

function GENERIC_CONTENT.PAR_INDEX6_Specified(Index: Integer): boolean;
begin
  Result := FPAR_INDEX6_Specified;
end;

procedure GENERIC_CONTENT.SetFIX_PAR1(Index: Integer; const Astring: string);
begin
  FFIX_PAR1 := Astring;
  FFIX_PAR1_Specified := True;
end;

function GENERIC_CONTENT.FIX_PAR1_Specified(Index: Integer): boolean;
begin
  Result := FFIX_PAR1_Specified;
end;

procedure GENERIC_CONTENT.SetFIX_PAR2(Index: Integer; const Astring: string);
begin
  FFIX_PAR2 := Astring;
  FFIX_PAR2_Specified := True;
end;

function GENERIC_CONTENT.FIX_PAR2_Specified(Index: Integer): boolean;
begin
  Result := FFIX_PAR2_Specified;
end;

procedure GENERIC_CONTENT.SetFIX_PAR3(Index: Integer; const Astring: string);
begin
  FFIX_PAR3 := Astring;
  FFIX_PAR3_Specified := True;
end;

function GENERIC_CONTENT.FIX_PAR3_Specified(Index: Integer): boolean;
begin
  Result := FFIX_PAR3_Specified;
end;

procedure GENERIC_CONTENT.SetFIX_PAR4(Index: Integer; const Astring: string);
begin
  FFIX_PAR4 := Astring;
  FFIX_PAR4_Specified := True;
end;

function GENERIC_CONTENT.FIX_PAR4_Specified(Index: Integer): boolean;
begin
  Result := FFIX_PAR4_Specified;
end;

procedure GENERIC_CONTENT.SetFIX_PAR5(Index: Integer; const Astring: string);
begin
  FFIX_PAR5 := Astring;
  FFIX_PAR5_Specified := True;
end;

function GENERIC_CONTENT.FIX_PAR5_Specified(Index: Integer): boolean;
begin
  Result := FFIX_PAR5_Specified;
end;

procedure GENERIC_CONTENT.SetFIX_PAR6(Index: Integer; const Astring: string);
begin
  FFIX_PAR6 := Astring;
  FFIX_PAR6_Specified := True;
end;

function GENERIC_CONTENT.FIX_PAR6_Specified(Index: Integer): boolean;
begin
  Result := FFIX_PAR6_Specified;
end;

procedure GENERIC_CONTENT.SetDATE_INDEX1(Index: Integer; const ATXSDate: TXSDate);
begin
  FDATE_INDEX1 := ATXSDate;
  FDATE_INDEX1_Specified := True;
end;

function GENERIC_CONTENT.DATE_INDEX1_Specified(Index: Integer): boolean;
begin
  Result := FDATE_INDEX1_Specified;
end;

procedure GENERIC_CONTENT.SetDATE_INDEX2(Index: Integer; const ATXSDate: TXSDate);
begin
  FDATE_INDEX2 := ATXSDate;
  FDATE_INDEX2_Specified := True;
end;

function GENERIC_CONTENT.DATE_INDEX2_Specified(Index: Integer): boolean;
begin
  Result := FDATE_INDEX2_Specified;
end;

procedure GENERIC_CONTENT.SetDATE_INDEX3(Index: Integer; const ATXSDate: TXSDate);
begin
  FDATE_INDEX3 := ATXSDate;
  FDATE_INDEX3_Specified := True;
end;

function GENERIC_CONTENT.DATE_INDEX3_Specified(Index: Integer): boolean;
begin
  Result := FDATE_INDEX3_Specified;
end;

procedure GENERIC_CONTENT.SetARCHIVE_TYPE(Index: Integer; const Astring: string);
begin
  FARCHIVE_TYPE := Astring;
  FARCHIVE_TYPE_Specified := True;
end;

function GENERIC_CONTENT.ARCHIVE_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FARCHIVE_TYPE_Specified;
end;

procedure GENERIC_CONTENT.SetARCHIVE_SUB_TYPE(Index: Integer; const Astring: string);
begin
  FARCHIVE_SUB_TYPE := Astring;
  FARCHIVE_SUB_TYPE_Specified := True;
end;

function GENERIC_CONTENT.ARCHIVE_SUB_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FARCHIVE_SUB_TYPE_Specified;
end;

procedure GENERIC_CONTENT.SetFILE_TYPE(Index: Integer; const Astring: string);
begin
  FFILE_TYPE := Astring;
  FFILE_TYPE_Specified := True;
end;

function GENERIC_CONTENT.FILE_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FFILE_TYPE_Specified;
end;

procedure GENERIC_CONTENT.SetDIRECTION(Index: Integer; const Astring: string);
begin
  FDIRECTION := Astring;
  FDIRECTION_Specified := True;
end;

function GENERIC_CONTENT.DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FDIRECTION_Specified;
end;

procedure GENERIC_CONTENT.SetPARSE_FLAG(Index: Integer; const Astring: string);
begin
  FPARSE_FLAG := Astring;
  FPARSE_FLAG_Specified := True;
end;

function GENERIC_CONTENT.PARSE_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FPARSE_FLAG_Specified;
end;

procedure GENERIC_CONTENT.SetOVERRIDE_(Index: Integer; const Astring: string);
begin
  FOVERRIDE_ := Astring;
  FOVERRIDE__Specified := True;
end;

function GENERIC_CONTENT.OVERRIDE__Specified(Index: Integer): boolean;
begin
  Result := FOVERRIDE__Specified;
end;

procedure GENERIC_CONTENT.SetCONTENT(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FCONTENT := AArray_Of_base64Binary;
  FCONTENT_Specified := True;
end;

function GENERIC_CONTENT.CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FCONTENT_Specified;
end;

destructor ArchiveInvoiceExtendedResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ArchiveInvoiceExtendedResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ArchiveInvoiceExtendedResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ArchiveInvoiceExtendedResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ArchiveInvoiceExtendedResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

procedure ArchiveInvoiceExtendedResponse.SetINVOICE_ID(Index: Integer; const Astring: string);
begin
  FINVOICE_ID := Astring;
  FINVOICE_ID_Specified := True;
end;

function ArchiveInvoiceExtendedResponse.INVOICE_ID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_ID_Specified;
end;

procedure base64Binary.SetcontentType(Index: Integer; const Astring: string);
begin
  FcontentType := Astring;
  FcontentType_Specified := True;
end;

function base64Binary.contentType_Specified(Index: Integer): boolean;
begin
  Result := FcontentType_Specified;
end;

procedure HEADER2.SetINVOICE_ID(Index: Integer; const Astring: string);
begin
  FINVOICE_ID := Astring;
  FINVOICE_ID_Specified := True;
end;

function HEADER2.INVOICE_ID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_ID_Specified;
end;

procedure HEADER2.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function HEADER2.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure HEADER2.SetSENDER_NAME(Index: Integer; const Astring: string);
begin
  FSENDER_NAME := Astring;
  FSENDER_NAME_Specified := True;
end;

function HEADER2.SENDER_NAME_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_NAME_Specified;
end;

procedure HEADER2.SetSENDER_IDENTIFIER(Index: Integer; const Astring: string);
begin
  FSENDER_IDENTIFIER := Astring;
  FSENDER_IDENTIFIER_Specified := True;
end;

function HEADER2.SENDER_IDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_IDENTIFIER_Specified;
end;

procedure HEADER2.SetCUSTOMER_NAME(Index: Integer; const Astring: string);
begin
  FCUSTOMER_NAME := Astring;
  FCUSTOMER_NAME_Specified := True;
end;

function HEADER2.CUSTOMER_NAME_Specified(Index: Integer): boolean;
begin
  Result := FCUSTOMER_NAME_Specified;
end;

procedure HEADER2.SetCUSTOMER_IDENTIFIER(Index: Integer; const Astring: string);
begin
  FCUSTOMER_IDENTIFIER := Astring;
  FCUSTOMER_IDENTIFIER_Specified := True;
end;

function HEADER2.CUSTOMER_IDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FCUSTOMER_IDENTIFIER_Specified;
end;

procedure HEADER2.SetPROFILE_ID(Index: Integer; const Astring: string);
begin
  FPROFILE_ID := Astring;
  FPROFILE_ID_Specified := True;
end;

function HEADER2.PROFILE_ID_Specified(Index: Integer): boolean;
begin
  Result := FPROFILE_ID_Specified;
end;

procedure HEADER2.SetINVOICE_TYPE(Index: Integer; const Astring: string);
begin
  FINVOICE_TYPE := Astring;
  FINVOICE_TYPE_Specified := True;
end;

function HEADER2.INVOICE_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_TYPE_Specified;
end;

procedure HEADER2.SetEARCHIVE_TYPE(Index: Integer; const Astring: string);
begin
  FEARCHIVE_TYPE := Astring;
  FEARCHIVE_TYPE_Specified := True;
end;

function HEADER2.EARCHIVE_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FEARCHIVE_TYPE_Specified;
end;

procedure HEADER2.SetSENDING_TYPE(Index: Integer; const Astring: string);
begin
  FSENDING_TYPE := Astring;
  FSENDING_TYPE_Specified := True;
end;

function HEADER2.SENDING_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FSENDING_TYPE_Specified;
end;

procedure HEADER2.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function HEADER2.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure HEADER2.SetSTATUS_CODE(Index: Integer; const Astring: string);
begin
  FSTATUS_CODE := Astring;
  FSTATUS_CODE_Specified := True;
end;

function HEADER2.STATUS_CODE_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_CODE_Specified;
end;

procedure HEADER2.SetISSUE_DATE(Index: Integer; const Astring: string);
begin
  FISSUE_DATE := Astring;
  FISSUE_DATE_Specified := True;
end;

function HEADER2.ISSUE_DATE_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_Specified;
end;

procedure HEADER2.SetPAYABLE_AMOUNT(Index: Integer; const Astring: string);
begin
  FPAYABLE_AMOUNT := Astring;
  FPAYABLE_AMOUNT_Specified := True;
end;

function HEADER2.PAYABLE_AMOUNT_Specified(Index: Integer): boolean;
begin
  Result := FPAYABLE_AMOUNT_Specified;
end;

procedure HEADER2.SetTAXABLE_AMOUNT(Index: Integer; const Astring: string);
begin
  FTAXABLE_AMOUNT := Astring;
  FTAXABLE_AMOUNT_Specified := True;
end;

function HEADER2.TAXABLE_AMOUNT_Specified(Index: Integer): boolean;
begin
  Result := FTAXABLE_AMOUNT_Specified;
end;

procedure HEADER2.SetCURRENCY_CODE(Index: Integer; const Astring: string);
begin
  FCURRENCY_CODE := Astring;
  FCURRENCY_CODE_Specified := True;
end;

function HEADER2.CURRENCY_CODE_Specified(Index: Integer): boolean;
begin
  Result := FCURRENCY_CODE_Specified;
end;

procedure HEADER2.SetREPORTED(Index: Integer; const Astring: string);
begin
  FREPORTED := Astring;
  FREPORTED_Specified := True;
end;

function HEADER2.REPORTED_Specified(Index: Integer): boolean;
begin
  Result := FREPORTED_Specified;
end;

procedure REPORT.SetREPORT_NO(Index: Integer; const Astring: string);
begin
  FREPORT_NO := Astring;
  FREPORT_NO_Specified := True;
end;

function REPORT.REPORT_NO_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_NO_Specified;
end;

procedure REPORT.SetREPORT_PERIOD(Index: Integer; const Astring: string);
begin
  FREPORT_PERIOD := Astring;
  FREPORT_PERIOD_Specified := True;
end;

function REPORT.REPORT_PERIOD_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_PERIOD_Specified;
end;

procedure REPORT.SetREPORT_STATUS(Index: Integer; const Astring: string);
begin
  FREPORT_STATUS := Astring;
  FREPORT_STATUS_Specified := True;
end;

function REPORT.REPORT_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_STATUS_Specified;
end;

procedure REPORT.SetREPORT_SUB_STATUS(Index: Integer; const Astring: string);
begin
  FREPORT_SUB_STATUS := Astring;
  FREPORT_SUB_STATUS_Specified := True;
end;

function REPORT.REPORT_SUB_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_SUB_STATUS_Specified;
end;

procedure DOCUMENT.SetDONEM(Index: Integer; const Astring: string);
begin
  FDONEM := Astring;
  FDONEM_Specified := True;
end;

function DOCUMENT.DONEM_Specified(Index: Integer): boolean;
begin
  Result := FDONEM_Specified;
end;

procedure DOCUMENT.SetDOC_NAME(Index: Integer; const Astring: string);
begin
  FDOC_NAME := Astring;
  FDOC_NAME_Specified := True;
end;

function DOCUMENT.DOC_NAME_Specified(Index: Integer): boolean;
begin
  Result := FDOC_NAME_Specified;
end;

procedure DOCUMENT.SetSUBE_NO(Index: Integer; const Astring: string);
begin
  FSUBE_NO := Astring;
  FSUBE_NO_Specified := True;
end;

function DOCUMENT.SUBE_NO_Specified(Index: Integer): boolean;
begin
  Result := FSUBE_NO_Specified;
end;

destructor ArchiveInvoiceWriteResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ArchiveInvoiceWriteResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ArchiveInvoiceWriteResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ArchiveInvoiceWriteResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ArchiveInvoiceWriteResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor GetGenericArchiveStatusRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GetGenericArchiveStatusRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetGenericArchiveStatusRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetGenericArchiveStatusRequest.SetDONEM(Index: Integer; const Astring: string);
begin
  FDONEM := Astring;
  FDONEM_Specified := True;
end;

function GetGenericArchiveStatusRequest.DONEM_Specified(Index: Integer): boolean;
begin
  Result := FDONEM_Specified;
end;

procedure GetGenericArchiveStatusRequest.SetDONEM_PARCA_SAYISI(Index: Integer; const Astring: string);
begin
  FDONEM_PARCA_SAYISI := Astring;
  FDONEM_PARCA_SAYISI_Specified := True;
end;

function GetGenericArchiveStatusRequest.DONEM_PARCA_SAYISI_Specified(Index: Integer): boolean;
begin
  Result := FDONEM_PARCA_SAYISI_Specified;
end;

procedure GetGenericArchiveStatusRequest.SetDONEM_PARCA_KODU(Index: Integer; const Astring: string);
begin
  FDONEM_PARCA_KODU := Astring;
  FDONEM_PARCA_KODU_Specified := True;
end;

function GetGenericArchiveStatusRequest.DONEM_PARCA_KODU_Specified(Index: Integer): boolean;
begin
  Result := FDONEM_PARCA_KODU_Specified;
end;

destructor GetGenericArchiveStatusResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGEN_ARCHIVE_DOC);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetGenericArchiveStatusResponse.SetGEN_ARCHIVE_DOC(Index: Integer; const Abase64Binary: base64Binary);
begin
  FGEN_ARCHIVE_DOC := Abase64Binary;
  FGEN_ARCHIVE_DOC_Specified := True;
end;

function GetGenericArchiveStatusResponse.GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
begin
  Result := FGEN_ARCHIVE_DOC_Specified;
end;

procedure GetGenericArchiveStatusResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetGenericArchiveStatusResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetGenericArchiveStatusResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetGenericArchiveStatusResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor GetEmailEarchiveInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGEN_ARCHIVE_DOC);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetEmailEarchiveInvoiceResponse.SetGEN_ARCHIVE_DOC(Index: Integer; const Abase64Binary: base64Binary);
begin
  FGEN_ARCHIVE_DOC := Abase64Binary;
  FGEN_ARCHIVE_DOC_Specified := True;
end;

function GetEmailEarchiveInvoiceResponse.GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
begin
  Result := FGEN_ARCHIVE_DOC_Specified;
end;

procedure GetEmailEarchiveInvoiceResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetEmailEarchiveInvoiceResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetEmailEarchiveInvoiceResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetEmailEarchiveInvoiceResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor GetGenericArchiveByPeriodRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure GetGenericArchiveByPeriodRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetGenericArchiveByPeriodRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetGenericArchiveByPeriodRequest.SetDONEM(Index: Integer; const Astring: string);
begin
  FDONEM := Astring;
  FDONEM_Specified := True;
end;

function GetGenericArchiveByPeriodRequest.DONEM_Specified(Index: Integer): boolean;
begin
  Result := FDONEM_Specified;
end;

procedure GetGenericArchiveByPeriodRequest.SetVKN(Index: Integer; const Astring: string);
begin
  FVKN := Astring;
  FVKN_Specified := True;
end;

function GetGenericArchiveByPeriodRequest.VKN_Specified(Index: Integer): boolean;
begin
  Result := FVKN_Specified;
end;

destructor GetGenericArchiveByPeriodResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGEN_ARCHIVE_DOC);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure GetGenericArchiveByPeriodResponse.SetGEN_ARCHIVE_DOC(Index: Integer; const Abase64Binary: base64Binary);
begin
  FGEN_ARCHIVE_DOC := Abase64Binary;
  FGEN_ARCHIVE_DOC_Specified := True;
end;

function GetGenericArchiveByPeriodResponse.GEN_ARCHIVE_DOC_Specified(Index: Integer): boolean;
begin
  Result := FGEN_ARCHIVE_DOC_Specified;
end;

procedure GetGenericArchiveByPeriodResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function GetGenericArchiveByPeriodResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure GetGenericArchiveByPeriodResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function GetGenericArchiveByPeriodResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ArchiveInvoiceReadRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ArchiveInvoiceReadRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ArchiveInvoiceReadRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure ArchiveInvoiceReadRequest.SetINVOICEID(Index: Integer; const Astring: string);
begin
  FINVOICEID := Astring;
  FINVOICEID_Specified := True;
end;

function ArchiveInvoiceReadRequest.INVOICEID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICEID_Specified;
end;

procedure ArchiveInvoiceReadRequest.SetPORTAL_DIRECTION(Index: Integer; const Astring: string);
begin
  FPORTAL_DIRECTION := Astring;
  FPORTAL_DIRECTION_Specified := True;
end;

function ArchiveInvoiceReadRequest.PORTAL_DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FPORTAL_DIRECTION_Specified;
end;

procedure ArchiveInvoiceReadRequest.SetEXTERNAL_ID(Index: Integer; const AInteger: Integer);
begin
  FEXTERNAL_ID := AInteger;
  FEXTERNAL_ID_Specified := True;
end;

function ArchiveInvoiceReadRequest.EXTERNAL_ID_Specified(Index: Integer): boolean;
begin
  Result := FEXTERNAL_ID_Specified;
end;

procedure ArchiveInvoiceReadRequest.SetPROFILE(Index: Integer; const Astring: string);
begin
  FPROFILE := Astring;
  FPROFILE_Specified := True;
end;

function ArchiveInvoiceReadRequest.PROFILE_Specified(Index: Integer): boolean;
begin
  Result := FPROFILE_Specified;
end;

destructor EArchiveInvoiceCountResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure EArchiveInvoiceCountResponse.SetPORTAL(Index: Integer; const AInteger: Integer);
begin
  FPORTAL := AInteger;
  FPORTAL_Specified := True;
end;

function EArchiveInvoiceCountResponse.PORTAL_Specified(Index: Integer): boolean;
begin
  Result := FPORTAL_Specified;
end;

procedure EArchiveInvoiceCountResponse.SetWS(Index: Integer; const AInteger: Integer);
begin
  FWS := AInteger;
  FWS_Specified := True;
end;

function EArchiveInvoiceCountResponse.WS_Specified(Index: Integer): boolean;
begin
  Result := FWS_Specified;
end;

procedure EArchiveInvoiceCountResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function EArchiveInvoiceCountResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ArchiveGetInvoiceInfoResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure ArchiveGetInvoiceInfoResponse.SetPAGE_SIZE(Index: Integer; const AInteger: Integer);
begin
  FPAGE_SIZE := AInteger;
  FPAGE_SIZE_Specified := True;
end;

function ArchiveGetInvoiceInfoResponse.PAGE_SIZE_Specified(Index: Integer): boolean;
begin
  Result := FPAGE_SIZE_Specified;
end;

procedure ArchiveGetInvoiceInfoResponse.SetPAGE_NUMBER(Index: Integer; const AInteger: Integer);
begin
  FPAGE_NUMBER := AInteger;
  FPAGE_NUMBER_Specified := True;
end;

function ArchiveGetInvoiceInfoResponse.PAGE_NUMBER_Specified(Index: Integer): boolean;
begin
  Result := FPAGE_NUMBER_Specified;
end;

procedure ArchiveGetInvoiceInfoResponse.SetTOTAL_INVOICE_COUNT(Index: Integer; const AInteger: Integer);
begin
  FTOTAL_INVOICE_COUNT := AInteger;
  FTOTAL_INVOICE_COUNT_Specified := True;
end;

function ArchiveGetInvoiceInfoResponse.TOTAL_INVOICE_COUNT_Specified(Index: Integer): boolean;
begin
  Result := FTOTAL_INVOICE_COUNT_Specified;
end;

procedure ArchiveGetInvoiceInfoResponse.SetINVOICE(Index: Integer; const AArray_Of_INVOICE: Array_Of_INVOICE);
begin
  FINVOICE := AArray_Of_INVOICE;
  FINVOICE_Specified := True;
end;

function ArchiveGetInvoiceInfoResponse.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure ArchiveGetInvoiceInfoResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function ArchiveGetInvoiceInfoResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure ArchiveGetInvoiceInfoResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function ArchiveGetInvoiceInfoResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

destructor ArchiveInvoiceCopyRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ArchiveInvoiceCopyRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ArchiveInvoiceCopyRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure ArchiveInvoiceCopyRequest.SetINVOICE_UUID(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FINVOICE_UUID := AArray_Of_string;
  FINVOICE_UUID_Specified := True;
end;

function ArchiveInvoiceCopyRequest.INVOICE_UUID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_UUID_Specified;
end;

procedure ArchiveInvoiceCopyRequest.SetPORTAL_DIRECTION(Index: Integer; const Astring: string);
begin
  FPORTAL_DIRECTION := Astring;
  FPORTAL_DIRECTION_Specified := True;
end;

function ArchiveInvoiceCopyRequest.PORTAL_DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FPORTAL_DIRECTION_Specified;
end;

procedure ArchiveInvoiceCopyRequest.SetEXTERNAL_ID(Index: Integer; const AInteger: Integer);
begin
  FEXTERNAL_ID := AInteger;
  FEXTERNAL_ID_Specified := True;
end;

function ArchiveInvoiceCopyRequest.EXTERNAL_ID_Specified(Index: Integer): boolean;
begin
  Result := FEXTERNAL_ID_Specified;
end;

procedure ArchiveInvoiceCopyRequest.SetARCHIVE_NOTE(Index: Integer; const Astring: string);
begin
  FARCHIVE_NOTE := Astring;
  FARCHIVE_NOTE_Specified := True;
end;

function ArchiveInvoiceCopyRequest.ARCHIVE_NOTE_Specified(Index: Integer): boolean;
begin
  Result := FARCHIVE_NOTE_Specified;
end;

destructor ArchiveGetInvoiceInfoRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ArchiveGetInvoiceInfoRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ArchiveGetInvoiceInfoRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

destructor Elements.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FElementList)-1 do
    System.SysUtils.FreeAndNil(FElementList[I]);
  System.SetLength(FElementList, 0);
  inherited Destroy;
end;

procedure Elements.SetElementType(Index: Integer; const Astring: string);
begin
  FElementType := Astring;
  FElementType_Specified := True;
end;

function Elements.ElementType_Specified(Index: Integer): boolean;
begin
  Result := FElementType_Specified;
end;

procedure Elements.SetElementList(Index: Integer; const AArray_Of_base64Binary: Array_Of_base64Binary);
begin
  FElementList := AArray_Of_base64Binary;
  FElementList_Specified := True;
end;

function Elements.ElementList_Specified(Index: Integer): boolean;
begin
  Result := FElementList_Specified;
end;

procedure EARSIV_PROPERTIES.SetEARSIV_EMAIL_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
begin
  FEARSIV_EMAIL_FLAG := AFLAG_VALUE;
  FEARSIV_EMAIL_FLAG_Specified := True;
end;

function EARSIV_PROPERTIES.EARSIV_EMAIL_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FEARSIV_EMAIL_FLAG_Specified;
end;

procedure EARSIV_PROPERTIES.SetEARSIV_EMAIL(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FEARSIV_EMAIL := AArray_Of_string;
  FEARSIV_EMAIL_Specified := True;
end;

function EARSIV_PROPERTIES.EARSIV_EMAIL_Specified(Index: Integer): boolean;
begin
  Result := FEARSIV_EMAIL_Specified;
end;

procedure EARSIV_PROPERTIES.SetSUB_STATUS(Index: Integer; const ASUB_STATUS_VALUE: SUB_STATUS_VALUE);
begin
  FSUB_STATUS := ASUB_STATUS_VALUE;
  FSUB_STATUS_Specified := True;
end;

function EARSIV_PROPERTIES.SUB_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSUB_STATUS_Specified;
end;

procedure EARSIV_PROPERTIES.SetARCH_INVOICE_ID(Index: Integer; const AInteger: Integer);
begin
  FARCH_INVOICE_ID := AInteger;
  FARCH_INVOICE_ID_Specified := True;
end;

function EARSIV_PROPERTIES.ARCH_INVOICE_ID_Specified(Index: Integer): boolean;
begin
  Result := FARCH_INVOICE_ID_Specified;
end;

procedure EARSIV_PROPERTIES.SetSERI(Index: Integer; const Astring: string);
begin
  FSERI := Astring;
  FSERI_Specified := True;
end;

function EARSIV_PROPERTIES.SERI_Specified(Index: Integer): boolean;
begin
  Result := FSERI_Specified;
end;

procedure EARSIV_PROPERTIES.SetEARCHIVE_TEST_FLAG(Index: Integer; const AFLAG_VALUE: FLAG_VALUE);
begin
  FEARCHIVE_TEST_FLAG := AFLAG_VALUE;
  FEARCHIVE_TEST_FLAG_Specified := True;
end;

function EARSIV_PROPERTIES.EARCHIVE_TEST_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FEARCHIVE_TEST_FLAG_Specified;
end;

procedure REQUEST_ERRORType.SetTXN_ID(Index: Integer; const Astring: string);
begin
  FTXN_ID := Astring;
  FTXN_ID_Specified := True;
end;

function REQUEST_ERRORType.TXN_ID_Specified(Index: Integer): boolean;
begin
  Result := FTXN_ID_Specified;
end;

procedure REQUEST_ERRORType.SetERROR_SHORT_DES(Index: Integer; const Astring: string);
begin
  FERROR_SHORT_DES := Astring;
  FERROR_SHORT_DES_Specified := True;
end;

function REQUEST_ERRORType.ERROR_SHORT_DES_Specified(Index: Integer): boolean;
begin
  Result := FERROR_SHORT_DES_Specified;
end;

procedure REQUEST_ERRORType.SetERROR_LONG_DES(Index: Integer; const Astring: string);
begin
  FERROR_LONG_DES := Astring;
  FERROR_LONG_DES_Specified := True;
end;

function REQUEST_ERRORType.ERROR_LONG_DES_Specified(Index: Integer): boolean;
begin
  Result := FERROR_LONG_DES_Specified;
end;

procedure REQUEST_ERRORType.SetSTACKTRACE(Index: Integer; const Astring: string);
begin
  FSTACKTRACE := Astring;
  FSTACKTRACE_Specified := True;
end;

function REQUEST_ERRORType.STACKTRACE_Specified(Index: Integer): boolean;
begin
  Result := FSTACKTRACE_Specified;
end;

procedure REQUEST_ERRORType.SetERROR_ELEMENT_INDEX(Index: Integer; const AInteger: Integer);
begin
  FERROR_ELEMENT_INDEX := AInteger;
  FERROR_ELEMENT_INDEX_Specified := True;
end;

function REQUEST_ERRORType.ERROR_ELEMENT_INDEX_Specified(Index: Integer): boolean;
begin
  Result := FERROR_ELEMENT_INDEX_Specified;
end;

procedure REQUEST_RETURNType.SetCLIENT_TXN_ID(Index: Integer; const Astring: string);
begin
  FCLIENT_TXN_ID := Astring;
  FCLIENT_TXN_ID_Specified := True;
end;

function REQUEST_RETURNType.CLIENT_TXN_ID_Specified(Index: Integer): boolean;
begin
  Result := FCLIENT_TXN_ID_Specified;
end;

procedure REQUEST_RETURNType.SetWARNINGS(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FWARNINGS := AArray_Of_string;
  FWARNINGS_Specified := True;
end;

function REQUEST_RETURNType.WARNINGS_Specified(Index: Integer): boolean;
begin
  Result := FWARNINGS_Specified;
end;

procedure HEADER3.SetINVOICE_ID(Index: Integer; const Astring: string);
begin
  FINVOICE_ID := Astring;
  FINVOICE_ID_Specified := True;
end;

function HEADER3.INVOICE_ID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_ID_Specified;
end;

procedure HEADER3.SetPROFILE(Index: Integer; const Astring: string);
begin
  FPROFILE := Astring;
  FPROFILE_Specified := True;
end;

function HEADER3.PROFILE_Specified(Index: Integer): boolean;
begin
  Result := FPROFILE_Specified;
end;

procedure HEADER3.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function HEADER3.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure HEADER3.SetINVOICE_DATE(Index: Integer; const Astring: string);
begin
  FINVOICE_DATE := Astring;
  FINVOICE_DATE_Specified := True;
end;

function HEADER3.INVOICE_DATE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_DATE_Specified;
end;

procedure HEADER3.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function HEADER3.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure HEADER3.SetSTATUS_DESC(Index: Integer; const Astring: string);
begin
  FSTATUS_DESC := Astring;
  FSTATUS_DESC_Specified := True;
end;

function HEADER3.STATUS_DESC_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_DESC_Specified;
end;

procedure HEADER3.SetEMAIL_STATUS(Index: Integer; const Astring: string);
begin
  FEMAIL_STATUS := Astring;
  FEMAIL_STATUS_Specified := True;
end;

function HEADER3.EMAIL_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FEMAIL_STATUS_Specified;
end;

procedure HEADER3.SetEMAIL_STATUS_DESC(Index: Integer; const Astring: string);
begin
  FEMAIL_STATUS_DESC := Astring;
  FEMAIL_STATUS_DESC_Specified := True;
end;

function HEADER3.EMAIL_STATUS_DESC_Specified(Index: Integer): boolean;
begin
  Result := FEMAIL_STATUS_DESC_Specified;
end;

procedure HEADER3.SetREPORT_ID(Index: Integer; const AInteger: Integer);
begin
  FREPORT_ID := AInteger;
  FREPORT_ID_Specified := True;
end;

function HEADER3.REPORT_ID_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_ID_Specified;
end;

destructor ReadEArchiveReportRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure ReadEArchiveReportRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function ReadEArchiveReportRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure ReadEArchiveReportRequest.SetRAPOR_NO(Index: Integer; const Astring: string);
begin
  FRAPOR_NO := Astring;
  FRAPOR_NO_Specified := True;
end;

function ReadEArchiveReportRequest.RAPOR_NO_Specified(Index: Integer): boolean;
begin
  Result := FRAPOR_NO_Specified;
end;

destructor MarkEArchiveInvoiceRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  System.SysUtils.FreeAndNil(FMARK);
  inherited Destroy;
end;

procedure MarkEArchiveInvoiceRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function MarkEArchiveInvoiceRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure MarkEArchiveInvoiceRequest.SetMARK(Index: Integer; const AMARK: MARK);
begin
  FMARK := AMARK;
  FMARK_Specified := True;
end;

function MarkEArchiveInvoiceRequest.MARK_Specified(Index: Integer): boolean;
begin
  Result := FMARK_Specified;
end;

destructor Customer.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  System.SysUtils.FreeAndNil(FRegistryDate);
  inherited Destroy;
end;

procedure Customer.SetTaxoridno(Index: Integer; const Astring: string);
begin
  FTaxoridno := Astring;
  FTaxoridno_Specified := True;
end;

function Customer.Taxoridno_Specified(Index: Integer): boolean;
begin
  Result := FTaxoridno_Specified;
end;

procedure Customer.SetTaxOffice(Index: Integer; const Astring: string);
begin
  FTaxOffice := Astring;
  FTaxOffice_Specified := True;
end;

function Customer.TaxOffice_Specified(Index: Integer): boolean;
begin
  Result := FTaxOffice_Specified;
end;

procedure Customer.SetCustomerName(Index: Integer; const Astring: string);
begin
  FCustomerName := Astring;
  FCustomerName_Specified := True;
end;

function Customer.CustomerName_Specified(Index: Integer): boolean;
begin
  Result := FCustomerName_Specified;
end;

procedure Customer.SetPostboxAlias(Index: Integer; const Astring: string);
begin
  FPostboxAlias := Astring;
  FPostboxAlias_Specified := True;
end;

function Customer.PostboxAlias_Specified(Index: Integer): boolean;
begin
  Result := FPostboxAlias_Specified;
end;

procedure Customer.SetSenderAlias(Index: Integer; const Astring: string);
begin
  FSenderAlias := Astring;
  FSenderAlias_Specified := True;
end;

function Customer.SenderAlias_Specified(Index: Integer): boolean;
begin
  Result := FSenderAlias_Specified;
end;

procedure Customer.SetBatchId(Index: Integer; const Astring: string);
begin
  FBatchId := Astring;
  FBatchId_Specified := True;
end;

function Customer.BatchId_Specified(Index: Integer): boolean;
begin
  Result := FBatchId_Specified;
end;

procedure Customer.SetBatchDescription(Index: Integer; const Astring: string);
begin
  FBatchDescription := Astring;
  FBatchDescription_Specified := True;
end;

function Customer.BatchDescription_Specified(Index: Integer): boolean;
begin
  Result := FBatchDescription_Specified;
end;

procedure Customer.SetPhoneNr(Index: Integer; const Astring: string);
begin
  FPhoneNr := Astring;
  FPhoneNr_Specified := True;
end;

function Customer.PhoneNr_Specified(Index: Integer): boolean;
begin
  Result := FPhoneNr_Specified;
end;

procedure Customer.SetFaxNr(Index: Integer; const Astring: string);
begin
  FFaxNr := Astring;
  FFaxNr_Specified := True;
end;

function Customer.FaxNr_Specified(Index: Integer): boolean;
begin
  Result := FFaxNr_Specified;
end;

procedure Customer.SetEmailAddr(Index: Integer; const Astring: string);
begin
  FEmailAddr := Astring;
  FEmailAddr_Specified := True;
end;

function Customer.EmailAddr_Specified(Index: Integer): boolean;
begin
  Result := FEmailAddr_Specified;
end;

procedure Customer.SetBuildingNr(Index: Integer; const Astring: string);
begin
  FBuildingNr := Astring;
  FBuildingNr_Specified := True;
end;

function Customer.BuildingNr_Specified(Index: Integer): boolean;
begin
  Result := FBuildingNr_Specified;
end;

procedure Customer.SetStreetName(Index: Integer; const Astring: string);
begin
  FStreetName := Astring;
  FStreetName_Specified := True;
end;

function Customer.StreetName_Specified(Index: Integer): boolean;
begin
  Result := FStreetName_Specified;
end;

procedure Customer.SetAddressStreet2(Index: Integer; const Astring: string);
begin
  FAddressStreet2 := Astring;
  FAddressStreet2_Specified := True;
end;

function Customer.AddressStreet2_Specified(Index: Integer): boolean;
begin
  Result := FAddressStreet2_Specified;
end;

procedure Customer.SetPostalCode(Index: Integer; const Astring: string);
begin
  FPostalCode := Astring;
  FPostalCode_Specified := True;
end;

function Customer.PostalCode_Specified(Index: Integer): boolean;
begin
  Result := FPostalCode_Specified;
end;

procedure Customer.SetWebSiteUrl(Index: Integer; const Astring: string);
begin
  FWebSiteUrl := Astring;
  FWebSiteUrl_Specified := True;
end;

function Customer.WebSiteUrl_Specified(Index: Integer): boolean;
begin
  Result := FWebSiteUrl_Specified;
end;

procedure Customer.SetNaceCode(Index: Integer; const Astring: string);
begin
  FNaceCode := Astring;
  FNaceCode_Specified := True;
end;

function Customer.NaceCode_Specified(Index: Integer): boolean;
begin
  Result := FNaceCode_Specified;
end;

procedure CustomerExtended.SetFullName(Index: Integer; const Astring: string);
begin
  FFullName := Astring;
  FFullName_Specified := True;
end;

function CustomerExtended.FullName_Specified(Index: Integer): boolean;
begin
  Result := FFullName_Specified;
end;

destructor GetEArchiveInvoiceListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  System.SysUtils.FreeAndNil(FSTART_DATE);
  System.SysUtils.FreeAndNil(FEND_DATE);
  inherited Destroy;
end;

procedure GetEArchiveInvoiceListRequest.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function GetEArchiveInvoiceListRequest.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetLIMIT(Index: Integer; const AInteger: Integer);
begin
  FLIMIT := AInteger;
  FLIMIT_Specified := True;
end;

function GetEArchiveInvoiceListRequest.LIMIT_Specified(Index: Integer): boolean;
begin
  Result := FLIMIT_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function GetEArchiveInvoiceListRequest.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function GetEArchiveInvoiceListRequest.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetSTART_DATE(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FSTART_DATE := ATXSDateTime;
  FSTART_DATE_Specified := True;
end;

function GetEArchiveInvoiceListRequest.START_DATE_Specified(Index: Integer): boolean;
begin
  Result := FSTART_DATE_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetEND_DATE(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FEND_DATE := ATXSDateTime;
  FEND_DATE_Specified := True;
end;

function GetEArchiveInvoiceListRequest.END_DATE_Specified(Index: Integer): boolean;
begin
  Result := FEND_DATE_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetPERIOD(Index: Integer; const Astring: string);
begin
  FPERIOD := Astring;
  FPERIOD_Specified := True;
end;

function GetEArchiveInvoiceListRequest.PERIOD_Specified(Index: Integer): boolean;
begin
  Result := FPERIOD_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetPREFIX(Index: Integer; const Astring: string);
begin
  FPREFIX := Astring;
  FPREFIX_Specified := True;
end;

function GetEArchiveInvoiceListRequest.PREFIX_Specified(Index: Integer): boolean;
begin
  Result := FPREFIX_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetREPORT_ID(Index: Integer; const AInteger: Integer);
begin
  FREPORT_ID := AInteger;
  FREPORT_ID_Specified := True;
end;

function GetEArchiveInvoiceListRequest.REPORT_ID_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_ID_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetREPORT_INCLUDED(Index: Integer; const ABoolean: Boolean);
begin
  FREPORT_INCLUDED := ABoolean;
  FREPORT_INCLUDED_Specified := True;
end;

function GetEArchiveInvoiceListRequest.REPORT_INCLUDED_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_INCLUDED_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetREPORT_FLAG(Index: Integer; const Astring: string);
begin
  FREPORT_FLAG := Astring;
  FREPORT_FLAG_Specified := True;
end;

function GetEArchiveInvoiceListRequest.REPORT_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FREPORT_FLAG_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetHEADER_ONLY(Index: Integer; const Astring: string);
begin
  FHEADER_ONLY := Astring;
  FHEADER_ONLY_Specified := True;
end;

function GetEArchiveInvoiceListRequest.HEADER_ONLY_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_ONLY_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetCONTENT_TYPE(Index: Integer; const Astring: string);
begin
  FCONTENT_TYPE := Astring;
  FCONTENT_TYPE_Specified := True;
end;

function GetEArchiveInvoiceListRequest.CONTENT_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FCONTENT_TYPE_Specified;
end;

procedure GetEArchiveInvoiceListRequest.SetREAD_INCLUDED(Index: Integer; const Astring: string);
begin
  FREAD_INCLUDED := Astring;
  FREAD_INCLUDED_Specified := True;
end;

function GetEArchiveInvoiceListRequest.READ_INCLUDED_Specified(Index: Integer): boolean;
begin
  Result := FREAD_INCLUDED_Specified;
end;

destructor REPORT_INVOICE.Destroy;
begin
  System.SysUtils.FreeAndNil(FINVOICE_DATE);
  System.SysUtils.FreeAndNil(FCDATE);
  inherited Destroy;
end;

procedure REPORT_INVOICE.SetINVOICE_ID(Index: Integer; const Astring: string);
begin
  FINVOICE_ID := Astring;
  FINVOICE_ID_Specified := True;
end;

function REPORT_INVOICE.INVOICE_ID_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_ID_Specified;
end;

procedure REPORT_INVOICE.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function REPORT_INVOICE.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure REPORT_INVOICE.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function REPORT_INVOICE.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure REPORT_INVOICE.SetSTATUS_DESC(Index: Integer; const Astring: string);
begin
  FSTATUS_DESC := Astring;
  FSTATUS_DESC_Specified := True;
end;

function REPORT_INVOICE.STATUS_DESC_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_DESC_Specified;
end;

procedure REPORT_INVOICE.SetEMAIL_STATUS(Index: Integer; const Astring: string);
begin
  FEMAIL_STATUS := Astring;
  FEMAIL_STATUS_Specified := True;
end;

function REPORT_INVOICE.EMAIL_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FEMAIL_STATUS_Specified;
end;

procedure REPORT_INVOICE.SetEMAIL_STATUS_DESC(Index: Integer; const Astring: string);
begin
  FEMAIL_STATUS_DESC := Astring;
  FEMAIL_STATUS_DESC_Specified := True;
end;

function REPORT_INVOICE.EMAIL_STATUS_DESC_Specified(Index: Integer): boolean;
begin
  Result := FEMAIL_STATUS_DESC_Specified;
end;

destructor REQUEST_HEADERType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FATTRIBUTES)-1 do
    System.SysUtils.FreeAndNil(FATTRIBUTES[I]);
  System.SetLength(FATTRIBUTES, 0);
  System.SysUtils.FreeAndNil(FACTION_DATE);
  System.SysUtils.FreeAndNil(FCHANGE_INFO);
  inherited Destroy;
end;

procedure REQUEST_HEADERType.SetSESSION_ID(Index: Integer; const Astring: string);
begin
  FSESSION_ID := Astring;
  FSESSION_ID_Specified := True;
end;

function REQUEST_HEADERType.SESSION_ID_Specified(Index: Integer): boolean;
begin
  Result := FSESSION_ID_Specified;
end;

procedure REQUEST_HEADERType.SetCLIENT_TXN_ID(Index: Integer; const Astring: string);
begin
  FCLIENT_TXN_ID := Astring;
  FCLIENT_TXN_ID_Specified := True;
end;

function REQUEST_HEADERType.CLIENT_TXN_ID_Specified(Index: Integer): boolean;
begin
  Result := FCLIENT_TXN_ID_Specified;
end;

procedure REQUEST_HEADERType.SetINTL_TXN_ID(Index: Integer; const AInt64: Int64);
begin
  FINTL_TXN_ID := AInt64;
  FINTL_TXN_ID_Specified := True;
end;

function REQUEST_HEADERType.INTL_TXN_ID_Specified(Index: Integer): boolean;
begin
  Result := FINTL_TXN_ID_Specified;
end;

procedure REQUEST_HEADERType.SetINTL_PARENT_TXN_ID(Index: Integer; const AInt64: Int64);
begin
  FINTL_PARENT_TXN_ID := AInt64;
  FINTL_PARENT_TXN_ID_Specified := True;
end;

function REQUEST_HEADERType.INTL_PARENT_TXN_ID_Specified(Index: Integer): boolean;
begin
  Result := FINTL_PARENT_TXN_ID_Specified;
end;

procedure REQUEST_HEADERType.SetACTION_DATE(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FACTION_DATE := ATXSDateTime;
  FACTION_DATE_Specified := True;
end;

function REQUEST_HEADERType.ACTION_DATE_Specified(Index: Integer): boolean;
begin
  Result := FACTION_DATE_Specified;
end;

procedure REQUEST_HEADERType.SetCHANGE_INFO(Index: Integer; const ACHANGE_INFOType: CHANGE_INFOType);
begin
  FCHANGE_INFO := ACHANGE_INFOType;
  FCHANGE_INFO_Specified := True;
end;

function REQUEST_HEADERType.CHANGE_INFO_Specified(Index: Integer): boolean;
begin
  Result := FCHANGE_INFO_Specified;
end;

procedure REQUEST_HEADERType.SetREASON(Index: Integer; const Astring: string);
begin
  FREASON := Astring;
  FREASON_Specified := True;
end;

function REQUEST_HEADERType.REASON_Specified(Index: Integer): boolean;
begin
  Result := FREASON_Specified;
end;

procedure REQUEST_HEADERType.SetAPPLICATION_NAME(Index: Integer; const Astring: string);
begin
  FAPPLICATION_NAME := Astring;
  FAPPLICATION_NAME_Specified := True;
end;

function REQUEST_HEADERType.APPLICATION_NAME_Specified(Index: Integer): boolean;
begin
  Result := FAPPLICATION_NAME_Specified;
end;

procedure REQUEST_HEADERType.SetHOSTNAME(Index: Integer; const Astring: string);
begin
  FHOSTNAME := Astring;
  FHOSTNAME_Specified := True;
end;

function REQUEST_HEADERType.HOSTNAME_Specified(Index: Integer): boolean;
begin
  Result := FHOSTNAME_Specified;
end;

procedure REQUEST_HEADERType.SetCHANNEL_NAME(Index: Integer; const Astring: string);
begin
  FCHANNEL_NAME := Astring;
  FCHANNEL_NAME_Specified := True;
end;

function REQUEST_HEADERType.CHANNEL_NAME_Specified(Index: Integer): boolean;
begin
  Result := FCHANNEL_NAME_Specified;
end;

procedure REQUEST_HEADERType.SetSIMULATION_FLAG(Index: Integer; const Astring: string);
begin
  FSIMULATION_FLAG := Astring;
  FSIMULATION_FLAG_Specified := True;
end;

function REQUEST_HEADERType.SIMULATION_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FSIMULATION_FLAG_Specified;
end;

procedure REQUEST_HEADERType.SetCOMPRESSED(Index: Integer; const Astring: string);
begin
  FCOMPRESSED := Astring;
  FCOMPRESSED_Specified := True;
end;

function REQUEST_HEADERType.COMPRESSED_Specified(Index: Integer): boolean;
begin
  Result := FCOMPRESSED_Specified;
end;

procedure REQUEST_HEADERType.SetSIGN_STATUS(Index: Integer; const ASIGN_STATUS: SIGN_STATUS);
begin
  FSIGN_STATUS := ASIGN_STATUS;
  FSIGN_STATUS_Specified := True;
end;

function REQUEST_HEADERType.SIGN_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSIGN_STATUS_Specified;
end;

procedure REQUEST_HEADERType.SetATTRIBUTES(Index: Integer; const AArray_Of_ATTRIBUTESTYPE: Array_Of_ATTRIBUTESTYPE);
begin
  FATTRIBUTES := AArray_Of_ATTRIBUTESTYPE;
  FATTRIBUTES_Specified := True;
end;

function REQUEST_HEADERType.ATTRIBUTES_Specified(Index: Integer): boolean;
begin
  Result := FATTRIBUTES_Specified;
end;

destructor MarkEArchiveInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  System.SysUtils.FreeAndNil(FERROR_TYPE);
  inherited Destroy;
end;

procedure MarkEArchiveInvoiceResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function MarkEArchiveInvoiceResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

procedure MarkEArchiveInvoiceResponse.SetERROR_TYPE(Index: Integer; const AREQUEST_ERRORType: REQUEST_ERRORType);
begin
  FERROR_TYPE := AREQUEST_ERRORType;
  FERROR_TYPE_Specified := True;
end;

function MarkEArchiveInvoiceResponse.ERROR_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FERROR_TYPE_Specified;
end;

initialization
  { EArchiveServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(EArchiveServiceSoap), 'http://parkentegrasyon.com.tr/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(EArchiveServiceSoap), 'http://parkentegrasyon.com.tr/%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(EArchiveServiceSoap), ioDocument);
  { EArchiveServiceSoap.Login }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'Login', '',
                                 '[ReturnName="LoginResult"]', IS_OPTN);
  { EArchiveServiceSoap.LoginWithTaxOrIdNo }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'LoginWithTaxOrIdNo', '',
                                 '[ReturnName="LoginWithTaxOrIdNoResult"]', IS_OPTN);
  { EArchiveServiceSoap.Logout }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'Logout', '',
                                 '[ReturnName="LogoutResult"]');
  { EArchiveServiceSoap.ArchiveGenericDocument }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'ArchiveGenericDocument', '',
                                 '[ReturnName="ArchiveGenericDocumentResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ArchiveGenericDocument', 'ArchiveGenericDocumentRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ArchiveGenericDocument', 'ArchiveGenericDocumentResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.ArchiveGetInvoiceInfo }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'ArchiveGetInvoiceInfo', '',
                                 '[ReturnName="ArchiveGetInvoiceInfoResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ArchiveGetInvoiceInfo', 'ArchiveGetInvoiceInfoRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ArchiveGetInvoiceInfo', 'ArchiveGetInvoiceInfoResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.CancelEArchiveInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'CancelEArchiveInvoice', '',
                                 '[ReturnName="CancelEArchiveInvoiceResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'CancelEArchiveInvoice', 'CancelEArchiveInvoiceRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'CancelEArchiveInvoice', 'CancelEArchiveInvoiceResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.CancelEDefter }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'CancelEDefter', '',
                                 '[ReturnName="CancelEDefterResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'CancelEDefter', 'CancelEDefterRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'CancelEDefter', 'CancelEDefterResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.CopyToArchive }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'CopyToArchive', '',
                                 '[ReturnName="CopyToArchiveResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'CopyToArchive', 'ArchiveInvoiceCopyRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'CopyToArchive', 'CopyToArchiveResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.EArchiveInvoiceCount }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'EArchiveInvoiceCount', '',
                                 '[ReturnName="EArchiveInvoiceCountResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'EArchiveInvoiceCount', 'EArchiveInvoiceCountRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'EArchiveInvoiceCount', 'EArchiveInvoiceCountResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GenericRead }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GenericRead', '',
                                 '[ReturnName="GenericReadResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GenericRead', 'GenericReadRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GenericRead', 'GenericReadResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetEArchiveInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoice', '',
                                 '[ReturnName="GetEArchiveInvoiceResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoice', 'GetEArchiveInvoiceRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoice', 'GetEArchiveInvoiceResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetEArchiveInvoiceList }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoiceList', '',
                                 '[ReturnName="GetEArchiveInvoiceListResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoiceList', 'GetEArchiveInvoiceListRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoiceList', 'GetEArchiveInvoiceListResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetEArchiveInvoiceStatus }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoiceStatus', '',
                                 '[ReturnName="GetEArchiveInvoiceStatusResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoiceStatus', 'GetEArchiveInvoiceStatusRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveInvoiceStatus', 'GetEArchiveInvoiceStatusResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetEArchiveReport }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveReport', '',
                                 '[ReturnName="GetEArchiveReportResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveReport', 'GetEArchiveReportRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEArchiveReport', 'GetEArchiveReportResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetEmailEarchiveInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetEmailEarchiveInvoice', '',
                                 '[ReturnName="GetEmailEarchiveInvoiceResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEmailEarchiveInvoice', 'GetEmailEarchiveInvoiceRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetEmailEarchiveInvoice', 'GetEmailEarchiveInvoiceResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetGenericArchiveByPeriod }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetGenericArchiveByPeriod', '',
                                 '[ReturnName="GetGenericArchiveByPeriodResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetGenericArchiveByPeriod', 'GetGenericArchiveByPeriodRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetGenericArchiveByPeriod', 'GetGenericArchiveByPeriodResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.GetGenericArchiveStatus }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'GetGenericArchiveStatus', '',
                                 '[ReturnName="GetGenericArchiveStatusResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetGenericArchiveStatus', 'GetGenericArchiveStatusRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'GetGenericArchiveStatus', 'GetGenericArchiveStatusResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.MarkEArchiveInvoice }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'MarkEArchiveInvoice', '',
                                 '[ReturnName="MarkEArchiveInvoiceResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'MarkEArchiveInvoice', 'MarkEArchiveInvoiceRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'MarkEArchiveInvoice', 'MarkEArchiveInvoiceResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.ReadEArchiveReport }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'ReadEArchiveReport', '',
                                 '[ReturnName="ReadEArchiveReportResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ReadEArchiveReport', 'ReadEArchiveReportRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ReadEArchiveReport', 'ReadEArchiveReportResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.ReadFromArchive }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'ReadFromArchive', '',
                                 '[ReturnName="ReadFromArchiveResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ReadFromArchive', 'ArchiveInvoiceReadRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'ReadFromArchive', 'ReadFromArchiveResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.WriteToArchive }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'WriteToArchive', '',
                                 '[ReturnName="WriteToArchiveResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'WriteToArchive', 'ArchiveInvoiceWriteRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'WriteToArchive', 'WriteToArchiveResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  { EArchiveServiceSoap.WriteToArchiveExtended }
  InvRegistry.RegisterMethodInfo(TypeInfo(EArchiveServiceSoap), 'WriteToArchiveExtended', '',
                                 '[ReturnName="WriteToArchiveExtendedResult"]', IS_OPTN);
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'WriteToArchiveExtended', 'ArchiveInvoiceExtendedRequest', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  InvRegistry.RegisterParamInfo(TypeInfo(EArchiveServiceSoap), 'WriteToArchiveExtended', 'WriteToArchiveExtendedResult', '',
                                '[Namespace="http://schemas.i2i.com/ei/wsdl/archive"]');
  RemClassRegistry.RegisterXSClass(EARCHIVEINV, 'http://schemas.i2i.com/ei/wsdl/archive', 'EARCHIVEINV');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DOC_TYPE), 'http://schemas.i2i.com/ei/wsdl/archive', 'DOC_TYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DOC_TYPE), 'KEBIR_DEFTERI', 'KEBIR DEFTERI');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DOC_TYPE), 'YEVMIYE_DEFTERI', 'YEVMIYE DEFTERI');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DOC_TYPE), 'KEBIR_BERATI', 'KEBIR BERATI');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(DOC_TYPE), 'YEVMIYE_BERATI', 'YEVMIYE BERATI');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_REPORT_INVOICE), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_REPORT_INVOICE');
  RemClassRegistry.RegisterXSClass(EARCHIVE_INVOICE, 'http://schemas.i2i.com/ei/wsdl/archive', 'EARCHIVE_INVOICE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ATTRIBUTESTYPE), 'http://schemas.i2i.com/ei/common', 'Array_Of_ATTRIBUTESTYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FLAG_VALUE), 'http://schemas.i2i.com/ei/wsdl/archive', 'FLAG_VALUE');
  RemClassRegistry.RegisterXSClass(INVOICE, 'http://schemas.i2i.com/ei/wsdl/archive', 'INVOICE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SIGN_STATUS), 'http://schemas.i2i.com/ei/entity', 'SIGN_STATUS');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_DOCUMENT), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_DOCUMENT');
  RemClassRegistry.RegisterXSClass(ATTRIBUTESTYPE, 'http://schemas.i2i.com/ei/common', 'ATTRIBUTESTYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ATTRIBUTESTYPE), 'NAME_', '[ExtName="NAME"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_base64Binary), 'http://www.w3.org/2005/05/xmlmime', 'Array_Of_base64Binary');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SUB_STATUS_VALUE), 'http://schemas.i2i.com/ei/wsdl/archive', 'SUB_STATUS_VALUE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_INVOICE), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_INVOICE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_CancelEArsivInvoiceContent), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_CancelEArsivInvoiceContent');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_CancelEDefterContent), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_CancelEDefterContent');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_GENERIC_CONTENT), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_GENERIC_CONTENT');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_EARCHIVE_INVOICE), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_EARCHIVE_INVOICE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfArchiveInvoiceWriteContentElements), 'http://schemas.i2i.com/ei/wsdl/archive', 'ArrayOfArchiveInvoiceWriteContentElements');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_EARCHIVEINV), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_EARCHIVEINV');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_REPORT), 'http://schemas.i2i.com/ei/wsdl/archive', 'Array_Of_REPORT');
  RemClassRegistry.RegisterXSInfo(TypeInfo(EARSIV_TYPE_VALUE), 'http://schemas.i2i.com/ei/wsdl/archive', 'EARSIV_TYPE_VALUE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES), 'http://schemas.i2i.com/ei/wsdl/archive', 'ArrayOfArchiveInvoiceExtendedContentINVOICE_PROPERTIES');
  RemClassRegistry.RegisterXSClass(ArchiveGenericDocumentResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveGenericDocumentResponse');
  RemClassRegistry.RegisterXSClass(GetEArchiveInvoiceListResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveInvoiceListResponse');
  RemClassRegistry.RegisterXSClass(GetEArchiveInvoiceResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveInvoiceResponse');
  RemClassRegistry.RegisterXSClass(CHANGE_INFOType, 'http://schemas.i2i.com/ei/common', 'CHANGE_INFOType');
  RemClassRegistry.RegisterXSClass(GetEArchiveReportResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveReportResponse');
  RemClassRegistry.RegisterXSClass(ArchiveGenericDocumentRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveGenericDocumentRequest');
  RemClassRegistry.RegisterXSClass(GetEArchiveInvoiceStatusResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveInvoiceStatusResponse');
  RemClassRegistry.RegisterXSClass(CancelEArchiveInvoiceResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'CancelEArchiveInvoiceResponse');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceCopyResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceCopyResponse');
  RemClassRegistry.RegisterXSClass(EArchiveInvoiceCountRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'EArchiveInvoiceCountRequest');
  RemClassRegistry.RegisterXSClass(CancelEDefterRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'CancelEDefterRequest');
  RemClassRegistry.RegisterXSClass(CancelEDefterResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'CancelEDefterResponse');
  RemClassRegistry.RegisterXSClass(GenericReadResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GenericReadResponse');
  RemClassRegistry.RegisterXSClass(CancelEArchiveInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'CancelEArchiveInvoiceRequest');
  RemClassRegistry.RegisterXSClass(GenericReadRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GenericReadRequest');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceReadResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceReadResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCustomerExtended), 'http://parkentegrasyon.com.tr/', 'ArrayOfCustomerExtended');
  RemClassRegistry.RegisterXSClass(ReadEArchiveReportResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ReadEArchiveReportResponse');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceExtendedRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceExtendedRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ArchiveInvoiceExtendedRequest), 'ArchiveInvoiceExtendedContent', '[ArrayItemName="INVOICE_PROPERTIES"]');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceWriteRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceWriteRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ArchiveInvoiceWriteRequest), 'ArchiveInvoiceWriteContent', '[ArrayItemName="Elements"]');
  RemClassRegistry.RegisterXSClass(LoginRes, 'http://parkentegrasyon.com.tr/', 'LoginRes');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LoginRes), 'Message_', '[ExtName="Message"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LoginRes), 'CustomerList', '[ArrayItemName="CustomerExtended"]');
  RemClassRegistry.RegisterXSClass(GetEArchiveInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveInvoiceRequest');
  RemClassRegistry.RegisterXSClass(GetEArchiveReportRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveReportRequest');
  RemClassRegistry.RegisterXSClass(GetEmailEarchiveInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEmailEarchiveInvoiceRequest');
  RemClassRegistry.RegisterXSClass(INVOICE_PROPERTIES, 'http://schemas.i2i.com/ei/wsdl/archive', 'INVOICE_PROPERTIES');
  RemClassRegistry.RegisterXSClass(PDF_PROPERTIES, 'http://schemas.i2i.com/ei/wsdl/archive', 'PDF_PROPERTIES');
  RemClassRegistry.RegisterXSClass(MARK, 'http://schemas.i2i.com/ei/wsdl/archive', 'MARK');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(GetEArchiveInvoiceStatusRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveInvoiceStatusRequest');
  RemClassRegistry.RegisterXSClass(CancelEArsivInvoiceContent, 'http://schemas.i2i.com/ei/wsdl/archive', 'CancelEArsivInvoiceContent');
  RemClassRegistry.RegisterXSClass(HEADER, 'http://schemas.i2i.com/ei/wsdl/archive', 'HEADER');
  RemClassRegistry.RegisterXSClass(CancelEDefterContent, 'http://schemas.i2i.com/ei/wsdl/archive', 'CancelEDefterContent');
  RemClassRegistry.RegisterXSClass(GENERIC_CONTENT, 'http://schemas.i2i.com/ei/wsdl/archive', 'GENERIC_CONTENT');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GENERIC_CONTENT), 'OVERRIDE_', '[ExtName="OVERRIDE"]');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceExtendedResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceExtendedResponse');
  RemClassRegistry.RegisterXSClass(base64Binary, 'http://www.w3.org/2005/05/xmlmime', 'base64Binary');
  RemClassRegistry.RegisterXSClass(HEADER2, 'http://schemas.i2i.com/ei/wsdl/archive', 'HEADER2', 'HEADER');
  RemClassRegistry.RegisterXSClass(REPORT, 'http://schemas.i2i.com/ei/wsdl/archive', 'REPORT');
  RemClassRegistry.RegisterXSClass(DOCUMENT, 'http://schemas.i2i.com/ei/wsdl/archive', 'DOCUMENT');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceWriteResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceWriteResponse');
  RemClassRegistry.RegisterXSClass(GetGenericArchiveStatusRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetGenericArchiveStatusRequest');
  RemClassRegistry.RegisterXSClass(GetGenericArchiveStatusResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetGenericArchiveStatusResponse');
  RemClassRegistry.RegisterXSClass(DataObject, 'http://parkentegrasyon.com.tr/', 'DataObject');
  RemClassRegistry.RegisterXSClass(GetEmailEarchiveInvoiceResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEmailEarchiveInvoiceResponse');
  RemClassRegistry.RegisterXSClass(GetGenericArchiveByPeriodRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetGenericArchiveByPeriodRequest');
  RemClassRegistry.RegisterXSClass(GetGenericArchiveByPeriodResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetGenericArchiveByPeriodResponse');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceReadRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceReadRequest');
  RemClassRegistry.RegisterXSClass(EArchiveInvoiceCountResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'EArchiveInvoiceCountResponse');
  RemClassRegistry.RegisterXSClass(ArchiveGetInvoiceInfoResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveGetInvoiceInfoResponse');
  RemClassRegistry.RegisterXSClass(ArchiveInvoiceCopyRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveInvoiceCopyRequest');
  RemClassRegistry.RegisterXSClass(ArchiveGetInvoiceInfoRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ArchiveGetInvoiceInfoRequest');
  RemClassRegistry.RegisterXSClass(Elements, 'http://schemas.i2i.com/ei/wsdl/archive', 'Elements');
  RemClassRegistry.RegisterXSClass(EARSIV_PROPERTIES, 'http://schemas.i2i.com/ei/wsdl/archive', 'EARSIV_PROPERTIES');
  RemClassRegistry.RegisterXSClass(REQUEST_ERRORType, 'http://schemas.i2i.com/ei/entity', 'REQUEST_ERRORType');
  RemClassRegistry.RegisterXSClass(REQUEST_RETURNType, 'http://schemas.i2i.com/ei/entity', 'REQUEST_RETURNType');
  RemClassRegistry.RegisterXSClass(HEADER3, 'http://schemas.i2i.com/ei/wsdl/archive', 'HEADER3', 'HEADER');
  RemClassRegistry.RegisterXSClass(ReadEArchiveReportRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'ReadEArchiveReportRequest');
  RemClassRegistry.RegisterXSClass(DataModelObject, 'http://parkentegrasyon.com.tr/', 'DataModelObject');
  RemClassRegistry.RegisterXSClass(MarkEArchiveInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'MarkEArchiveInvoiceRequest');
  RemClassRegistry.RegisterXSClass(Customer, 'http://parkentegrasyon.com.tr/', 'Customer');
  RemClassRegistry.RegisterXSClass(CustomerExtended, 'http://parkentegrasyon.com.tr/', 'CustomerExtended');
  RemClassRegistry.RegisterXSClass(GetEArchiveInvoiceListRequest, 'http://schemas.i2i.com/ei/wsdl/archive', 'GetEArchiveInvoiceListRequest');
  RemClassRegistry.RegisterXSClass(REPORT_INVOICE, 'http://schemas.i2i.com/ei/wsdl/archive', 'REPORT_INVOICE');
  RemClassRegistry.RegisterXSClass(REQUEST_HEADERType, 'http://schemas.i2i.com/ei/entity', 'REQUEST_HEADERType');
  RemClassRegistry.RegisterXSClass(MarkEArchiveInvoiceResponse, 'http://schemas.i2i.com/ei/wsdl/archive', 'MarkEArchiveInvoiceResponse');

end.