// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>0
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>1
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>2
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>3
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>4
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>5
//  >Import : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL>6
// Encoding : utf-8
// Version  : 1.0
// (14.11.2018 19:48:13 - - $Rev: 90173 $)
// ************************************************************************ //

unit EFaturaService;

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
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:normalizedString - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:token           - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:base64Binary    - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  GetInvoice           = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvoiceStatus     = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvoiceStatusResponse2 = class;            { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceStatusResponse = class;             { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceResponseResponse = class;          { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  SendInvoiceResponseMethodResponse = class;    { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LoadInvoice          = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LoadInvoiceResponse2 = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  LoadInvoiceResponse  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvoiceStatusAll  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  PrepareInvoiceResponse = class;               { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  MarkInvoiceResponse2 = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  MarkInvoiceResponse  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceResponseWithServerSign = class;    { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvoiceWithType   = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  MarkInvoice          = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceResponseMethod = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  DeleteXSLTFilesResponse = class;              { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetXSLTFilesResponse = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  DownloadXsltResponse = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  UploadXSLTFilesResponse = class;              { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  UpdateXSLTFilesResponse = class;              { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetXsltByNameResponse = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SetDefaultXsltResponse = class;               { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  MarkEnvelopeResponse2 = class;                { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  MarkEnvelopeResponse = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoice          = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceResponse2 = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  SendInvoiceResponse  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  MarkEnvelope         = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetApplicationResponse = class;               { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetEnvelope          = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetApplicationResponseResponse = class;       { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetUserList          = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceResponseWithServerSignResponse2 = class;   { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  SendInvoiceResponseWithServerSignResponse = class;   { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CheckUser            = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetUserListResponse  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  REQUEST              = class;                 { "http://schemas.i2i.com/ei/entity"[GblCplx] }
  CheckUserRequest     = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  LogoutRequest        = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  UserRequest          = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  MarkEnvelopeRequest  = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  MarkInvoiceRequest   = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceStatusRequest = class;              { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetEnvelopeRequest   = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  ENVELOPE             = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  ENVELOPE2            = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  GetInvoiceCountRequest = class;               { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  ELEMENT              = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  CancelDraftInvoiceRequest = class;            { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceStatusAllRequest = class;           { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceWithTypeRequest = class;            { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceRequest    = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetUserListBinaryResponse2 = class;           { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  ATTRIBUTESTYPE       = class;                 { "http://schemas.i2i.com/ei/common"[GblCplx] }
  GetEnvelopeStatusRequest = class;             { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetEnvelopeStatus    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetUserListBinaryResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetUserListBinary    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CHANGE_INFOType      = class;                 { "http://schemas.i2i.com/ei/common"[GblCplx] }
  Attachment           = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  SendInvoiceRequest   = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceWithTypeResponse = class;           { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvoiceStatusAllResponse = class;          { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LoadInvoiceRequest   = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetInvoiceResponse   = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetDistrictsWithPlateNumberResponse = class;   { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetDistrictsResponse = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CheckUserResponse    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  PrepareInvoiceResponseResponse = class;       { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceResponseRequest = class;           { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetCitiesResponse    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  ListXSLTFilesResponse = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  DataObject           = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  GetUserListBinaryRequest = class;             { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  REQUEST_HEADERType   = class;                 { "http://schemas.i2i.com/ei/entity"[GblCplx] }
  GetUserListRequest   = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  INVOICE              = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  BillingReference     = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  AdditionalDocumentReference = class;          { "http://parkentegrasyon.com.tr/"[GblCplx] }
  base64Binary         = class;                 { "http://www.w3.org/2005/05/xmlmime"[GblCplx] }
  DespatchDocumentModel = class;                { "http://parkentegrasyon.com.tr/"[GblCplx] }
  EmbeddedDocumentBinaryObject = class;         { "http://parkentegrasyon.com.tr/"[GblCplx] }
  UploadXSLTFiles      = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  MARK                 = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  getAppRespResponseType = class;               { "http://gib.gov.tr/vedop3/eFatura"[GblCplx] }
  getAppRespRequestType = class;                { "http://gib.gov.tr/vedop3/eFatura"[GblCplx] }
  INVOICE_STATUS       = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  HEADER               = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  MARK2                = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  USERCONTENT          = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  LoginRequest         = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  SENDER               = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  RECEIVER             = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  HEADER2              = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  GetDistrictsWithPlateNumber = class;          { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetCities            = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetDistricts         = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  UpdateXSLTFiles      = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetXsltByName        = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  DownloadXslt         = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetXSLTFiles         = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SetDefaultXslt       = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  DeleteXSLTFiles      = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  ListXSLTFiles        = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  INVOICE_SEARCH_KEY   = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  ENVELOPE_SEARCH_KEY  = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  INVOICE_SEARCH_KEY2  = class;                 { "http://schemas.i2i.com/ei/wsdl"[Cplx] }
  LoginRes             = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  DataModelObject      = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  QueryParameter       = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Query                = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  City                 = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Stylefiles           = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Serial               = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  User                 = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  District             = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  inside               = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  SendInvoiceRef       = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Manuelcurrent        = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Customer             = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  CustomerExtended     = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Period               = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  PartyDetails         = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  DeliveryType         = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  WithholdingTax       = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  InvoiceTax           = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  Manuelinvoice        = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  AmountType           = class;                 { "http://schemas.i2i.com/ei/common"[GblCplx] }
  InvoiceLine          = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  PARKInvoiceType      = class;                 { "http://parkentegrasyon.com.tr/"[GblCplx] }
  SendInvoiceResponseWithServerSignRequest = class;   { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  PrepareInvoiceResponseRequest = class;        { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  CreateInsideStock    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetManuelStockAllResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetManuelStockAll    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateInsideStockResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInsideStockInvoiceResponse = class;        { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInsideStockInvoice = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateManuelCurrentResponse = class;          { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateManuelCurrent  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceRefAddResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetManuelCurrentAll  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateManuelStockResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateManuelStock    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetManuelCurrentAllResponse = class;          { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetSerialListResponse = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  UpdateSerialWithNewInIdResponse = class;      { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  UpdateSerialResponse = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetUsersByCustomer   = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetLoginCustomerResponse = class;             { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetLoginCustomer     = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetUsersByCustomerResponse = class;           { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateSerialResponse = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  CreateSerial         = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetSerialResponse    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetNextSerialStringResponse = class;          { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetNextSerialString  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendInvoiceRefAdd    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LogoutResponse       = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  Logout               = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LoginWithTaxOrIdNoResponse = class;           { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvQueries        = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  InvQueriesInsResponse = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  InvQueriesIns        = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvQueriesResponse = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  ENVELOPE3            = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  GetEnvelopeStatusResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetEnvelopeResponse  = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GIBUSER              = class;                 { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }
  UpdateSerial         = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetSerial            = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  UpdateSerialWithNewInId = class;              { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetSerialList        = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LoginWithTaxOrIdNo   = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  LoginResponse        = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  Login                = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvQueryParams    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  PARKInvoiceObjectToUblTextResponse = class;   { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  PARKInvoiceObjectToUblText = class;           { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendPARKInvoiceObjectConnectorResponse = class;   { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GibUserListTxt       = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  ERPRefSendInvoiceAllResponse = class;         { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  ERPRefSendInvoiceAll = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GibUserListTxtResponse = class;               { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  InvQueryInsParamsResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  InvQueryInsParams    = class;                 { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  GetInvQueryParamsResponse = class;            { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendPARKInvoiceObject = class;                { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  SendPARKInvoiceObjectConnector = class;       { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }
  REQUEST_RETURNType   = class;                 { "http://schemas.i2i.com/ei/entity"[GblCplx] }
  SendPARKInvoiceObjectResponse = class;        { "http://parkentegrasyon.com.tr/"[Lit][GblElm] }

  {$SCOPEDENUMS ON}
  { "http://schemas.i2i.com/ei/wsdl"[GblSmpl] }
  USERCONTENTTYPE = (PROCESSUSER, CANCELUSER);

  { "http://schemas.i2i.com/ei/wsdl"[GblSmpl] }
  SIGNTYPE = (HSM_CUSTOMER, HSM_ENTEGRATOR, HSM_CLIENT_SIGNED, TOKEN_CUSTOMER, TOKEN_ENTEGRATOR);

  { "http://schemas.i2i.com/ei/wsdl"[GblSmpl] }
  USERTYPE = (USER, ARCHIVE, EARCHIVE, EARCHIVE_ARCHIVE, EDESPATCH, EDESPATCH_ARCHIVE, SERBEST_MESLEK, MUSTAHSIL, CHANGECUSTOMER);

  { "http://schemas.i2i.com/ei/wsdl"[Smpl] }
  TYPE_ = (CSV, XML);

  { "http://parkentegrasyon.com.tr/"[GblSmpl] }
  BillingReferenceTypes = (InvoiceDocumentReference, SelfBilledInvoiceDocumentReference, CreditNoteDocumentReference, SelfBilledCreditNoteDocumentReference, DebitNoteDocumentReference, ReminderDocumentReference);

  { "http://parkentegrasyon.com.tr/"[GblSmpl] }
  SerialTypes = (All, EFatura, Earsiv, EArsivInternet, EArsivNormal);

  {$SCOPEDENUMS OFF}



  // ************************************************************************ //
  // XML       : GetInvoice, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoice = class(TRemotable)
  private
    FGetInvoiceRequest: GetInvoiceRequest;
    FGetInvoiceRequest_Specified: boolean;
    procedure SetGetInvoiceRequest(Index: Integer; const AGetInvoiceRequest: GetInvoiceRequest);
    function  GetInvoiceRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceRequest: GetInvoiceRequest  Index (IS_OPTN) read FGetInvoiceRequest write SetGetInvoiceRequest stored GetInvoiceRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceStatus, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceStatus = class(TRemotable)
  private
    FGetInvoiceStatusRequest: GetInvoiceStatusRequest;
    FGetInvoiceStatusRequest_Specified: boolean;
    procedure SetGetInvoiceStatusRequest(Index: Integer; const AGetInvoiceStatusRequest: GetInvoiceStatusRequest);
    function  GetInvoiceStatusRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceStatusRequest: GetInvoiceStatusRequest  Index (IS_OPTN) read FGetInvoiceStatusRequest write SetGetInvoiceStatusRequest stored GetInvoiceStatusRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceStatusResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetInvoiceStatusResponse2 = class(TRemotable)
  private
    FINVOICE_STATUS: INVOICE_STATUS;
    FINVOICE_STATUS_Specified: boolean;
    procedure SetINVOICE_STATUS(Index: Integer; const AINVOICE_STATUS: INVOICE_STATUS);
    function  INVOICE_STATUS_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE_STATUS: INVOICE_STATUS  Index (IS_OPTN or IS_UNQL) read FINVOICE_STATUS write SetINVOICE_STATUS stored INVOICE_STATUS_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceStatusResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceStatusResponse = class(TRemotable)
  private
    FGetInvoiceStatusResult: GetInvoiceStatusResponse2;
    FGetInvoiceStatusResult_Specified: boolean;
    procedure SetGetInvoiceStatusResult(Index: Integer; const AGetInvoiceStatusResponse2: GetInvoiceStatusResponse2);
    function  GetInvoiceStatusResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceStatusResult: GetInvoiceStatusResponse2  Index (IS_OPTN) read FGetInvoiceStatusResult write SetGetInvoiceStatusResult stored GetInvoiceStatusResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SendInvoiceResponseResponse = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseMethodResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceResponseMethodResponse = class(TRemotable)
  private
    FSendInvoiceResponseMethodResult: SendInvoiceResponseResponse;
    FSendInvoiceResponseMethodResult_Specified: boolean;
    procedure SetSendInvoiceResponseMethodResult(Index: Integer; const ASendInvoiceResponseResponse: SendInvoiceResponseResponse);
    function  SendInvoiceResponseMethodResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendInvoiceResponseMethodResult: SendInvoiceResponseResponse  Index (IS_OPTN) read FSendInvoiceResponseMethodResult write SetSendInvoiceResponseMethodResult stored SendInvoiceResponseMethodResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoadInvoice, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoadInvoice = class(TRemotable)
  private
    FLoadInvoiceRequest: LoadInvoiceRequest;
    FLoadInvoiceRequest_Specified: boolean;
    procedure SetLoadInvoiceRequest(Index: Integer; const ALoadInvoiceRequest: LoadInvoiceRequest);
    function  LoadInvoiceRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property LoadInvoiceRequest: LoadInvoiceRequest  Index (IS_OPTN) read FLoadInvoiceRequest write SetLoadInvoiceRequest stored LoadInvoiceRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoadInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  LoadInvoiceResponse2 = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoadInvoiceResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoadInvoiceResponse = class(TRemotable)
  private
    FLoadInvoiceResult: LoadInvoiceResponse2;
    FLoadInvoiceResult_Specified: boolean;
    procedure SetLoadInvoiceResult(Index: Integer; const ALoadInvoiceResponse2: LoadInvoiceResponse2);
    function  LoadInvoiceResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property LoadInvoiceResult: LoadInvoiceResponse2  Index (IS_OPTN) read FLoadInvoiceResult write SetLoadInvoiceResult stored LoadInvoiceResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceStatusAll, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceStatusAll = class(TRemotable)
  private
    FGetInvoiceStatusAllRequest: GetInvoiceStatusAllRequest;
    FGetInvoiceStatusAllRequest_Specified: boolean;
    procedure SetGetInvoiceStatusAllRequest(Index: Integer; const AGetInvoiceStatusAllRequest: GetInvoiceStatusAllRequest);
    function  GetInvoiceStatusAllRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceStatusAllRequest: GetInvoiceStatusAllRequest  Index (IS_OPTN) read FGetInvoiceStatusAllRequest write SetGetInvoiceStatusAllRequest stored GetInvoiceStatusAllRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : PrepareInvoiceResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PrepareInvoiceResponse = class(TRemotable)
  private
    FPrepareInvoiceResponseRequest: PrepareInvoiceResponseRequest;
    FPrepareInvoiceResponseRequest_Specified: boolean;
    procedure SetPrepareInvoiceResponseRequest(Index: Integer; const APrepareInvoiceResponseRequest: PrepareInvoiceResponseRequest);
    function  PrepareInvoiceResponseRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property PrepareInvoiceResponseRequest: PrepareInvoiceResponseRequest  Index (IS_OPTN) read FPrepareInvoiceResponseRequest write SetPrepareInvoiceResponseRequest stored PrepareInvoiceResponseRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  MarkInvoiceResponse2 = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkInvoiceResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MarkInvoiceResponse = class(TRemotable)
  private
    FMarkInvoiceResult: MarkInvoiceResponse2;
    FMarkInvoiceResult_Specified: boolean;
    procedure SetMarkInvoiceResult(Index: Integer; const AMarkInvoiceResponse2: MarkInvoiceResponse2);
    function  MarkInvoiceResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property MarkInvoiceResult: MarkInvoiceResponse2  Index (IS_OPTN) read FMarkInvoiceResult write SetMarkInvoiceResult stored MarkInvoiceResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseWithServerSign, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceResponseWithServerSign = class(TRemotable)
  private
    FSendInvoiceResponseWithServerSignRequest: SendInvoiceResponseWithServerSignRequest;
    FSendInvoiceResponseWithServerSignRequest_Specified: boolean;
    procedure SetSendInvoiceResponseWithServerSignRequest(Index: Integer; const ASendInvoiceResponseWithServerSignRequest: SendInvoiceResponseWithServerSignRequest);
    function  SendInvoiceResponseWithServerSignRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendInvoiceResponseWithServerSignRequest: SendInvoiceResponseWithServerSignRequest  Index (IS_OPTN) read FSendInvoiceResponseWithServerSignRequest write SetSendInvoiceResponseWithServerSignRequest stored SendInvoiceResponseWithServerSignRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceWithType, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceWithType = class(TRemotable)
  private
    FGetInvoiceWithTypeRequest: GetInvoiceWithTypeRequest;
    FGetInvoiceWithTypeRequest_Specified: boolean;
    procedure SetGetInvoiceWithTypeRequest(Index: Integer; const AGetInvoiceWithTypeRequest: GetInvoiceWithTypeRequest);
    function  GetInvoiceWithTypeRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceWithTypeRequest: GetInvoiceWithTypeRequest  Index (IS_OPTN) read FGetInvoiceWithTypeRequest write SetGetInvoiceWithTypeRequest stored GetInvoiceWithTypeRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkInvoice, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MarkInvoice = class(TRemotable)
  private
    FMarkInvoiceRequest: MarkInvoiceRequest;
    FMarkInvoiceRequest_Specified: boolean;
    procedure SetMarkInvoiceRequest(Index: Integer; const AMarkInvoiceRequest: MarkInvoiceRequest);
    function  MarkInvoiceRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property MarkInvoiceRequest: MarkInvoiceRequest  Index (IS_OPTN) read FMarkInvoiceRequest write SetMarkInvoiceRequest stored MarkInvoiceRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseMethod, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceResponseMethod = class(TRemotable)
  private
    FSendInvoiceResponseRequest: SendInvoiceResponseRequest;
    FSendInvoiceResponseRequest_Specified: boolean;
    procedure SetSendInvoiceResponseRequest(Index: Integer; const ASendInvoiceResponseRequest: SendInvoiceResponseRequest);
    function  SendInvoiceResponseRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendInvoiceResponseRequest: SendInvoiceResponseRequest  Index (IS_OPTN) read FSendInvoiceResponseRequest write SetSendInvoiceResponseRequest stored SendInvoiceResponseRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteXSLTFilesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteXSLTFilesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetXSLTFilesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetXSLTFilesResponse = class(TRemotable)
  private
    FGetXSLTFilesResult: Stylefiles;
    FGetXSLTFilesResult_Specified: boolean;
    procedure SetGetXSLTFilesResult(Index: Integer; const AStylefiles: Stylefiles);
    function  GetXSLTFilesResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetXSLTFilesResult: Stylefiles  Index (IS_OPTN) read FGetXSLTFilesResult write SetGetXSLTFilesResult stored GetXSLTFilesResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : DownloadXsltResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadXsltResponse = class(TRemotable)
  private
    FDownloadXsltResult: Stylefiles;
    FDownloadXsltResult_Specified: boolean;
    procedure SetDownloadXsltResult(Index: Integer; const AStylefiles: Stylefiles);
    function  DownloadXsltResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property DownloadXsltResult: Stylefiles  Index (IS_OPTN) read FDownloadXsltResult write SetDownloadXsltResult stored DownloadXsltResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : UploadXSLTFilesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadXSLTFilesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : UpdateXSLTFilesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateXSLTFilesResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetXsltByNameResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetXsltByNameResponse = class(TRemotable)
  private
    FGetXsltByNameResult: Stylefiles;
    FGetXsltByNameResult_Specified: boolean;
    procedure SetGetXsltByNameResult(Index: Integer; const AStylefiles: Stylefiles);
    function  GetXsltByNameResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetXsltByNameResult: Stylefiles  Index (IS_OPTN) read FGetXsltByNameResult write SetGetXsltByNameResult stored GetXsltByNameResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetDefaultXsltResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDefaultXsltResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : MarkEnvelopeResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  MarkEnvelopeResponse2 = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkEnvelopeResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MarkEnvelopeResponse = class(TRemotable)
  private
    FMarkEnvelopeResult: MarkEnvelopeResponse2;
    FMarkEnvelopeResult_Specified: boolean;
    procedure SetMarkEnvelopeResult(Index: Integer; const AMarkEnvelopeResponse2: MarkEnvelopeResponse2);
    function  MarkEnvelopeResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property MarkEnvelopeResult: MarkEnvelopeResponse2  Index (IS_OPTN) read FMarkEnvelopeResult write SetMarkEnvelopeResult stored MarkEnvelopeResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoice, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoice = class(TRemotable)
  private
    FSendInvoiceRequest: SendInvoiceRequest;
    FSendInvoiceRequest_Specified: boolean;
    procedure SetSendInvoiceRequest(Index: Integer; const ASendInvoiceRequest: SendInvoiceRequest);
    function  SendInvoiceRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendInvoiceRequest: SendInvoiceRequest  Index (IS_OPTN) read FSendInvoiceRequest write SetSendInvoiceRequest stored SendInvoiceRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SendInvoiceResponse2 = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceResponse = class(TRemotable)
  private
    FSendInvoiceResult: SendInvoiceResponse2;
    FSendInvoiceResult_Specified: boolean;
    procedure SetSendInvoiceResult(Index: Integer; const ASendInvoiceResponse2: SendInvoiceResponse2);
    function  SendInvoiceResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendInvoiceResult: SendInvoiceResponse2  Index (IS_OPTN) read FSendInvoiceResult write SetSendInvoiceResult stored SendInvoiceResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkEnvelope, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  MarkEnvelope = class(TRemotable)
  private
    FMarkEnvelopeRequest: MarkEnvelopeRequest;
    FMarkEnvelopeRequest_Specified: boolean;
    procedure SetMarkEnvelopeRequest(Index: Integer; const AMarkEnvelopeRequest: MarkEnvelopeRequest);
    function  MarkEnvelopeRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property MarkEnvelopeRequest: MarkEnvelopeRequest  Index (IS_OPTN) read FMarkEnvelopeRequest write SetMarkEnvelopeRequest stored MarkEnvelopeRequest_Specified;
  end;

  Array_Of_ENVELOPE = array of ENVELOPE2;       { "http://schemas.i2i.com/ei/wsdl"[Ubnd] }
  Array_Of_USERCONTENT = array of USERCONTENT;   { "http://schemas.i2i.com/ei/wsdl"[GblUbnd] }
  Array_Of_ENVELOPE2 = array of ENVELOPE;       { "http://schemas.i2i.com/ei/wsdl"[Ubnd] }
  Array_Of_ATTRIBUTESTYPE = array of ATTRIBUTESTYPE;   { "http://schemas.i2i.com/ei/common"[GblUbnd] }


  // ************************************************************************ //
  // XML       : GetApplicationResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetApplicationResponse = class(TRemotable)
  private
    FgetAppRespRequestType: getAppRespRequestType;
    FgetAppRespRequestType_Specified: boolean;
    procedure SetgetAppRespRequestType(Index: Integer; const AgetAppRespRequestType: getAppRespRequestType);
    function  getAppRespRequestType_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property getAppRespRequestType: getAppRespRequestType  Index (IS_OPTN) read FgetAppRespRequestType write SetgetAppRespRequestType stored getAppRespRequestType_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEnvelope, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEnvelope = class(TRemotable)
  private
    FGetEnvelopeRequest: GetEnvelopeRequest;
    FGetEnvelopeRequest_Specified: boolean;
    procedure SetGetEnvelopeRequest(Index: Integer; const AGetEnvelopeRequest: GetEnvelopeRequest);
    function  GetEnvelopeRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetEnvelopeRequest: GetEnvelopeRequest  Index (IS_OPTN) read FGetEnvelopeRequest write SetGetEnvelopeRequest stored GetEnvelopeRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetApplicationResponseResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetApplicationResponseResponse = class(TRemotable)
  private
    FGetApplicationResponseResult: getAppRespResponseType;
    FGetApplicationResponseResult_Specified: boolean;
    procedure SetGetApplicationResponseResult(Index: Integer; const AgetAppRespResponseType: getAppRespResponseType);
    function  GetApplicationResponseResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetApplicationResponseResult: getAppRespResponseType  Index (IS_OPTN) read FGetApplicationResponseResult write SetGetApplicationResponseResult stored GetApplicationResponseResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUserList, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUserList = class(TRemotable)
  private
    FGetUserListRequest: GetUserListRequest;
    FGetUserListRequest_Specified: boolean;
    procedure SetGetUserListRequest(Index: Integer; const AGetUserListRequest: GetUserListRequest);
    function  GetUserListRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetUserListRequest: GetUserListRequest  Index (IS_OPTN) read FGetUserListRequest write SetGetUserListRequest stored GetUserListRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseWithServerSignResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SendInvoiceResponseWithServerSignResponse2 = class(TRemotable)
  private
    FREQUEST_RETURN: REQUEST_RETURNType;
    FREQUEST_RETURN_Specified: boolean;
    procedure SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  REQUEST_RETURN_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_RETURN: REQUEST_RETURNType  Index (IS_OPTN or IS_UNQL) read FREQUEST_RETURN write SetREQUEST_RETURN stored REQUEST_RETURN_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseWithServerSignResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceResponseWithServerSignResponse = class(TRemotable)
  private
    FSendInvoiceResponseWithServerSignResult: SendInvoiceResponseWithServerSignResponse2;
    FSendInvoiceResponseWithServerSignResult_Specified: boolean;
    procedure SetSendInvoiceResponseWithServerSignResult(Index: Integer; const ASendInvoiceResponseWithServerSignResponse2: SendInvoiceResponseWithServerSignResponse2);
    function  SendInvoiceResponseWithServerSignResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendInvoiceResponseWithServerSignResult: SendInvoiceResponseWithServerSignResponse2  Index (IS_OPTN) read FSendInvoiceResponseWithServerSignResult write SetSendInvoiceResponseWithServerSignResult stored SendInvoiceResponseWithServerSignResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : CheckUser, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CheckUser = class(TRemotable)
  private
    FCheckUserRequest: CheckUserRequest;
    FCheckUserRequest_Specified: boolean;
    procedure SetCheckUserRequest(Index: Integer; const ACheckUserRequest: CheckUserRequest);
    function  CheckUserRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property CheckUserRequest: CheckUserRequest  Index (IS_OPTN) read FCheckUserRequest write SetCheckUserRequest stored CheckUserRequest_Specified;
  end;

  GetUserListResponse2 = array of GIBUSER;      { "http://schemas.i2i.com/ei/wsdl"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetUserListResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUserListResponse = class(TRemotable)
  private
    FGetUserListResult: GetUserListResponse2;
    FGetUserListResult_Specified: boolean;
    procedure SetGetUserListResult(Index: Integer; const AGetUserListResponse2: GetUserListResponse2);
    function  GetUserListResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetUserListResult: GetUserListResponse2  Index (IS_OPTN) read FGetUserListResult write SetGetUserListResult stored GetUserListResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : REQUEST, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/entity
  // ************************************************************************ //
  REQUEST = class(TRemotable)
  private
    FREQUEST_HEADER: REQUEST_HEADERType;
    FREQUEST_HEADER_Specified: boolean;
    procedure SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
    function  REQUEST_HEADER_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REQUEST_HEADER: REQUEST_HEADERType  Index (IS_OPTN or IS_UNQL) read FREQUEST_HEADER write SetREQUEST_HEADER stored REQUEST_HEADER_Specified;
  end;



  // ************************************************************************ //
  // XML       : CheckUserRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  CheckUserRequest = class(REQUEST)
  private
    FUSER: GIBUSER;
    FUSER_Specified: boolean;
    procedure SetUSER(Index: Integer; const AGIBUSER: GIBUSER);
    function  USER_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property USER: GIBUSER  Index (IS_OPTN or IS_UNQL) read FUSER write SetUSER stored USER_Specified;
  end;



  // ************************************************************************ //
  // XML       : LogoutRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  LogoutRequest = class(REQUEST)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : UserRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  UserRequest = class(REQUEST)
  private
    FUSERCONTENT: Array_Of_USERCONTENT;
    FUSERCONTENT_Specified: boolean;
    procedure SetUSERCONTENT(Index: Integer; const AArray_Of_USERCONTENT: Array_Of_USERCONTENT);
    function  USERCONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property USERCONTENT: Array_Of_USERCONTENT  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FUSERCONTENT write SetUSERCONTENT stored USERCONTENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkEnvelopeRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  MarkEnvelopeRequest = class(REQUEST)
  private
    FMARK: MARK;
    FMARK_Specified: boolean;
    procedure SetMARK(Index: Integer; const AMARK: MARK);
    function  MARK_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property MARK: MARK  Index (IS_OPTN or IS_UNQL) read FMARK write SetMARK stored MARK_Specified;
  end;



  // ************************************************************************ //
  // XML       : MarkInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  MarkInvoiceRequest = class(REQUEST)
  private
    FMARK: MARK2;
    FMARK_Specified: boolean;
    procedure SetMARK(Index: Integer; const AMARK2: MARK2);
    function  MARK_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property MARK: MARK2  Index (IS_OPTN or IS_UNQL) read FMARK write SetMARK stored MARK_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceStatusRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetInvoiceStatusRequest = class(REQUEST)
  private
    FINVOICE: INVOICE;
    FINVOICE_Specified: boolean;
    procedure SetINVOICE(Index: Integer; const AINVOICE: INVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE: INVOICE  Index (IS_OPTN or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEnvelopeRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetEnvelopeRequest = class(REQUEST)
  private
    FENVELOPE_SEARCH_KEY: ENVELOPE_SEARCH_KEY;
    FENVELOPE_SEARCH_KEY_Specified: boolean;
    FHEADER_ONLY: string;
    FHEADER_ONLY_Specified: boolean;
    procedure SetENVELOPE_SEARCH_KEY(Index: Integer; const AENVELOPE_SEARCH_KEY: ENVELOPE_SEARCH_KEY);
    function  ENVELOPE_SEARCH_KEY_Specified(Index: Integer): boolean;
    procedure SetHEADER_ONLY(Index: Integer; const Astring: string);
    function  HEADER_ONLY_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ENVELOPE_SEARCH_KEY: ENVELOPE_SEARCH_KEY  Index (IS_OPTN or IS_UNQL) read FENVELOPE_SEARCH_KEY write SetENVELOPE_SEARCH_KEY stored ENVELOPE_SEARCH_KEY_Specified;
    property HEADER_ONLY:         string               Index (IS_OPTN or IS_UNQL) read FHEADER_ONLY write SetHEADER_ONLY stored HEADER_ONLY_Specified;
  end;



  // ************************************************************************ //
  // XML       : ENVELOPE, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  ENVELOPE = class(TRemotable)
  private
    FINSTANCEIDENTIFIER: string;
    FINSTANCEIDENTIFIER_Specified: boolean;
    procedure SetINSTANCEIDENTIFIER(Index: Integer; const Astring: string);
    function  INSTANCEIDENTIFIER_Specified(Index: Integer): boolean;
  published
    property INSTANCEIDENTIFIER: string  Index (IS_ATTR or IS_OPTN) read FINSTANCEIDENTIFIER write SetINSTANCEIDENTIFIER stored INSTANCEIDENTIFIER_Specified;
  end;



  // ************************************************************************ //
  // XML       : ENVELOPE, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  ENVELOPE2 = class(TRemotable)
  private
    FINSTANCEIDENTIFIER: string;
    FINSTANCEIDENTIFIER_Specified: boolean;
    procedure SetINSTANCEIDENTIFIER(Index: Integer; const Astring: string);
    function  INSTANCEIDENTIFIER_Specified(Index: Integer): boolean;
  published
    property INSTANCEIDENTIFIER: string  Index (IS_ATTR or IS_OPTN) read FINSTANCEIDENTIFIER write SetINSTANCEIDENTIFIER stored INSTANCEIDENTIFIER_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceCountRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetInvoiceCountRequest = class(REQUEST)
  private
    FISSUE_DATE_START: TXSDate;
    FISSUE_DATE_START_Specified: boolean;
    FISSUE_DATE_END: TXSDate;
    FISSUE_DATE_END_Specified: boolean;
    FCDATE_START: TXSDate;
    FCDATE_START_Specified: boolean;
    FCDATE_END: TXSDate;
    FCDATE_END_Specified: boolean;
    FDIRECTION: string;
    FDIRECTION_Specified: boolean;
    procedure SetISSUE_DATE_START(Index: Integer; const ATXSDate: TXSDate);
    function  ISSUE_DATE_START_Specified(Index: Integer): boolean;
    procedure SetISSUE_DATE_END(Index: Integer; const ATXSDate: TXSDate);
    function  ISSUE_DATE_END_Specified(Index: Integer): boolean;
    procedure SetCDATE_START(Index: Integer; const ATXSDate: TXSDate);
    function  CDATE_START_Specified(Index: Integer): boolean;
    procedure SetCDATE_END(Index: Integer; const ATXSDate: TXSDate);
    function  CDATE_END_Specified(Index: Integer): boolean;
    procedure SetDIRECTION(Index: Integer; const Astring: string);
    function  DIRECTION_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ISSUE_DATE_START: TXSDate  Index (IS_OPTN or IS_UNQL) read FISSUE_DATE_START write SetISSUE_DATE_START stored ISSUE_DATE_START_Specified;
    property ISSUE_DATE_END:   TXSDate  Index (IS_OPTN or IS_UNQL) read FISSUE_DATE_END write SetISSUE_DATE_END stored ISSUE_DATE_END_Specified;
    property CDATE_START:      TXSDate  Index (IS_OPTN or IS_UNQL) read FCDATE_START write SetCDATE_START stored CDATE_START_Specified;
    property CDATE_END:        TXSDate  Index (IS_OPTN or IS_UNQL) read FCDATE_END write SetCDATE_END stored CDATE_END_Specified;
    property DIRECTION:        string   Index (IS_OPTN or IS_UNQL) read FDIRECTION write SetDIRECTION stored DIRECTION_Specified;
  end;



  // ************************************************************************ //
  // XML       : ELEMENT, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  ELEMENT = class(TRemotable)
  private
    FTYPE_: string;
    FTYPE__Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    procedure SetTYPE_(Index: Integer; const Astring: string);
    function  TYPE__Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
  published
    property TYPE_: string  Index (IS_OPTN or IS_UNQL) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
    property UUID:  string  Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : CancelDraftInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  CancelDraftInvoiceRequest = class(REQUEST)
  private
    FUUID: string;
    FUUID_Specified: boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
  published
    property UUID: string  Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
  end;

  Array_Of_token = array of string;             { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : GetInvoiceStatusAllRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetInvoiceStatusAllRequest = class(REQUEST)
  private
    FUUID: Array_Of_token;
    FUUID_Specified: boolean;
    procedure SetUUID(Index: Integer; const AArray_Of_token: Array_Of_token);
    function  UUID_Specified(Index: Integer): boolean;
  published
    property UUID: Array_Of_token  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceWithTypeRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetInvoiceWithTypeRequest = class(REQUEST)
  private
    FINVOICE_SEARCH_KEY: INVOICE_SEARCH_KEY;
    FINVOICE_SEARCH_KEY_Specified: boolean;
    FHEADER_ONLY: string;
    FHEADER_ONLY_Specified: boolean;
    procedure SetINVOICE_SEARCH_KEY(Index: Integer; const AINVOICE_SEARCH_KEY: INVOICE_SEARCH_KEY);
    function  INVOICE_SEARCH_KEY_Specified(Index: Integer): boolean;
    procedure SetHEADER_ONLY(Index: Integer; const Astring: string);
    function  HEADER_ONLY_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE_SEARCH_KEY: INVOICE_SEARCH_KEY  Index (IS_OPTN or IS_UNQL) read FINVOICE_SEARCH_KEY write SetINVOICE_SEARCH_KEY stored INVOICE_SEARCH_KEY_Specified;
    property HEADER_ONLY:        string              Index (IS_OPTN or IS_UNQL) read FHEADER_ONLY write SetHEADER_ONLY stored HEADER_ONLY_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetInvoiceRequest = class(REQUEST)
  private
    FINVOICE_SEARCH_KEY: INVOICE_SEARCH_KEY2;
    FINVOICE_SEARCH_KEY_Specified: boolean;
    FHEADER_ONLY: string;
    FHEADER_ONLY_Specified: boolean;
    procedure SetINVOICE_SEARCH_KEY(Index: Integer; const AINVOICE_SEARCH_KEY2: INVOICE_SEARCH_KEY2);
    function  INVOICE_SEARCH_KEY_Specified(Index: Integer): boolean;
    procedure SetHEADER_ONLY(Index: Integer; const Astring: string);
    function  HEADER_ONLY_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE_SEARCH_KEY: INVOICE_SEARCH_KEY2  Index (IS_OPTN or IS_UNQL) read FINVOICE_SEARCH_KEY write SetINVOICE_SEARCH_KEY stored INVOICE_SEARCH_KEY_Specified;
    property HEADER_ONLY:        string               Index (IS_OPTN or IS_UNQL) read FHEADER_ONLY write SetHEADER_ONLY stored HEADER_ONLY_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUserListBinaryResponse, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetUserListBinaryResponse2 = class(TRemotable)
  private
    FCONTENT: base64Binary;
    FCONTENT_Specified: boolean;
    procedure SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CONTENT: base64Binary  Index (IS_OPTN or IS_UNQL) read FCONTENT write SetCONTENT stored CONTENT_Specified;
  end;



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



  // ************************************************************************ //
  // XML       : GetEnvelopeStatusRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetEnvelopeStatusRequest = class(REQUEST)
  private
    FENVELOPE: Array_Of_ENVELOPE;
    FENVELOPE_Specified: boolean;
    procedure SetENVELOPE(Index: Integer; const AArray_Of_ENVELOPE: Array_Of_ENVELOPE);
    function  ENVELOPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ENVELOPE: Array_Of_ENVELOPE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FENVELOPE write SetENVELOPE stored ENVELOPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEnvelopeStatus, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEnvelopeStatus = class(TRemotable)
  private
    FGetEnvelopeStatusRequest: GetEnvelopeStatusRequest;
    FGetEnvelopeStatusRequest_Specified: boolean;
    procedure SetGetEnvelopeStatusRequest(Index: Integer; const AGetEnvelopeStatusRequest: GetEnvelopeStatusRequest);
    function  GetEnvelopeStatusRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetEnvelopeStatusRequest: GetEnvelopeStatusRequest  Index (IS_OPTN) read FGetEnvelopeStatusRequest write SetGetEnvelopeStatusRequest stored GetEnvelopeStatusRequest_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUserListBinaryResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUserListBinaryResponse = class(TRemotable)
  private
    FGetUserListBinaryResult: GetUserListBinaryResponse2;
    FGetUserListBinaryResult_Specified: boolean;
    procedure SetGetUserListBinaryResult(Index: Integer; const AGetUserListBinaryResponse2: GetUserListBinaryResponse2);
    function  GetUserListBinaryResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetUserListBinaryResult: GetUserListBinaryResponse2  Index (IS_OPTN) read FGetUserListBinaryResult write SetGetUserListBinaryResult stored GetUserListBinaryResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUserListBinary, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUserListBinary = class(TRemotable)
  private
    FGetUserListBinaryRequest: GetUserListBinaryRequest;
    FGetUserListBinaryRequest_Specified: boolean;
    procedure SetGetUserListBinaryRequest(Index: Integer; const AGetUserListBinaryRequest: GetUserListBinaryRequest);
    function  GetUserListBinaryRequest_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetUserListBinaryRequest: GetUserListBinaryRequest  Index (IS_OPTN) read FGetUserListBinaryRequest write SetGetUserListBinaryRequest stored GetUserListBinaryRequest_Specified;
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

  ArrayOfManuelcurrent = array of Manuelcurrent;   { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfManuelinvoice = array of Manuelinvoice;   { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : Attachment, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Attachment = class(TRemotable)
  private
    FEmbeddedDocumentBinaryObject: EmbeddedDocumentBinaryObject;
    FEmbeddedDocumentBinaryObject_Specified: boolean;
    procedure SetEmbeddedDocumentBinaryObject(Index: Integer; const AEmbeddedDocumentBinaryObject: EmbeddedDocumentBinaryObject);
    function  EmbeddedDocumentBinaryObject_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property EmbeddedDocumentBinaryObject: EmbeddedDocumentBinaryObject  Index (IS_OPTN) read FEmbeddedDocumentBinaryObject write SetEmbeddedDocumentBinaryObject stored EmbeddedDocumentBinaryObject_Specified;
  end;

  ArrayOfSendInvoiceRef = array of SendInvoiceRef;   { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfSerial = array of Serial;              { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfINVOICE = array of INVOICE;            { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : SendInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SendInvoiceRequest = class(REQUEST)
  private
    FSENDER: SENDER;
    FSENDER_Specified: boolean;
    FRECEIVER: RECEIVER;
    FRECEIVER_Specified: boolean;
    FINVOICE: ArrayOfINVOICE;
    FINVOICE_Specified: boolean;
    procedure SetSENDER(Index: Integer; const ASENDER: SENDER);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const ARECEIVER: RECEIVER);
    function  RECEIVER_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SENDER:   SENDER          Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER: RECEIVER        Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
    property INVOICE:  ArrayOfINVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceWithTypeResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceWithTypeResponse = class(TRemotable)
  private
    FGetInvoiceWithTypeResult: ArrayOfINVOICE;
    FGetInvoiceWithTypeResult_Specified: boolean;
    procedure SetGetInvoiceWithTypeResult(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  GetInvoiceWithTypeResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceWithTypeResult: ArrayOfINVOICE  Index (IS_OPTN) read FGetInvoiceWithTypeResult write SetGetInvoiceWithTypeResult stored GetInvoiceWithTypeResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceStatusAllResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceStatusAllResponse = class(TRemotable)
  private
    FGetInvoiceStatusAllResult: ArrayOfINVOICE;
    FGetInvoiceStatusAllResult_Specified: boolean;
    procedure SetGetInvoiceStatusAllResult(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  GetInvoiceStatusAllResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceStatusAllResult: ArrayOfINVOICE  Index (IS_OPTN) read FGetInvoiceStatusAllResult write SetGetInvoiceStatusAllResult stored GetInvoiceStatusAllResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoadInvoiceRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  LoadInvoiceRequest = class(REQUEST)
  private
    FINVOICE: ArrayOfINVOICE;
    FINVOICE_Specified: boolean;
    procedure SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INVOICE: ArrayOfINVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvoiceResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvoiceResponse = class(TRemotable)
  private
    FGetInvoiceResult: ArrayOfINVOICE;
    FGetInvoiceResult_Specified: boolean;
    procedure SetGetInvoiceResult(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  GetInvoiceResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvoiceResult: ArrayOfINVOICE  Index (IS_OPTN) read FGetInvoiceResult write SetGetInvoiceResult stored GetInvoiceResult_Specified;
  end;

  ArrayOfDistrict = array of District;          { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetDistrictsWithPlateNumberResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDistrictsWithPlateNumberResponse = class(TRemotable)
  private
    FGetDistrictsWithPlateNumberResult: ArrayOfDistrict;
    FGetDistrictsWithPlateNumberResult_Specified: boolean;
    procedure SetGetDistrictsWithPlateNumberResult(Index: Integer; const AArrayOfDistrict: ArrayOfDistrict);
    function  GetDistrictsWithPlateNumberResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetDistrictsWithPlateNumberResult: ArrayOfDistrict  Index (IS_OPTN) read FGetDistrictsWithPlateNumberResult write SetGetDistrictsWithPlateNumberResult stored GetDistrictsWithPlateNumberResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetDistrictsResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDistrictsResponse = class(TRemotable)
  private
    FGetDistrictsResult: ArrayOfDistrict;
    FGetDistrictsResult_Specified: boolean;
    procedure SetGetDistrictsResult(Index: Integer; const AArrayOfDistrict: ArrayOfDistrict);
    function  GetDistrictsResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetDistrictsResult: ArrayOfDistrict  Index (IS_OPTN) read FGetDistrictsResult write SetGetDistrictsResult stored GetDistrictsResult_Specified;
  end;

  ArrayOfGIBUSER = array of GIBUSER;            { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : CheckUserResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CheckUserResponse = class(TRemotable)
  private
    FCheckUserResult: ArrayOfGIBUSER;
    FCheckUserResult_Specified: boolean;
    procedure SetCheckUserResult(Index: Integer; const AArrayOfGIBUSER: ArrayOfGIBUSER);
    function  CheckUserResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property CheckUserResult: ArrayOfGIBUSER  Index (IS_OPTN) read FCheckUserResult write SetCheckUserResult stored CheckUserResult_Specified;
  end;

  ArrayOfBase64Binary = array of base64Binary;   { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : PrepareInvoiceResponseResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PrepareInvoiceResponseResponse = class(TRemotable)
  private
    FPrepareInvoiceResponseResult: ArrayOfBase64Binary;
    FPrepareInvoiceResponseResult_Specified: boolean;
    procedure SetPrepareInvoiceResponseResult(Index: Integer; const AArrayOfBase64Binary: ArrayOfBase64Binary);
    function  PrepareInvoiceResponseResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property PrepareInvoiceResponseResult: ArrayOfBase64Binary  Index (IS_OPTN) read FPrepareInvoiceResponseResult write SetPrepareInvoiceResponseResult stored PrepareInvoiceResponseResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SendInvoiceResponseRequest = class(REQUEST)
  private
    FAPPRESPONSE: ArrayOfBase64Binary;
    FAPPRESPONSE_Specified: boolean;
    procedure SetAPPRESPONSE(Index: Integer; const AArrayOfBase64Binary: ArrayOfBase64Binary);
    function  APPRESPONSE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property APPRESPONSE: ArrayOfBase64Binary  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FAPPRESPONSE write SetAPPRESPONSE stored APPRESPONSE_Specified;
  end;

  ArrayOfUser = array of User;                  { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfCity = array of City;                  { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetCitiesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCitiesResponse = class(TRemotable)
  private
    FGetCitiesResult: ArrayOfCity;
    FGetCitiesResult_Specified: boolean;
    procedure SetGetCitiesResult(Index: Integer; const AArrayOfCity: ArrayOfCity);
    function  GetCitiesResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetCitiesResult: ArrayOfCity  Index (IS_OPTN) read FGetCitiesResult write SetGetCitiesResult stored GetCitiesResult_Specified;
  end;

  ArrayOfStylefiles = array of Stylefiles;      { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : ListXSLTFilesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ListXSLTFilesResponse = class(TRemotable)
  private
    FListXSLTFilesResult: ArrayOfStylefiles;
    FListXSLTFilesResult_Specified: boolean;
    procedure SetListXSLTFilesResult(Index: Integer; const AArrayOfStylefiles: ArrayOfStylefiles);
    function  ListXSLTFilesResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property ListXSLTFilesResult: ArrayOfStylefiles  Index (IS_OPTN) read FListXSLTFilesResult write SetListXSLTFilesResult stored ListXSLTFilesResult_Specified;
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
  // XML       : GetUserListBinaryRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetUserListBinaryRequest = class(REQUEST)
  private
    FTYPE_: TYPE_;
    FTYPE__Specified: boolean;
    FDOCUMENT_TYPE: string;
    FDOCUMENT_TYPE_Specified: boolean;
    FREGISTER_TIME_START: TXSDateTime;
    FREGISTER_TIME_START_Specified: boolean;
    procedure SetTYPE_(Index: Integer; const ATYPE_: TYPE_);
    function  TYPE__Specified(Index: Integer): boolean;
    procedure SetDOCUMENT_TYPE(Index: Integer; const Astring: string);
    function  DOCUMENT_TYPE_Specified(Index: Integer): boolean;
    procedure SetREGISTER_TIME_START(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  REGISTER_TIME_START_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TYPE_:               TYPE_        Index (IS_OPTN or IS_UNQL) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
    property DOCUMENT_TYPE:       string       Index (IS_OPTN or IS_UNQL) read FDOCUMENT_TYPE write SetDOCUMENT_TYPE stored DOCUMENT_TYPE_Specified;
    property REGISTER_TIME_START: TXSDateTime  Index (IS_OPTN or IS_UNQL) read FREGISTER_TIME_START write SetREGISTER_TIME_START stored REGISTER_TIME_START_Specified;
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
    property ATTRIBUTES:         Array_Of_ATTRIBUTESTYPE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FATTRIBUTES write SetATTRIBUTES stored ATTRIBUTES_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUserListRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GetUserListRequest = class(REQUEST)
  private
    FREGISTER_TIME_START: TXSDateTime;
    FREGISTER_TIME_START_Specified: boolean;
    FDOCUMENT_TYPE: string;
    FDOCUMENT_TYPE_Specified: boolean;
    procedure SetREGISTER_TIME_START(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  REGISTER_TIME_START_Specified(Index: Integer): boolean;
    procedure SetDOCUMENT_TYPE(Index: Integer; const Astring: string);
    function  DOCUMENT_TYPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property REGISTER_TIME_START: TXSDateTime  Index (IS_OPTN or IS_UNQL) read FREGISTER_TIME_START write SetREGISTER_TIME_START stored REGISTER_TIME_START_Specified;
    property DOCUMENT_TYPE:       string       Index (IS_OPTN or IS_UNQL) read FDOCUMENT_TYPE write SetDOCUMENT_TYPE stored DOCUMENT_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : INVOICE, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  INVOICE = class(TRemotable)
  private
    FID: string;
    FID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FLIST_ID: Integer;
    FLIST_ID_Specified: boolean;
    FHEADER: HEADER2;
    FHEADER_Specified: boolean;
    FCONTENT: base64Binary;
    FCONTENT_Specified: boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetLIST_ID(Index: Integer; const AInteger: Integer);
    function  LIST_ID_Specified(Index: Integer): boolean;
    procedure SetHEADER(Index: Integer; const AHEADER2: HEADER2);
    function  HEADER_Specified(Index: Integer): boolean;
    procedure SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ID:      string        Index (IS_ATTR or IS_OPTN) read FID write SetID stored ID_Specified;
    property UUID:    string        Index (IS_ATTR or IS_OPTN) read FUUID write SetUUID stored UUID_Specified;
    property LIST_ID: Integer       Index (IS_ATTR or IS_OPTN) read FLIST_ID write SetLIST_ID stored LIST_ID_Specified;
    property HEADER:  HEADER2       Index (IS_OPTN or IS_UNQL) read FHEADER write SetHEADER stored HEADER_Specified;
    property CONTENT: base64Binary  Index (IS_OPTN or IS_UNQL) read FCONTENT write SetCONTENT stored CONTENT_Specified;
  end;

  ArrayOfQueryParameter = array of QueryParameter;   { "http://parkentegrasyon.com.tr/"[GblCplx] }
  guid            =  type string;      { "http://microsoft.com/wsdl/types/"[GblSmpl] }


  // ************************************************************************ //
  // XML       : BillingReference, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  BillingReference = class(TRemotable)
  private
    FReferenceType: BillingReferenceTypes;
    FID: string;
    FID_Specified: boolean;
    FIssueDate: TXSDateTime;
    FDocumentTypeCode: string;
    FDocumentTypeCode_Specified: boolean;
    FDocumentType: string;
    FDocumentType_Specified: boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetDocumentTypeCode(Index: Integer; const Astring: string);
    function  DocumentTypeCode_Specified(Index: Integer): boolean;
    procedure SetDocumentType(Index: Integer; const Astring: string);
    function  DocumentType_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ReferenceType:    BillingReferenceTypes  read FReferenceType write FReferenceType;
    property ID:               string                 Index (IS_OPTN) read FID write SetID stored ID_Specified;
    property IssueDate:        TXSDateTime            read FIssueDate write FIssueDate;
    property DocumentTypeCode: string                 Index (IS_OPTN) read FDocumentTypeCode write SetDocumentTypeCode stored DocumentTypeCode_Specified;
    property DocumentType:     string                 Index (IS_OPTN) read FDocumentType write SetDocumentType stored DocumentType_Specified;
  end;



  // ************************************************************************ //
  // XML       : AdditionalDocumentReference, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  AdditionalDocumentReference = class(BillingReference)
  private
    FAttachment: Attachment;
    FAttachment_Specified: boolean;
    procedure SetAttachment(Index: Integer; const AAttachment: Attachment);
    function  Attachment_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Attachment: Attachment  Index (IS_OPTN) read FAttachment write SetAttachment stored Attachment_Specified;
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
  // XML       : DespatchDocumentModel, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  DespatchDocumentModel = class(TRemotable)
  private
    FDespatchNumber: string;
    FDespatchNumber_Specified: boolean;
    FDespatchDate: TXSDateTime;
    procedure SetDespatchNumber(Index: Integer; const Astring: string);
    function  DespatchNumber_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DespatchNumber: string       Index (IS_OPTN) read FDespatchNumber write SetDespatchNumber stored DespatchNumber_Specified;
    property DespatchDate:   TXSDateTime  read FDespatchDate write FDespatchDate;
  end;



  // ************************************************************************ //
  // XML       : EmbeddedDocumentBinaryObject, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  EmbeddedDocumentBinaryObject = class(TRemotable)
  private
    FmimeCode: string;
    FmimeCode_Specified: boolean;
    FfileName: string;
    FfileName_Specified: boolean;
    FencodingCode: string;
    FencodingCode_Specified: boolean;
    FcharacterSetCode: string;
    FcharacterSetCode_Specified: boolean;
    FValue: TByteDynArray;
    FValue_Specified: boolean;
    procedure SetmimeCode(Index: Integer; const Astring: string);
    function  mimeCode_Specified(Index: Integer): boolean;
    procedure SetfileName(Index: Integer; const Astring: string);
    function  fileName_Specified(Index: Integer): boolean;
    procedure SetencodingCode(Index: Integer; const Astring: string);
    function  encodingCode_Specified(Index: Integer): boolean;
    procedure SetcharacterSetCode(Index: Integer; const Astring: string);
    function  characterSetCode_Specified(Index: Integer): boolean;
    procedure SetValue(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  Value_Specified(Index: Integer): boolean;
  published
    property mimeCode:         string         Index (IS_OPTN) read FmimeCode write SetmimeCode stored mimeCode_Specified;
    property fileName:         string         Index (IS_OPTN) read FfileName write SetfileName stored fileName_Specified;
    property encodingCode:     string         Index (IS_OPTN) read FencodingCode write SetencodingCode stored encodingCode_Specified;
    property characterSetCode: string         Index (IS_OPTN) read FcharacterSetCode write SetcharacterSetCode stored characterSetCode_Specified;
    property Value:            TByteDynArray  Index (IS_OPTN) read FValue write SetValue stored Value_Specified;
  end;



  // ************************************************************************ //
  // XML       : UploadXSLTFiles, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UploadXSLTFiles = class(TRemotable)
  private
    FstyleFiles: Stylefiles;
    FstyleFiles_Specified: boolean;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure SetstyleFiles(Index: Integer; const AStylefiles: Stylefiles);
    function  styleFiles_Specified(Index: Integer): boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property styleFiles: Stylefiles  Index (IS_OPTN) read FstyleFiles write SetstyleFiles stored styleFiles_Specified;
    property token:      string      Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : MARK, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  MARK = class(TRemotable)
  private
    Fvalue: string;
    Fvalue_Specified: boolean;
    FENVELOPE: Array_Of_ENVELOPE2;
    FENVELOPE_Specified: boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
    procedure SetENVELOPE(Index: Integer; const AArray_Of_ENVELOPE2: Array_Of_ENVELOPE2);
    function  ENVELOPE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property value:    string              Index (IS_ATTR or IS_OPTN) read Fvalue write Setvalue stored value_Specified;
    property ENVELOPE: Array_Of_ENVELOPE2  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FENVELOPE write SetENVELOPE stored ENVELOPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : getAppRespResponseType, global, <complexType>
  // Namespace : http://gib.gov.tr/vedop3/eFatura
  // ************************************************************************ //
  getAppRespResponseType = class(TRemotable)
  private
    FapplicationResponse: string;
    FapplicationResponse_Specified: boolean;
    procedure SetapplicationResponse(Index: Integer; const Astring: string);
    function  applicationResponse_Specified(Index: Integer): boolean;
  published
    property applicationResponse: string  Index (IS_OPTN or IS_UNQL) read FapplicationResponse write SetapplicationResponse stored applicationResponse_Specified;
  end;



  // ************************************************************************ //
  // XML       : getAppRespRequestType, global, <complexType>
  // Namespace : http://gib.gov.tr/vedop3/eFatura
  // ************************************************************************ //
  getAppRespRequestType = class(TRemotable)
  private
    FinstanceIdentifier: string;
    FinstanceIdentifier_Specified: boolean;
    procedure SetinstanceIdentifier(Index: Integer; const Astring: string);
    function  instanceIdentifier_Specified(Index: Integer): boolean;
  published
    property instanceIdentifier: string  Index (IS_OPTN or IS_UNQL) read FinstanceIdentifier write SetinstanceIdentifier stored instanceIdentifier_Specified;
  end;



  // ************************************************************************ //
  // XML       : INVOICE_STATUS, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  INVOICE_STATUS = class(INVOICE)
  private
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSTATUS_DESCRIPTION: string;
    FSTATUS_DESCRIPTION_Specified: boolean;
    FGIB_STATUS_CODE: Integer;
    FGIB_STATUS_CODE_Specified: boolean;
    FGIB_STATUS_DESCRIPTION: string;
    FGIB_STATUS_DESCRIPTION_Specified: boolean;
    FRESPONSE_CODE: string;
    FRESPONSE_CODE_Specified: boolean;
    FRESPONSE_DESCRIPTION: string;
    FRESPONSE_DESCRIPTION_Specified: boolean;
    FCDATE: TXSDateTime;
    FCDATE_Specified: boolean;
    FENVELOPE_IDENTIFIER: string;
    FENVELOPE_IDENTIFIER_Specified: boolean;
    FGTB_REFNO: string;
    FGTB_REFNO_Specified: boolean;
    FGTB_GCB_TESCILNO: string;
    FGTB_GCB_TESCILNO_Specified: boolean;
    FGTB_FIILI_IHRACAT_TARIHI: string;
    FGTB_FIILI_IHRACAT_TARIHI_Specified: boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSTATUS_DESCRIPTION(Index: Integer; const Astring: string);
    function  STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetGIB_STATUS_CODE(Index: Integer; const AInteger: Integer);
    function  GIB_STATUS_CODE_Specified(Index: Integer): boolean;
    procedure SetGIB_STATUS_DESCRIPTION(Index: Integer; const Astring: string);
    function  GIB_STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetRESPONSE_CODE(Index: Integer; const Astring: string);
    function  RESPONSE_CODE_Specified(Index: Integer): boolean;
    procedure SetRESPONSE_DESCRIPTION(Index: Integer; const Astring: string);
    function  RESPONSE_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetCDATE(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CDATE_Specified(Index: Integer): boolean;
    procedure SetENVELOPE_IDENTIFIER(Index: Integer; const Astring: string);
    function  ENVELOPE_IDENTIFIER_Specified(Index: Integer): boolean;
    procedure SetGTB_REFNO(Index: Integer; const Astring: string);
    function  GTB_REFNO_Specified(Index: Integer): boolean;
    procedure SetGTB_GCB_TESCILNO(Index: Integer; const Astring: string);
    function  GTB_GCB_TESCILNO_Specified(Index: Integer): boolean;
    procedure SetGTB_FIILI_IHRACAT_TARIHI(Index: Integer; const Astring: string);
    function  GTB_FIILI_IHRACAT_TARIHI_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property STATUS:                   string       Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property STATUS_DESCRIPTION:       string       Index (IS_OPTN or IS_UNQL) read FSTATUS_DESCRIPTION write SetSTATUS_DESCRIPTION stored STATUS_DESCRIPTION_Specified;
    property GIB_STATUS_CODE:          Integer      Index (IS_OPTN or IS_UNQL) read FGIB_STATUS_CODE write SetGIB_STATUS_CODE stored GIB_STATUS_CODE_Specified;
    property GIB_STATUS_DESCRIPTION:   string       Index (IS_OPTN or IS_UNQL) read FGIB_STATUS_DESCRIPTION write SetGIB_STATUS_DESCRIPTION stored GIB_STATUS_DESCRIPTION_Specified;
    property RESPONSE_CODE:            string       Index (IS_OPTN or IS_UNQL) read FRESPONSE_CODE write SetRESPONSE_CODE stored RESPONSE_CODE_Specified;
    property RESPONSE_DESCRIPTION:     string       Index (IS_OPTN or IS_UNQL) read FRESPONSE_DESCRIPTION write SetRESPONSE_DESCRIPTION stored RESPONSE_DESCRIPTION_Specified;
    property CDATE:                    TXSDateTime  Index (IS_OPTN or IS_UNQL) read FCDATE write SetCDATE stored CDATE_Specified;
    property ENVELOPE_IDENTIFIER:      string       Index (IS_OPTN or IS_UNQL) read FENVELOPE_IDENTIFIER write SetENVELOPE_IDENTIFIER stored ENVELOPE_IDENTIFIER_Specified;
    property GTB_REFNO:                string       Index (IS_OPTN or IS_UNQL) read FGTB_REFNO write SetGTB_REFNO stored GTB_REFNO_Specified;
    property GTB_GCB_TESCILNO:         string       Index (IS_OPTN or IS_UNQL) read FGTB_GCB_TESCILNO write SetGTB_GCB_TESCILNO stored GTB_GCB_TESCILNO_Specified;
    property GTB_FIILI_IHRACAT_TARIHI: string       Index (IS_OPTN or IS_UNQL) read FGTB_FIILI_IHRACAT_TARIHI write SetGTB_FIILI_IHRACAT_TARIHI stored GTB_FIILI_IHRACAT_TARIHI_Specified;
  end;



  // ************************************************************************ //
  // XML       : HEADER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  HEADER = class(TRemotable)
  private
    FSENDER: string;
    FSENDER_Specified: boolean;
    FRECEIVER: string;
    FRECEIVER_Specified: boolean;
    FFROM: string;
    FFROM_Specified: boolean;
    FTO_: string;
    FTO__Specified: boolean;
    FDATE: TXSDate;
    FDATE_Specified: boolean;
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSTATUS_DESCRIPTION: string;
    FSTATUS_DESCRIPTION_Specified: boolean;
    FGIB_STATUS_CODE: Integer;
    FGIB_STATUS_CODE_Specified: boolean;
    FGIB_STATUS_DESCRIPTION: string;
    FGIB_STATUS_DESCRIPTION_Specified: boolean;
    FTYPE_: string;
    FTYPE__Specified: boolean;
    procedure SetSENDER(Index: Integer; const Astring: string);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const Astring: string);
    function  RECEIVER_Specified(Index: Integer): boolean;
    procedure SetFROM(Index: Integer; const Astring: string);
    function  FROM_Specified(Index: Integer): boolean;
    procedure SetTO_(Index: Integer; const Astring: string);
    function  TO__Specified(Index: Integer): boolean;
    procedure SetDATE(Index: Integer; const ATXSDate: TXSDate);
    function  DATE_Specified(Index: Integer): boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSTATUS_DESCRIPTION(Index: Integer; const Astring: string);
    function  STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetGIB_STATUS_CODE(Index: Integer; const AInteger: Integer);
    function  GIB_STATUS_CODE_Specified(Index: Integer): boolean;
    procedure SetGIB_STATUS_DESCRIPTION(Index: Integer; const Astring: string);
    function  GIB_STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetTYPE_(Index: Integer; const Astring: string);
    function  TYPE__Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SENDER:                 string   Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER:               string   Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
    property FROM:                   string   Index (IS_OPTN or IS_UNQL) read FFROM write SetFROM stored FROM_Specified;
    property TO_:                    string   Index (IS_OPTN or IS_UNQL) read FTO_ write SetTO_ stored TO__Specified;
    property DATE:                   TXSDate  Index (IS_OPTN or IS_UNQL) read FDATE write SetDATE stored DATE_Specified;
    property STATUS:                 string   Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property STATUS_DESCRIPTION:     string   Index (IS_OPTN or IS_UNQL) read FSTATUS_DESCRIPTION write SetSTATUS_DESCRIPTION stored STATUS_DESCRIPTION_Specified;
    property GIB_STATUS_CODE:        Integer  Index (IS_OPTN or IS_UNQL) read FGIB_STATUS_CODE write SetGIB_STATUS_CODE stored GIB_STATUS_CODE_Specified;
    property GIB_STATUS_DESCRIPTION: string   Index (IS_OPTN or IS_UNQL) read FGIB_STATUS_DESCRIPTION write SetGIB_STATUS_DESCRIPTION stored GIB_STATUS_DESCRIPTION_Specified;
    property TYPE_:                  string   Index (IS_OPTN or IS_UNQL) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
  end;



  // ************************************************************************ //
  // XML       : MARK, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  MARK2 = class(TRemotable)
  private
    Fvalue: string;
    Fvalue_Specified: boolean;
    FINVOICE: ArrayOfINVOICE;
    FINVOICE_Specified: boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property value:   string          Index (IS_ATTR or IS_OPTN) read Fvalue write Setvalue stored value_Specified;
    property INVOICE: ArrayOfINVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
  end;



  // ************************************************************************ //
  // XML       : USERCONTENT, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  USERCONTENT = class(base64Binary)
  private
    FUSERID: string;
    FUSERID_Specified: boolean;
    FUSERTYPE: USERTYPE;
    FUSERTYPE_Specified: boolean;
    FSIGNTYPE: SIGNTYPE;
    FSIGNTYPE_Specified: boolean;
    FTYPE_: USERCONTENTTYPE;
    FTYPE__Specified: boolean;
    FALIAS_TYPE: string;
    FALIAS_TYPE_Specified: boolean;
    procedure SetUSERID(Index: Integer; const Astring: string);
    function  USERID_Specified(Index: Integer): boolean;
    procedure SetUSERTYPE(Index: Integer; const AUSERTYPE: USERTYPE);
    function  USERTYPE_Specified(Index: Integer): boolean;
    procedure SetSIGNTYPE(Index: Integer; const ASIGNTYPE: SIGNTYPE);
    function  SIGNTYPE_Specified(Index: Integer): boolean;
    procedure SetTYPE_(Index: Integer; const AUSERCONTENTTYPE: USERCONTENTTYPE);
    function  TYPE__Specified(Index: Integer): boolean;
    procedure SetALIAS_TYPE(Index: Integer; const Astring: string);
    function  ALIAS_TYPE_Specified(Index: Integer): boolean;
  published
    property USERID:     string           Index (IS_ATTR or IS_OPTN) read FUSERID write SetUSERID stored USERID_Specified;
    property USERTYPE:   USERTYPE         Index (IS_ATTR or IS_OPTN) read FUSERTYPE write SetUSERTYPE stored USERTYPE_Specified;
    property SIGNTYPE:   SIGNTYPE         Index (IS_ATTR or IS_OPTN) read FSIGNTYPE write SetSIGNTYPE stored SIGNTYPE_Specified;
    property TYPE_:      USERCONTENTTYPE  Index (IS_ATTR or IS_OPTN) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
    property ALIAS_TYPE: string           Index (IS_ATTR or IS_OPTN) read FALIAS_TYPE write SetALIAS_TYPE stored ALIAS_TYPE_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoginRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  LoginRequest = class(REQUEST)
  private
    FUSER_NAME: string;
    FUSER_NAME_Specified: boolean;
    FPASSWORD: string;
    FPASSWORD_Specified: boolean;
    procedure SetUSER_NAME(Index: Integer; const Astring: string);
    function  USER_NAME_Specified(Index: Integer): boolean;
    procedure SetPASSWORD(Index: Integer; const Astring: string);
    function  PASSWORD_Specified(Index: Integer): boolean;
  published
    property USER_NAME: string  Index (IS_OPTN or IS_UNQL) read FUSER_NAME write SetUSER_NAME stored USER_NAME_Specified;
    property PASSWORD:  string  Index (IS_OPTN or IS_UNQL) read FPASSWORD write SetPASSWORD stored PASSWORD_Specified;
  end;



  // ************************************************************************ //
  // XML       : SENDER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SENDER = class(TRemotable)
  private
    Fvkn: string;
    Fvkn_Specified: boolean;
    Falias: string;
    Falias_Specified: boolean;
    procedure Setvkn(Index: Integer; const Astring: string);
    function  vkn_Specified(Index: Integer): boolean;
    procedure Setalias(Index: Integer; const Astring: string);
    function  alias_Specified(Index: Integer): boolean;
  published
    property vkn:   string  Index (IS_ATTR or IS_OPTN) read Fvkn write Setvkn stored vkn_Specified;
    property alias: string  Index (IS_ATTR or IS_OPTN) read Falias write Setalias stored alias_Specified;
  end;



  // ************************************************************************ //
  // XML       : RECEIVER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  RECEIVER = class(TRemotable)
  private
    Fvkn: string;
    Fvkn_Specified: boolean;
    Falias: string;
    Falias_Specified: boolean;
    procedure Setvkn(Index: Integer; const Astring: string);
    function  vkn_Specified(Index: Integer): boolean;
    procedure Setalias(Index: Integer; const Astring: string);
    function  alias_Specified(Index: Integer): boolean;
  published
    property vkn:   string  Index (IS_ATTR or IS_OPTN) read Fvkn write Setvkn stored vkn_Specified;
    property alias: string  Index (IS_ATTR or IS_OPTN) read Falias write Setalias stored alias_Specified;
  end;



  // ************************************************************************ //
  // XML       : HEADER, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  HEADER2 = class(TRemotable)
  private
    FSENDER: string;
    FSENDER_Specified: boolean;
    FRECEIVER: string;
    FRECEIVER_Specified: boolean;
    FSUPPLIER: string;
    FSUPPLIER_Specified: boolean;
    FCUSTOMER: string;
    FCUSTOMER_Specified: boolean;
    FISSUE_DATE: TXSDate;
    FISSUE_DATE_Specified: boolean;
    FPAYABLE_AMOUNT: AmountType;
    FPAYABLE_AMOUNT_Specified: boolean;
    FFROM: string;
    FFROM_Specified: boolean;
    FTO_: string;
    FTO__Specified: boolean;
    FPROFILEID: string;
    FPROFILEID_Specified: boolean;
    FINVOICE_TYPE_CODE: string;
    FINVOICE_TYPE_CODE_Specified: boolean;
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FSTATUS_DESCRIPTION: string;
    FSTATUS_DESCRIPTION_Specified: boolean;
    FGIB_STATUS_CODE: Integer;
    FGIB_STATUS_CODE_Specified: boolean;
    FGIB_STATUS_DESCRIPTION: string;
    FGIB_STATUS_DESCRIPTION_Specified: boolean;
    FRESPONSE_CODE: string;
    FRESPONSE_CODE_Specified: boolean;
    FRESPONSE_DESCRIPTION: string;
    FRESPONSE_DESCRIPTION_Specified: boolean;
    FFILENAME: string;
    FFILENAME_Specified: boolean;
    FHASH: string;
    FHASH_Specified: boolean;
    FCDATE: TXSDateTime;
    FCDATE_Specified: boolean;
    FENVELOPE_IDENTIFIER: string;
    FENVELOPE_IDENTIFIER_Specified: boolean;
    procedure SetSENDER(Index: Integer; const Astring: string);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const Astring: string);
    function  RECEIVER_Specified(Index: Integer): boolean;
    procedure SetSUPPLIER(Index: Integer; const Astring: string);
    function  SUPPLIER_Specified(Index: Integer): boolean;
    procedure SetCUSTOMER(Index: Integer; const Astring: string);
    function  CUSTOMER_Specified(Index: Integer): boolean;
    procedure SetISSUE_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  ISSUE_DATE_Specified(Index: Integer): boolean;
    procedure SetPAYABLE_AMOUNT(Index: Integer; const AAmountType: AmountType);
    function  PAYABLE_AMOUNT_Specified(Index: Integer): boolean;
    procedure SetFROM(Index: Integer; const Astring: string);
    function  FROM_Specified(Index: Integer): boolean;
    procedure SetTO_(Index: Integer; const Astring: string);
    function  TO__Specified(Index: Integer): boolean;
    procedure SetPROFILEID(Index: Integer; const Astring: string);
    function  PROFILEID_Specified(Index: Integer): boolean;
    procedure SetINVOICE_TYPE_CODE(Index: Integer; const Astring: string);
    function  INVOICE_TYPE_CODE_Specified(Index: Integer): boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetSTATUS_DESCRIPTION(Index: Integer; const Astring: string);
    function  STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetGIB_STATUS_CODE(Index: Integer; const AInteger: Integer);
    function  GIB_STATUS_CODE_Specified(Index: Integer): boolean;
    procedure SetGIB_STATUS_DESCRIPTION(Index: Integer; const Astring: string);
    function  GIB_STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetRESPONSE_CODE(Index: Integer; const Astring: string);
    function  RESPONSE_CODE_Specified(Index: Integer): boolean;
    procedure SetRESPONSE_DESCRIPTION(Index: Integer; const Astring: string);
    function  RESPONSE_DESCRIPTION_Specified(Index: Integer): boolean;
    procedure SetFILENAME(Index: Integer; const Astring: string);
    function  FILENAME_Specified(Index: Integer): boolean;
    procedure SetHASH(Index: Integer; const Astring: string);
    function  HASH_Specified(Index: Integer): boolean;
    procedure SetCDATE(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  CDATE_Specified(Index: Integer): boolean;
    procedure SetENVELOPE_IDENTIFIER(Index: Integer; const Astring: string);
    function  ENVELOPE_IDENTIFIER_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SENDER:                 string       Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER:               string       Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
    property SUPPLIER:               string       Index (IS_OPTN or IS_UNQL) read FSUPPLIER write SetSUPPLIER stored SUPPLIER_Specified;
    property CUSTOMER:               string       Index (IS_OPTN or IS_UNQL) read FCUSTOMER write SetCUSTOMER stored CUSTOMER_Specified;
    property ISSUE_DATE:             TXSDate      Index (IS_OPTN or IS_UNQL) read FISSUE_DATE write SetISSUE_DATE stored ISSUE_DATE_Specified;
    property PAYABLE_AMOUNT:         AmountType   Index (IS_OPTN or IS_UNQL) read FPAYABLE_AMOUNT write SetPAYABLE_AMOUNT stored PAYABLE_AMOUNT_Specified;
    property FROM:                   string       Index (IS_OPTN or IS_UNQL) read FFROM write SetFROM stored FROM_Specified;
    property TO_:                    string       Index (IS_OPTN or IS_UNQL) read FTO_ write SetTO_ stored TO__Specified;
    property PROFILEID:              string       Index (IS_OPTN or IS_UNQL) read FPROFILEID write SetPROFILEID stored PROFILEID_Specified;
    property INVOICE_TYPE_CODE:      string       Index (IS_OPTN or IS_UNQL) read FINVOICE_TYPE_CODE write SetINVOICE_TYPE_CODE stored INVOICE_TYPE_CODE_Specified;
    property STATUS:                 string       Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property STATUS_DESCRIPTION:     string       Index (IS_OPTN or IS_UNQL) read FSTATUS_DESCRIPTION write SetSTATUS_DESCRIPTION stored STATUS_DESCRIPTION_Specified;
    property GIB_STATUS_CODE:        Integer      Index (IS_OPTN or IS_UNQL) read FGIB_STATUS_CODE write SetGIB_STATUS_CODE stored GIB_STATUS_CODE_Specified;
    property GIB_STATUS_DESCRIPTION: string       Index (IS_OPTN or IS_UNQL) read FGIB_STATUS_DESCRIPTION write SetGIB_STATUS_DESCRIPTION stored GIB_STATUS_DESCRIPTION_Specified;
    property RESPONSE_CODE:          string       Index (IS_OPTN or IS_UNQL) read FRESPONSE_CODE write SetRESPONSE_CODE stored RESPONSE_CODE_Specified;
    property RESPONSE_DESCRIPTION:   string       Index (IS_OPTN or IS_UNQL) read FRESPONSE_DESCRIPTION write SetRESPONSE_DESCRIPTION stored RESPONSE_DESCRIPTION_Specified;
    property FILENAME:               string       Index (IS_OPTN or IS_UNQL) read FFILENAME write SetFILENAME stored FILENAME_Specified;
    property HASH:                   string       Index (IS_OPTN or IS_UNQL) read FHASH write SetHASH stored HASH_Specified;
    property CDATE:                  TXSDateTime  Index (IS_OPTN or IS_UNQL) read FCDATE write SetCDATE stored CDATE_Specified;
    property ENVELOPE_IDENTIFIER:    string       Index (IS_OPTN or IS_UNQL) read FENVELOPE_IDENTIFIER write SetENVELOPE_IDENTIFIER stored ENVELOPE_IDENTIFIER_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetDistrictsWithPlateNumber, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDistrictsWithPlateNumber = class(TRemotable)
  private
    Ftoken: string;
    Ftoken_Specified: boolean;
    FPlateNumber: string;
    FPlateNumber_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
    procedure SetPlateNumber(Index: Integer; const Astring: string);
    function  PlateNumber_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property token:       string  Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
    property PlateNumber: string  Index (IS_OPTN) read FPlateNumber write SetPlateNumber stored PlateNumber_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetCities, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetCities = class(TRemotable)
  private
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property token: string  Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetDistricts, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetDistricts = class(TRemotable)
  private
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property token: string  Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateXSLTFiles, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateXSLTFiles = class(TRemotable)
  private
    FxsltFiles: Stylefiles;
    FxsltFiles_Specified: boolean;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure SetxsltFiles(Index: Integer; const AStylefiles: Stylefiles);
    function  xsltFiles_Specified(Index: Integer): boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property xsltFiles: Stylefiles  Index (IS_OPTN) read FxsltFiles write SetxsltFiles stored xsltFiles_Specified;
    property token:     string      Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetXsltByName, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetXsltByName = class(TRemotable)
  private
    FxsltFilesName: string;
    FxsltFilesName_Specified: boolean;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure SetxsltFilesName(Index: Integer; const Astring: string);
    function  xsltFilesName_Specified(Index: Integer): boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property xsltFilesName: string  Index (IS_OPTN) read FxsltFilesName write SetxsltFilesName stored xsltFilesName_Specified;
    property token:         string  Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : DownloadXslt, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DownloadXslt = class(TRemotable)
  private
    FxsltFilesId: Integer;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property xsltFilesId: Integer  read FxsltFilesId write FxsltFilesId;
    property token:       string   Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetXSLTFiles, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetXSLTFiles = class(TRemotable)
  private
    FXsltFilesID: Integer;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property XsltFilesID: Integer  read FXsltFilesID write FXsltFilesID;
    property token:       string   Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : SetDefaultXslt, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SetDefaultXslt = class(TRemotable)
  private
    FXsltFilesID: Integer;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property XsltFilesID: Integer  read FXsltFilesID write FXsltFilesID;
    property token:       string   Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeleteXSLTFiles, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  DeleteXSLTFiles = class(TRemotable)
  private
    FXsltFilesID: Integer;
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property XsltFilesID: Integer  read FXsltFilesID write FXsltFilesID;
    property token:       string   Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : ListXSLTFiles, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ListXSLTFiles = class(TRemotable)
  private
    Ftoken: string;
    Ftoken_Specified: boolean;
    procedure Settoken(Index: Integer; const Astring: string);
    function  token_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property token: string  Index (IS_OPTN) read Ftoken write Settoken stored token_Specified;
  end;



  // ************************************************************************ //
  // XML       : INVOICE_SEARCH_KEY, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  INVOICE_SEARCH_KEY = class(TRemotable)
  private
    FLIMIT: Integer;
    FLIMIT_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FEXTERNAL_ID: string;
    FEXTERNAL_ID_Specified: boolean;
    FTYPE_: string;
    FTYPE__Specified: boolean;
    FFROM: string;
    FFROM_Specified: boolean;
    FTO_: string;
    FTO__Specified: boolean;
    FSTART_DATE: TXSDate;
    FSTART_DATE_Specified: boolean;
    FEND_DATE: TXSDate;
    FEND_DATE_Specified: boolean;
    FREAD_INCLUDED: Boolean;
    FREAD_INCLUDED_Specified: boolean;
    FDIRECTION: string;
    FDIRECTION_Specified: boolean;
    FSENDER: string;
    FSENDER_Specified: boolean;
    FRECEIVER: string;
    FRECEIVER_Specified: boolean;
    FPAYABLE_AMOUNT: AmountType;
    FPAYABLE_AMOUNT_Specified: boolean;
    FDRAFT_FLAG: string;
    FDRAFT_FLAG_Specified: boolean;
    procedure SetLIMIT(Index: Integer; const AInteger: Integer);
    function  LIMIT_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetEXTERNAL_ID(Index: Integer; const Astring: string);
    function  EXTERNAL_ID_Specified(Index: Integer): boolean;
    procedure SetTYPE_(Index: Integer; const Astring: string);
    function  TYPE__Specified(Index: Integer): boolean;
    procedure SetFROM(Index: Integer; const Astring: string);
    function  FROM_Specified(Index: Integer): boolean;
    procedure SetTO_(Index: Integer; const Astring: string);
    function  TO__Specified(Index: Integer): boolean;
    procedure SetSTART_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  START_DATE_Specified(Index: Integer): boolean;
    procedure SetEND_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  END_DATE_Specified(Index: Integer): boolean;
    procedure SetREAD_INCLUDED(Index: Integer; const ABoolean: Boolean);
    function  READ_INCLUDED_Specified(Index: Integer): boolean;
    procedure SetDIRECTION(Index: Integer; const Astring: string);
    function  DIRECTION_Specified(Index: Integer): boolean;
    procedure SetSENDER(Index: Integer; const Astring: string);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const Astring: string);
    function  RECEIVER_Specified(Index: Integer): boolean;
    procedure SetPAYABLE_AMOUNT(Index: Integer; const AAmountType: AmountType);
    function  PAYABLE_AMOUNT_Specified(Index: Integer): boolean;
    procedure SetDRAFT_FLAG(Index: Integer; const Astring: string);
    function  DRAFT_FLAG_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property LIMIT:          Integer     Index (IS_OPTN or IS_UNQL) read FLIMIT write SetLIMIT stored LIMIT_Specified;
    property ID:             string      Index (IS_OPTN or IS_UNQL) read FID write SetID stored ID_Specified;
    property UUID:           string      Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property EXTERNAL_ID:    string      Index (IS_OPTN or IS_UNQL) read FEXTERNAL_ID write SetEXTERNAL_ID stored EXTERNAL_ID_Specified;
    property TYPE_:          string      Index (IS_OPTN or IS_UNQL) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
    property FROM:           string      Index (IS_OPTN or IS_UNQL) read FFROM write SetFROM stored FROM_Specified;
    property TO_:            string      Index (IS_OPTN or IS_UNQL) read FTO_ write SetTO_ stored TO__Specified;
    property START_DATE:     TXSDate     Index (IS_OPTN or IS_UNQL) read FSTART_DATE write SetSTART_DATE stored START_DATE_Specified;
    property END_DATE:       TXSDate     Index (IS_OPTN or IS_UNQL) read FEND_DATE write SetEND_DATE stored END_DATE_Specified;
    property READ_INCLUDED:  Boolean     Index (IS_OPTN or IS_UNQL) read FREAD_INCLUDED write SetREAD_INCLUDED stored READ_INCLUDED_Specified;
    property DIRECTION:      string      Index (IS_OPTN or IS_UNQL) read FDIRECTION write SetDIRECTION stored DIRECTION_Specified;
    property SENDER:         string      Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER:       string      Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
    property PAYABLE_AMOUNT: AmountType  Index (IS_OPTN or IS_UNQL) read FPAYABLE_AMOUNT write SetPAYABLE_AMOUNT stored PAYABLE_AMOUNT_Specified;
    property DRAFT_FLAG:     string      Index (IS_OPTN or IS_UNQL) read FDRAFT_FLAG write SetDRAFT_FLAG stored DRAFT_FLAG_Specified;
  end;



  // ************************************************************************ //
  // XML       : ENVELOPE_SEARCH_KEY, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  ENVELOPE_SEARCH_KEY = class(TRemotable)
  private
    FLIMIT: Integer;
    FLIMIT_Specified: boolean;
    FIDENTIFIER: string;
    FIDENTIFIER_Specified: boolean;
    FFROM: string;
    FFROM_Specified: boolean;
    FTO_: string;
    FTO__Specified: boolean;
    FSTART_DATE: TXSDate;
    FSTART_DATE_Specified: boolean;
    FEND_DATE: TXSDate;
    FEND_DATE_Specified: boolean;
    FREAD_INCLUDED: Boolean;
    FREAD_INCLUDED_Specified: boolean;
    FDIRECTION: string;
    FDIRECTION_Specified: boolean;
    FSENDER: string;
    FSENDER_Specified: boolean;
    FRECEIVER: string;
    FRECEIVER_Specified: boolean;
    FTYPE_: string;
    FTYPE__Specified: boolean;
    FELEMENT: ELEMENT;
    FELEMENT_Specified: boolean;
    procedure SetLIMIT(Index: Integer; const AInteger: Integer);
    function  LIMIT_Specified(Index: Integer): boolean;
    procedure SetIDENTIFIER(Index: Integer; const Astring: string);
    function  IDENTIFIER_Specified(Index: Integer): boolean;
    procedure SetFROM(Index: Integer; const Astring: string);
    function  FROM_Specified(Index: Integer): boolean;
    procedure SetTO_(Index: Integer; const Astring: string);
    function  TO__Specified(Index: Integer): boolean;
    procedure SetSTART_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  START_DATE_Specified(Index: Integer): boolean;
    procedure SetEND_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  END_DATE_Specified(Index: Integer): boolean;
    procedure SetREAD_INCLUDED(Index: Integer; const ABoolean: Boolean);
    function  READ_INCLUDED_Specified(Index: Integer): boolean;
    procedure SetDIRECTION(Index: Integer; const Astring: string);
    function  DIRECTION_Specified(Index: Integer): boolean;
    procedure SetSENDER(Index: Integer; const Astring: string);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const Astring: string);
    function  RECEIVER_Specified(Index: Integer): boolean;
    procedure SetTYPE_(Index: Integer; const Astring: string);
    function  TYPE__Specified(Index: Integer): boolean;
    procedure SetELEMENT(Index: Integer; const AELEMENT: ELEMENT);
    function  ELEMENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property LIMIT:         Integer  Index (IS_OPTN or IS_UNQL) read FLIMIT write SetLIMIT stored LIMIT_Specified;
    property IDENTIFIER:    string   Index (IS_OPTN or IS_UNQL) read FIDENTIFIER write SetIDENTIFIER stored IDENTIFIER_Specified;
    property FROM:          string   Index (IS_OPTN or IS_UNQL) read FFROM write SetFROM stored FROM_Specified;
    property TO_:           string   Index (IS_OPTN or IS_UNQL) read FTO_ write SetTO_ stored TO__Specified;
    property START_DATE:    TXSDate  Index (IS_OPTN or IS_UNQL) read FSTART_DATE write SetSTART_DATE stored START_DATE_Specified;
    property END_DATE:      TXSDate  Index (IS_OPTN or IS_UNQL) read FEND_DATE write SetEND_DATE stored END_DATE_Specified;
    property READ_INCLUDED: Boolean  Index (IS_OPTN or IS_UNQL) read FREAD_INCLUDED write SetREAD_INCLUDED stored READ_INCLUDED_Specified;
    property DIRECTION:     string   Index (IS_OPTN or IS_UNQL) read FDIRECTION write SetDIRECTION stored DIRECTION_Specified;
    property SENDER:        string   Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER:      string   Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
    property TYPE_:         string   Index (IS_OPTN or IS_UNQL) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
    property ELEMENT:       ELEMENT  Index (IS_OPTN or IS_UNQL) read FELEMENT write SetELEMENT stored ELEMENT_Specified;
  end;



  // ************************************************************************ //
  // XML       : INVOICE_SEARCH_KEY, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  INVOICE_SEARCH_KEY2 = class(TRemotable)
  private
    FLIMIT: Integer;
    FLIMIT_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FFROM: string;
    FFROM_Specified: boolean;
    FTO_: string;
    FTO__Specified: boolean;
    FSTART_DATE: TXSDate;
    FSTART_DATE_Specified: boolean;
    FEND_DATE: TXSDate;
    FEND_DATE_Specified: boolean;
    FREAD_INCLUDED: Boolean;
    FREAD_INCLUDED_Specified: boolean;
    FDIRECTION: string;
    FDIRECTION_Specified: boolean;
    FSENDER: string;
    FSENDER_Specified: boolean;
    FRECEIVER: string;
    FRECEIVER_Specified: boolean;
    FDRAFT_FLAG: string;
    FDRAFT_FLAG_Specified: boolean;
    procedure SetLIMIT(Index: Integer; const AInteger: Integer);
    function  LIMIT_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetFROM(Index: Integer; const Astring: string);
    function  FROM_Specified(Index: Integer): boolean;
    procedure SetTO_(Index: Integer; const Astring: string);
    function  TO__Specified(Index: Integer): boolean;
    procedure SetSTART_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  START_DATE_Specified(Index: Integer): boolean;
    procedure SetEND_DATE(Index: Integer; const ATXSDate: TXSDate);
    function  END_DATE_Specified(Index: Integer): boolean;
    procedure SetREAD_INCLUDED(Index: Integer; const ABoolean: Boolean);
    function  READ_INCLUDED_Specified(Index: Integer): boolean;
    procedure SetDIRECTION(Index: Integer; const Astring: string);
    function  DIRECTION_Specified(Index: Integer): boolean;
    procedure SetSENDER(Index: Integer; const Astring: string);
    function  SENDER_Specified(Index: Integer): boolean;
    procedure SetRECEIVER(Index: Integer; const Astring: string);
    function  RECEIVER_Specified(Index: Integer): boolean;
    procedure SetDRAFT_FLAG(Index: Integer; const Astring: string);
    function  DRAFT_FLAG_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property LIMIT:         Integer  Index (IS_OPTN or IS_UNQL) read FLIMIT write SetLIMIT stored LIMIT_Specified;
    property ID:            string   Index (IS_OPTN or IS_UNQL) read FID write SetID stored ID_Specified;
    property UUID:          string   Index (IS_OPTN or IS_UNQL) read FUUID write SetUUID stored UUID_Specified;
    property FROM:          string   Index (IS_OPTN or IS_UNQL) read FFROM write SetFROM stored FROM_Specified;
    property TO_:           string   Index (IS_OPTN or IS_UNQL) read FTO_ write SetTO_ stored TO__Specified;
    property START_DATE:    TXSDate  Index (IS_OPTN or IS_UNQL) read FSTART_DATE write SetSTART_DATE stored START_DATE_Specified;
    property END_DATE:      TXSDate  Index (IS_OPTN or IS_UNQL) read FEND_DATE write SetEND_DATE stored END_DATE_Specified;
    property READ_INCLUDED: Boolean  Index (IS_OPTN or IS_UNQL) read FREAD_INCLUDED write SetREAD_INCLUDED stored READ_INCLUDED_Specified;
    property DIRECTION:     string   Index (IS_OPTN or IS_UNQL) read FDIRECTION write SetDIRECTION stored DIRECTION_Specified;
    property SENDER:        string   Index (IS_OPTN or IS_UNQL) read FSENDER write SetSENDER stored SENDER_Specified;
    property RECEIVER:      string   Index (IS_OPTN or IS_UNQL) read FRECEIVER write SetRECEIVER stored RECEIVER_Specified;
    property DRAFT_FLAG:    string   Index (IS_OPTN or IS_UNQL) read FDRAFT_FLAG write SetDRAFT_FLAG stored DRAFT_FLAG_Specified;
  end;

  ArrayOfCustomerExtended = array of CustomerExtended;   { "http://parkentegrasyon.com.tr/"[GblCplx] }


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
  // XML       : DataModelObject, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  DataModelObject = class(DataObject)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : QueryParameter, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  QueryParameter = class(DataModelObject)
  private
    FQueryParameterId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FGuId: guid;
    FCustomer: Integer;
    FParameterName: string;
    FParameterName_Specified: boolean;
    FParameterValue: string;
    FParameterValue_Specified: boolean;
    FIsEditable: Boolean;
    FIsSystem: Boolean;
    procedure SetParameterName(Index: Integer; const Astring: string);
    function  ParameterName_Specified(Index: Integer): boolean;
    procedure SetParameterValue(Index: Integer; const Astring: string);
    function  ParameterValue_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property QueryParameterId: Integer      read FQueryParameterId write FQueryParameterId;
    property Deleted:          Boolean      read FDeleted write FDeleted;
    property CreateDate:       TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate:       TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser:       Integer      read FCreateUser write FCreateUser;
    property UpdateUser:       Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property GuId:             guid         read FGuId write FGuId;
    property Customer:         Integer      read FCustomer write FCustomer;
    property ParameterName:    string       Index (IS_OPTN) read FParameterName write SetParameterName stored ParameterName_Specified;
    property ParameterValue:   string       Index (IS_OPTN) read FParameterValue write SetParameterValue stored ParameterValue_Specified;
    property IsEditable:       Boolean      read FIsEditable write FIsEditable;
    property IsSystem:         Boolean      read FIsSystem write FIsSystem;
  end;



  // ************************************************************************ //
  // XML       : Query, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Query = class(DataModelObject)
  private
    FQueryId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FCustomer: Integer;
    FConnectionString: string;
    FConnectionString_Specified: boolean;
    FInvoiceHeaders: string;
    FInvoiceHeaders_Specified: boolean;
    FInvoiceDetails: string;
    FInvoiceDetails_Specified: boolean;
    FCustomerPartyDetails: string;
    FCustomerPartyDetails_Specified: boolean;
    FInvoiceTaxes: string;
    FInvoiceTaxes_Specified: boolean;
    FInvoiceLines: string;
    FInvoiceLines_Specified: boolean;
    FInvoiceLineTaxes: string;
    FInvoiceLineTaxes_Specified: boolean;
    FInvoiceNotes: string;
    FInvoiceNotes_Specified: boolean;
    FInvoiceWithholdingTaxes: string;
    FInvoiceWithholdingTaxes_Specified: boolean;
    FInvoiceLineWithholdingTaxes: string;
    FInvoiceLineWithholdingTaxes_Specified: boolean;
    FBillingReferences: string;
    FBillingReferences_Specified: boolean;
    FUpdateQuery: string;
    FUpdateQuery_Specified: boolean;
    FInsideCurrentCheck: string;
    FInsideCurrentCheck_Specified: boolean;
    FInsideCurrentAdd: string;
    FInsideCurrentAdd_Specified: boolean;
    FInsideStockList: string;
    FInsideStockList_Specified: boolean;
    FInsideInvoiceAdd: string;
    FInsideInvoiceAdd_Specified: boolean;
    FInsideInvoiceUpdate: string;
    FInsideInvoiceUpdate_Specified: boolean;
    FInsideInvoiceLineAdd: string;
    FInsideInvoiceLineAdd_Specified: boolean;
    procedure SetConnectionString(Index: Integer; const Astring: string);
    function  ConnectionString_Specified(Index: Integer): boolean;
    procedure SetInvoiceHeaders(Index: Integer; const Astring: string);
    function  InvoiceHeaders_Specified(Index: Integer): boolean;
    procedure SetInvoiceDetails(Index: Integer; const Astring: string);
    function  InvoiceDetails_Specified(Index: Integer): boolean;
    procedure SetCustomerPartyDetails(Index: Integer; const Astring: string);
    function  CustomerPartyDetails_Specified(Index: Integer): boolean;
    procedure SetInvoiceTaxes(Index: Integer; const Astring: string);
    function  InvoiceTaxes_Specified(Index: Integer): boolean;
    procedure SetInvoiceLines(Index: Integer; const Astring: string);
    function  InvoiceLines_Specified(Index: Integer): boolean;
    procedure SetInvoiceLineTaxes(Index: Integer; const Astring: string);
    function  InvoiceLineTaxes_Specified(Index: Integer): boolean;
    procedure SetInvoiceNotes(Index: Integer; const Astring: string);
    function  InvoiceNotes_Specified(Index: Integer): boolean;
    procedure SetInvoiceWithholdingTaxes(Index: Integer; const Astring: string);
    function  InvoiceWithholdingTaxes_Specified(Index: Integer): boolean;
    procedure SetInvoiceLineWithholdingTaxes(Index: Integer; const Astring: string);
    function  InvoiceLineWithholdingTaxes_Specified(Index: Integer): boolean;
    procedure SetBillingReferences(Index: Integer; const Astring: string);
    function  BillingReferences_Specified(Index: Integer): boolean;
    procedure SetUpdateQuery(Index: Integer; const Astring: string);
    function  UpdateQuery_Specified(Index: Integer): boolean;
    procedure SetInsideCurrentCheck(Index: Integer; const Astring: string);
    function  InsideCurrentCheck_Specified(Index: Integer): boolean;
    procedure SetInsideCurrentAdd(Index: Integer; const Astring: string);
    function  InsideCurrentAdd_Specified(Index: Integer): boolean;
    procedure SetInsideStockList(Index: Integer; const Astring: string);
    function  InsideStockList_Specified(Index: Integer): boolean;
    procedure SetInsideInvoiceAdd(Index: Integer; const Astring: string);
    function  InsideInvoiceAdd_Specified(Index: Integer): boolean;
    procedure SetInsideInvoiceUpdate(Index: Integer; const Astring: string);
    function  InsideInvoiceUpdate_Specified(Index: Integer): boolean;
    procedure SetInsideInvoiceLineAdd(Index: Integer; const Astring: string);
    function  InsideInvoiceLineAdd_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property QueryId:                     Integer      read FQueryId write FQueryId;
    property Deleted:                     Boolean      read FDeleted write FDeleted;
    property CreateDate:                  TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate:                  TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser:                  Integer      read FCreateUser write FCreateUser;
    property UpdateUser:                  Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property Customer:                    Integer      read FCustomer write FCustomer;
    property ConnectionString:            string       Index (IS_OPTN) read FConnectionString write SetConnectionString stored ConnectionString_Specified;
    property InvoiceHeaders:              string       Index (IS_OPTN) read FInvoiceHeaders write SetInvoiceHeaders stored InvoiceHeaders_Specified;
    property InvoiceDetails:              string       Index (IS_OPTN) read FInvoiceDetails write SetInvoiceDetails stored InvoiceDetails_Specified;
    property CustomerPartyDetails:        string       Index (IS_OPTN) read FCustomerPartyDetails write SetCustomerPartyDetails stored CustomerPartyDetails_Specified;
    property InvoiceTaxes:                string       Index (IS_OPTN) read FInvoiceTaxes write SetInvoiceTaxes stored InvoiceTaxes_Specified;
    property InvoiceLines:                string       Index (IS_OPTN) read FInvoiceLines write SetInvoiceLines stored InvoiceLines_Specified;
    property InvoiceLineTaxes:            string       Index (IS_OPTN) read FInvoiceLineTaxes write SetInvoiceLineTaxes stored InvoiceLineTaxes_Specified;
    property InvoiceNotes:                string       Index (IS_OPTN) read FInvoiceNotes write SetInvoiceNotes stored InvoiceNotes_Specified;
    property InvoiceWithholdingTaxes:     string       Index (IS_OPTN) read FInvoiceWithholdingTaxes write SetInvoiceWithholdingTaxes stored InvoiceWithholdingTaxes_Specified;
    property InvoiceLineWithholdingTaxes: string       Index (IS_OPTN) read FInvoiceLineWithholdingTaxes write SetInvoiceLineWithholdingTaxes stored InvoiceLineWithholdingTaxes_Specified;
    property BillingReferences:           string       Index (IS_OPTN) read FBillingReferences write SetBillingReferences stored BillingReferences_Specified;
    property UpdateQuery:                 string       Index (IS_OPTN) read FUpdateQuery write SetUpdateQuery stored UpdateQuery_Specified;
    property InsideCurrentCheck:          string       Index (IS_OPTN) read FInsideCurrentCheck write SetInsideCurrentCheck stored InsideCurrentCheck_Specified;
    property InsideCurrentAdd:            string       Index (IS_OPTN) read FInsideCurrentAdd write SetInsideCurrentAdd stored InsideCurrentAdd_Specified;
    property InsideStockList:             string       Index (IS_OPTN) read FInsideStockList write SetInsideStockList stored InsideStockList_Specified;
    property InsideInvoiceAdd:            string       Index (IS_OPTN) read FInsideInvoiceAdd write SetInsideInvoiceAdd stored InsideInvoiceAdd_Specified;
    property InsideInvoiceUpdate:         string       Index (IS_OPTN) read FInsideInvoiceUpdate write SetInsideInvoiceUpdate stored InsideInvoiceUpdate_Specified;
    property InsideInvoiceLineAdd:        string       Index (IS_OPTN) read FInsideInvoiceLineAdd write SetInsideInvoiceLineAdd stored InsideInvoiceLineAdd_Specified;
  end;



  // ************************************************************************ //
  // XML       : City, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  City = class(DataModelObject)
  private
    FCityId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FCountryId: Integer;
    FCityName: string;
    FCityName_Specified: boolean;
    FPlateNo: string;
    FPlateNo_Specified: boolean;
    FPhoneCode: string;
    FPhoneCode_Specified: boolean;
    procedure SetCityName(Index: Integer; const Astring: string);
    function  CityName_Specified(Index: Integer): boolean;
    procedure SetPlateNo(Index: Integer; const Astring: string);
    function  PlateNo_Specified(Index: Integer): boolean;
    procedure SetPhoneCode(Index: Integer; const Astring: string);
    function  PhoneCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CityId:     Integer      read FCityId write FCityId;
    property Deleted:    Boolean      read FDeleted write FDeleted;
    property CreateDate: TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate: TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser: Integer      read FCreateUser write FCreateUser;
    property UpdateUser: Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property CountryId:  Integer      read FCountryId write FCountryId;
    property CityName:   string       Index (IS_OPTN) read FCityName write SetCityName stored CityName_Specified;
    property PlateNo:    string       Index (IS_OPTN) read FPlateNo write SetPlateNo stored PlateNo_Specified;
    property PhoneCode:  string       Index (IS_OPTN) read FPhoneCode write SetPhoneCode stored PhoneCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : Stylefiles, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Stylefiles = class(DataModelObject)
  private
    FStylefilesId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FCustomer: Integer;
    FStyleFilesName: string;
    FStyleFilesName_Specified: boolean;
    FEarchiveFileName: string;
    FEarchiveFileName_Specified: boolean;
    FEinvoiceFileName: string;
    FEinvoiceFileName_Specified: boolean;
    FEarchiveContent: TByteDynArray;
    FEarchiveContent_Specified: boolean;
    FEinvoiceContent: TByteDynArray;
    FEinvoiceContent_Specified: boolean;
    FActive: Boolean;
    procedure SetStyleFilesName(Index: Integer; const Astring: string);
    function  StyleFilesName_Specified(Index: Integer): boolean;
    procedure SetEarchiveFileName(Index: Integer; const Astring: string);
    function  EarchiveFileName_Specified(Index: Integer): boolean;
    procedure SetEinvoiceFileName(Index: Integer; const Astring: string);
    function  EinvoiceFileName_Specified(Index: Integer): boolean;
    procedure SetEarchiveContent(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  EarchiveContent_Specified(Index: Integer): boolean;
    procedure SetEinvoiceContent(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  EinvoiceContent_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property StylefilesId:     Integer        read FStylefilesId write FStylefilesId;
    property Deleted:          Boolean        read FDeleted write FDeleted;
    property CreateDate:       TXSDateTime    read FCreateDate write FCreateDate;
    property UpdateDate:       TXSDateTime    Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser:       Integer        read FCreateUser write FCreateUser;
    property UpdateUser:       Integer        Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property Customer:         Integer        read FCustomer write FCustomer;
    property StyleFilesName:   string         Index (IS_OPTN) read FStyleFilesName write SetStyleFilesName stored StyleFilesName_Specified;
    property EarchiveFileName: string         Index (IS_OPTN) read FEarchiveFileName write SetEarchiveFileName stored EarchiveFileName_Specified;
    property EinvoiceFileName: string         Index (IS_OPTN) read FEinvoiceFileName write SetEinvoiceFileName stored EinvoiceFileName_Specified;
    property EarchiveContent:  TByteDynArray  Index (IS_OPTN) read FEarchiveContent write SetEarchiveContent stored EarchiveContent_Specified;
    property EinvoiceContent:  TByteDynArray  Index (IS_OPTN) read FEinvoiceContent write SetEinvoiceContent stored EinvoiceContent_Specified;
    property Active:           Boolean        read FActive write FActive;
  end;



  // ************************************************************************ //
  // XML       : Serial, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Serial = class(DataModelObject)
  private
    FSerialId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FActive: Boolean;
    FSerialType: Integer;
    FCustomer: Integer;
    FPrefix: string;
    FPrefix_Specified: boolean;
    FYear: Integer;
    FLastNr: Integer;
    procedure SetPrefix(Index: Integer; const Astring: string);
    function  Prefix_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property SerialId:   Integer      read FSerialId write FSerialId;
    property Deleted:    Boolean      read FDeleted write FDeleted;
    property CreateDate: TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate: TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser: Integer      read FCreateUser write FCreateUser;
    property UpdateUser: Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property Active:     Boolean      read FActive write FActive;
    property SerialType: Integer      read FSerialType write FSerialType;
    property Customer:   Integer      read FCustomer write FCustomer;
    property Prefix:     string       Index (IS_OPTN) read FPrefix write SetPrefix stored Prefix_Specified;
    property Year:       Integer      read FYear write FYear;
    property LastNr:     Integer      read FLastNr write FLastNr;
  end;



  // ************************************************************************ //
  // XML       : User, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  User = class(DataModelObject)
  private
    FUserId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FUserName: string;
    FUserName_Specified: boolean;
    FPassword: string;
    FPassword_Specified: boolean;
    FFullName: string;
    FFullName_Specified: boolean;
    FEmailAddr: string;
    FEmailAddr_Specified: boolean;
    FActive: Boolean;
    procedure SetUserName(Index: Integer; const Astring: string);
    function  UserName_Specified(Index: Integer): boolean;
    procedure SetPassword(Index: Integer; const Astring: string);
    function  Password_Specified(Index: Integer): boolean;
    procedure SetFullName(Index: Integer; const Astring: string);
    function  FullName_Specified(Index: Integer): boolean;
    procedure SetEmailAddr(Index: Integer; const Astring: string);
    function  EmailAddr_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property UserId:     Integer      read FUserId write FUserId;
    property Deleted:    Boolean      read FDeleted write FDeleted;
    property CreateDate: TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate: TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser: Integer      read FCreateUser write FCreateUser;
    property UpdateUser: Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property UserName:   string       Index (IS_OPTN) read FUserName write SetUserName stored UserName_Specified;
    property Password:   string       Index (IS_OPTN) read FPassword write SetPassword stored Password_Specified;
    property FullName:   string       Index (IS_OPTN) read FFullName write SetFullName stored FullName_Specified;
    property EmailAddr:  string       Index (IS_OPTN) read FEmailAddr write SetEmailAddr stored EmailAddr_Specified;
    property Active:     Boolean      read FActive write FActive;
  end;



  // ************************************************************************ //
  // XML       : District, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  District = class(DataModelObject)
  private
    FDistrictId: Integer;
    FDeleted: Boolean;
    FCreateDate: TXSDateTime;
    FUpdateDate: TXSDateTime;
    FCreateUser: Integer;
    FUpdateUser: Integer;
    FCity: Integer;
    FDistrictName: string;
    FDistrictName_Specified: boolean;
    procedure SetDistrictName(Index: Integer; const Astring: string);
    function  DistrictName_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property DistrictId:   Integer      read FDistrictId write FDistrictId;
    property Deleted:      Boolean      read FDeleted write FDeleted;
    property CreateDate:   TXSDateTime  read FCreateDate write FCreateDate;
    property UpdateDate:   TXSDateTime  Index (IS_NLBL) read FUpdateDate write FUpdateDate;
    property CreateUser:   Integer      read FCreateUser write FCreateUser;
    property UpdateUser:   Integer      Index (IS_NLBL) read FUpdateUser write FUpdateUser;
    property City:         Integer      read FCity write FCity;
    property DistrictName: string       Index (IS_OPTN) read FDistrictName write SetDistrictName stored DistrictName_Specified;
  end;



  // ************************************************************************ //
  // XML       : inside, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  inside = class(DataModelObject)
  private
    FinsideId: Integer;
    FDeleted: Integer;
    FItemnm: string;
    FItemnm_Specified: boolean;
    FTaxId: string;
    FTaxId_Specified: boolean;
    FStockCd: string;
    FStockCd_Specified: boolean;
    FStockName: string;
    FStockName_Specified: boolean;
    FCustomer: Integer;
    procedure SetItemnm(Index: Integer; const Astring: string);
    function  Itemnm_Specified(Index: Integer): boolean;
    procedure SetTaxId(Index: Integer; const Astring: string);
    function  TaxId_Specified(Index: Integer): boolean;
    procedure SetStockCd(Index: Integer; const Astring: string);
    function  StockCd_Specified(Index: Integer): boolean;
    procedure SetStockName(Index: Integer; const Astring: string);
    function  StockName_Specified(Index: Integer): boolean;
  published
    property insideId:  Integer  read FinsideId write FinsideId;
    property Deleted:   Integer  read FDeleted write FDeleted;
    property Itemnm:    string   Index (IS_OPTN) read FItemnm write SetItemnm stored Itemnm_Specified;
    property TaxId:     string   Index (IS_OPTN) read FTaxId write SetTaxId stored TaxId_Specified;
    property StockCd:   string   Index (IS_OPTN) read FStockCd write SetStockCd stored StockCd_Specified;
    property StockName: string   Index (IS_OPTN) read FStockName write SetStockName stored StockName_Specified;
    property Customer:  Integer  read FCustomer write FCustomer;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceRef, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  SendInvoiceRef = class(DataModelObject)
  private
    FSendInvoiceId: Integer;
    FDeleted: Boolean;
    FErpRef: string;
    FErpRef_Specified: boolean;
    FGibRef: string;
    FGibRef_Specified: boolean;
    FCustomer: Integer;
    procedure SetErpRef(Index: Integer; const Astring: string);
    function  ErpRef_Specified(Index: Integer): boolean;
    procedure SetGibRef(Index: Integer; const Astring: string);
    function  GibRef_Specified(Index: Integer): boolean;
  published
    property SendInvoiceId: Integer  read FSendInvoiceId write FSendInvoiceId;
    property Deleted:       Boolean  read FDeleted write FDeleted;
    property ErpRef:        string   Index (IS_OPTN) read FErpRef write SetErpRef stored ErpRef_Specified;
    property GibRef:        string   Index (IS_OPTN) read FGibRef write SetGibRef stored GibRef_Specified;
    property Customer:      Integer  read FCustomer write FCustomer;
  end;



  // ************************************************************************ //
  // XML       : Manuelcurrent, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Manuelcurrent = class(DataModelObject)
  private
    FManuelcurrentId: Int64;
    FCompanyName: string;
    FCompanyName_Specified: boolean;
    FTaxId: string;
    FTaxId_Specified: boolean;
    FTaxoffice: string;
    FTaxoffice_Specified: boolean;
    FEmail: string;
    FEmail_Specified: boolean;
    FAddress: string;
    FAddress_Specified: boolean;
    FCity: string;
    FCity_Specified: boolean;
    FSubdevision: string;
    FSubdevision_Specified: boolean;
    FTel: string;
    FTel_Specified: boolean;
    FFax: string;
    FFax_Specified: boolean;
    FFirstnm: string;
    FFirstnm_Specified: boolean;
    FFamilynm: string;
    FFamilynm_Specified: boolean;
    FCustomer: Integer;
    FDeleted: Integer;
    procedure SetCompanyName(Index: Integer; const Astring: string);
    function  CompanyName_Specified(Index: Integer): boolean;
    procedure SetTaxId(Index: Integer; const Astring: string);
    function  TaxId_Specified(Index: Integer): boolean;
    procedure SetTaxoffice(Index: Integer; const Astring: string);
    function  Taxoffice_Specified(Index: Integer): boolean;
    procedure SetEmail(Index: Integer; const Astring: string);
    function  Email_Specified(Index: Integer): boolean;
    procedure SetAddress(Index: Integer; const Astring: string);
    function  Address_Specified(Index: Integer): boolean;
    procedure SetCity(Index: Integer; const Astring: string);
    function  City_Specified(Index: Integer): boolean;
    procedure SetSubdevision(Index: Integer; const Astring: string);
    function  Subdevision_Specified(Index: Integer): boolean;
    procedure SetTel(Index: Integer; const Astring: string);
    function  Tel_Specified(Index: Integer): boolean;
    procedure SetFax(Index: Integer; const Astring: string);
    function  Fax_Specified(Index: Integer): boolean;
    procedure SetFirstnm(Index: Integer; const Astring: string);
    function  Firstnm_Specified(Index: Integer): boolean;
    procedure SetFamilynm(Index: Integer; const Astring: string);
    function  Familynm_Specified(Index: Integer): boolean;
  published
    property ManuelcurrentId: Int64    read FManuelcurrentId write FManuelcurrentId;
    property CompanyName:     string   Index (IS_OPTN) read FCompanyName write SetCompanyName stored CompanyName_Specified;
    property TaxId:           string   Index (IS_OPTN) read FTaxId write SetTaxId stored TaxId_Specified;
    property Taxoffice:       string   Index (IS_OPTN) read FTaxoffice write SetTaxoffice stored Taxoffice_Specified;
    property Email:           string   Index (IS_OPTN) read FEmail write SetEmail stored Email_Specified;
    property Address:         string   Index (IS_OPTN) read FAddress write SetAddress stored Address_Specified;
    property City:            string   Index (IS_OPTN) read FCity write SetCity stored City_Specified;
    property Subdevision:     string   Index (IS_OPTN) read FSubdevision write SetSubdevision stored Subdevision_Specified;
    property Tel:             string   Index (IS_OPTN) read FTel write SetTel stored Tel_Specified;
    property Fax:             string   Index (IS_OPTN) read FFax write SetFax stored Fax_Specified;
    property Firstnm:         string   Index (IS_OPTN) read FFirstnm write SetFirstnm stored Firstnm_Specified;
    property Familynm:        string   Index (IS_OPTN) read FFamilynm write SetFamilynm stored Familynm_Specified;
    property Customer:        Integer  read FCustomer write FCustomer;
    property Deleted:         Integer  read FDeleted write FDeleted;
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

  ArrayOfDespatchDocumentModel = array of DespatchDocumentModel;   { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : Period, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Period = class(TRemotable)
  private
    FStartDate: TXSDateTime;
    FStartTime: TXSDateTime;
    FEndDate: TXSDateTime;
    FEndTime: TXSDateTime;
  public
    destructor Destroy; override;
  published
    property StartDate: TXSDateTime  read FStartDate write FStartDate;
    property StartTime: TXSDateTime  read FStartTime write FStartTime;
    property EndDate:   TXSDateTime  read FEndDate write FEndDate;
    property EndTime:   TXSDateTime  read FEndTime write FEndTime;
  end;

  ArrayOfAdditionalDocumentReference = array of AdditionalDocumentReference;   { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfInvoiceTax = array of InvoiceTax;      { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : PartyDetails, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  PartyDetails = class(TRemotable)
  private
    FTaxOrIdNo: string;
    FTaxOrIdNo_Specified: boolean;
    FGibAlias: string;
    FGibAlias_Specified: boolean;
    FPartyName: string;
    FPartyName_Specified: boolean;
    FTaxSchemeName: string;
    FTaxSchemeName_Specified: boolean;
    FWebSiteURI: string;
    FWebSiteURI_Specified: boolean;
    FTelephone: string;
    FTelephone_Specified: boolean;
    FTelefax: string;
    FTelefax_Specified: boolean;
    FElectronicMail: string;
    FElectronicMail_Specified: boolean;
    FCountry: string;
    FCountry_Specified: boolean;
    FCityName: string;
    FCityName_Specified: boolean;
    FCitySubDivisionName: string;
    FCitySubDivisionName_Specified: boolean;
    FPostalZone: string;
    FPostalZone_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FRoom: string;
    FRoom_Specified: boolean;
    FStreetName: string;
    FStreetName_Specified: boolean;
    FBuildingName: string;
    FBuildingName_Specified: boolean;
    FBuildingNumber: string;
    FBuildingNumber_Specified: boolean;
    FFirstName: string;
    FFirstName_Specified: boolean;
    FFamilyName: string;
    FFamilyName_Specified: boolean;
    procedure SetTaxOrIdNo(Index: Integer; const Astring: string);
    function  TaxOrIdNo_Specified(Index: Integer): boolean;
    procedure SetGibAlias(Index: Integer; const Astring: string);
    function  GibAlias_Specified(Index: Integer): boolean;
    procedure SetPartyName(Index: Integer; const Astring: string);
    function  PartyName_Specified(Index: Integer): boolean;
    procedure SetTaxSchemeName(Index: Integer; const Astring: string);
    function  TaxSchemeName_Specified(Index: Integer): boolean;
    procedure SetWebSiteURI(Index: Integer; const Astring: string);
    function  WebSiteURI_Specified(Index: Integer): boolean;
    procedure SetTelephone(Index: Integer; const Astring: string);
    function  Telephone_Specified(Index: Integer): boolean;
    procedure SetTelefax(Index: Integer; const Astring: string);
    function  Telefax_Specified(Index: Integer): boolean;
    procedure SetElectronicMail(Index: Integer; const Astring: string);
    function  ElectronicMail_Specified(Index: Integer): boolean;
    procedure SetCountry(Index: Integer; const Astring: string);
    function  Country_Specified(Index: Integer): boolean;
    procedure SetCityName(Index: Integer; const Astring: string);
    function  CityName_Specified(Index: Integer): boolean;
    procedure SetCitySubDivisionName(Index: Integer; const Astring: string);
    function  CitySubDivisionName_Specified(Index: Integer): boolean;
    procedure SetPostalZone(Index: Integer; const Astring: string);
    function  PostalZone_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetRoom(Index: Integer; const Astring: string);
    function  Room_Specified(Index: Integer): boolean;
    procedure SetStreetName(Index: Integer; const Astring: string);
    function  StreetName_Specified(Index: Integer): boolean;
    procedure SetBuildingName(Index: Integer; const Astring: string);
    function  BuildingName_Specified(Index: Integer): boolean;
    procedure SetBuildingNumber(Index: Integer; const Astring: string);
    function  BuildingNumber_Specified(Index: Integer): boolean;
    procedure SetFirstName(Index: Integer; const Astring: string);
    function  FirstName_Specified(Index: Integer): boolean;
    procedure SetFamilyName(Index: Integer; const Astring: string);
    function  FamilyName_Specified(Index: Integer): boolean;
  published
    property TaxOrIdNo:           string  Index (IS_OPTN) read FTaxOrIdNo write SetTaxOrIdNo stored TaxOrIdNo_Specified;
    property GibAlias:            string  Index (IS_OPTN) read FGibAlias write SetGibAlias stored GibAlias_Specified;
    property PartyName:           string  Index (IS_OPTN) read FPartyName write SetPartyName stored PartyName_Specified;
    property TaxSchemeName:       string  Index (IS_OPTN) read FTaxSchemeName write SetTaxSchemeName stored TaxSchemeName_Specified;
    property WebSiteURI:          string  Index (IS_OPTN) read FWebSiteURI write SetWebSiteURI stored WebSiteURI_Specified;
    property Telephone:           string  Index (IS_OPTN) read FTelephone write SetTelephone stored Telephone_Specified;
    property Telefax:             string  Index (IS_OPTN) read FTelefax write SetTelefax stored Telefax_Specified;
    property ElectronicMail:      string  Index (IS_OPTN) read FElectronicMail write SetElectronicMail stored ElectronicMail_Specified;
    property Country:             string  Index (IS_OPTN) read FCountry write SetCountry stored Country_Specified;
    property CityName:            string  Index (IS_OPTN) read FCityName write SetCityName stored CityName_Specified;
    property CitySubDivisionName: string  Index (IS_OPTN) read FCitySubDivisionName write SetCitySubDivisionName stored CitySubDivisionName_Specified;
    property PostalZone:          string  Index (IS_OPTN) read FPostalZone write SetPostalZone stored PostalZone_Specified;
    property ID:                  string  Index (IS_OPTN) read FID write SetID stored ID_Specified;
    property Room:                string  Index (IS_OPTN) read FRoom write SetRoom stored Room_Specified;
    property StreetName:          string  Index (IS_OPTN) read FStreetName write SetStreetName stored StreetName_Specified;
    property BuildingName:        string  Index (IS_OPTN) read FBuildingName write SetBuildingName stored BuildingName_Specified;
    property BuildingNumber:      string  Index (IS_OPTN) read FBuildingNumber write SetBuildingNumber stored BuildingNumber_Specified;
    property FirstName:           string  Index (IS_OPTN) read FFirstName write SetFirstName stored FirstName_Specified;
    property FamilyName:          string  Index (IS_OPTN) read FFamilyName write SetFamilyName stored FamilyName_Specified;
  end;



  // ************************************************************************ //
  // XML       : DeliveryType, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  DeliveryType = class(TRemotable)
  private
    FStreetname: string;
    FStreetname_Specified: boolean;
    FBuildingName: string;
    FBuildingName_Specified: boolean;
    FBuildingNumber: string;
    FBuildingNumber_Specified: boolean;
    FSubDevision: string;
    FSubDevision_Specified: boolean;
    FCityName: string;
    FCityName_Specified: boolean;
    FPostalZone: string;
    FPostalZone_Specified: boolean;
    FCountry: string;
    FCountry_Specified: boolean;
    FDeliveryTerms: string;
    FDeliveryTerms_Specified: boolean;
    FGtipNo: string;
    FGtipNo_Specified: boolean;
    FTransportModeCode: string;
    FTransportModeCode_Specified: boolean;
    FPackageNumber: string;
    FPackageNumber_Specified: boolean;
    FPackageQuantity: TXSDecimal;
    FPackageTypeCode: string;
    FPackageTypeCode_Specified: boolean;
    procedure SetStreetname(Index: Integer; const Astring: string);
    function  Streetname_Specified(Index: Integer): boolean;
    procedure SetBuildingName(Index: Integer; const Astring: string);
    function  BuildingName_Specified(Index: Integer): boolean;
    procedure SetBuildingNumber(Index: Integer; const Astring: string);
    function  BuildingNumber_Specified(Index: Integer): boolean;
    procedure SetSubDevision(Index: Integer; const Astring: string);
    function  SubDevision_Specified(Index: Integer): boolean;
    procedure SetCityName(Index: Integer; const Astring: string);
    function  CityName_Specified(Index: Integer): boolean;
    procedure SetPostalZone(Index: Integer; const Astring: string);
    function  PostalZone_Specified(Index: Integer): boolean;
    procedure SetCountry(Index: Integer; const Astring: string);
    function  Country_Specified(Index: Integer): boolean;
    procedure SetDeliveryTerms(Index: Integer; const Astring: string);
    function  DeliveryTerms_Specified(Index: Integer): boolean;
    procedure SetGtipNo(Index: Integer; const Astring: string);
    function  GtipNo_Specified(Index: Integer): boolean;
    procedure SetTransportModeCode(Index: Integer; const Astring: string);
    function  TransportModeCode_Specified(Index: Integer): boolean;
    procedure SetPackageNumber(Index: Integer; const Astring: string);
    function  PackageNumber_Specified(Index: Integer): boolean;
    procedure SetPackageTypeCode(Index: Integer; const Astring: string);
    function  PackageTypeCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Streetname:        string      Index (IS_OPTN) read FStreetname write SetStreetname stored Streetname_Specified;
    property BuildingName:      string      Index (IS_OPTN) read FBuildingName write SetBuildingName stored BuildingName_Specified;
    property BuildingNumber:    string      Index (IS_OPTN) read FBuildingNumber write SetBuildingNumber stored BuildingNumber_Specified;
    property SubDevision:       string      Index (IS_OPTN) read FSubDevision write SetSubDevision stored SubDevision_Specified;
    property CityName:          string      Index (IS_OPTN) read FCityName write SetCityName stored CityName_Specified;
    property PostalZone:        string      Index (IS_OPTN) read FPostalZone write SetPostalZone stored PostalZone_Specified;
    property Country:           string      Index (IS_OPTN) read FCountry write SetCountry stored Country_Specified;
    property DeliveryTerms:     string      Index (IS_OPTN) read FDeliveryTerms write SetDeliveryTerms stored DeliveryTerms_Specified;
    property GtipNo:            string      Index (IS_OPTN) read FGtipNo write SetGtipNo stored GtipNo_Specified;
    property TransportModeCode: string      Index (IS_OPTN) read FTransportModeCode write SetTransportModeCode stored TransportModeCode_Specified;
    property PackageNumber:     string      Index (IS_OPTN) read FPackageNumber write SetPackageNumber stored PackageNumber_Specified;
    property PackageQuantity:   TXSDecimal  read FPackageQuantity write FPackageQuantity;
    property PackageTypeCode:   string      Index (IS_OPTN) read FPackageTypeCode write SetPackageTypeCode stored PackageTypeCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : WithholdingTax, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  WithholdingTax = class(TRemotable)
  private
    FTaxAmount: TXSDecimal;
    FTaxableAmount: TXSDecimal;
    FSubTaxAmount: TXSDecimal;
    FPercent: TXSDecimal;
    FTaxTypeCode: string;
    FTaxTypeCode_Specified: boolean;
    procedure SetTaxTypeCode(Index: Integer; const Astring: string);
    function  TaxTypeCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property TaxAmount:     TXSDecimal  read FTaxAmount write FTaxAmount;
    property TaxableAmount: TXSDecimal  read FTaxableAmount write FTaxableAmount;
    property SubTaxAmount:  TXSDecimal  read FSubTaxAmount write FSubTaxAmount;
    property Percent:       TXSDecimal  read FPercent write FPercent;
    property TaxTypeCode:   string      Index (IS_OPTN) read FTaxTypeCode write SetTaxTypeCode stored TaxTypeCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : InvoiceTax, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  InvoiceTax = class(TRemotable)
  private
    FCalculationSequenceNumeric: TXSDecimal;
    FTaxTypeCode: string;
    FTaxTypeCode_Specified: boolean;
    FName_: string;
    FName__Specified: boolean;
    FTaxableAmount: TXSDecimal;
    FTaxPercent: TXSDecimal;
    FTaxAmount: TXSDecimal;
    FSubTaxAmount: TXSDecimal;
    FTaxExemptionReasonCode: string;
    FTaxExemptionReasonCode_Specified: boolean;
    procedure SetTaxTypeCode(Index: Integer; const Astring: string);
    function  TaxTypeCode_Specified(Index: Integer): boolean;
    procedure SetName_(Index: Integer; const Astring: string);
    function  Name__Specified(Index: Integer): boolean;
    procedure SetTaxExemptionReasonCode(Index: Integer; const Astring: string);
    function  TaxExemptionReasonCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CalculationSequenceNumeric: TXSDecimal  read FCalculationSequenceNumeric write FCalculationSequenceNumeric;
    property TaxTypeCode:                string      Index (IS_OPTN) read FTaxTypeCode write SetTaxTypeCode stored TaxTypeCode_Specified;
    property Name_:                      string      Index (IS_OPTN) read FName_ write SetName_ stored Name__Specified;
    property TaxableAmount:              TXSDecimal  read FTaxableAmount write FTaxableAmount;
    property TaxPercent:                 TXSDecimal  read FTaxPercent write FTaxPercent;
    property TaxAmount:                  TXSDecimal  read FTaxAmount write FTaxAmount;
    property SubTaxAmount:               TXSDecimal  read FSubTaxAmount write FSubTaxAmount;
    property TaxExemptionReasonCode:     string      Index (IS_OPTN) read FTaxExemptionReasonCode write SetTaxExemptionReasonCode stored TaxExemptionReasonCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : Manuelinvoice, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  Manuelinvoice = class(DataModelObject)
  private
    FManuelinvoiceId: Integer;
    FDeleted: Integer;
    FUrunadi: string;
    FUrunadi_Specified: boolean;
    FUrunaciklamasi: string;
    FUrunaciklamasi_Specified: boolean;
    FBirim: string;
    FBirim_Specified: boolean;
    FMiktar: TXSDecimal;
    FBirimfiyat: TXSDecimal;
    FKdvorani: Integer;
    FKdvtutari: TXSDecimal;
    FCustomer: Integer;
    FManuelcurrent: Integer;
    procedure SetUrunadi(Index: Integer; const Astring: string);
    function  Urunadi_Specified(Index: Integer): boolean;
    procedure SetUrunaciklamasi(Index: Integer; const Astring: string);
    function  Urunaciklamasi_Specified(Index: Integer): boolean;
    procedure SetBirim(Index: Integer; const Astring: string);
    function  Birim_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ManuelinvoiceId: Integer     read FManuelinvoiceId write FManuelinvoiceId;
    property Deleted:         Integer     read FDeleted write FDeleted;
    property Urunadi:         string      Index (IS_OPTN) read FUrunadi write SetUrunadi stored Urunadi_Specified;
    property Urunaciklamasi:  string      Index (IS_OPTN) read FUrunaciklamasi write SetUrunaciklamasi stored Urunaciklamasi_Specified;
    property Birim:           string      Index (IS_OPTN) read FBirim write SetBirim stored Birim_Specified;
    property Miktar:          TXSDecimal  read FMiktar write FMiktar;
    property Birimfiyat:      TXSDecimal  read FBirimfiyat write FBirimfiyat;
    property Kdvorani:        Integer     read FKdvorani write FKdvorani;
    property Kdvtutari:       TXSDecimal  read FKdvtutari write FKdvtutari;
    property Customer:        Integer     read FCustomer write FCustomer;
    property Manuelcurrent:   Integer     read FManuelcurrent write FManuelcurrent;
  end;



  // ************************************************************************ //
  // XML       : AmountType, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/common
  // ************************************************************************ //
  AmountType = class(TRemotable)
  private
    FText: TXSDecimal;
    FcurrencyID: string;
    FcurrencyID_Specified: boolean;
    FcurrencyCodeListVersionID: string;
    FcurrencyCodeListVersionID_Specified: boolean;
    procedure SetcurrencyID(Index: Integer; const Astring: string);
    function  currencyID_Specified(Index: Integer): boolean;
    procedure SetcurrencyCodeListVersionID(Index: Integer; const Astring: string);
    function  currencyCodeListVersionID_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property Text:                      TXSDecimal  Index (IS_TEXT) read FText write FText;
    property currencyID:                string      Index (IS_ATTR or IS_OPTN) read FcurrencyID write SetcurrencyID stored currencyID_Specified;
    property currencyCodeListVersionID: string      Index (IS_ATTR or IS_OPTN) read FcurrencyCodeListVersionID write SetcurrencyCodeListVersionID stored currencyCodeListVersionID_Specified;
  end;

  ArrayOfInvoiceLine = array of InvoiceLine;    { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfBillingReference = array of BillingReference;   { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfWithholdingTax = array of WithholdingTax;   { "http://parkentegrasyon.com.tr/"[GblCplx] }
  ArrayOfString = array of string;              { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : InvoiceLine, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  InvoiceLine = class(TRemotable)
  private
    FInvLineDBRef: TXSDecimal;
    FID: Integer;
    FSellersItemID: string;
    FSellersItemID_Specified: boolean;
    FBuyersItemID: string;
    FBuyersItemID_Specified: boolean;
    FManufacturersItemID: string;
    FManufacturersItemID_Specified: boolean;
    FItemName: string;
    FItemName_Specified: boolean;
    FBrandName: string;
    FBrandName_Specified: boolean;
    FModelName: string;
    FModelName_Specified: boolean;
    FItemDescription: string;
    FItemDescription_Specified: boolean;
    FInvoicedQuantity: TXSDecimal;
    FUnitCode: string;
    FUnitCode_Specified: boolean;
    FPriceAmount: TXSDecimal;
    FLineExtensionAmount: TXSDecimal;
    FCurrency: string;
    FCurrency_Specified: boolean;
    FChargeIndicator: Boolean;
    FAllowanceChargeReason: string;
    FAllowanceChargeReason_Specified: boolean;
    FAllowanceBaseAmount: TXSDecimal;
    FMultiplierFactorNumeric: TXSDecimal;
    FAllowanceAmount: TXSDecimal;
    FNotes: ArrayOfString;
    FNotes_Specified: boolean;
    FLineTaxes: ArrayOfInvoiceTax;
    FLineTaxes_Specified: boolean;
    FWithholdingTaxes: ArrayOfWithholdingTax;
    FWithholdingTaxes_Specified: boolean;
    FDeliveryTypeObj: DeliveryType;
    FDeliveryTypeObj_Specified: boolean;
    procedure SetSellersItemID(Index: Integer; const Astring: string);
    function  SellersItemID_Specified(Index: Integer): boolean;
    procedure SetBuyersItemID(Index: Integer; const Astring: string);
    function  BuyersItemID_Specified(Index: Integer): boolean;
    procedure SetManufacturersItemID(Index: Integer; const Astring: string);
    function  ManufacturersItemID_Specified(Index: Integer): boolean;
    procedure SetItemName(Index: Integer; const Astring: string);
    function  ItemName_Specified(Index: Integer): boolean;
    procedure SetBrandName(Index: Integer; const Astring: string);
    function  BrandName_Specified(Index: Integer): boolean;
    procedure SetModelName(Index: Integer; const Astring: string);
    function  ModelName_Specified(Index: Integer): boolean;
    procedure SetItemDescription(Index: Integer; const Astring: string);
    function  ItemDescription_Specified(Index: Integer): boolean;
    procedure SetUnitCode(Index: Integer; const Astring: string);
    function  UnitCode_Specified(Index: Integer): boolean;
    procedure SetCurrency(Index: Integer; const Astring: string);
    function  Currency_Specified(Index: Integer): boolean;
    procedure SetAllowanceChargeReason(Index: Integer; const Astring: string);
    function  AllowanceChargeReason_Specified(Index: Integer): boolean;
    procedure SetNotes(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Notes_Specified(Index: Integer): boolean;
    procedure SetLineTaxes(Index: Integer; const AArrayOfInvoiceTax: ArrayOfInvoiceTax);
    function  LineTaxes_Specified(Index: Integer): boolean;
    procedure SetWithholdingTaxes(Index: Integer; const AArrayOfWithholdingTax: ArrayOfWithholdingTax);
    function  WithholdingTaxes_Specified(Index: Integer): boolean;
    procedure SetDeliveryTypeObj(Index: Integer; const ADeliveryType: DeliveryType);
    function  DeliveryTypeObj_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property InvLineDBRef:            TXSDecimal             read FInvLineDBRef write FInvLineDBRef;
    property ID:                      Integer                read FID write FID;
    property SellersItemID:           string                 Index (IS_OPTN) read FSellersItemID write SetSellersItemID stored SellersItemID_Specified;
    property BuyersItemID:            string                 Index (IS_OPTN) read FBuyersItemID write SetBuyersItemID stored BuyersItemID_Specified;
    property ManufacturersItemID:     string                 Index (IS_OPTN) read FManufacturersItemID write SetManufacturersItemID stored ManufacturersItemID_Specified;
    property ItemName:                string                 Index (IS_OPTN) read FItemName write SetItemName stored ItemName_Specified;
    property BrandName:               string                 Index (IS_OPTN) read FBrandName write SetBrandName stored BrandName_Specified;
    property ModelName:               string                 Index (IS_OPTN) read FModelName write SetModelName stored ModelName_Specified;
    property ItemDescription:         string                 Index (IS_OPTN) read FItemDescription write SetItemDescription stored ItemDescription_Specified;
    property InvoicedQuantity:        TXSDecimal             read FInvoicedQuantity write FInvoicedQuantity;
    property UnitCode:                string                 Index (IS_OPTN) read FUnitCode write SetUnitCode stored UnitCode_Specified;
    property PriceAmount:             TXSDecimal             read FPriceAmount write FPriceAmount;
    property LineExtensionAmount:     TXSDecimal             read FLineExtensionAmount write FLineExtensionAmount;
    property Currency:                string                 Index (IS_OPTN) read FCurrency write SetCurrency stored Currency_Specified;
    property ChargeIndicator:         Boolean                read FChargeIndicator write FChargeIndicator;
    property AllowanceChargeReason:   string                 Index (IS_OPTN) read FAllowanceChargeReason write SetAllowanceChargeReason stored AllowanceChargeReason_Specified;
    property AllowanceBaseAmount:     TXSDecimal             read FAllowanceBaseAmount write FAllowanceBaseAmount;
    property MultiplierFactorNumeric: TXSDecimal             read FMultiplierFactorNumeric write FMultiplierFactorNumeric;
    property AllowanceAmount:         TXSDecimal             read FAllowanceAmount write FAllowanceAmount;
    property Notes:                   ArrayOfString          Index (IS_OPTN) read FNotes write SetNotes stored Notes_Specified;
    property LineTaxes:               ArrayOfInvoiceTax      Index (IS_OPTN) read FLineTaxes write SetLineTaxes stored LineTaxes_Specified;
    property WithholdingTaxes:        ArrayOfWithholdingTax  Index (IS_OPTN) read FWithholdingTaxes write SetWithholdingTaxes stored WithholdingTaxes_Specified;
    property DeliveryTypeObj:         DeliveryType           Index (IS_OPTN) read FDeliveryTypeObj write SetDeliveryTypeObj stored DeliveryTypeObj_Specified;
  end;



  // ************************************************************************ //
  // XML       : PARKInvoiceType, global, <complexType>
  // Namespace : http://parkentegrasyon.com.tr/
  // ************************************************************************ //
  PARKInvoiceType = class(TRemotable)
  private
    FCustomerRef: Integer;
    FPricingExchangeRate: TXSDecimal;
    FInvoiceDBRef: Integer;
    FGIBAlias: string;
    FGIBAlias_Specified: boolean;
    FIsEArchive: Boolean;
    FSendToCustomer: Boolean;
    FUUID: string;
    FUUID_Specified: boolean;
    FTypeCode: string;
    FTypeCode_Specified: boolean;
    FProfileId: string;
    FProfileId_Specified: boolean;
    FID: string;
    FID_Specified: boolean;
    FCopyIndicator: Boolean;
    FIssueDate: TXSDateTime;
    FIssueTime: TXSDateTime;
    FCurrencyCode: string;
    FCurrencyCode_Specified: boolean;
    FAllowanceChargeIndicator: Boolean;
    FAllowanceChargeAmount: TXSDecimal;
    FLineExtensionAmount: TXSDecimal;
    FAllowanceTotalAmount: TXSDecimal;
    FChargeAmount: TXSDecimal;
    FTaxExclusiveAmount: TXSDecimal;
    FTaxInclusiveAmount: TXSDecimal;
    FPayableAmount: TXSDecimal;
    FCustomerParty: PartyDetails;
    FCustomerParty_Specified: boolean;
    FSupplierParty: PartyDetails;
    FSupplierParty_Specified: boolean;
    FInvoiceTaxes: ArrayOfInvoiceTax;
    FInvoiceTaxes_Specified: boolean;
    FInvoiceLines: ArrayOfInvoiceLine;
    FInvoiceLines_Specified: boolean;
    FNotes: ArrayOfString;
    FNotes_Specified: boolean;
    FWithholdingTaxes: ArrayOfWithholdingTax;
    FWithholdingTaxes_Specified: boolean;
    FBillingReferences: ArrayOfBillingReference;
    FBillingReferences_Specified: boolean;
    FAdditionalDocumentReferences: ArrayOfAdditionalDocumentReference;
    FAdditionalDocumentReferences_Specified: boolean;
    FInvoicePeriod: Period;
    FInvoicePeriod_Specified: boolean;
    FDespatchDocument: ArrayOfDespatchDocumentModel;
    FDespatchDocument_Specified: boolean;
    procedure SetGIBAlias(Index: Integer; const Astring: string);
    function  GIBAlias_Specified(Index: Integer): boolean;
    procedure SetUUID(Index: Integer; const Astring: string);
    function  UUID_Specified(Index: Integer): boolean;
    procedure SetTypeCode(Index: Integer; const Astring: string);
    function  TypeCode_Specified(Index: Integer): boolean;
    procedure SetProfileId(Index: Integer; const Astring: string);
    function  ProfileId_Specified(Index: Integer): boolean;
    procedure SetID(Index: Integer; const Astring: string);
    function  ID_Specified(Index: Integer): boolean;
    procedure SetCurrencyCode(Index: Integer; const Astring: string);
    function  CurrencyCode_Specified(Index: Integer): boolean;
    procedure SetCustomerParty(Index: Integer; const APartyDetails: PartyDetails);
    function  CustomerParty_Specified(Index: Integer): boolean;
    procedure SetSupplierParty(Index: Integer; const APartyDetails: PartyDetails);
    function  SupplierParty_Specified(Index: Integer): boolean;
    procedure SetInvoiceTaxes(Index: Integer; const AArrayOfInvoiceTax: ArrayOfInvoiceTax);
    function  InvoiceTaxes_Specified(Index: Integer): boolean;
    procedure SetInvoiceLines(Index: Integer; const AArrayOfInvoiceLine: ArrayOfInvoiceLine);
    function  InvoiceLines_Specified(Index: Integer): boolean;
    procedure SetNotes(Index: Integer; const AArrayOfString: ArrayOfString);
    function  Notes_Specified(Index: Integer): boolean;
    procedure SetWithholdingTaxes(Index: Integer; const AArrayOfWithholdingTax: ArrayOfWithholdingTax);
    function  WithholdingTaxes_Specified(Index: Integer): boolean;
    procedure SetBillingReferences(Index: Integer; const AArrayOfBillingReference: ArrayOfBillingReference);
    function  BillingReferences_Specified(Index: Integer): boolean;
    procedure SetAdditionalDocumentReferences(Index: Integer; const AArrayOfAdditionalDocumentReference: ArrayOfAdditionalDocumentReference);
    function  AdditionalDocumentReferences_Specified(Index: Integer): boolean;
    procedure SetInvoicePeriod(Index: Integer; const APeriod: Period);
    function  InvoicePeriod_Specified(Index: Integer): boolean;
    procedure SetDespatchDocument(Index: Integer; const AArrayOfDespatchDocumentModel: ArrayOfDespatchDocumentModel);
    function  DespatchDocument_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property CustomerRef:                  Integer                             read FCustomerRef write FCustomerRef;
    property PricingExchangeRate:          TXSDecimal                          read FPricingExchangeRate write FPricingExchangeRate;
    property InvoiceDBRef:                 Integer                             read FInvoiceDBRef write FInvoiceDBRef;
    property GIBAlias:                     string                              Index (IS_OPTN) read FGIBAlias write SetGIBAlias stored GIBAlias_Specified;
    property IsEArchive:                   Boolean                             read FIsEArchive write FIsEArchive;
    property SendToCustomer:               Boolean                             read FSendToCustomer write FSendToCustomer;
    property UUID:                         string                              Index (IS_OPTN) read FUUID write SetUUID stored UUID_Specified;
    property TypeCode:                     string                              Index (IS_OPTN) read FTypeCode write SetTypeCode stored TypeCode_Specified;
    property ProfileId:                    string                              Index (IS_OPTN) read FProfileId write SetProfileId stored ProfileId_Specified;
    property ID:                           string                              Index (IS_OPTN) read FID write SetID stored ID_Specified;
    property CopyIndicator:                Boolean                             read FCopyIndicator write FCopyIndicator;
    property IssueDate:                    TXSDateTime                         read FIssueDate write FIssueDate;
    property IssueTime:                    TXSDateTime                         read FIssueTime write FIssueTime;
    property CurrencyCode:                 string                              Index (IS_OPTN) read FCurrencyCode write SetCurrencyCode stored CurrencyCode_Specified;
    property AllowanceChargeIndicator:     Boolean                             read FAllowanceChargeIndicator write FAllowanceChargeIndicator;
    property AllowanceChargeAmount:        TXSDecimal                          read FAllowanceChargeAmount write FAllowanceChargeAmount;
    property LineExtensionAmount:          TXSDecimal                          read FLineExtensionAmount write FLineExtensionAmount;
    property AllowanceTotalAmount:         TXSDecimal                          read FAllowanceTotalAmount write FAllowanceTotalAmount;
    property ChargeAmount:                 TXSDecimal                          read FChargeAmount write FChargeAmount;
    property TaxExclusiveAmount:           TXSDecimal                          read FTaxExclusiveAmount write FTaxExclusiveAmount;
    property TaxInclusiveAmount:           TXSDecimal                          read FTaxInclusiveAmount write FTaxInclusiveAmount;
    property PayableAmount:                TXSDecimal                          read FPayableAmount write FPayableAmount;
    property CustomerParty:                PartyDetails                        Index (IS_OPTN) read FCustomerParty write SetCustomerParty stored CustomerParty_Specified;
    property SupplierParty:                PartyDetails                        Index (IS_OPTN) read FSupplierParty write SetSupplierParty stored SupplierParty_Specified;
    property InvoiceTaxes:                 ArrayOfInvoiceTax                   Index (IS_OPTN) read FInvoiceTaxes write SetInvoiceTaxes stored InvoiceTaxes_Specified;
    property InvoiceLines:                 ArrayOfInvoiceLine                  Index (IS_OPTN) read FInvoiceLines write SetInvoiceLines stored InvoiceLines_Specified;
    property Notes:                        ArrayOfString                       Index (IS_OPTN) read FNotes write SetNotes stored Notes_Specified;
    property WithholdingTaxes:             ArrayOfWithholdingTax               Index (IS_OPTN) read FWithholdingTaxes write SetWithholdingTaxes stored WithholdingTaxes_Specified;
    property BillingReferences:            ArrayOfBillingReference             Index (IS_OPTN) read FBillingReferences write SetBillingReferences stored BillingReferences_Specified;
    property AdditionalDocumentReferences: ArrayOfAdditionalDocumentReference  Index (IS_OPTN) read FAdditionalDocumentReferences write SetAdditionalDocumentReferences stored AdditionalDocumentReferences_Specified;
    property InvoicePeriod:                Period                              Index (IS_OPTN) read FInvoicePeriod write SetInvoicePeriod stored InvoicePeriod_Specified;
    property DespatchDocument:             ArrayOfDespatchDocumentModel        Index (IS_OPTN) read FDespatchDocument write SetDespatchDocument stored DespatchDocument_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceResponseWithServerSignRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  SendInvoiceResponseWithServerSignRequest = class(REQUEST)
  private
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FINVOICE: ArrayOfINVOICE;
    FINVOICE_Specified: boolean;
    FDESCRIPTION: ArrayOfString;
    FDESCRIPTION_Specified: boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetDESCRIPTION(Index: Integer; const AArrayOfString: ArrayOfString);
    function  DESCRIPTION_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property STATUS:      string          Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property INVOICE:     ArrayOfINVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property DESCRIPTION: ArrayOfString   Index (IS_OPTN or IS_UNBD or IS_UNQL) read FDESCRIPTION write SetDESCRIPTION stored DESCRIPTION_Specified;
  end;



  // ************************************************************************ //
  // XML       : PrepareInvoiceResponseRequest, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  PrepareInvoiceResponseRequest = class(REQUEST)
  private
    FSTATUS: string;
    FSTATUS_Specified: boolean;
    FINVOICE: ArrayOfINVOICE;
    FINVOICE_Specified: boolean;
    FDESCRIPTION: ArrayOfString;
    FDESCRIPTION_Specified: boolean;
    procedure SetSTATUS(Index: Integer; const Astring: string);
    function  STATUS_Specified(Index: Integer): boolean;
    procedure SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
    function  INVOICE_Specified(Index: Integer): boolean;
    procedure SetDESCRIPTION(Index: Integer; const AArrayOfString: ArrayOfString);
    function  DESCRIPTION_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property STATUS:      string          Index (IS_OPTN or IS_UNQL) read FSTATUS write SetSTATUS stored STATUS_Specified;
    property INVOICE:     ArrayOfINVOICE  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FINVOICE write SetINVOICE stored INVOICE_Specified;
    property DESCRIPTION: ArrayOfString   Index (IS_OPTN or IS_UNBD or IS_UNQL) read FDESCRIPTION write SetDESCRIPTION stored DESCRIPTION_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateInsideStock, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateInsideStock = class(TRemotable)
  private
    FInsideStock: inside;
    FInsideStock_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetInsideStock(Index: Integer; const Ainside: inside);
    function  InsideStock_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property InsideStock: inside  Index (IS_OPTN) read FInsideStock write SetInsideStock stored InsideStock_Specified;
    property sessionId:   string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetManuelStockAllResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetManuelStockAllResponse = class(TRemotable)
  private
    FGetManuelStockAllResult: ArrayOfManuelinvoice;
    FGetManuelStockAllResult_Specified: boolean;
    procedure SetGetManuelStockAllResult(Index: Integer; const AArrayOfManuelinvoice: ArrayOfManuelinvoice);
    function  GetManuelStockAllResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetManuelStockAllResult: ArrayOfManuelinvoice  Index (IS_OPTN) read FGetManuelStockAllResult write SetGetManuelStockAllResult stored GetManuelStockAllResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetManuelStockAll, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetManuelStockAll = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateInsideStockResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateInsideStockResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetInsideStockInvoiceResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInsideStockInvoiceResponse = class(TRemotable)
  private
    FGetInsideStockInvoiceResult: inside;
    FGetInsideStockInvoiceResult_Specified: boolean;
    procedure SetGetInsideStockInvoiceResult(Index: Integer; const Ainside: inside);
    function  GetInsideStockInvoiceResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInsideStockInvoiceResult: inside  Index (IS_OPTN) read FGetInsideStockInvoiceResult write SetGetInsideStockInvoiceResult stored GetInsideStockInvoiceResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInsideStockInvoice, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInsideStockInvoice = class(TRemotable)
  private
    FItemName: string;
    FItemName_Specified: boolean;
    FTaxId: string;
    FTaxId_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetItemName(Index: Integer; const Astring: string);
    function  ItemName_Specified(Index: Integer): boolean;
    procedure SetTaxId(Index: Integer; const Astring: string);
    function  TaxId_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property ItemName:  string  Index (IS_OPTN) read FItemName write SetItemName stored ItemName_Specified;
    property TaxId:     string  Index (IS_OPTN) read FTaxId write SetTaxId stored TaxId_Specified;
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateManuelCurrentResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateManuelCurrentResponse = class(TRemotable)
  private
    FCreateManuelCurrentResult: Int64;
  public
    constructor Create; override;
  published
    property CreateManuelCurrentResult: Int64  read FCreateManuelCurrentResult write FCreateManuelCurrentResult;
  end;



  // ************************************************************************ //
  // XML       : CreateManuelCurrent, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateManuelCurrent = class(TRemotable)
  private
    FCurrent: Manuelcurrent;
    FCurrent_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetCurrent(Index: Integer; const AManuelcurrent: Manuelcurrent);
    function  Current_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Current:   Manuelcurrent  Index (IS_OPTN) read FCurrent write SetCurrent stored Current_Specified;
    property sessionId: string         Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceRefAddResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceRefAddResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetManuelCurrentAll, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetManuelCurrentAll = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateManuelStockResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateManuelStockResponse = class(TRemotable)
  private
    FCreateManuelStockResult: Int64;
  public
    constructor Create; override;
  published
    property CreateManuelStockResult: Int64  read FCreateManuelStockResult write FCreateManuelStockResult;
  end;



  // ************************************************************************ //
  // XML       : CreateManuelStock, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateManuelStock = class(TRemotable)
  private
    FStock: Manuelinvoice;
    FStock_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetStock(Index: Integer; const AManuelinvoice: Manuelinvoice);
    function  Stock_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property Stock:     Manuelinvoice  Index (IS_OPTN) read FStock write SetStock stored Stock_Specified;
    property sessionId: string         Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetManuelCurrentAllResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetManuelCurrentAllResponse = class(TRemotable)
  private
    FGetManuelCurrentAllResult: ArrayOfManuelcurrent;
    FGetManuelCurrentAllResult_Specified: boolean;
    procedure SetGetManuelCurrentAllResult(Index: Integer; const AArrayOfManuelcurrent: ArrayOfManuelcurrent);
    function  GetManuelCurrentAllResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetManuelCurrentAllResult: ArrayOfManuelcurrent  Index (IS_OPTN) read FGetManuelCurrentAllResult write SetGetManuelCurrentAllResult stored GetManuelCurrentAllResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetSerialListResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSerialListResponse = class(TRemotable)
  private
    FGetSerialListResult: ArrayOfSerial;
    FGetSerialListResult_Specified: boolean;
    procedure SetGetSerialListResult(Index: Integer; const AArrayOfSerial: ArrayOfSerial);
    function  GetSerialListResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetSerialListResult: ArrayOfSerial  Index (IS_OPTN) read FGetSerialListResult write SetGetSerialListResult stored GetSerialListResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateSerialWithNewInIdResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateSerialWithNewInIdResponse = class(TRemotable)
  private
    FUpdateSerialWithNewInIdResult: Boolean;
  public
    constructor Create; override;
  published
    property UpdateSerialWithNewInIdResult: Boolean  read FUpdateSerialWithNewInIdResult write FUpdateSerialWithNewInIdResult;
  end;



  // ************************************************************************ //
  // XML       : UpdateSerialResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateSerialResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : GetUsersByCustomer, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUsersByCustomer = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetLoginCustomerResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetLoginCustomerResponse = class(TRemotable)
  private
    FGetLoginCustomerResult: Customer;
    FGetLoginCustomerResult_Specified: boolean;
    procedure SetGetLoginCustomerResult(Index: Integer; const ACustomer: Customer);
    function  GetLoginCustomerResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetLoginCustomerResult: Customer  Index (IS_OPTN) read FGetLoginCustomerResult write SetGetLoginCustomerResult stored GetLoginCustomerResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetLoginCustomer, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetLoginCustomer = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetUsersByCustomerResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetUsersByCustomerResponse = class(TRemotable)
  private
    FGetUsersByCustomerResult: ArrayOfUser;
    FGetUsersByCustomerResult_Specified: boolean;
    procedure SetGetUsersByCustomerResult(Index: Integer; const AArrayOfUser: ArrayOfUser);
    function  GetUsersByCustomerResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetUsersByCustomerResult: ArrayOfUser  Index (IS_OPTN) read FGetUsersByCustomerResult write SetGetUsersByCustomerResult stored GetUsersByCustomerResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateSerialResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateSerialResponse = class(TRemotable)
  private
    FCreateSerialResult: Serial;
    FCreateSerialResult_Specified: boolean;
    procedure SetCreateSerialResult(Index: Integer; const ASerial: Serial);
    function  CreateSerialResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property CreateSerialResult: Serial  Index (IS_OPTN) read FCreateSerialResult write SetCreateSerialResult stored CreateSerialResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : CreateSerial, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  CreateSerial = class(TRemotable)
  private
    FserialObj: Serial;
    FserialObj_Specified: boolean;
    FassignedUser: Integer;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetserialObj(Index: Integer; const ASerial: Serial);
    function  serialObj_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property serialObj:    Serial   Index (IS_OPTN) read FserialObj write SetserialObj stored serialObj_Specified;
    property assignedUser: Integer  read FassignedUser write FassignedUser;
    property sessionId:    string   Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetSerialResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSerialResponse = class(TRemotable)
  private
    FGetSerialResult: Serial;
    FGetSerialResult_Specified: boolean;
    procedure SetGetSerialResult(Index: Integer; const ASerial: Serial);
    function  GetSerialResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetSerialResult: Serial  Index (IS_OPTN) read FGetSerialResult write SetGetSerialResult stored GetSerialResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNextSerialStringResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNextSerialStringResponse = class(TRemotable)
  private
    FGetNextSerialStringResult: string;
    FGetNextSerialStringResult_Specified: boolean;
    procedure SetGetNextSerialStringResult(Index: Integer; const Astring: string);
    function  GetNextSerialStringResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property GetNextSerialStringResult: string  Index (IS_OPTN) read FGetNextSerialStringResult write SetGetNextSerialStringResult stored GetNextSerialStringResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetNextSerialString, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetNextSerialString = class(TRemotable)
  private
    FserialObj: Serial;
    FserialObj_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetserialObj(Index: Integer; const ASerial: Serial);
    function  serialObj_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property serialObj: Serial  Index (IS_OPTN) read FserialObj write SetserialObj stored serialObj_Specified;
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendInvoiceRefAdd, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendInvoiceRefAdd = class(TRemotable)
  private
    FsendInvoice: SendInvoiceRef;
    FsendInvoice_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsendInvoice(Index: Integer; const ASendInvoiceRef: SendInvoiceRef);
    function  sendInvoice_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property sendInvoice: SendInvoiceRef  Index (IS_OPTN) read FsendInvoice write SetsendInvoice stored sendInvoice_Specified;
    property sessionId:   string          Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : LogoutResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LogoutResponse = class(TRemotable)
  private
    FLogoutResult: Int64;
  public
    constructor Create; override;
  published
    property LogoutResult: Int64  read FLogoutResult write FLogoutResult;
  end;



  // ************************************************************************ //
  // XML       : Logout, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Logout = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoginWithTaxOrIdNoResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoginWithTaxOrIdNoResponse = class(TRemotable)
  private
    FLoginWithTaxOrIdNoResult: LoginRes;
    FLoginWithTaxOrIdNoResult_Specified: boolean;
    procedure SetLoginWithTaxOrIdNoResult(Index: Integer; const ALoginRes: LoginRes);
    function  LoginWithTaxOrIdNoResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property LoginWithTaxOrIdNoResult: LoginRes  Index (IS_OPTN) read FLoginWithTaxOrIdNoResult write SetLoginWithTaxOrIdNoResult stored LoginWithTaxOrIdNoResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvQueries, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvQueries = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : InvQueriesInsResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  InvQueriesInsResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : InvQueriesIns, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  InvQueriesIns = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    Fquery: Query;
    Fquery_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure Setquery(Index: Integer; const AQuery: Query);
    function  query_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
    property query:     Query   Index (IS_OPTN) read Fquery write Setquery stored query_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvQueriesResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvQueriesResponse = class(TRemotable)
  private
    FGetInvQueriesResult: Query;
    FGetInvQueriesResult_Specified: boolean;
    procedure SetGetInvQueriesResult(Index: Integer; const AQuery: Query);
    function  GetInvQueriesResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvQueriesResult: Query  Index (IS_OPTN) read FGetInvQueriesResult write SetGetInvQueriesResult stored GetInvQueriesResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : ENVELOPE, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  ENVELOPE3 = class(TRemotable)
  private
    FINSTANCEIDENTIFIER: string;
    FINSTANCEIDENTIFIER_Specified: boolean;
    FHEADER: HEADER;
    FHEADER_Specified: boolean;
    FCONTENT: base64Binary;
    FCONTENT_Specified: boolean;
    procedure SetINSTANCEIDENTIFIER(Index: Integer; const Astring: string);
    function  INSTANCEIDENTIFIER_Specified(Index: Integer): boolean;
    procedure SetHEADER(Index: Integer; const AHEADER: HEADER);
    function  HEADER_Specified(Index: Integer): boolean;
    procedure SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
    function  CONTENT_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property INSTANCEIDENTIFIER: string        Index (IS_ATTR or IS_OPTN) read FINSTANCEIDENTIFIER write SetINSTANCEIDENTIFIER stored INSTANCEIDENTIFIER_Specified;
    property HEADER:             HEADER        Index (IS_OPTN or IS_UNQL) read FHEADER write SetHEADER stored HEADER_Specified;
    property CONTENT:            base64Binary  Index (IS_OPTN or IS_UNQL) read FCONTENT write SetCONTENT stored CONTENT_Specified;
  end;

  ArrayOfENVELOPE = array of ENVELOPE3;         { "http://parkentegrasyon.com.tr/"[GblCplx] }


  // ************************************************************************ //
  // XML       : GetEnvelopeStatusResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEnvelopeStatusResponse = class(TRemotable)
  private
    FGetEnvelopeStatusResult: ArrayOfENVELOPE;
    FGetEnvelopeStatusResult_Specified: boolean;
    procedure SetGetEnvelopeStatusResult(Index: Integer; const AArrayOfENVELOPE: ArrayOfENVELOPE);
    function  GetEnvelopeStatusResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetEnvelopeStatusResult: ArrayOfENVELOPE  Index (IS_OPTN) read FGetEnvelopeStatusResult write SetGetEnvelopeStatusResult stored GetEnvelopeStatusResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetEnvelopeResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetEnvelopeResponse = class(TRemotable)
  private
    FGetEnvelopeResult: ArrayOfENVELOPE;
    FGetEnvelopeResult_Specified: boolean;
    procedure SetGetEnvelopeResult(Index: Integer; const AArrayOfENVELOPE: ArrayOfENVELOPE);
    function  GetEnvelopeResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetEnvelopeResult: ArrayOfENVELOPE  Index (IS_OPTN) read FGetEnvelopeResult write SetGetEnvelopeResult stored GetEnvelopeResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GIBUSER, global, <complexType>
  // Namespace : http://schemas.i2i.com/ei/wsdl
  // ************************************************************************ //
  GIBUSER = class(TRemotable)
  private
    FIDENTIFIER: string;
    FIDENTIFIER_Specified: boolean;
    FALIAS: string;
    FALIAS_Specified: boolean;
    FTITLE: string;
    FTITLE_Specified: boolean;
    FTYPE_: string;
    FTYPE__Specified: boolean;
    FREGISTER_TIME: string;
    FREGISTER_TIME_Specified: boolean;
    FUNIT_: string;
    FUNIT__Specified: boolean;
    FALIAS_CREATION_TIME: string;
    FALIAS_CREATION_TIME_Specified: boolean;
    procedure SetIDENTIFIER(Index: Integer; const Astring: string);
    function  IDENTIFIER_Specified(Index: Integer): boolean;
    procedure SetALIAS(Index: Integer; const Astring: string);
    function  ALIAS_Specified(Index: Integer): boolean;
    procedure SetTITLE(Index: Integer; const Astring: string);
    function  TITLE_Specified(Index: Integer): boolean;
    procedure SetTYPE_(Index: Integer; const Astring: string);
    function  TYPE__Specified(Index: Integer): boolean;
    procedure SetREGISTER_TIME(Index: Integer; const Astring: string);
    function  REGISTER_TIME_Specified(Index: Integer): boolean;
    procedure SetUNIT_(Index: Integer; const Astring: string);
    function  UNIT__Specified(Index: Integer): boolean;
    procedure SetALIAS_CREATION_TIME(Index: Integer; const Astring: string);
    function  ALIAS_CREATION_TIME_Specified(Index: Integer): boolean;
  published
    property IDENTIFIER:          string  Index (IS_OPTN or IS_UNQL) read FIDENTIFIER write SetIDENTIFIER stored IDENTIFIER_Specified;
    property ALIAS:               string  Index (IS_OPTN or IS_UNQL) read FALIAS write SetALIAS stored ALIAS_Specified;
    property TITLE:               string  Index (IS_OPTN or IS_UNQL) read FTITLE write SetTITLE stored TITLE_Specified;
    property TYPE_:               string  Index (IS_OPTN or IS_UNQL) read FTYPE_ write SetTYPE_ stored TYPE__Specified;
    property REGISTER_TIME:       string  Index (IS_OPTN or IS_UNQL) read FREGISTER_TIME write SetREGISTER_TIME stored REGISTER_TIME_Specified;
    property UNIT_:               string  Index (IS_OPTN or IS_UNQL) read FUNIT_ write SetUNIT_ stored UNIT__Specified;
    property ALIAS_CREATION_TIME: string  Index (IS_OPTN or IS_UNQL) read FALIAS_CREATION_TIME write SetALIAS_CREATION_TIME stored ALIAS_CREATION_TIME_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateSerial, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateSerial = class(TRemotable)
  private
    FsType: SerialTypes;
    Fprefix: string;
    Fprefix_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    Fyear: Integer;
    procedure Setprefix(Index: Integer; const Astring: string);
    function  prefix_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sType:     SerialTypes  read FsType write FsType;
    property prefix:    string       Index (IS_OPTN) read Fprefix write Setprefix stored prefix_Specified;
    property sessionId: string       Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
    property year:      Integer      read Fyear write Fyear;
  end;



  // ************************************************************************ //
  // XML       : GetSerial, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSerial = class(TRemotable)
  private
    Fprefix: string;
    Fprefix_Specified: boolean;
    FYear: Integer;
    FserialTypes: SerialTypes;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure Setprefix(Index: Integer; const Astring: string);
    function  prefix_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property prefix:      string       Index (IS_OPTN) read Fprefix write Setprefix stored prefix_Specified;
    property Year:        Integer      read FYear write FYear;
    property serialTypes: SerialTypes  read FserialTypes write FserialTypes;
    property sessionId:   string       Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : UpdateSerialWithNewInId, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  UpdateSerialWithNewInId = class(TRemotable)
  private
    FnewSerialId: string;
    FnewSerialId_Specified: boolean;
    FserialTypes: SerialTypes;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetnewSerialId(Index: Integer; const Astring: string);
    function  newSerialId_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property newSerialId: string       Index (IS_OPTN) read FnewSerialId write SetnewSerialId stored newSerialId_Specified;
    property serialTypes: SerialTypes  read FserialTypes write FserialTypes;
    property sessionId:   string       Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetSerialList, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetSerialList = class(TRemotable)
  private
    FserialType: SerialTypes;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property serialType: SerialTypes  read FserialType write FserialType;
    property sessionId:  string       Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoginWithTaxOrIdNo, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoginWithTaxOrIdNo = class(TRemotable)
  private
    FuserName: string;
    FuserName_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    FtaxOrIdNo: string;
    FtaxOrIdNo_Specified: boolean;
    FbatchId: string;
    FbatchId_Specified: boolean;
    procedure SetuserName(Index: Integer; const Astring: string);
    function  userName_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
    procedure SettaxOrIdNo(Index: Integer; const Astring: string);
    function  taxOrIdNo_Specified(Index: Integer): boolean;
    procedure SetbatchId(Index: Integer; const Astring: string);
    function  batchId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property userName:  string  Index (IS_OPTN) read FuserName write SetuserName stored userName_Specified;
    property password:  string  Index (IS_OPTN) read Fpassword write Setpassword stored password_Specified;
    property taxOrIdNo: string  Index (IS_OPTN) read FtaxOrIdNo write SettaxOrIdNo stored taxOrIdNo_Specified;
    property batchId:   string  Index (IS_OPTN) read FbatchId write SetbatchId stored batchId_Specified;
  end;



  // ************************************************************************ //
  // XML       : LoginResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  LoginResponse = class(TRemotable)
  private
    FLoginResult: LoginRes;
    FLoginResult_Specified: boolean;
    procedure SetLoginResult(Index: Integer; const ALoginRes: LoginRes);
    function  LoginResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property LoginResult: LoginRes  Index (IS_OPTN) read FLoginResult write SetLoginResult stored LoginResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : Login, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  Login = class(TRemotable)
  private
    FuserName: string;
    FuserName_Specified: boolean;
    Fpassword: string;
    Fpassword_Specified: boolean;
    procedure SetuserName(Index: Integer; const Astring: string);
    function  userName_Specified(Index: Integer): boolean;
    procedure Setpassword(Index: Integer; const Astring: string);
    function  password_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property userName: string  Index (IS_OPTN) read FuserName write SetuserName stored userName_Specified;
    property password: string  Index (IS_OPTN) read Fpassword write Setpassword stored password_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvQueryParams, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvQueryParams = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : PARKInvoiceObjectToUblTextResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PARKInvoiceObjectToUblTextResponse = class(TRemotable)
  private
    FPARKInvoiceObjectToUblTextResult: TByteDynArray;
    FPARKInvoiceObjectToUblTextResult_Specified: boolean;
    procedure SetPARKInvoiceObjectToUblTextResult(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  PARKInvoiceObjectToUblTextResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property PARKInvoiceObjectToUblTextResult: TByteDynArray  Index (IS_OPTN) read FPARKInvoiceObjectToUblTextResult write SetPARKInvoiceObjectToUblTextResult stored PARKInvoiceObjectToUblTextResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : PARKInvoiceObjectToUblText, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  PARKInvoiceObjectToUblText = class(TRemotable)
  private
    FinvoiceObj: PARKInvoiceType;
    FinvoiceObj_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetinvoiceObj(Index: Integer; const APARKInvoiceType: PARKInvoiceType);
    function  invoiceObj_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property invoiceObj: PARKInvoiceType  Index (IS_OPTN) read FinvoiceObj write SetinvoiceObj stored invoiceObj_Specified;
    property sessionId:  string           Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendPARKInvoiceObjectConnectorResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendPARKInvoiceObjectConnectorResponse = class(TRemotable)
  private
    FSendPARKInvoiceObjectConnectorResult: REQUEST_RETURNType;
    FSendPARKInvoiceObjectConnectorResult_Specified: boolean;
    procedure SetSendPARKInvoiceObjectConnectorResult(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  SendPARKInvoiceObjectConnectorResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendPARKInvoiceObjectConnectorResult: REQUEST_RETURNType  Index (IS_OPTN) read FSendPARKInvoiceObjectConnectorResult write SetSendPARKInvoiceObjectConnectorResult stored SendPARKInvoiceObjectConnectorResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : GibUserListTxt, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GibUserListTxt = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : ERPRefSendInvoiceAllResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ERPRefSendInvoiceAllResponse = class(TRemotable)
  private
    FERPRefSendInvoiceAllResult: ArrayOfSendInvoiceRef;
    FERPRefSendInvoiceAllResult_Specified: boolean;
    procedure SetERPRefSendInvoiceAllResult(Index: Integer; const AArrayOfSendInvoiceRef: ArrayOfSendInvoiceRef);
    function  ERPRefSendInvoiceAllResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property ERPRefSendInvoiceAllResult: ArrayOfSendInvoiceRef  Index (IS_OPTN) read FERPRefSendInvoiceAllResult write SetERPRefSendInvoiceAllResult stored ERPRefSendInvoiceAllResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : ERPRefSendInvoiceAll, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  ERPRefSendInvoiceAll = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property sessionId: string  Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : GibUserListTxtResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GibUserListTxtResponse = class(TRemotable)
  private
    FGibUserListTxtResult: TByteDynArray;
    FGibUserListTxtResult_Specified: boolean;
    procedure SetGibUserListTxtResult(Index: Integer; const ATByteDynArray: TByteDynArray);
    function  GibUserListTxtResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property GibUserListTxtResult: TByteDynArray  Index (IS_OPTN) read FGibUserListTxtResult write SetGibUserListTxtResult stored GibUserListTxtResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : InvQueryInsParamsResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  InvQueryInsParamsResponse = class(TRemotable)
  private
  public
    constructor Create; override;
  published
  end;



  // ************************************************************************ //
  // XML       : InvQueryInsParams, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  InvQueryInsParams = class(TRemotable)
  private
    FsessionId: string;
    FsessionId_Specified: boolean;
    Fparam: QueryParameter;
    Fparam_Specified: boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure Setparam(Index: Integer; const AQueryParameter: QueryParameter);
    function  param_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property sessionId: string          Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
    property param:     QueryParameter  Index (IS_OPTN) read Fparam write Setparam stored param_Specified;
  end;



  // ************************************************************************ //
  // XML       : GetInvQueryParamsResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  GetInvQueryParamsResponse = class(TRemotable)
  private
    FGetInvQueryParamsResult: ArrayOfQueryParameter;
    FGetInvQueryParamsResult_Specified: boolean;
    procedure SetGetInvQueryParamsResult(Index: Integer; const AArrayOfQueryParameter: ArrayOfQueryParameter);
    function  GetInvQueryParamsResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property GetInvQueryParamsResult: ArrayOfQueryParameter  Index (IS_OPTN) read FGetInvQueryParamsResult write SetGetInvQueryParamsResult stored GetInvQueryParamsResult_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendPARKInvoiceObject, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendPARKInvoiceObject = class(TRemotable)
  private
    FinvoiceObj: PARKInvoiceType;
    FinvoiceObj_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    procedure SetinvoiceObj(Index: Integer; const APARKInvoiceType: PARKInvoiceType);
    function  invoiceObj_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property invoiceObj: PARKInvoiceType  Index (IS_OPTN) read FinvoiceObj write SetinvoiceObj stored invoiceObj_Specified;
    property sessionId:  string           Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendPARKInvoiceObjectConnector, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendPARKInvoiceObjectConnector = class(TRemotable)
  private
    FinvoiceObj: PARKInvoiceType;
    FinvoiceObj_Specified: boolean;
    FsessionId: string;
    FsessionId_Specified: boolean;
    FxsltStyleName: string;
    FxsltStyleName_Specified: boolean;
    FonEk: string;
    FonEk_Specified: boolean;
    FerpRef: string;
    FerpRef_Specified: boolean;
    procedure SetinvoiceObj(Index: Integer; const APARKInvoiceType: PARKInvoiceType);
    function  invoiceObj_Specified(Index: Integer): boolean;
    procedure SetsessionId(Index: Integer; const Astring: string);
    function  sessionId_Specified(Index: Integer): boolean;
    procedure SetxsltStyleName(Index: Integer; const Astring: string);
    function  xsltStyleName_Specified(Index: Integer): boolean;
    procedure SetonEk(Index: Integer; const Astring: string);
    function  onEk_Specified(Index: Integer): boolean;
    procedure SeterpRef(Index: Integer; const Astring: string);
    function  erpRef_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property invoiceObj:    PARKInvoiceType  Index (IS_OPTN) read FinvoiceObj write SetinvoiceObj stored invoiceObj_Specified;
    property sessionId:     string           Index (IS_OPTN) read FsessionId write SetsessionId stored sessionId_Specified;
    property xsltStyleName: string           Index (IS_OPTN) read FxsltStyleName write SetxsltStyleName stored xsltStyleName_Specified;
    property onEk:          string           Index (IS_OPTN) read FonEk write SetonEk stored onEk_Specified;
    property erpRef:        string           Index (IS_OPTN) read FerpRef write SeterpRef stored erpRef_Specified;
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
    FWARNINGS: ArrayOfString;
    FWARNINGS_Specified: boolean;
    procedure SetCLIENT_TXN_ID(Index: Integer; const Astring: string);
    function  CLIENT_TXN_ID_Specified(Index: Integer): boolean;
    procedure SetWARNINGS(Index: Integer; const AArrayOfString: ArrayOfString);
    function  WARNINGS_Specified(Index: Integer): boolean;
  published
    property INTL_TXN_ID:   Int64          Index (IS_UNQL) read FINTL_TXN_ID write FINTL_TXN_ID;
    property CLIENT_TXN_ID: string         Index (IS_OPTN or IS_UNQL) read FCLIENT_TXN_ID write SetCLIENT_TXN_ID stored CLIENT_TXN_ID_Specified;
    property RETURN_CODE:   Integer        Index (IS_UNQL) read FRETURN_CODE write FRETURN_CODE;
    property WARNINGS:      ArrayOfString  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FWARNINGS write SetWARNINGS stored WARNINGS_Specified;
  end;



  // ************************************************************************ //
  // XML       : SendPARKInvoiceObjectResponse, global, <element>
  // Namespace : http://parkentegrasyon.com.tr/
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  SendPARKInvoiceObjectResponse = class(TRemotable)
  private
    FSendPARKInvoiceObjectResult: REQUEST_RETURNType;
    FSendPARKInvoiceObjectResult_Specified: boolean;
    procedure SetSendPARKInvoiceObjectResult(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
    function  SendPARKInvoiceObjectResult_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property SendPARKInvoiceObjectResult: REQUEST_RETURNType  Index (IS_OPTN) read FSendPARKInvoiceObjectResult write SetSendPARKInvoiceObjectResult stored SendPARKInvoiceObjectResult_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://parkentegrasyon.com.tr/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : EFaturaServiceSoap
  // service   : EFaturaService
  // port      : EFaturaServiceSoap
  // URL       : https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx
  // ************************************************************************ //
  EFaturaServiceSoap = interface(IInvokable)
  ['{F6851F5B-4E19-CAF7-4D82-9944B1EBB670}']
    function  Login(const parameters: Login): LoginResponse; stdcall;
    function  LoginWithTaxOrIdNo(const parameters: LoginWithTaxOrIdNo): LoginWithTaxOrIdNoResponse; stdcall;
    function  Logout(const parameters: Logout): LogoutResponse; stdcall;
    function  GetInvQueries(const parameters: GetInvQueries): GetInvQueriesResponse; stdcall;
    function  InvQueriesIns(const parameters: InvQueriesIns): InvQueriesInsResponse; stdcall;
    function  GetInvQueryParams(const parameters: GetInvQueryParams): GetInvQueryParamsResponse; stdcall;
    function  InvQueryInsParams(const parameters: InvQueryInsParams): InvQueryInsParamsResponse; stdcall;
    function  SendPARKInvoiceObject(const parameters: SendPARKInvoiceObject): SendPARKInvoiceObjectResponse; stdcall;
    function  SendPARKInvoiceObjectConnector(const parameters: SendPARKInvoiceObjectConnector): SendPARKInvoiceObjectConnectorResponse; stdcall;
    function  PARKInvoiceObjectToUblText(const parameters: PARKInvoiceObjectToUblText): PARKInvoiceObjectToUblTextResponse; stdcall;
    function  GibUserListTxt(const parameters: GibUserListTxt): GibUserListTxtResponse; stdcall;
    function  ERPRefSendInvoiceAll(const parameters: ERPRefSendInvoiceAll): ERPRefSendInvoiceAllResponse; stdcall;
    function  SendInvoiceRefAdd(const parameters: SendInvoiceRefAdd): SendInvoiceRefAddResponse; stdcall;
    function  CreateManuelCurrent(const parameters: CreateManuelCurrent): CreateManuelCurrentResponse; stdcall;
    function  GetManuelCurrentAll(const parameters: GetManuelCurrentAll): GetManuelCurrentAllResponse; stdcall;
    function  CreateManuelStock(const parameters: CreateManuelStock): CreateManuelStockResponse; stdcall;
    function  GetManuelStockAll(const parameters: GetManuelStockAll): GetManuelStockAllResponse; stdcall;
    function  CreateInsideStock(const parameters: CreateInsideStock): CreateInsideStockResponse; stdcall;
    function  GetInsideStockInvoice(const parameters: GetInsideStockInvoice): GetInsideStockInvoiceResponse; stdcall;
    function  GetSerialList(const parameters: GetSerialList): GetSerialListResponse; stdcall;
    function  CreateSerial(const parameters: CreateSerial): CreateSerialResponse; stdcall;
    function  GetSerial(const parameters: GetSerial): GetSerialResponse; stdcall;
    function  GetNextSerialString(const parameters: GetNextSerialString): GetNextSerialStringResponse; stdcall;
    function  UpdateSerial(const parameters: UpdateSerial): UpdateSerialResponse; stdcall;
    function  UpdateSerialWithNewInId(const parameters: UpdateSerialWithNewInId): UpdateSerialWithNewInIdResponse; stdcall;
    function  GetUsersByCustomer(const parameters: GetUsersByCustomer): GetUsersByCustomerResponse; stdcall;
    function  GetLoginCustomer(const parameters: GetLoginCustomer): GetLoginCustomerResponse; stdcall;
    function  UploadXSLTFiles(const parameters: UploadXSLTFiles): UploadXSLTFilesResponse; stdcall;
    function  DownloadXslt(const parameters: DownloadXslt): DownloadXsltResponse; stdcall;
    function  GetXsltByName(const parameters: GetXsltByName): GetXsltByNameResponse; stdcall;
    function  UpdateXSLTFiles(const parameters: UpdateXSLTFiles): UpdateXSLTFilesResponse; stdcall;
    function  DeleteXSLTFiles(const parameters: DeleteXSLTFiles): DeleteXSLTFilesResponse; stdcall;
    function  ListXSLTFiles(const parameters: ListXSLTFiles): ListXSLTFilesResponse; stdcall;
    function  GetXSLTFiles(const parameters: GetXSLTFiles): GetXSLTFilesResponse; stdcall;
    function  SetDefaultXslt(const parameters: SetDefaultXslt): SetDefaultXsltResponse; stdcall;
    function  GetCities(const parameters: GetCities): GetCitiesResponse; stdcall;
    function  GetDistricts(const parameters: GetDistricts): GetDistrictsResponse; stdcall;
    function  GetDistrictsWithPlateNumber(const parameters: GetDistrictsWithPlateNumber): GetDistrictsWithPlateNumberResponse; stdcall;
    function  MarkEnvelope(const parameters: MarkEnvelope): MarkEnvelopeResponse; stdcall;
    function  SendInvoice(const parameters: SendInvoice): SendInvoiceResponse; stdcall;

    // Cannot unwrap: 
    //     - Input element wrapper name does not match operation's name
    function  SendInvoiceResponse(const parameters: SendInvoiceResponseMethod): SendInvoiceResponseMethodResponse; stdcall;
    function  LoadInvoice(const parameters: LoadInvoice): LoadInvoiceResponse; stdcall;
    function  GetInvoice(const parameters: GetInvoice): GetInvoiceResponse; stdcall;
    function  GetInvoiceStatus(const parameters: GetInvoiceStatus): GetInvoiceStatusResponse; stdcall;
    function  GetInvoiceStatusAll(const parameters: GetInvoiceStatusAll): GetInvoiceStatusAllResponse; stdcall;
    function  GetInvoiceWithType(const parameters: GetInvoiceWithType): GetInvoiceWithTypeResponse; stdcall;
    function  MarkInvoice(const parameters: MarkInvoice): MarkInvoiceResponse; stdcall;
    function  PrepareInvoiceResponse(const parameters: PrepareInvoiceResponse): PrepareInvoiceResponseResponse; stdcall;
    function  SendInvoiceResponseWithServerSign(const parameters: SendInvoiceResponseWithServerSign): SendInvoiceResponseWithServerSignResponse; stdcall;
    function  GetUserList(const parameters: GetUserList): GetUserListResponse; stdcall;
    function  CheckUser(const parameters: CheckUser): CheckUserResponse; stdcall;
    function  GetApplicationResponse(const parameters: GetApplicationResponse): GetApplicationResponseResponse; stdcall;
    function  GetEnvelope(const parameters: GetEnvelope): GetEnvelopeResponse; stdcall;
    function  GetEnvelopeStatus(const parameters: GetEnvelopeStatus): GetEnvelopeStatusResponse; stdcall;
    function  GetUserListBinary(const parameters: GetUserListBinary): GetUserListBinaryResponse; stdcall;
  end;

function GetEFaturaServiceSoap(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): EFaturaServiceSoap;


implementation
  uses System.SysUtils;

function GetEFaturaServiceSoap(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): EFaturaServiceSoap;
const
  defWSDL = 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx?WSDL';
  defURL  = 'https://wstest.parkentegrasyon.com.tr/EFaturaService.asmx';
  defSvc  = 'EFaturaService';
  defPrt  = 'EFaturaServiceSoap';
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
    Result := (RIO as EFaturaServiceSoap);
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


constructor GetInvoice.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoice.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInvoiceRequest);
  inherited Destroy;
end;

procedure GetInvoice.SetGetInvoiceRequest(Index: Integer; const AGetInvoiceRequest: GetInvoiceRequest);
begin
  FGetInvoiceRequest := AGetInvoiceRequest;
  FGetInvoiceRequest_Specified := True;
end;

function GetInvoice.GetInvoiceRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceRequest_Specified;
end;

constructor GetInvoiceStatus.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceStatus.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInvoiceStatusRequest);
  inherited Destroy;
end;

procedure GetInvoiceStatus.SetGetInvoiceStatusRequest(Index: Integer; const AGetInvoiceStatusRequest: GetInvoiceStatusRequest);
begin
  FGetInvoiceStatusRequest := AGetInvoiceStatusRequest;
  FGetInvoiceStatusRequest_Specified := True;
end;

function GetInvoiceStatus.GetInvoiceStatusRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceStatusRequest_Specified;
end;

destructor GetInvoiceStatusResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FINVOICE_STATUS);
  inherited Destroy;
end;

procedure GetInvoiceStatusResponse2.SetINVOICE_STATUS(Index: Integer; const AINVOICE_STATUS: INVOICE_STATUS);
begin
  FINVOICE_STATUS := AINVOICE_STATUS;
  FINVOICE_STATUS_Specified := True;
end;

function GetInvoiceStatusResponse2.INVOICE_STATUS_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_STATUS_Specified;
end;

constructor GetInvoiceStatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceStatusResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInvoiceStatusResult);
  inherited Destroy;
end;

procedure GetInvoiceStatusResponse.SetGetInvoiceStatusResult(Index: Integer; const AGetInvoiceStatusResponse2: GetInvoiceStatusResponse2);
begin
  FGetInvoiceStatusResult := AGetInvoiceStatusResponse2;
  FGetInvoiceStatusResult_Specified := True;
end;

function GetInvoiceStatusResponse.GetInvoiceStatusResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceStatusResult_Specified;
end;

destructor SendInvoiceResponseResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  inherited Destroy;
end;

procedure SendInvoiceResponseResponse.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function SendInvoiceResponseResponse.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

constructor SendInvoiceResponseMethodResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoiceResponseMethodResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendInvoiceResponseMethodResult);
  inherited Destroy;
end;

procedure SendInvoiceResponseMethodResponse.SetSendInvoiceResponseMethodResult(Index: Integer; const ASendInvoiceResponseResponse: SendInvoiceResponseResponse);
begin
  FSendInvoiceResponseMethodResult := ASendInvoiceResponseResponse;
  FSendInvoiceResponseMethodResult_Specified := True;
end;

function SendInvoiceResponseMethodResponse.SendInvoiceResponseMethodResult_Specified(Index: Integer): boolean;
begin
  Result := FSendInvoiceResponseMethodResult_Specified;
end;

constructor LoadInvoice.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LoadInvoice.Destroy;
begin
  System.SysUtils.FreeAndNil(FLoadInvoiceRequest);
  inherited Destroy;
end;

procedure LoadInvoice.SetLoadInvoiceRequest(Index: Integer; const ALoadInvoiceRequest: LoadInvoiceRequest);
begin
  FLoadInvoiceRequest := ALoadInvoiceRequest;
  FLoadInvoiceRequest_Specified := True;
end;

function LoadInvoice.LoadInvoiceRequest_Specified(Index: Integer): boolean;
begin
  Result := FLoadInvoiceRequest_Specified;
end;

destructor LoadInvoiceResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  inherited Destroy;
end;

procedure LoadInvoiceResponse2.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function LoadInvoiceResponse2.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

constructor LoadInvoiceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LoadInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FLoadInvoiceResult);
  inherited Destroy;
end;

procedure LoadInvoiceResponse.SetLoadInvoiceResult(Index: Integer; const ALoadInvoiceResponse2: LoadInvoiceResponse2);
begin
  FLoadInvoiceResult := ALoadInvoiceResponse2;
  FLoadInvoiceResult_Specified := True;
end;

function LoadInvoiceResponse.LoadInvoiceResult_Specified(Index: Integer): boolean;
begin
  Result := FLoadInvoiceResult_Specified;
end;

constructor GetInvoiceStatusAll.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceStatusAll.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInvoiceStatusAllRequest);
  inherited Destroy;
end;

procedure GetInvoiceStatusAll.SetGetInvoiceStatusAllRequest(Index: Integer; const AGetInvoiceStatusAllRequest: GetInvoiceStatusAllRequest);
begin
  FGetInvoiceStatusAllRequest := AGetInvoiceStatusAllRequest;
  FGetInvoiceStatusAllRequest_Specified := True;
end;

function GetInvoiceStatusAll.GetInvoiceStatusAllRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceStatusAllRequest_Specified;
end;

constructor PrepareInvoiceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor PrepareInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FPrepareInvoiceResponseRequest);
  inherited Destroy;
end;

procedure PrepareInvoiceResponse.SetPrepareInvoiceResponseRequest(Index: Integer; const APrepareInvoiceResponseRequest: PrepareInvoiceResponseRequest);
begin
  FPrepareInvoiceResponseRequest := APrepareInvoiceResponseRequest;
  FPrepareInvoiceResponseRequest_Specified := True;
end;

function PrepareInvoiceResponse.PrepareInvoiceResponseRequest_Specified(Index: Integer): boolean;
begin
  Result := FPrepareInvoiceResponseRequest_Specified;
end;

destructor MarkInvoiceResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  inherited Destroy;
end;

procedure MarkInvoiceResponse2.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function MarkInvoiceResponse2.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

constructor MarkInvoiceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MarkInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FMarkInvoiceResult);
  inherited Destroy;
end;

procedure MarkInvoiceResponse.SetMarkInvoiceResult(Index: Integer; const AMarkInvoiceResponse2: MarkInvoiceResponse2);
begin
  FMarkInvoiceResult := AMarkInvoiceResponse2;
  FMarkInvoiceResult_Specified := True;
end;

function MarkInvoiceResponse.MarkInvoiceResult_Specified(Index: Integer): boolean;
begin
  Result := FMarkInvoiceResult_Specified;
end;

constructor SendInvoiceResponseWithServerSign.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoiceResponseWithServerSign.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendInvoiceResponseWithServerSignRequest);
  inherited Destroy;
end;

procedure SendInvoiceResponseWithServerSign.SetSendInvoiceResponseWithServerSignRequest(Index: Integer; const ASendInvoiceResponseWithServerSignRequest: SendInvoiceResponseWithServerSignRequest);
begin
  FSendInvoiceResponseWithServerSignRequest := ASendInvoiceResponseWithServerSignRequest;
  FSendInvoiceResponseWithServerSignRequest_Specified := True;
end;

function SendInvoiceResponseWithServerSign.SendInvoiceResponseWithServerSignRequest_Specified(Index: Integer): boolean;
begin
  Result := FSendInvoiceResponseWithServerSignRequest_Specified;
end;

constructor GetInvoiceWithType.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceWithType.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInvoiceWithTypeRequest);
  inherited Destroy;
end;

procedure GetInvoiceWithType.SetGetInvoiceWithTypeRequest(Index: Integer; const AGetInvoiceWithTypeRequest: GetInvoiceWithTypeRequest);
begin
  FGetInvoiceWithTypeRequest := AGetInvoiceWithTypeRequest;
  FGetInvoiceWithTypeRequest_Specified := True;
end;

function GetInvoiceWithType.GetInvoiceWithTypeRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceWithTypeRequest_Specified;
end;

constructor MarkInvoice.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MarkInvoice.Destroy;
begin
  System.SysUtils.FreeAndNil(FMarkInvoiceRequest);
  inherited Destroy;
end;

procedure MarkInvoice.SetMarkInvoiceRequest(Index: Integer; const AMarkInvoiceRequest: MarkInvoiceRequest);
begin
  FMarkInvoiceRequest := AMarkInvoiceRequest;
  FMarkInvoiceRequest_Specified := True;
end;

function MarkInvoice.MarkInvoiceRequest_Specified(Index: Integer): boolean;
begin
  Result := FMarkInvoiceRequest_Specified;
end;

constructor SendInvoiceResponseMethod.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoiceResponseMethod.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendInvoiceResponseRequest);
  inherited Destroy;
end;

procedure SendInvoiceResponseMethod.SetSendInvoiceResponseRequest(Index: Integer; const ASendInvoiceResponseRequest: SendInvoiceResponseRequest);
begin
  FSendInvoiceResponseRequest := ASendInvoiceResponseRequest;
  FSendInvoiceResponseRequest_Specified := True;
end;

function SendInvoiceResponseMethod.SendInvoiceResponseRequest_Specified(Index: Integer): boolean;
begin
  Result := FSendInvoiceResponseRequest_Specified;
end;

constructor DeleteXSLTFilesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetXSLTFilesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetXSLTFilesResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetXSLTFilesResult);
  inherited Destroy;
end;

procedure GetXSLTFilesResponse.SetGetXSLTFilesResult(Index: Integer; const AStylefiles: Stylefiles);
begin
  FGetXSLTFilesResult := AStylefiles;
  FGetXSLTFilesResult_Specified := True;
end;

function GetXSLTFilesResponse.GetXSLTFilesResult_Specified(Index: Integer): boolean;
begin
  Result := FGetXSLTFilesResult_Specified;
end;

constructor DownloadXsltResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor DownloadXsltResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FDownloadXsltResult);
  inherited Destroy;
end;

procedure DownloadXsltResponse.SetDownloadXsltResult(Index: Integer; const AStylefiles: Stylefiles);
begin
  FDownloadXsltResult := AStylefiles;
  FDownloadXsltResult_Specified := True;
end;

function DownloadXsltResponse.DownloadXsltResult_Specified(Index: Integer): boolean;
begin
  Result := FDownloadXsltResult_Specified;
end;

constructor UploadXSLTFilesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UpdateXSLTFilesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetXsltByNameResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetXsltByNameResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetXsltByNameResult);
  inherited Destroy;
end;

procedure GetXsltByNameResponse.SetGetXsltByNameResult(Index: Integer; const AStylefiles: Stylefiles);
begin
  FGetXsltByNameResult := AStylefiles;
  FGetXsltByNameResult_Specified := True;
end;

function GetXsltByNameResponse.GetXsltByNameResult_Specified(Index: Integer): boolean;
begin
  Result := FGetXsltByNameResult_Specified;
end;

constructor SetDefaultXsltResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MarkEnvelopeResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  inherited Destroy;
end;

procedure MarkEnvelopeResponse2.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function MarkEnvelopeResponse2.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

constructor MarkEnvelopeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MarkEnvelopeResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FMarkEnvelopeResult);
  inherited Destroy;
end;

procedure MarkEnvelopeResponse.SetMarkEnvelopeResult(Index: Integer; const AMarkEnvelopeResponse2: MarkEnvelopeResponse2);
begin
  FMarkEnvelopeResult := AMarkEnvelopeResponse2;
  FMarkEnvelopeResult_Specified := True;
end;

function MarkEnvelopeResponse.MarkEnvelopeResult_Specified(Index: Integer): boolean;
begin
  Result := FMarkEnvelopeResult_Specified;
end;

constructor SendInvoice.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoice.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendInvoiceRequest);
  inherited Destroy;
end;

procedure SendInvoice.SetSendInvoiceRequest(Index: Integer; const ASendInvoiceRequest: SendInvoiceRequest);
begin
  FSendInvoiceRequest := ASendInvoiceRequest;
  FSendInvoiceRequest_Specified := True;
end;

function SendInvoice.SendInvoiceRequest_Specified(Index: Integer): boolean;
begin
  Result := FSendInvoiceRequest_Specified;
end;

destructor SendInvoiceResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  inherited Destroy;
end;

procedure SendInvoiceResponse2.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function SendInvoiceResponse2.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

constructor SendInvoiceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendInvoiceResult);
  inherited Destroy;
end;

procedure SendInvoiceResponse.SetSendInvoiceResult(Index: Integer; const ASendInvoiceResponse2: SendInvoiceResponse2);
begin
  FSendInvoiceResult := ASendInvoiceResponse2;
  FSendInvoiceResult_Specified := True;
end;

function SendInvoiceResponse.SendInvoiceResult_Specified(Index: Integer): boolean;
begin
  Result := FSendInvoiceResult_Specified;
end;

constructor MarkEnvelope.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor MarkEnvelope.Destroy;
begin
  System.SysUtils.FreeAndNil(FMarkEnvelopeRequest);
  inherited Destroy;
end;

procedure MarkEnvelope.SetMarkEnvelopeRequest(Index: Integer; const AMarkEnvelopeRequest: MarkEnvelopeRequest);
begin
  FMarkEnvelopeRequest := AMarkEnvelopeRequest;
  FMarkEnvelopeRequest_Specified := True;
end;

function MarkEnvelope.MarkEnvelopeRequest_Specified(Index: Integer): boolean;
begin
  Result := FMarkEnvelopeRequest_Specified;
end;

constructor GetApplicationResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetApplicationResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FgetAppRespRequestType);
  inherited Destroy;
end;

procedure GetApplicationResponse.SetgetAppRespRequestType(Index: Integer; const AgetAppRespRequestType: getAppRespRequestType);
begin
  FgetAppRespRequestType := AgetAppRespRequestType;
  FgetAppRespRequestType_Specified := True;
end;

function GetApplicationResponse.getAppRespRequestType_Specified(Index: Integer): boolean;
begin
  Result := FgetAppRespRequestType_Specified;
end;

constructor GetEnvelope.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEnvelope.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetEnvelopeRequest);
  inherited Destroy;
end;

procedure GetEnvelope.SetGetEnvelopeRequest(Index: Integer; const AGetEnvelopeRequest: GetEnvelopeRequest);
begin
  FGetEnvelopeRequest := AGetEnvelopeRequest;
  FGetEnvelopeRequest_Specified := True;
end;

function GetEnvelope.GetEnvelopeRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetEnvelopeRequest_Specified;
end;

constructor GetApplicationResponseResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetApplicationResponseResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetApplicationResponseResult);
  inherited Destroy;
end;

procedure GetApplicationResponseResponse.SetGetApplicationResponseResult(Index: Integer; const AgetAppRespResponseType: getAppRespResponseType);
begin
  FGetApplicationResponseResult := AgetAppRespResponseType;
  FGetApplicationResponseResult_Specified := True;
end;

function GetApplicationResponseResponse.GetApplicationResponseResult_Specified(Index: Integer): boolean;
begin
  Result := FGetApplicationResponseResult_Specified;
end;

constructor GetUserList.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUserList.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetUserListRequest);
  inherited Destroy;
end;

procedure GetUserList.SetGetUserListRequest(Index: Integer; const AGetUserListRequest: GetUserListRequest);
begin
  FGetUserListRequest := AGetUserListRequest;
  FGetUserListRequest_Specified := True;
end;

function GetUserList.GetUserListRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetUserListRequest_Specified;
end;

destructor SendInvoiceResponseWithServerSignResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_RETURN);
  inherited Destroy;
end;

procedure SendInvoiceResponseWithServerSignResponse2.SetREQUEST_RETURN(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FREQUEST_RETURN := AREQUEST_RETURNType;
  FREQUEST_RETURN_Specified := True;
end;

function SendInvoiceResponseWithServerSignResponse2.REQUEST_RETURN_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_RETURN_Specified;
end;

constructor SendInvoiceResponseWithServerSignResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoiceResponseWithServerSignResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendInvoiceResponseWithServerSignResult);
  inherited Destroy;
end;

procedure SendInvoiceResponseWithServerSignResponse.SetSendInvoiceResponseWithServerSignResult(Index: Integer; const ASendInvoiceResponseWithServerSignResponse2: SendInvoiceResponseWithServerSignResponse2);
begin
  FSendInvoiceResponseWithServerSignResult := ASendInvoiceResponseWithServerSignResponse2;
  FSendInvoiceResponseWithServerSignResult_Specified := True;
end;

function SendInvoiceResponseWithServerSignResponse.SendInvoiceResponseWithServerSignResult_Specified(Index: Integer): boolean;
begin
  Result := FSendInvoiceResponseWithServerSignResult_Specified;
end;

constructor CheckUser.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CheckUser.Destroy;
begin
  System.SysUtils.FreeAndNil(FCheckUserRequest);
  inherited Destroy;
end;

procedure CheckUser.SetCheckUserRequest(Index: Integer; const ACheckUserRequest: CheckUserRequest);
begin
  FCheckUserRequest := ACheckUserRequest;
  FCheckUserRequest_Specified := True;
end;

function CheckUser.CheckUserRequest_Specified(Index: Integer): boolean;
begin
  Result := FCheckUserRequest_Specified;
end;

constructor GetUserListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUserListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetUserListResult)-1 do
    System.SysUtils.FreeAndNil(FGetUserListResult[I]);
  System.SetLength(FGetUserListResult, 0);
  inherited Destroy;
end;

procedure GetUserListResponse.SetGetUserListResult(Index: Integer; const AGetUserListResponse2: GetUserListResponse2);
begin
  FGetUserListResult := AGetUserListResponse2;
  FGetUserListResult_Specified := True;
end;

function GetUserListResponse.GetUserListResult_Specified(Index: Integer): boolean;
begin
  Result := FGetUserListResult_Specified;
end;

destructor REQUEST.Destroy;
begin
  System.SysUtils.FreeAndNil(FREQUEST_HEADER);
  inherited Destroy;
end;

procedure REQUEST.SetREQUEST_HEADER(Index: Integer; const AREQUEST_HEADERType: REQUEST_HEADERType);
begin
  FREQUEST_HEADER := AREQUEST_HEADERType;
  FREQUEST_HEADER_Specified := True;
end;

function REQUEST.REQUEST_HEADER_Specified(Index: Integer): boolean;
begin
  Result := FREQUEST_HEADER_Specified;
end;

destructor CheckUserRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FUSER);
  inherited Destroy;
end;

procedure CheckUserRequest.SetUSER(Index: Integer; const AGIBUSER: GIBUSER);
begin
  FUSER := AGIBUSER;
  FUSER_Specified := True;
end;

function CheckUserRequest.USER_Specified(Index: Integer): boolean;
begin
  Result := FUSER_Specified;
end;

destructor UserRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FUSERCONTENT)-1 do
    System.SysUtils.FreeAndNil(FUSERCONTENT[I]);
  System.SetLength(FUSERCONTENT, 0);
  inherited Destroy;
end;

procedure UserRequest.SetUSERCONTENT(Index: Integer; const AArray_Of_USERCONTENT: Array_Of_USERCONTENT);
begin
  FUSERCONTENT := AArray_Of_USERCONTENT;
  FUSERCONTENT_Specified := True;
end;

function UserRequest.USERCONTENT_Specified(Index: Integer): boolean;
begin
  Result := FUSERCONTENT_Specified;
end;

destructor MarkEnvelopeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FMARK);
  inherited Destroy;
end;

procedure MarkEnvelopeRequest.SetMARK(Index: Integer; const AMARK: MARK);
begin
  FMARK := AMARK;
  FMARK_Specified := True;
end;

function MarkEnvelopeRequest.MARK_Specified(Index: Integer): boolean;
begin
  Result := FMARK_Specified;
end;

destructor MarkInvoiceRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FMARK);
  inherited Destroy;
end;

procedure MarkInvoiceRequest.SetMARK(Index: Integer; const AMARK2: MARK2);
begin
  FMARK := AMARK2;
  FMARK_Specified := True;
end;

function MarkInvoiceRequest.MARK_Specified(Index: Integer): boolean;
begin
  Result := FMARK_Specified;
end;

destructor GetInvoiceStatusRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FINVOICE);
  inherited Destroy;
end;

procedure GetInvoiceStatusRequest.SetINVOICE(Index: Integer; const AINVOICE: INVOICE);
begin
  FINVOICE := AINVOICE;
  FINVOICE_Specified := True;
end;

function GetInvoiceStatusRequest.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

destructor GetEnvelopeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FENVELOPE_SEARCH_KEY);
  inherited Destroy;
end;

procedure GetEnvelopeRequest.SetENVELOPE_SEARCH_KEY(Index: Integer; const AENVELOPE_SEARCH_KEY: ENVELOPE_SEARCH_KEY);
begin
  FENVELOPE_SEARCH_KEY := AENVELOPE_SEARCH_KEY;
  FENVELOPE_SEARCH_KEY_Specified := True;
end;

function GetEnvelopeRequest.ENVELOPE_SEARCH_KEY_Specified(Index: Integer): boolean;
begin
  Result := FENVELOPE_SEARCH_KEY_Specified;
end;

procedure GetEnvelopeRequest.SetHEADER_ONLY(Index: Integer; const Astring: string);
begin
  FHEADER_ONLY := Astring;
  FHEADER_ONLY_Specified := True;
end;

function GetEnvelopeRequest.HEADER_ONLY_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_ONLY_Specified;
end;

procedure ENVELOPE.SetINSTANCEIDENTIFIER(Index: Integer; const Astring: string);
begin
  FINSTANCEIDENTIFIER := Astring;
  FINSTANCEIDENTIFIER_Specified := True;
end;

function ENVELOPE.INSTANCEIDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FINSTANCEIDENTIFIER_Specified;
end;

procedure ENVELOPE2.SetINSTANCEIDENTIFIER(Index: Integer; const Astring: string);
begin
  FINSTANCEIDENTIFIER := Astring;
  FINSTANCEIDENTIFIER_Specified := True;
end;

function ENVELOPE2.INSTANCEIDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FINSTANCEIDENTIFIER_Specified;
end;

destructor GetInvoiceCountRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FISSUE_DATE_START);
  System.SysUtils.FreeAndNil(FISSUE_DATE_END);
  System.SysUtils.FreeAndNil(FCDATE_START);
  System.SysUtils.FreeAndNil(FCDATE_END);
  inherited Destroy;
end;

procedure GetInvoiceCountRequest.SetISSUE_DATE_START(Index: Integer; const ATXSDate: TXSDate);
begin
  FISSUE_DATE_START := ATXSDate;
  FISSUE_DATE_START_Specified := True;
end;

function GetInvoiceCountRequest.ISSUE_DATE_START_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_START_Specified;
end;

procedure GetInvoiceCountRequest.SetISSUE_DATE_END(Index: Integer; const ATXSDate: TXSDate);
begin
  FISSUE_DATE_END := ATXSDate;
  FISSUE_DATE_END_Specified := True;
end;

function GetInvoiceCountRequest.ISSUE_DATE_END_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_END_Specified;
end;

procedure GetInvoiceCountRequest.SetCDATE_START(Index: Integer; const ATXSDate: TXSDate);
begin
  FCDATE_START := ATXSDate;
  FCDATE_START_Specified := True;
end;

function GetInvoiceCountRequest.CDATE_START_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_START_Specified;
end;

procedure GetInvoiceCountRequest.SetCDATE_END(Index: Integer; const ATXSDate: TXSDate);
begin
  FCDATE_END := ATXSDate;
  FCDATE_END_Specified := True;
end;

function GetInvoiceCountRequest.CDATE_END_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_END_Specified;
end;

procedure GetInvoiceCountRequest.SetDIRECTION(Index: Integer; const Astring: string);
begin
  FDIRECTION := Astring;
  FDIRECTION_Specified := True;
end;

function GetInvoiceCountRequest.DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FDIRECTION_Specified;
end;

procedure ELEMENT.SetTYPE_(Index: Integer; const Astring: string);
begin
  FTYPE_ := Astring;
  FTYPE__Specified := True;
end;

function ELEMENT.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

procedure ELEMENT.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function ELEMENT.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure CancelDraftInvoiceRequest.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function CancelDraftInvoiceRequest.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure GetInvoiceStatusAllRequest.SetUUID(Index: Integer; const AArray_Of_token: Array_Of_token);
begin
  FUUID := AArray_Of_token;
  FUUID_Specified := True;
end;

function GetInvoiceStatusAllRequest.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

destructor GetInvoiceWithTypeRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FINVOICE_SEARCH_KEY);
  inherited Destroy;
end;

procedure GetInvoiceWithTypeRequest.SetINVOICE_SEARCH_KEY(Index: Integer; const AINVOICE_SEARCH_KEY: INVOICE_SEARCH_KEY);
begin
  FINVOICE_SEARCH_KEY := AINVOICE_SEARCH_KEY;
  FINVOICE_SEARCH_KEY_Specified := True;
end;

function GetInvoiceWithTypeRequest.INVOICE_SEARCH_KEY_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_SEARCH_KEY_Specified;
end;

procedure GetInvoiceWithTypeRequest.SetHEADER_ONLY(Index: Integer; const Astring: string);
begin
  FHEADER_ONLY := Astring;
  FHEADER_ONLY_Specified := True;
end;

function GetInvoiceWithTypeRequest.HEADER_ONLY_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_ONLY_Specified;
end;

destructor GetInvoiceRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FINVOICE_SEARCH_KEY);
  inherited Destroy;
end;

procedure GetInvoiceRequest.SetINVOICE_SEARCH_KEY(Index: Integer; const AINVOICE_SEARCH_KEY2: INVOICE_SEARCH_KEY2);
begin
  FINVOICE_SEARCH_KEY := AINVOICE_SEARCH_KEY2;
  FINVOICE_SEARCH_KEY_Specified := True;
end;

function GetInvoiceRequest.INVOICE_SEARCH_KEY_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_SEARCH_KEY_Specified;
end;

procedure GetInvoiceRequest.SetHEADER_ONLY(Index: Integer; const Astring: string);
begin
  FHEADER_ONLY := Astring;
  FHEADER_ONLY_Specified := True;
end;

function GetInvoiceRequest.HEADER_ONLY_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_ONLY_Specified;
end;

destructor GetUserListBinaryResponse2.Destroy;
begin
  System.SysUtils.FreeAndNil(FCONTENT);
  inherited Destroy;
end;

procedure GetUserListBinaryResponse2.SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FCONTENT := Abase64Binary;
  FCONTENT_Specified := True;
end;

function GetUserListBinaryResponse2.CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FCONTENT_Specified;
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

destructor GetEnvelopeStatusRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FENVELOPE)-1 do
    System.SysUtils.FreeAndNil(FENVELOPE[I]);
  System.SetLength(FENVELOPE, 0);
  inherited Destroy;
end;

procedure GetEnvelopeStatusRequest.SetENVELOPE(Index: Integer; const AArray_Of_ENVELOPE: Array_Of_ENVELOPE);
begin
  FENVELOPE := AArray_Of_ENVELOPE;
  FENVELOPE_Specified := True;
end;

function GetEnvelopeStatusRequest.ENVELOPE_Specified(Index: Integer): boolean;
begin
  Result := FENVELOPE_Specified;
end;

constructor GetEnvelopeStatus.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEnvelopeStatus.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetEnvelopeStatusRequest);
  inherited Destroy;
end;

procedure GetEnvelopeStatus.SetGetEnvelopeStatusRequest(Index: Integer; const AGetEnvelopeStatusRequest: GetEnvelopeStatusRequest);
begin
  FGetEnvelopeStatusRequest := AGetEnvelopeStatusRequest;
  FGetEnvelopeStatusRequest_Specified := True;
end;

function GetEnvelopeStatus.GetEnvelopeStatusRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetEnvelopeStatusRequest_Specified;
end;

constructor GetUserListBinaryResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUserListBinaryResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetUserListBinaryResult);
  inherited Destroy;
end;

procedure GetUserListBinaryResponse.SetGetUserListBinaryResult(Index: Integer; const AGetUserListBinaryResponse2: GetUserListBinaryResponse2);
begin
  FGetUserListBinaryResult := AGetUserListBinaryResponse2;
  FGetUserListBinaryResult_Specified := True;
end;

function GetUserListBinaryResponse.GetUserListBinaryResult_Specified(Index: Integer): boolean;
begin
  Result := FGetUserListBinaryResult_Specified;
end;

constructor GetUserListBinary.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUserListBinary.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetUserListBinaryRequest);
  inherited Destroy;
end;

procedure GetUserListBinary.SetGetUserListBinaryRequest(Index: Integer; const AGetUserListBinaryRequest: GetUserListBinaryRequest);
begin
  FGetUserListBinaryRequest := AGetUserListBinaryRequest;
  FGetUserListBinaryRequest_Specified := True;
end;

function GetUserListBinary.GetUserListBinaryRequest_Specified(Index: Integer): boolean;
begin
  Result := FGetUserListBinaryRequest_Specified;
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

destructor Attachment.Destroy;
begin
  System.SysUtils.FreeAndNil(FEmbeddedDocumentBinaryObject);
  inherited Destroy;
end;

procedure Attachment.SetEmbeddedDocumentBinaryObject(Index: Integer; const AEmbeddedDocumentBinaryObject: EmbeddedDocumentBinaryObject);
begin
  FEmbeddedDocumentBinaryObject := AEmbeddedDocumentBinaryObject;
  FEmbeddedDocumentBinaryObject_Specified := True;
end;

function Attachment.EmbeddedDocumentBinaryObject_Specified(Index: Integer): boolean;
begin
  Result := FEmbeddedDocumentBinaryObject_Specified;
end;

destructor SendInvoiceRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  System.SysUtils.FreeAndNil(FSENDER);
  System.SysUtils.FreeAndNil(FRECEIVER);
  inherited Destroy;
end;

procedure SendInvoiceRequest.SetSENDER(Index: Integer; const ASENDER: SENDER);
begin
  FSENDER := ASENDER;
  FSENDER_Specified := True;
end;

function SendInvoiceRequest.SENDER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_Specified;
end;

procedure SendInvoiceRequest.SetRECEIVER(Index: Integer; const ARECEIVER: RECEIVER);
begin
  FRECEIVER := ARECEIVER;
  FRECEIVER_Specified := True;
end;

function SendInvoiceRequest.RECEIVER_Specified(Index: Integer): boolean;
begin
  Result := FRECEIVER_Specified;
end;

procedure SendInvoiceRequest.SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FINVOICE := AArrayOfINVOICE;
  FINVOICE_Specified := True;
end;

function SendInvoiceRequest.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

constructor GetInvoiceWithTypeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceWithTypeResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetInvoiceWithTypeResult)-1 do
    System.SysUtils.FreeAndNil(FGetInvoiceWithTypeResult[I]);
  System.SetLength(FGetInvoiceWithTypeResult, 0);
  inherited Destroy;
end;

procedure GetInvoiceWithTypeResponse.SetGetInvoiceWithTypeResult(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FGetInvoiceWithTypeResult := AArrayOfINVOICE;
  FGetInvoiceWithTypeResult_Specified := True;
end;

function GetInvoiceWithTypeResponse.GetInvoiceWithTypeResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceWithTypeResult_Specified;
end;

constructor GetInvoiceStatusAllResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceStatusAllResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetInvoiceStatusAllResult)-1 do
    System.SysUtils.FreeAndNil(FGetInvoiceStatusAllResult[I]);
  System.SetLength(FGetInvoiceStatusAllResult, 0);
  inherited Destroy;
end;

procedure GetInvoiceStatusAllResponse.SetGetInvoiceStatusAllResult(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FGetInvoiceStatusAllResult := AArrayOfINVOICE;
  FGetInvoiceStatusAllResult_Specified := True;
end;

function GetInvoiceStatusAllResponse.GetInvoiceStatusAllResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceStatusAllResult_Specified;
end;

destructor LoadInvoiceRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  inherited Destroy;
end;

procedure LoadInvoiceRequest.SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FINVOICE := AArrayOfINVOICE;
  FINVOICE_Specified := True;
end;

function LoadInvoiceRequest.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

constructor GetInvoiceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvoiceResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetInvoiceResult)-1 do
    System.SysUtils.FreeAndNil(FGetInvoiceResult[I]);
  System.SetLength(FGetInvoiceResult, 0);
  inherited Destroy;
end;

procedure GetInvoiceResponse.SetGetInvoiceResult(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FGetInvoiceResult := AArrayOfINVOICE;
  FGetInvoiceResult_Specified := True;
end;

function GetInvoiceResponse.GetInvoiceResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInvoiceResult_Specified;
end;

constructor GetDistrictsWithPlateNumberResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDistrictsWithPlateNumberResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetDistrictsWithPlateNumberResult)-1 do
    System.SysUtils.FreeAndNil(FGetDistrictsWithPlateNumberResult[I]);
  System.SetLength(FGetDistrictsWithPlateNumberResult, 0);
  inherited Destroy;
end;

procedure GetDistrictsWithPlateNumberResponse.SetGetDistrictsWithPlateNumberResult(Index: Integer; const AArrayOfDistrict: ArrayOfDistrict);
begin
  FGetDistrictsWithPlateNumberResult := AArrayOfDistrict;
  FGetDistrictsWithPlateNumberResult_Specified := True;
end;

function GetDistrictsWithPlateNumberResponse.GetDistrictsWithPlateNumberResult_Specified(Index: Integer): boolean;
begin
  Result := FGetDistrictsWithPlateNumberResult_Specified;
end;

constructor GetDistrictsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetDistrictsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetDistrictsResult)-1 do
    System.SysUtils.FreeAndNil(FGetDistrictsResult[I]);
  System.SetLength(FGetDistrictsResult, 0);
  inherited Destroy;
end;

procedure GetDistrictsResponse.SetGetDistrictsResult(Index: Integer; const AArrayOfDistrict: ArrayOfDistrict);
begin
  FGetDistrictsResult := AArrayOfDistrict;
  FGetDistrictsResult_Specified := True;
end;

function GetDistrictsResponse.GetDistrictsResult_Specified(Index: Integer): boolean;
begin
  Result := FGetDistrictsResult_Specified;
end;

constructor CheckUserResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CheckUserResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FCheckUserResult)-1 do
    System.SysUtils.FreeAndNil(FCheckUserResult[I]);
  System.SetLength(FCheckUserResult, 0);
  inherited Destroy;
end;

procedure CheckUserResponse.SetCheckUserResult(Index: Integer; const AArrayOfGIBUSER: ArrayOfGIBUSER);
begin
  FCheckUserResult := AArrayOfGIBUSER;
  FCheckUserResult_Specified := True;
end;

function CheckUserResponse.CheckUserResult_Specified(Index: Integer): boolean;
begin
  Result := FCheckUserResult_Specified;
end;

constructor PrepareInvoiceResponseResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor PrepareInvoiceResponseResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FPrepareInvoiceResponseResult)-1 do
    System.SysUtils.FreeAndNil(FPrepareInvoiceResponseResult[I]);
  System.SetLength(FPrepareInvoiceResponseResult, 0);
  inherited Destroy;
end;

procedure PrepareInvoiceResponseResponse.SetPrepareInvoiceResponseResult(Index: Integer; const AArrayOfBase64Binary: ArrayOfBase64Binary);
begin
  FPrepareInvoiceResponseResult := AArrayOfBase64Binary;
  FPrepareInvoiceResponseResult_Specified := True;
end;

function PrepareInvoiceResponseResponse.PrepareInvoiceResponseResult_Specified(Index: Integer): boolean;
begin
  Result := FPrepareInvoiceResponseResult_Specified;
end;

destructor SendInvoiceResponseRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FAPPRESPONSE)-1 do
    System.SysUtils.FreeAndNil(FAPPRESPONSE[I]);
  System.SetLength(FAPPRESPONSE, 0);
  inherited Destroy;
end;

procedure SendInvoiceResponseRequest.SetAPPRESPONSE(Index: Integer; const AArrayOfBase64Binary: ArrayOfBase64Binary);
begin
  FAPPRESPONSE := AArrayOfBase64Binary;
  FAPPRESPONSE_Specified := True;
end;

function SendInvoiceResponseRequest.APPRESPONSE_Specified(Index: Integer): boolean;
begin
  Result := FAPPRESPONSE_Specified;
end;

constructor GetCitiesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetCitiesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetCitiesResult)-1 do
    System.SysUtils.FreeAndNil(FGetCitiesResult[I]);
  System.SetLength(FGetCitiesResult, 0);
  inherited Destroy;
end;

procedure GetCitiesResponse.SetGetCitiesResult(Index: Integer; const AArrayOfCity: ArrayOfCity);
begin
  FGetCitiesResult := AArrayOfCity;
  FGetCitiesResult_Specified := True;
end;

function GetCitiesResponse.GetCitiesResult_Specified(Index: Integer): boolean;
begin
  Result := FGetCitiesResult_Specified;
end;

constructor ListXSLTFilesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ListXSLTFilesResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FListXSLTFilesResult)-1 do
    System.SysUtils.FreeAndNil(FListXSLTFilesResult[I]);
  System.SetLength(FListXSLTFilesResult, 0);
  inherited Destroy;
end;

procedure ListXSLTFilesResponse.SetListXSLTFilesResult(Index: Integer; const AArrayOfStylefiles: ArrayOfStylefiles);
begin
  FListXSLTFilesResult := AArrayOfStylefiles;
  FListXSLTFilesResult_Specified := True;
end;

function ListXSLTFilesResponse.ListXSLTFilesResult_Specified(Index: Integer): boolean;
begin
  Result := FListXSLTFilesResult_Specified;
end;

destructor GetUserListBinaryRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREGISTER_TIME_START);
  inherited Destroy;
end;

procedure GetUserListBinaryRequest.SetTYPE_(Index: Integer; const ATYPE_: TYPE_);
begin
  FTYPE_ := ATYPE_;
  FTYPE__Specified := True;
end;

function GetUserListBinaryRequest.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

procedure GetUserListBinaryRequest.SetDOCUMENT_TYPE(Index: Integer; const Astring: string);
begin
  FDOCUMENT_TYPE := Astring;
  FDOCUMENT_TYPE_Specified := True;
end;

function GetUserListBinaryRequest.DOCUMENT_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FDOCUMENT_TYPE_Specified;
end;

procedure GetUserListBinaryRequest.SetREGISTER_TIME_START(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FREGISTER_TIME_START := ATXSDateTime;
  FREGISTER_TIME_START_Specified := True;
end;

function GetUserListBinaryRequest.REGISTER_TIME_START_Specified(Index: Integer): boolean;
begin
  Result := FREGISTER_TIME_START_Specified;
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

procedure REQUEST_HEADERType.SetATTRIBUTES(Index: Integer; const AArray_Of_ATTRIBUTESTYPE: Array_Of_ATTRIBUTESTYPE);
begin
  FATTRIBUTES := AArray_Of_ATTRIBUTESTYPE;
  FATTRIBUTES_Specified := True;
end;

function REQUEST_HEADERType.ATTRIBUTES_Specified(Index: Integer): boolean;
begin
  Result := FATTRIBUTES_Specified;
end;

destructor GetUserListRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(FREGISTER_TIME_START);
  inherited Destroy;
end;

procedure GetUserListRequest.SetREGISTER_TIME_START(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FREGISTER_TIME_START := ATXSDateTime;
  FREGISTER_TIME_START_Specified := True;
end;

function GetUserListRequest.REGISTER_TIME_START_Specified(Index: Integer): boolean;
begin
  Result := FREGISTER_TIME_START_Specified;
end;

procedure GetUserListRequest.SetDOCUMENT_TYPE(Index: Integer; const Astring: string);
begin
  FDOCUMENT_TYPE := Astring;
  FDOCUMENT_TYPE_Specified := True;
end;

function GetUserListRequest.DOCUMENT_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FDOCUMENT_TYPE_Specified;
end;

destructor INVOICE.Destroy;
begin
  System.SysUtils.FreeAndNil(FHEADER);
  System.SysUtils.FreeAndNil(FCONTENT);
  inherited Destroy;
end;

procedure INVOICE.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function INVOICE.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure INVOICE.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function INVOICE.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure INVOICE.SetLIST_ID(Index: Integer; const AInteger: Integer);
begin
  FLIST_ID := AInteger;
  FLIST_ID_Specified := True;
end;

function INVOICE.LIST_ID_Specified(Index: Integer): boolean;
begin
  Result := FLIST_ID_Specified;
end;

procedure INVOICE.SetHEADER(Index: Integer; const AHEADER2: HEADER2);
begin
  FHEADER := AHEADER2;
  FHEADER_Specified := True;
end;

function INVOICE.HEADER_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_Specified;
end;

procedure INVOICE.SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FCONTENT := Abase64Binary;
  FCONTENT_Specified := True;
end;

function INVOICE.CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FCONTENT_Specified;
end;

destructor BillingReference.Destroy;
begin
  System.SysUtils.FreeAndNil(FIssueDate);
  inherited Destroy;
end;

procedure BillingReference.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function BillingReference.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure BillingReference.SetDocumentTypeCode(Index: Integer; const Astring: string);
begin
  FDocumentTypeCode := Astring;
  FDocumentTypeCode_Specified := True;
end;

function BillingReference.DocumentTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FDocumentTypeCode_Specified;
end;

procedure BillingReference.SetDocumentType(Index: Integer; const Astring: string);
begin
  FDocumentType := Astring;
  FDocumentType_Specified := True;
end;

function BillingReference.DocumentType_Specified(Index: Integer): boolean;
begin
  Result := FDocumentType_Specified;
end;

destructor AdditionalDocumentReference.Destroy;
begin
  System.SysUtils.FreeAndNil(FAttachment);
  inherited Destroy;
end;

procedure AdditionalDocumentReference.SetAttachment(Index: Integer; const AAttachment: Attachment);
begin
  FAttachment := AAttachment;
  FAttachment_Specified := True;
end;

function AdditionalDocumentReference.Attachment_Specified(Index: Integer): boolean;
begin
  Result := FAttachment_Specified;
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

destructor DespatchDocumentModel.Destroy;
begin
  System.SysUtils.FreeAndNil(FDespatchDate);
  inherited Destroy;
end;

procedure DespatchDocumentModel.SetDespatchNumber(Index: Integer; const Astring: string);
begin
  FDespatchNumber := Astring;
  FDespatchNumber_Specified := True;
end;

function DespatchDocumentModel.DespatchNumber_Specified(Index: Integer): boolean;
begin
  Result := FDespatchNumber_Specified;
end;

procedure EmbeddedDocumentBinaryObject.SetmimeCode(Index: Integer; const Astring: string);
begin
  FmimeCode := Astring;
  FmimeCode_Specified := True;
end;

function EmbeddedDocumentBinaryObject.mimeCode_Specified(Index: Integer): boolean;
begin
  Result := FmimeCode_Specified;
end;

procedure EmbeddedDocumentBinaryObject.SetfileName(Index: Integer; const Astring: string);
begin
  FfileName := Astring;
  FfileName_Specified := True;
end;

function EmbeddedDocumentBinaryObject.fileName_Specified(Index: Integer): boolean;
begin
  Result := FfileName_Specified;
end;

procedure EmbeddedDocumentBinaryObject.SetencodingCode(Index: Integer; const Astring: string);
begin
  FencodingCode := Astring;
  FencodingCode_Specified := True;
end;

function EmbeddedDocumentBinaryObject.encodingCode_Specified(Index: Integer): boolean;
begin
  Result := FencodingCode_Specified;
end;

procedure EmbeddedDocumentBinaryObject.SetcharacterSetCode(Index: Integer; const Astring: string);
begin
  FcharacterSetCode := Astring;
  FcharacterSetCode_Specified := True;
end;

function EmbeddedDocumentBinaryObject.characterSetCode_Specified(Index: Integer): boolean;
begin
  Result := FcharacterSetCode_Specified;
end;

procedure EmbeddedDocumentBinaryObject.SetValue(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FValue := ATByteDynArray;
  FValue_Specified := True;
end;

function EmbeddedDocumentBinaryObject.Value_Specified(Index: Integer): boolean;
begin
  Result := FValue_Specified;
end;

constructor UploadXSLTFiles.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UploadXSLTFiles.Destroy;
begin
  System.SysUtils.FreeAndNil(FstyleFiles);
  inherited Destroy;
end;

procedure UploadXSLTFiles.SetstyleFiles(Index: Integer; const AStylefiles: Stylefiles);
begin
  FstyleFiles := AStylefiles;
  FstyleFiles_Specified := True;
end;

function UploadXSLTFiles.styleFiles_Specified(Index: Integer): boolean;
begin
  Result := FstyleFiles_Specified;
end;

procedure UploadXSLTFiles.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function UploadXSLTFiles.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

destructor MARK.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FENVELOPE)-1 do
    System.SysUtils.FreeAndNil(FENVELOPE[I]);
  System.SetLength(FENVELOPE, 0);
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

procedure MARK.SetENVELOPE(Index: Integer; const AArray_Of_ENVELOPE2: Array_Of_ENVELOPE2);
begin
  FENVELOPE := AArray_Of_ENVELOPE2;
  FENVELOPE_Specified := True;
end;

function MARK.ENVELOPE_Specified(Index: Integer): boolean;
begin
  Result := FENVELOPE_Specified;
end;

procedure getAppRespResponseType.SetapplicationResponse(Index: Integer; const Astring: string);
begin
  FapplicationResponse := Astring;
  FapplicationResponse_Specified := True;
end;

function getAppRespResponseType.applicationResponse_Specified(Index: Integer): boolean;
begin
  Result := FapplicationResponse_Specified;
end;

procedure getAppRespRequestType.SetinstanceIdentifier(Index: Integer; const Astring: string);
begin
  FinstanceIdentifier := Astring;
  FinstanceIdentifier_Specified := True;
end;

function getAppRespRequestType.instanceIdentifier_Specified(Index: Integer): boolean;
begin
  Result := FinstanceIdentifier_Specified;
end;

destructor INVOICE_STATUS.Destroy;
begin
  System.SysUtils.FreeAndNil(FCDATE);
  inherited Destroy;
end;

procedure INVOICE_STATUS.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function INVOICE_STATUS.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure INVOICE_STATUS.SetSTATUS_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FSTATUS_DESCRIPTION := Astring;
  FSTATUS_DESCRIPTION_Specified := True;
end;

function INVOICE_STATUS.STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_DESCRIPTION_Specified;
end;

procedure INVOICE_STATUS.SetGIB_STATUS_CODE(Index: Integer; const AInteger: Integer);
begin
  FGIB_STATUS_CODE := AInteger;
  FGIB_STATUS_CODE_Specified := True;
end;

function INVOICE_STATUS.GIB_STATUS_CODE_Specified(Index: Integer): boolean;
begin
  Result := FGIB_STATUS_CODE_Specified;
end;

procedure INVOICE_STATUS.SetGIB_STATUS_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FGIB_STATUS_DESCRIPTION := Astring;
  FGIB_STATUS_DESCRIPTION_Specified := True;
end;

function INVOICE_STATUS.GIB_STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FGIB_STATUS_DESCRIPTION_Specified;
end;

procedure INVOICE_STATUS.SetRESPONSE_CODE(Index: Integer; const Astring: string);
begin
  FRESPONSE_CODE := Astring;
  FRESPONSE_CODE_Specified := True;
end;

function INVOICE_STATUS.RESPONSE_CODE_Specified(Index: Integer): boolean;
begin
  Result := FRESPONSE_CODE_Specified;
end;

procedure INVOICE_STATUS.SetRESPONSE_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FRESPONSE_DESCRIPTION := Astring;
  FRESPONSE_DESCRIPTION_Specified := True;
end;

function INVOICE_STATUS.RESPONSE_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FRESPONSE_DESCRIPTION_Specified;
end;

procedure INVOICE_STATUS.SetCDATE(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCDATE := ATXSDateTime;
  FCDATE_Specified := True;
end;

function INVOICE_STATUS.CDATE_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_Specified;
end;

procedure INVOICE_STATUS.SetENVELOPE_IDENTIFIER(Index: Integer; const Astring: string);
begin
  FENVELOPE_IDENTIFIER := Astring;
  FENVELOPE_IDENTIFIER_Specified := True;
end;

function INVOICE_STATUS.ENVELOPE_IDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FENVELOPE_IDENTIFIER_Specified;
end;

procedure INVOICE_STATUS.SetGTB_REFNO(Index: Integer; const Astring: string);
begin
  FGTB_REFNO := Astring;
  FGTB_REFNO_Specified := True;
end;

function INVOICE_STATUS.GTB_REFNO_Specified(Index: Integer): boolean;
begin
  Result := FGTB_REFNO_Specified;
end;

procedure INVOICE_STATUS.SetGTB_GCB_TESCILNO(Index: Integer; const Astring: string);
begin
  FGTB_GCB_TESCILNO := Astring;
  FGTB_GCB_TESCILNO_Specified := True;
end;

function INVOICE_STATUS.GTB_GCB_TESCILNO_Specified(Index: Integer): boolean;
begin
  Result := FGTB_GCB_TESCILNO_Specified;
end;

procedure INVOICE_STATUS.SetGTB_FIILI_IHRACAT_TARIHI(Index: Integer; const Astring: string);
begin
  FGTB_FIILI_IHRACAT_TARIHI := Astring;
  FGTB_FIILI_IHRACAT_TARIHI_Specified := True;
end;

function INVOICE_STATUS.GTB_FIILI_IHRACAT_TARIHI_Specified(Index: Integer): boolean;
begin
  Result := FGTB_FIILI_IHRACAT_TARIHI_Specified;
end;

destructor HEADER.Destroy;
begin
  System.SysUtils.FreeAndNil(FDATE);
  inherited Destroy;
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

procedure HEADER.SetFROM(Index: Integer; const Astring: string);
begin
  FFROM := Astring;
  FFROM_Specified := True;
end;

function HEADER.FROM_Specified(Index: Integer): boolean;
begin
  Result := FFROM_Specified;
end;

procedure HEADER.SetTO_(Index: Integer; const Astring: string);
begin
  FTO_ := Astring;
  FTO__Specified := True;
end;

function HEADER.TO__Specified(Index: Integer): boolean;
begin
  Result := FTO__Specified;
end;

procedure HEADER.SetDATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FDATE := ATXSDate;
  FDATE_Specified := True;
end;

function HEADER.DATE_Specified(Index: Integer): boolean;
begin
  Result := FDATE_Specified;
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

procedure HEADER.SetSTATUS_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FSTATUS_DESCRIPTION := Astring;
  FSTATUS_DESCRIPTION_Specified := True;
end;

function HEADER.STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_DESCRIPTION_Specified;
end;

procedure HEADER.SetGIB_STATUS_CODE(Index: Integer; const AInteger: Integer);
begin
  FGIB_STATUS_CODE := AInteger;
  FGIB_STATUS_CODE_Specified := True;
end;

function HEADER.GIB_STATUS_CODE_Specified(Index: Integer): boolean;
begin
  Result := FGIB_STATUS_CODE_Specified;
end;

procedure HEADER.SetGIB_STATUS_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FGIB_STATUS_DESCRIPTION := Astring;
  FGIB_STATUS_DESCRIPTION_Specified := True;
end;

function HEADER.GIB_STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FGIB_STATUS_DESCRIPTION_Specified;
end;

procedure HEADER.SetTYPE_(Index: Integer; const Astring: string);
begin
  FTYPE_ := Astring;
  FTYPE__Specified := True;
end;

function HEADER.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

destructor MARK2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  inherited Destroy;
end;

procedure MARK2.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function MARK2.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

procedure MARK2.SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FINVOICE := AArrayOfINVOICE;
  FINVOICE_Specified := True;
end;

function MARK2.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure USERCONTENT.SetUSERID(Index: Integer; const Astring: string);
begin
  FUSERID := Astring;
  FUSERID_Specified := True;
end;

function USERCONTENT.USERID_Specified(Index: Integer): boolean;
begin
  Result := FUSERID_Specified;
end;

procedure USERCONTENT.SetUSERTYPE(Index: Integer; const AUSERTYPE: USERTYPE);
begin
  FUSERTYPE := AUSERTYPE;
  FUSERTYPE_Specified := True;
end;

function USERCONTENT.USERTYPE_Specified(Index: Integer): boolean;
begin
  Result := FUSERTYPE_Specified;
end;

procedure USERCONTENT.SetSIGNTYPE(Index: Integer; const ASIGNTYPE: SIGNTYPE);
begin
  FSIGNTYPE := ASIGNTYPE;
  FSIGNTYPE_Specified := True;
end;

function USERCONTENT.SIGNTYPE_Specified(Index: Integer): boolean;
begin
  Result := FSIGNTYPE_Specified;
end;

procedure USERCONTENT.SetTYPE_(Index: Integer; const AUSERCONTENTTYPE: USERCONTENTTYPE);
begin
  FTYPE_ := AUSERCONTENTTYPE;
  FTYPE__Specified := True;
end;

function USERCONTENT.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

procedure USERCONTENT.SetALIAS_TYPE(Index: Integer; const Astring: string);
begin
  FALIAS_TYPE := Astring;
  FALIAS_TYPE_Specified := True;
end;

function USERCONTENT.ALIAS_TYPE_Specified(Index: Integer): boolean;
begin
  Result := FALIAS_TYPE_Specified;
end;

procedure LoginRequest.SetUSER_NAME(Index: Integer; const Astring: string);
begin
  FUSER_NAME := Astring;
  FUSER_NAME_Specified := True;
end;

function LoginRequest.USER_NAME_Specified(Index: Integer): boolean;
begin
  Result := FUSER_NAME_Specified;
end;

procedure LoginRequest.SetPASSWORD(Index: Integer; const Astring: string);
begin
  FPASSWORD := Astring;
  FPASSWORD_Specified := True;
end;

function LoginRequest.PASSWORD_Specified(Index: Integer): boolean;
begin
  Result := FPASSWORD_Specified;
end;

procedure SENDER.Setvkn(Index: Integer; const Astring: string);
begin
  Fvkn := Astring;
  Fvkn_Specified := True;
end;

function SENDER.vkn_Specified(Index: Integer): boolean;
begin
  Result := Fvkn_Specified;
end;

procedure SENDER.Setalias(Index: Integer; const Astring: string);
begin
  Falias := Astring;
  Falias_Specified := True;
end;

function SENDER.alias_Specified(Index: Integer): boolean;
begin
  Result := Falias_Specified;
end;

procedure RECEIVER.Setvkn(Index: Integer; const Astring: string);
begin
  Fvkn := Astring;
  Fvkn_Specified := True;
end;

function RECEIVER.vkn_Specified(Index: Integer): boolean;
begin
  Result := Fvkn_Specified;
end;

procedure RECEIVER.Setalias(Index: Integer; const Astring: string);
begin
  Falias := Astring;
  Falias_Specified := True;
end;

function RECEIVER.alias_Specified(Index: Integer): boolean;
begin
  Result := Falias_Specified;
end;

destructor HEADER2.Destroy;
begin
  System.SysUtils.FreeAndNil(FISSUE_DATE);
  System.SysUtils.FreeAndNil(FPAYABLE_AMOUNT);
  System.SysUtils.FreeAndNil(FCDATE);
  inherited Destroy;
end;

procedure HEADER2.SetSENDER(Index: Integer; const Astring: string);
begin
  FSENDER := Astring;
  FSENDER_Specified := True;
end;

function HEADER2.SENDER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_Specified;
end;

procedure HEADER2.SetRECEIVER(Index: Integer; const Astring: string);
begin
  FRECEIVER := Astring;
  FRECEIVER_Specified := True;
end;

function HEADER2.RECEIVER_Specified(Index: Integer): boolean;
begin
  Result := FRECEIVER_Specified;
end;

procedure HEADER2.SetSUPPLIER(Index: Integer; const Astring: string);
begin
  FSUPPLIER := Astring;
  FSUPPLIER_Specified := True;
end;

function HEADER2.SUPPLIER_Specified(Index: Integer): boolean;
begin
  Result := FSUPPLIER_Specified;
end;

procedure HEADER2.SetCUSTOMER(Index: Integer; const Astring: string);
begin
  FCUSTOMER := Astring;
  FCUSTOMER_Specified := True;
end;

function HEADER2.CUSTOMER_Specified(Index: Integer): boolean;
begin
  Result := FCUSTOMER_Specified;
end;

procedure HEADER2.SetISSUE_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FISSUE_DATE := ATXSDate;
  FISSUE_DATE_Specified := True;
end;

function HEADER2.ISSUE_DATE_Specified(Index: Integer): boolean;
begin
  Result := FISSUE_DATE_Specified;
end;

procedure HEADER2.SetPAYABLE_AMOUNT(Index: Integer; const AAmountType: AmountType);
begin
  FPAYABLE_AMOUNT := AAmountType;
  FPAYABLE_AMOUNT_Specified := True;
end;

function HEADER2.PAYABLE_AMOUNT_Specified(Index: Integer): boolean;
begin
  Result := FPAYABLE_AMOUNT_Specified;
end;

procedure HEADER2.SetFROM(Index: Integer; const Astring: string);
begin
  FFROM := Astring;
  FFROM_Specified := True;
end;

function HEADER2.FROM_Specified(Index: Integer): boolean;
begin
  Result := FFROM_Specified;
end;

procedure HEADER2.SetTO_(Index: Integer; const Astring: string);
begin
  FTO_ := Astring;
  FTO__Specified := True;
end;

function HEADER2.TO__Specified(Index: Integer): boolean;
begin
  Result := FTO__Specified;
end;

procedure HEADER2.SetPROFILEID(Index: Integer; const Astring: string);
begin
  FPROFILEID := Astring;
  FPROFILEID_Specified := True;
end;

function HEADER2.PROFILEID_Specified(Index: Integer): boolean;
begin
  Result := FPROFILEID_Specified;
end;

procedure HEADER2.SetINVOICE_TYPE_CODE(Index: Integer; const Astring: string);
begin
  FINVOICE_TYPE_CODE := Astring;
  FINVOICE_TYPE_CODE_Specified := True;
end;

function HEADER2.INVOICE_TYPE_CODE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_TYPE_CODE_Specified;
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

procedure HEADER2.SetSTATUS_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FSTATUS_DESCRIPTION := Astring;
  FSTATUS_DESCRIPTION_Specified := True;
end;

function HEADER2.STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_DESCRIPTION_Specified;
end;

procedure HEADER2.SetGIB_STATUS_CODE(Index: Integer; const AInteger: Integer);
begin
  FGIB_STATUS_CODE := AInteger;
  FGIB_STATUS_CODE_Specified := True;
end;

function HEADER2.GIB_STATUS_CODE_Specified(Index: Integer): boolean;
begin
  Result := FGIB_STATUS_CODE_Specified;
end;

procedure HEADER2.SetGIB_STATUS_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FGIB_STATUS_DESCRIPTION := Astring;
  FGIB_STATUS_DESCRIPTION_Specified := True;
end;

function HEADER2.GIB_STATUS_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FGIB_STATUS_DESCRIPTION_Specified;
end;

procedure HEADER2.SetRESPONSE_CODE(Index: Integer; const Astring: string);
begin
  FRESPONSE_CODE := Astring;
  FRESPONSE_CODE_Specified := True;
end;

function HEADER2.RESPONSE_CODE_Specified(Index: Integer): boolean;
begin
  Result := FRESPONSE_CODE_Specified;
end;

procedure HEADER2.SetRESPONSE_DESCRIPTION(Index: Integer; const Astring: string);
begin
  FRESPONSE_DESCRIPTION := Astring;
  FRESPONSE_DESCRIPTION_Specified := True;
end;

function HEADER2.RESPONSE_DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FRESPONSE_DESCRIPTION_Specified;
end;

procedure HEADER2.SetFILENAME(Index: Integer; const Astring: string);
begin
  FFILENAME := Astring;
  FFILENAME_Specified := True;
end;

function HEADER2.FILENAME_Specified(Index: Integer): boolean;
begin
  Result := FFILENAME_Specified;
end;

procedure HEADER2.SetHASH(Index: Integer; const Astring: string);
begin
  FHASH := Astring;
  FHASH_Specified := True;
end;

function HEADER2.HASH_Specified(Index: Integer): boolean;
begin
  Result := FHASH_Specified;
end;

procedure HEADER2.SetCDATE(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FCDATE := ATXSDateTime;
  FCDATE_Specified := True;
end;

function HEADER2.CDATE_Specified(Index: Integer): boolean;
begin
  Result := FCDATE_Specified;
end;

procedure HEADER2.SetENVELOPE_IDENTIFIER(Index: Integer; const Astring: string);
begin
  FENVELOPE_IDENTIFIER := Astring;
  FENVELOPE_IDENTIFIER_Specified := True;
end;

function HEADER2.ENVELOPE_IDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FENVELOPE_IDENTIFIER_Specified;
end;

constructor GetDistrictsWithPlateNumber.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetDistrictsWithPlateNumber.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function GetDistrictsWithPlateNumber.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

procedure GetDistrictsWithPlateNumber.SetPlateNumber(Index: Integer; const Astring: string);
begin
  FPlateNumber := Astring;
  FPlateNumber_Specified := True;
end;

function GetDistrictsWithPlateNumber.PlateNumber_Specified(Index: Integer): boolean;
begin
  Result := FPlateNumber_Specified;
end;

constructor GetCities.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetCities.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function GetCities.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor GetDistricts.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetDistricts.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function GetDistricts.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor UpdateXSLTFiles.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor UpdateXSLTFiles.Destroy;
begin
  System.SysUtils.FreeAndNil(FxsltFiles);
  inherited Destroy;
end;

procedure UpdateXSLTFiles.SetxsltFiles(Index: Integer; const AStylefiles: Stylefiles);
begin
  FxsltFiles := AStylefiles;
  FxsltFiles_Specified := True;
end;

function UpdateXSLTFiles.xsltFiles_Specified(Index: Integer): boolean;
begin
  Result := FxsltFiles_Specified;
end;

procedure UpdateXSLTFiles.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function UpdateXSLTFiles.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor GetXsltByName.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetXsltByName.SetxsltFilesName(Index: Integer; const Astring: string);
begin
  FxsltFilesName := Astring;
  FxsltFilesName_Specified := True;
end;

function GetXsltByName.xsltFilesName_Specified(Index: Integer): boolean;
begin
  Result := FxsltFilesName_Specified;
end;

procedure GetXsltByName.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function GetXsltByName.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor DownloadXslt.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DownloadXslt.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function DownloadXslt.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor GetXSLTFiles.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetXSLTFiles.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function GetXSLTFiles.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor SetDefaultXslt.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure SetDefaultXslt.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function SetDefaultXslt.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor DeleteXSLTFiles.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure DeleteXSLTFiles.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function DeleteXSLTFiles.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

constructor ListXSLTFiles.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ListXSLTFiles.Settoken(Index: Integer; const Astring: string);
begin
  Ftoken := Astring;
  Ftoken_Specified := True;
end;

function ListXSLTFiles.token_Specified(Index: Integer): boolean;
begin
  Result := Ftoken_Specified;
end;

destructor INVOICE_SEARCH_KEY.Destroy;
begin
  System.SysUtils.FreeAndNil(FSTART_DATE);
  System.SysUtils.FreeAndNil(FEND_DATE);
  System.SysUtils.FreeAndNil(FPAYABLE_AMOUNT);
  inherited Destroy;
end;

procedure INVOICE_SEARCH_KEY.SetLIMIT(Index: Integer; const AInteger: Integer);
begin
  FLIMIT := AInteger;
  FLIMIT_Specified := True;
end;

function INVOICE_SEARCH_KEY.LIMIT_Specified(Index: Integer): boolean;
begin
  Result := FLIMIT_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function INVOICE_SEARCH_KEY.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function INVOICE_SEARCH_KEY.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetEXTERNAL_ID(Index: Integer; const Astring: string);
begin
  FEXTERNAL_ID := Astring;
  FEXTERNAL_ID_Specified := True;
end;

function INVOICE_SEARCH_KEY.EXTERNAL_ID_Specified(Index: Integer): boolean;
begin
  Result := FEXTERNAL_ID_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetTYPE_(Index: Integer; const Astring: string);
begin
  FTYPE_ := Astring;
  FTYPE__Specified := True;
end;

function INVOICE_SEARCH_KEY.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

procedure INVOICE_SEARCH_KEY.SetFROM(Index: Integer; const Astring: string);
begin
  FFROM := Astring;
  FFROM_Specified := True;
end;

function INVOICE_SEARCH_KEY.FROM_Specified(Index: Integer): boolean;
begin
  Result := FFROM_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetTO_(Index: Integer; const Astring: string);
begin
  FTO_ := Astring;
  FTO__Specified := True;
end;

function INVOICE_SEARCH_KEY.TO__Specified(Index: Integer): boolean;
begin
  Result := FTO__Specified;
end;

procedure INVOICE_SEARCH_KEY.SetSTART_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FSTART_DATE := ATXSDate;
  FSTART_DATE_Specified := True;
end;

function INVOICE_SEARCH_KEY.START_DATE_Specified(Index: Integer): boolean;
begin
  Result := FSTART_DATE_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetEND_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FEND_DATE := ATXSDate;
  FEND_DATE_Specified := True;
end;

function INVOICE_SEARCH_KEY.END_DATE_Specified(Index: Integer): boolean;
begin
  Result := FEND_DATE_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetREAD_INCLUDED(Index: Integer; const ABoolean: Boolean);
begin
  FREAD_INCLUDED := ABoolean;
  FREAD_INCLUDED_Specified := True;
end;

function INVOICE_SEARCH_KEY.READ_INCLUDED_Specified(Index: Integer): boolean;
begin
  Result := FREAD_INCLUDED_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetDIRECTION(Index: Integer; const Astring: string);
begin
  FDIRECTION := Astring;
  FDIRECTION_Specified := True;
end;

function INVOICE_SEARCH_KEY.DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FDIRECTION_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetSENDER(Index: Integer; const Astring: string);
begin
  FSENDER := Astring;
  FSENDER_Specified := True;
end;

function INVOICE_SEARCH_KEY.SENDER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetRECEIVER(Index: Integer; const Astring: string);
begin
  FRECEIVER := Astring;
  FRECEIVER_Specified := True;
end;

function INVOICE_SEARCH_KEY.RECEIVER_Specified(Index: Integer): boolean;
begin
  Result := FRECEIVER_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetPAYABLE_AMOUNT(Index: Integer; const AAmountType: AmountType);
begin
  FPAYABLE_AMOUNT := AAmountType;
  FPAYABLE_AMOUNT_Specified := True;
end;

function INVOICE_SEARCH_KEY.PAYABLE_AMOUNT_Specified(Index: Integer): boolean;
begin
  Result := FPAYABLE_AMOUNT_Specified;
end;

procedure INVOICE_SEARCH_KEY.SetDRAFT_FLAG(Index: Integer; const Astring: string);
begin
  FDRAFT_FLAG := Astring;
  FDRAFT_FLAG_Specified := True;
end;

function INVOICE_SEARCH_KEY.DRAFT_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FDRAFT_FLAG_Specified;
end;

destructor ENVELOPE_SEARCH_KEY.Destroy;
begin
  System.SysUtils.FreeAndNil(FSTART_DATE);
  System.SysUtils.FreeAndNil(FEND_DATE);
  System.SysUtils.FreeAndNil(FELEMENT);
  inherited Destroy;
end;

procedure ENVELOPE_SEARCH_KEY.SetLIMIT(Index: Integer; const AInteger: Integer);
begin
  FLIMIT := AInteger;
  FLIMIT_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.LIMIT_Specified(Index: Integer): boolean;
begin
  Result := FLIMIT_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetIDENTIFIER(Index: Integer; const Astring: string);
begin
  FIDENTIFIER := Astring;
  FIDENTIFIER_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.IDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FIDENTIFIER_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetFROM(Index: Integer; const Astring: string);
begin
  FFROM := Astring;
  FFROM_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.FROM_Specified(Index: Integer): boolean;
begin
  Result := FFROM_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetTO_(Index: Integer; const Astring: string);
begin
  FTO_ := Astring;
  FTO__Specified := True;
end;

function ENVELOPE_SEARCH_KEY.TO__Specified(Index: Integer): boolean;
begin
  Result := FTO__Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetSTART_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FSTART_DATE := ATXSDate;
  FSTART_DATE_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.START_DATE_Specified(Index: Integer): boolean;
begin
  Result := FSTART_DATE_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetEND_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FEND_DATE := ATXSDate;
  FEND_DATE_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.END_DATE_Specified(Index: Integer): boolean;
begin
  Result := FEND_DATE_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetREAD_INCLUDED(Index: Integer; const ABoolean: Boolean);
begin
  FREAD_INCLUDED := ABoolean;
  FREAD_INCLUDED_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.READ_INCLUDED_Specified(Index: Integer): boolean;
begin
  Result := FREAD_INCLUDED_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetDIRECTION(Index: Integer; const Astring: string);
begin
  FDIRECTION := Astring;
  FDIRECTION_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FDIRECTION_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetSENDER(Index: Integer; const Astring: string);
begin
  FSENDER := Astring;
  FSENDER_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.SENDER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetRECEIVER(Index: Integer; const Astring: string);
begin
  FRECEIVER := Astring;
  FRECEIVER_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.RECEIVER_Specified(Index: Integer): boolean;
begin
  Result := FRECEIVER_Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetTYPE_(Index: Integer; const Astring: string);
begin
  FTYPE_ := Astring;
  FTYPE__Specified := True;
end;

function ENVELOPE_SEARCH_KEY.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

procedure ENVELOPE_SEARCH_KEY.SetELEMENT(Index: Integer; const AELEMENT: ELEMENT);
begin
  FELEMENT := AELEMENT;
  FELEMENT_Specified := True;
end;

function ENVELOPE_SEARCH_KEY.ELEMENT_Specified(Index: Integer): boolean;
begin
  Result := FELEMENT_Specified;
end;

destructor INVOICE_SEARCH_KEY2.Destroy;
begin
  System.SysUtils.FreeAndNil(FSTART_DATE);
  System.SysUtils.FreeAndNil(FEND_DATE);
  inherited Destroy;
end;

procedure INVOICE_SEARCH_KEY2.SetLIMIT(Index: Integer; const AInteger: Integer);
begin
  FLIMIT := AInteger;
  FLIMIT_Specified := True;
end;

function INVOICE_SEARCH_KEY2.LIMIT_Specified(Index: Integer): boolean;
begin
  Result := FLIMIT_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function INVOICE_SEARCH_KEY2.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function INVOICE_SEARCH_KEY2.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetFROM(Index: Integer; const Astring: string);
begin
  FFROM := Astring;
  FFROM_Specified := True;
end;

function INVOICE_SEARCH_KEY2.FROM_Specified(Index: Integer): boolean;
begin
  Result := FFROM_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetTO_(Index: Integer; const Astring: string);
begin
  FTO_ := Astring;
  FTO__Specified := True;
end;

function INVOICE_SEARCH_KEY2.TO__Specified(Index: Integer): boolean;
begin
  Result := FTO__Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetSTART_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FSTART_DATE := ATXSDate;
  FSTART_DATE_Specified := True;
end;

function INVOICE_SEARCH_KEY2.START_DATE_Specified(Index: Integer): boolean;
begin
  Result := FSTART_DATE_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetEND_DATE(Index: Integer; const ATXSDate: TXSDate);
begin
  FEND_DATE := ATXSDate;
  FEND_DATE_Specified := True;
end;

function INVOICE_SEARCH_KEY2.END_DATE_Specified(Index: Integer): boolean;
begin
  Result := FEND_DATE_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetREAD_INCLUDED(Index: Integer; const ABoolean: Boolean);
begin
  FREAD_INCLUDED := ABoolean;
  FREAD_INCLUDED_Specified := True;
end;

function INVOICE_SEARCH_KEY2.READ_INCLUDED_Specified(Index: Integer): boolean;
begin
  Result := FREAD_INCLUDED_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetDIRECTION(Index: Integer; const Astring: string);
begin
  FDIRECTION := Astring;
  FDIRECTION_Specified := True;
end;

function INVOICE_SEARCH_KEY2.DIRECTION_Specified(Index: Integer): boolean;
begin
  Result := FDIRECTION_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetSENDER(Index: Integer; const Astring: string);
begin
  FSENDER := Astring;
  FSENDER_Specified := True;
end;

function INVOICE_SEARCH_KEY2.SENDER_Specified(Index: Integer): boolean;
begin
  Result := FSENDER_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetRECEIVER(Index: Integer; const Astring: string);
begin
  FRECEIVER := Astring;
  FRECEIVER_Specified := True;
end;

function INVOICE_SEARCH_KEY2.RECEIVER_Specified(Index: Integer): boolean;
begin
  Result := FRECEIVER_Specified;
end;

procedure INVOICE_SEARCH_KEY2.SetDRAFT_FLAG(Index: Integer; const Astring: string);
begin
  FDRAFT_FLAG := Astring;
  FDRAFT_FLAG_Specified := True;
end;

function INVOICE_SEARCH_KEY2.DRAFT_FLAG_Specified(Index: Integer): boolean;
begin
  Result := FDRAFT_FLAG_Specified;
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

destructor QueryParameter.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure QueryParameter.SetParameterName(Index: Integer; const Astring: string);
begin
  FParameterName := Astring;
  FParameterName_Specified := True;
end;

function QueryParameter.ParameterName_Specified(Index: Integer): boolean;
begin
  Result := FParameterName_Specified;
end;

procedure QueryParameter.SetParameterValue(Index: Integer; const Astring: string);
begin
  FParameterValue := Astring;
  FParameterValue_Specified := True;
end;

function QueryParameter.ParameterValue_Specified(Index: Integer): boolean;
begin
  Result := FParameterValue_Specified;
end;

destructor Query.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure Query.SetConnectionString(Index: Integer; const Astring: string);
begin
  FConnectionString := Astring;
  FConnectionString_Specified := True;
end;

function Query.ConnectionString_Specified(Index: Integer): boolean;
begin
  Result := FConnectionString_Specified;
end;

procedure Query.SetInvoiceHeaders(Index: Integer; const Astring: string);
begin
  FInvoiceHeaders := Astring;
  FInvoiceHeaders_Specified := True;
end;

function Query.InvoiceHeaders_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceHeaders_Specified;
end;

procedure Query.SetInvoiceDetails(Index: Integer; const Astring: string);
begin
  FInvoiceDetails := Astring;
  FInvoiceDetails_Specified := True;
end;

function Query.InvoiceDetails_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceDetails_Specified;
end;

procedure Query.SetCustomerPartyDetails(Index: Integer; const Astring: string);
begin
  FCustomerPartyDetails := Astring;
  FCustomerPartyDetails_Specified := True;
end;

function Query.CustomerPartyDetails_Specified(Index: Integer): boolean;
begin
  Result := FCustomerPartyDetails_Specified;
end;

procedure Query.SetInvoiceTaxes(Index: Integer; const Astring: string);
begin
  FInvoiceTaxes := Astring;
  FInvoiceTaxes_Specified := True;
end;

function Query.InvoiceTaxes_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceTaxes_Specified;
end;

procedure Query.SetInvoiceLines(Index: Integer; const Astring: string);
begin
  FInvoiceLines := Astring;
  FInvoiceLines_Specified := True;
end;

function Query.InvoiceLines_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceLines_Specified;
end;

procedure Query.SetInvoiceLineTaxes(Index: Integer; const Astring: string);
begin
  FInvoiceLineTaxes := Astring;
  FInvoiceLineTaxes_Specified := True;
end;

function Query.InvoiceLineTaxes_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceLineTaxes_Specified;
end;

procedure Query.SetInvoiceNotes(Index: Integer; const Astring: string);
begin
  FInvoiceNotes := Astring;
  FInvoiceNotes_Specified := True;
end;

function Query.InvoiceNotes_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceNotes_Specified;
end;

procedure Query.SetInvoiceWithholdingTaxes(Index: Integer; const Astring: string);
begin
  FInvoiceWithholdingTaxes := Astring;
  FInvoiceWithholdingTaxes_Specified := True;
end;

function Query.InvoiceWithholdingTaxes_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceWithholdingTaxes_Specified;
end;

procedure Query.SetInvoiceLineWithholdingTaxes(Index: Integer; const Astring: string);
begin
  FInvoiceLineWithholdingTaxes := Astring;
  FInvoiceLineWithholdingTaxes_Specified := True;
end;

function Query.InvoiceLineWithholdingTaxes_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceLineWithholdingTaxes_Specified;
end;

procedure Query.SetBillingReferences(Index: Integer; const Astring: string);
begin
  FBillingReferences := Astring;
  FBillingReferences_Specified := True;
end;

function Query.BillingReferences_Specified(Index: Integer): boolean;
begin
  Result := FBillingReferences_Specified;
end;

procedure Query.SetUpdateQuery(Index: Integer; const Astring: string);
begin
  FUpdateQuery := Astring;
  FUpdateQuery_Specified := True;
end;

function Query.UpdateQuery_Specified(Index: Integer): boolean;
begin
  Result := FUpdateQuery_Specified;
end;

procedure Query.SetInsideCurrentCheck(Index: Integer; const Astring: string);
begin
  FInsideCurrentCheck := Astring;
  FInsideCurrentCheck_Specified := True;
end;

function Query.InsideCurrentCheck_Specified(Index: Integer): boolean;
begin
  Result := FInsideCurrentCheck_Specified;
end;

procedure Query.SetInsideCurrentAdd(Index: Integer; const Astring: string);
begin
  FInsideCurrentAdd := Astring;
  FInsideCurrentAdd_Specified := True;
end;

function Query.InsideCurrentAdd_Specified(Index: Integer): boolean;
begin
  Result := FInsideCurrentAdd_Specified;
end;

procedure Query.SetInsideStockList(Index: Integer; const Astring: string);
begin
  FInsideStockList := Astring;
  FInsideStockList_Specified := True;
end;

function Query.InsideStockList_Specified(Index: Integer): boolean;
begin
  Result := FInsideStockList_Specified;
end;

procedure Query.SetInsideInvoiceAdd(Index: Integer; const Astring: string);
begin
  FInsideInvoiceAdd := Astring;
  FInsideInvoiceAdd_Specified := True;
end;

function Query.InsideInvoiceAdd_Specified(Index: Integer): boolean;
begin
  Result := FInsideInvoiceAdd_Specified;
end;

procedure Query.SetInsideInvoiceUpdate(Index: Integer; const Astring: string);
begin
  FInsideInvoiceUpdate := Astring;
  FInsideInvoiceUpdate_Specified := True;
end;

function Query.InsideInvoiceUpdate_Specified(Index: Integer): boolean;
begin
  Result := FInsideInvoiceUpdate_Specified;
end;

procedure Query.SetInsideInvoiceLineAdd(Index: Integer; const Astring: string);
begin
  FInsideInvoiceLineAdd := Astring;
  FInsideInvoiceLineAdd_Specified := True;
end;

function Query.InsideInvoiceLineAdd_Specified(Index: Integer): boolean;
begin
  Result := FInsideInvoiceLineAdd_Specified;
end;

destructor City.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure City.SetCityName(Index: Integer; const Astring: string);
begin
  FCityName := Astring;
  FCityName_Specified := True;
end;

function City.CityName_Specified(Index: Integer): boolean;
begin
  Result := FCityName_Specified;
end;

procedure City.SetPlateNo(Index: Integer; const Astring: string);
begin
  FPlateNo := Astring;
  FPlateNo_Specified := True;
end;

function City.PlateNo_Specified(Index: Integer): boolean;
begin
  Result := FPlateNo_Specified;
end;

procedure City.SetPhoneCode(Index: Integer; const Astring: string);
begin
  FPhoneCode := Astring;
  FPhoneCode_Specified := True;
end;

function City.PhoneCode_Specified(Index: Integer): boolean;
begin
  Result := FPhoneCode_Specified;
end;

destructor Stylefiles.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure Stylefiles.SetStyleFilesName(Index: Integer; const Astring: string);
begin
  FStyleFilesName := Astring;
  FStyleFilesName_Specified := True;
end;

function Stylefiles.StyleFilesName_Specified(Index: Integer): boolean;
begin
  Result := FStyleFilesName_Specified;
end;

procedure Stylefiles.SetEarchiveFileName(Index: Integer; const Astring: string);
begin
  FEarchiveFileName := Astring;
  FEarchiveFileName_Specified := True;
end;

function Stylefiles.EarchiveFileName_Specified(Index: Integer): boolean;
begin
  Result := FEarchiveFileName_Specified;
end;

procedure Stylefiles.SetEinvoiceFileName(Index: Integer; const Astring: string);
begin
  FEinvoiceFileName := Astring;
  FEinvoiceFileName_Specified := True;
end;

function Stylefiles.EinvoiceFileName_Specified(Index: Integer): boolean;
begin
  Result := FEinvoiceFileName_Specified;
end;

procedure Stylefiles.SetEarchiveContent(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FEarchiveContent := ATByteDynArray;
  FEarchiveContent_Specified := True;
end;

function Stylefiles.EarchiveContent_Specified(Index: Integer): boolean;
begin
  Result := FEarchiveContent_Specified;
end;

procedure Stylefiles.SetEinvoiceContent(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FEinvoiceContent := ATByteDynArray;
  FEinvoiceContent_Specified := True;
end;

function Stylefiles.EinvoiceContent_Specified(Index: Integer): boolean;
begin
  Result := FEinvoiceContent_Specified;
end;

destructor Serial.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure Serial.SetPrefix(Index: Integer; const Astring: string);
begin
  FPrefix := Astring;
  FPrefix_Specified := True;
end;

function Serial.Prefix_Specified(Index: Integer): boolean;
begin
  Result := FPrefix_Specified;
end;

destructor User.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure User.SetUserName(Index: Integer; const Astring: string);
begin
  FUserName := Astring;
  FUserName_Specified := True;
end;

function User.UserName_Specified(Index: Integer): boolean;
begin
  Result := FUserName_Specified;
end;

procedure User.SetPassword(Index: Integer; const Astring: string);
begin
  FPassword := Astring;
  FPassword_Specified := True;
end;

function User.Password_Specified(Index: Integer): boolean;
begin
  Result := FPassword_Specified;
end;

procedure User.SetFullName(Index: Integer; const Astring: string);
begin
  FFullName := Astring;
  FFullName_Specified := True;
end;

function User.FullName_Specified(Index: Integer): boolean;
begin
  Result := FFullName_Specified;
end;

procedure User.SetEmailAddr(Index: Integer; const Astring: string);
begin
  FEmailAddr := Astring;
  FEmailAddr_Specified := True;
end;

function User.EmailAddr_Specified(Index: Integer): boolean;
begin
  Result := FEmailAddr_Specified;
end;

destructor District.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateDate);
  System.SysUtils.FreeAndNil(FUpdateDate);
  inherited Destroy;
end;

procedure District.SetDistrictName(Index: Integer; const Astring: string);
begin
  FDistrictName := Astring;
  FDistrictName_Specified := True;
end;

function District.DistrictName_Specified(Index: Integer): boolean;
begin
  Result := FDistrictName_Specified;
end;

procedure inside.SetItemnm(Index: Integer; const Astring: string);
begin
  FItemnm := Astring;
  FItemnm_Specified := True;
end;

function inside.Itemnm_Specified(Index: Integer): boolean;
begin
  Result := FItemnm_Specified;
end;

procedure inside.SetTaxId(Index: Integer; const Astring: string);
begin
  FTaxId := Astring;
  FTaxId_Specified := True;
end;

function inside.TaxId_Specified(Index: Integer): boolean;
begin
  Result := FTaxId_Specified;
end;

procedure inside.SetStockCd(Index: Integer; const Astring: string);
begin
  FStockCd := Astring;
  FStockCd_Specified := True;
end;

function inside.StockCd_Specified(Index: Integer): boolean;
begin
  Result := FStockCd_Specified;
end;

procedure inside.SetStockName(Index: Integer; const Astring: string);
begin
  FStockName := Astring;
  FStockName_Specified := True;
end;

function inside.StockName_Specified(Index: Integer): boolean;
begin
  Result := FStockName_Specified;
end;

procedure SendInvoiceRef.SetErpRef(Index: Integer; const Astring: string);
begin
  FErpRef := Astring;
  FErpRef_Specified := True;
end;

function SendInvoiceRef.ErpRef_Specified(Index: Integer): boolean;
begin
  Result := FErpRef_Specified;
end;

procedure SendInvoiceRef.SetGibRef(Index: Integer; const Astring: string);
begin
  FGibRef := Astring;
  FGibRef_Specified := True;
end;

function SendInvoiceRef.GibRef_Specified(Index: Integer): boolean;
begin
  Result := FGibRef_Specified;
end;

procedure Manuelcurrent.SetCompanyName(Index: Integer; const Astring: string);
begin
  FCompanyName := Astring;
  FCompanyName_Specified := True;
end;

function Manuelcurrent.CompanyName_Specified(Index: Integer): boolean;
begin
  Result := FCompanyName_Specified;
end;

procedure Manuelcurrent.SetTaxId(Index: Integer; const Astring: string);
begin
  FTaxId := Astring;
  FTaxId_Specified := True;
end;

function Manuelcurrent.TaxId_Specified(Index: Integer): boolean;
begin
  Result := FTaxId_Specified;
end;

procedure Manuelcurrent.SetTaxoffice(Index: Integer; const Astring: string);
begin
  FTaxoffice := Astring;
  FTaxoffice_Specified := True;
end;

function Manuelcurrent.Taxoffice_Specified(Index: Integer): boolean;
begin
  Result := FTaxoffice_Specified;
end;

procedure Manuelcurrent.SetEmail(Index: Integer; const Astring: string);
begin
  FEmail := Astring;
  FEmail_Specified := True;
end;

function Manuelcurrent.Email_Specified(Index: Integer): boolean;
begin
  Result := FEmail_Specified;
end;

procedure Manuelcurrent.SetAddress(Index: Integer; const Astring: string);
begin
  FAddress := Astring;
  FAddress_Specified := True;
end;

function Manuelcurrent.Address_Specified(Index: Integer): boolean;
begin
  Result := FAddress_Specified;
end;

procedure Manuelcurrent.SetCity(Index: Integer; const Astring: string);
begin
  FCity := Astring;
  FCity_Specified := True;
end;

function Manuelcurrent.City_Specified(Index: Integer): boolean;
begin
  Result := FCity_Specified;
end;

procedure Manuelcurrent.SetSubdevision(Index: Integer; const Astring: string);
begin
  FSubdevision := Astring;
  FSubdevision_Specified := True;
end;

function Manuelcurrent.Subdevision_Specified(Index: Integer): boolean;
begin
  Result := FSubdevision_Specified;
end;

procedure Manuelcurrent.SetTel(Index: Integer; const Astring: string);
begin
  FTel := Astring;
  FTel_Specified := True;
end;

function Manuelcurrent.Tel_Specified(Index: Integer): boolean;
begin
  Result := FTel_Specified;
end;

procedure Manuelcurrent.SetFax(Index: Integer; const Astring: string);
begin
  FFax := Astring;
  FFax_Specified := True;
end;

function Manuelcurrent.Fax_Specified(Index: Integer): boolean;
begin
  Result := FFax_Specified;
end;

procedure Manuelcurrent.SetFirstnm(Index: Integer; const Astring: string);
begin
  FFirstnm := Astring;
  FFirstnm_Specified := True;
end;

function Manuelcurrent.Firstnm_Specified(Index: Integer): boolean;
begin
  Result := FFirstnm_Specified;
end;

procedure Manuelcurrent.SetFamilynm(Index: Integer; const Astring: string);
begin
  FFamilynm := Astring;
  FFamilynm_Specified := True;
end;

function Manuelcurrent.Familynm_Specified(Index: Integer): boolean;
begin
  Result := FFamilynm_Specified;
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

destructor Period.Destroy;
begin
  System.SysUtils.FreeAndNil(FStartDate);
  System.SysUtils.FreeAndNil(FStartTime);
  System.SysUtils.FreeAndNil(FEndDate);
  System.SysUtils.FreeAndNil(FEndTime);
  inherited Destroy;
end;

procedure PartyDetails.SetTaxOrIdNo(Index: Integer; const Astring: string);
begin
  FTaxOrIdNo := Astring;
  FTaxOrIdNo_Specified := True;
end;

function PartyDetails.TaxOrIdNo_Specified(Index: Integer): boolean;
begin
  Result := FTaxOrIdNo_Specified;
end;

procedure PartyDetails.SetGibAlias(Index: Integer; const Astring: string);
begin
  FGibAlias := Astring;
  FGibAlias_Specified := True;
end;

function PartyDetails.GibAlias_Specified(Index: Integer): boolean;
begin
  Result := FGibAlias_Specified;
end;

procedure PartyDetails.SetPartyName(Index: Integer; const Astring: string);
begin
  FPartyName := Astring;
  FPartyName_Specified := True;
end;

function PartyDetails.PartyName_Specified(Index: Integer): boolean;
begin
  Result := FPartyName_Specified;
end;

procedure PartyDetails.SetTaxSchemeName(Index: Integer; const Astring: string);
begin
  FTaxSchemeName := Astring;
  FTaxSchemeName_Specified := True;
end;

function PartyDetails.TaxSchemeName_Specified(Index: Integer): boolean;
begin
  Result := FTaxSchemeName_Specified;
end;

procedure PartyDetails.SetWebSiteURI(Index: Integer; const Astring: string);
begin
  FWebSiteURI := Astring;
  FWebSiteURI_Specified := True;
end;

function PartyDetails.WebSiteURI_Specified(Index: Integer): boolean;
begin
  Result := FWebSiteURI_Specified;
end;

procedure PartyDetails.SetTelephone(Index: Integer; const Astring: string);
begin
  FTelephone := Astring;
  FTelephone_Specified := True;
end;

function PartyDetails.Telephone_Specified(Index: Integer): boolean;
begin
  Result := FTelephone_Specified;
end;

procedure PartyDetails.SetTelefax(Index: Integer; const Astring: string);
begin
  FTelefax := Astring;
  FTelefax_Specified := True;
end;

function PartyDetails.Telefax_Specified(Index: Integer): boolean;
begin
  Result := FTelefax_Specified;
end;

procedure PartyDetails.SetElectronicMail(Index: Integer; const Astring: string);
begin
  FElectronicMail := Astring;
  FElectronicMail_Specified := True;
end;

function PartyDetails.ElectronicMail_Specified(Index: Integer): boolean;
begin
  Result := FElectronicMail_Specified;
end;

procedure PartyDetails.SetCountry(Index: Integer; const Astring: string);
begin
  FCountry := Astring;
  FCountry_Specified := True;
end;

function PartyDetails.Country_Specified(Index: Integer): boolean;
begin
  Result := FCountry_Specified;
end;

procedure PartyDetails.SetCityName(Index: Integer; const Astring: string);
begin
  FCityName := Astring;
  FCityName_Specified := True;
end;

function PartyDetails.CityName_Specified(Index: Integer): boolean;
begin
  Result := FCityName_Specified;
end;

procedure PartyDetails.SetCitySubDivisionName(Index: Integer; const Astring: string);
begin
  FCitySubDivisionName := Astring;
  FCitySubDivisionName_Specified := True;
end;

function PartyDetails.CitySubDivisionName_Specified(Index: Integer): boolean;
begin
  Result := FCitySubDivisionName_Specified;
end;

procedure PartyDetails.SetPostalZone(Index: Integer; const Astring: string);
begin
  FPostalZone := Astring;
  FPostalZone_Specified := True;
end;

function PartyDetails.PostalZone_Specified(Index: Integer): boolean;
begin
  Result := FPostalZone_Specified;
end;

procedure PartyDetails.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function PartyDetails.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure PartyDetails.SetRoom(Index: Integer; const Astring: string);
begin
  FRoom := Astring;
  FRoom_Specified := True;
end;

function PartyDetails.Room_Specified(Index: Integer): boolean;
begin
  Result := FRoom_Specified;
end;

procedure PartyDetails.SetStreetName(Index: Integer; const Astring: string);
begin
  FStreetName := Astring;
  FStreetName_Specified := True;
end;

function PartyDetails.StreetName_Specified(Index: Integer): boolean;
begin
  Result := FStreetName_Specified;
end;

procedure PartyDetails.SetBuildingName(Index: Integer; const Astring: string);
begin
  FBuildingName := Astring;
  FBuildingName_Specified := True;
end;

function PartyDetails.BuildingName_Specified(Index: Integer): boolean;
begin
  Result := FBuildingName_Specified;
end;

procedure PartyDetails.SetBuildingNumber(Index: Integer; const Astring: string);
begin
  FBuildingNumber := Astring;
  FBuildingNumber_Specified := True;
end;

function PartyDetails.BuildingNumber_Specified(Index: Integer): boolean;
begin
  Result := FBuildingNumber_Specified;
end;

procedure PartyDetails.SetFirstName(Index: Integer; const Astring: string);
begin
  FFirstName := Astring;
  FFirstName_Specified := True;
end;

function PartyDetails.FirstName_Specified(Index: Integer): boolean;
begin
  Result := FFirstName_Specified;
end;

procedure PartyDetails.SetFamilyName(Index: Integer; const Astring: string);
begin
  FFamilyName := Astring;
  FFamilyName_Specified := True;
end;

function PartyDetails.FamilyName_Specified(Index: Integer): boolean;
begin
  Result := FFamilyName_Specified;
end;

destructor DeliveryType.Destroy;
begin
  System.SysUtils.FreeAndNil(FPackageQuantity);
  inherited Destroy;
end;

procedure DeliveryType.SetStreetname(Index: Integer; const Astring: string);
begin
  FStreetname := Astring;
  FStreetname_Specified := True;
end;

function DeliveryType.Streetname_Specified(Index: Integer): boolean;
begin
  Result := FStreetname_Specified;
end;

procedure DeliveryType.SetBuildingName(Index: Integer; const Astring: string);
begin
  FBuildingName := Astring;
  FBuildingName_Specified := True;
end;

function DeliveryType.BuildingName_Specified(Index: Integer): boolean;
begin
  Result := FBuildingName_Specified;
end;

procedure DeliveryType.SetBuildingNumber(Index: Integer; const Astring: string);
begin
  FBuildingNumber := Astring;
  FBuildingNumber_Specified := True;
end;

function DeliveryType.BuildingNumber_Specified(Index: Integer): boolean;
begin
  Result := FBuildingNumber_Specified;
end;

procedure DeliveryType.SetSubDevision(Index: Integer; const Astring: string);
begin
  FSubDevision := Astring;
  FSubDevision_Specified := True;
end;

function DeliveryType.SubDevision_Specified(Index: Integer): boolean;
begin
  Result := FSubDevision_Specified;
end;

procedure DeliveryType.SetCityName(Index: Integer; const Astring: string);
begin
  FCityName := Astring;
  FCityName_Specified := True;
end;

function DeliveryType.CityName_Specified(Index: Integer): boolean;
begin
  Result := FCityName_Specified;
end;

procedure DeliveryType.SetPostalZone(Index: Integer; const Astring: string);
begin
  FPostalZone := Astring;
  FPostalZone_Specified := True;
end;

function DeliveryType.PostalZone_Specified(Index: Integer): boolean;
begin
  Result := FPostalZone_Specified;
end;

procedure DeliveryType.SetCountry(Index: Integer; const Astring: string);
begin
  FCountry := Astring;
  FCountry_Specified := True;
end;

function DeliveryType.Country_Specified(Index: Integer): boolean;
begin
  Result := FCountry_Specified;
end;

procedure DeliveryType.SetDeliveryTerms(Index: Integer; const Astring: string);
begin
  FDeliveryTerms := Astring;
  FDeliveryTerms_Specified := True;
end;

function DeliveryType.DeliveryTerms_Specified(Index: Integer): boolean;
begin
  Result := FDeliveryTerms_Specified;
end;

procedure DeliveryType.SetGtipNo(Index: Integer; const Astring: string);
begin
  FGtipNo := Astring;
  FGtipNo_Specified := True;
end;

function DeliveryType.GtipNo_Specified(Index: Integer): boolean;
begin
  Result := FGtipNo_Specified;
end;

procedure DeliveryType.SetTransportModeCode(Index: Integer; const Astring: string);
begin
  FTransportModeCode := Astring;
  FTransportModeCode_Specified := True;
end;

function DeliveryType.TransportModeCode_Specified(Index: Integer): boolean;
begin
  Result := FTransportModeCode_Specified;
end;

procedure DeliveryType.SetPackageNumber(Index: Integer; const Astring: string);
begin
  FPackageNumber := Astring;
  FPackageNumber_Specified := True;
end;

function DeliveryType.PackageNumber_Specified(Index: Integer): boolean;
begin
  Result := FPackageNumber_Specified;
end;

procedure DeliveryType.SetPackageTypeCode(Index: Integer; const Astring: string);
begin
  FPackageTypeCode := Astring;
  FPackageTypeCode_Specified := True;
end;

function DeliveryType.PackageTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FPackageTypeCode_Specified;
end;

destructor WithholdingTax.Destroy;
begin
  System.SysUtils.FreeAndNil(FTaxAmount);
  System.SysUtils.FreeAndNil(FTaxableAmount);
  System.SysUtils.FreeAndNil(FSubTaxAmount);
  System.SysUtils.FreeAndNil(FPercent);
  inherited Destroy;
end;

procedure WithholdingTax.SetTaxTypeCode(Index: Integer; const Astring: string);
begin
  FTaxTypeCode := Astring;
  FTaxTypeCode_Specified := True;
end;

function WithholdingTax.TaxTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FTaxTypeCode_Specified;
end;

destructor InvoiceTax.Destroy;
begin
  System.SysUtils.FreeAndNil(FCalculationSequenceNumeric);
  System.SysUtils.FreeAndNil(FTaxableAmount);
  System.SysUtils.FreeAndNil(FTaxPercent);
  System.SysUtils.FreeAndNil(FTaxAmount);
  System.SysUtils.FreeAndNil(FSubTaxAmount);
  inherited Destroy;
end;

procedure InvoiceTax.SetTaxTypeCode(Index: Integer; const Astring: string);
begin
  FTaxTypeCode := Astring;
  FTaxTypeCode_Specified := True;
end;

function InvoiceTax.TaxTypeCode_Specified(Index: Integer): boolean;
begin
  Result := FTaxTypeCode_Specified;
end;

procedure InvoiceTax.SetName_(Index: Integer; const Astring: string);
begin
  FName_ := Astring;
  FName__Specified := True;
end;

function InvoiceTax.Name__Specified(Index: Integer): boolean;
begin
  Result := FName__Specified;
end;

procedure InvoiceTax.SetTaxExemptionReasonCode(Index: Integer; const Astring: string);
begin
  FTaxExemptionReasonCode := Astring;
  FTaxExemptionReasonCode_Specified := True;
end;

function InvoiceTax.TaxExemptionReasonCode_Specified(Index: Integer): boolean;
begin
  Result := FTaxExemptionReasonCode_Specified;
end;

destructor Manuelinvoice.Destroy;
begin
  System.SysUtils.FreeAndNil(FMiktar);
  System.SysUtils.FreeAndNil(FBirimfiyat);
  System.SysUtils.FreeAndNil(FKdvtutari);
  inherited Destroy;
end;

procedure Manuelinvoice.SetUrunadi(Index: Integer; const Astring: string);
begin
  FUrunadi := Astring;
  FUrunadi_Specified := True;
end;

function Manuelinvoice.Urunadi_Specified(Index: Integer): boolean;
begin
  Result := FUrunadi_Specified;
end;

procedure Manuelinvoice.SetUrunaciklamasi(Index: Integer; const Astring: string);
begin
  FUrunaciklamasi := Astring;
  FUrunaciklamasi_Specified := True;
end;

function Manuelinvoice.Urunaciklamasi_Specified(Index: Integer): boolean;
begin
  Result := FUrunaciklamasi_Specified;
end;

procedure Manuelinvoice.SetBirim(Index: Integer; const Astring: string);
begin
  FBirim := Astring;
  FBirim_Specified := True;
end;

function Manuelinvoice.Birim_Specified(Index: Integer): boolean;
begin
  Result := FBirim_Specified;
end;

destructor AmountType.Destroy;
begin
  System.SysUtils.FreeAndNil(FText);
  inherited Destroy;
end;

procedure AmountType.SetcurrencyID(Index: Integer; const Astring: string);
begin
  FcurrencyID := Astring;
  FcurrencyID_Specified := True;
end;

function AmountType.currencyID_Specified(Index: Integer): boolean;
begin
  Result := FcurrencyID_Specified;
end;

procedure AmountType.SetcurrencyCodeListVersionID(Index: Integer; const Astring: string);
begin
  FcurrencyCodeListVersionID := Astring;
  FcurrencyCodeListVersionID_Specified := True;
end;

function AmountType.currencyCodeListVersionID_Specified(Index: Integer): boolean;
begin
  Result := FcurrencyCodeListVersionID_Specified;
end;

destructor InvoiceLine.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FLineTaxes)-1 do
    System.SysUtils.FreeAndNil(FLineTaxes[I]);
  System.SetLength(FLineTaxes, 0);
  for I := 0 to System.Length(FWithholdingTaxes)-1 do
    System.SysUtils.FreeAndNil(FWithholdingTaxes[I]);
  System.SetLength(FWithholdingTaxes, 0);
  System.SysUtils.FreeAndNil(FInvLineDBRef);
  System.SysUtils.FreeAndNil(FInvoicedQuantity);
  System.SysUtils.FreeAndNil(FPriceAmount);
  System.SysUtils.FreeAndNil(FLineExtensionAmount);
  System.SysUtils.FreeAndNil(FAllowanceBaseAmount);
  System.SysUtils.FreeAndNil(FMultiplierFactorNumeric);
  System.SysUtils.FreeAndNil(FAllowanceAmount);
  System.SysUtils.FreeAndNil(FDeliveryTypeObj);
  inherited Destroy;
end;

procedure InvoiceLine.SetSellersItemID(Index: Integer; const Astring: string);
begin
  FSellersItemID := Astring;
  FSellersItemID_Specified := True;
end;

function InvoiceLine.SellersItemID_Specified(Index: Integer): boolean;
begin
  Result := FSellersItemID_Specified;
end;

procedure InvoiceLine.SetBuyersItemID(Index: Integer; const Astring: string);
begin
  FBuyersItemID := Astring;
  FBuyersItemID_Specified := True;
end;

function InvoiceLine.BuyersItemID_Specified(Index: Integer): boolean;
begin
  Result := FBuyersItemID_Specified;
end;

procedure InvoiceLine.SetManufacturersItemID(Index: Integer; const Astring: string);
begin
  FManufacturersItemID := Astring;
  FManufacturersItemID_Specified := True;
end;

function InvoiceLine.ManufacturersItemID_Specified(Index: Integer): boolean;
begin
  Result := FManufacturersItemID_Specified;
end;

procedure InvoiceLine.SetItemName(Index: Integer; const Astring: string);
begin
  FItemName := Astring;
  FItemName_Specified := True;
end;

function InvoiceLine.ItemName_Specified(Index: Integer): boolean;
begin
  Result := FItemName_Specified;
end;

procedure InvoiceLine.SetBrandName(Index: Integer; const Astring: string);
begin
  FBrandName := Astring;
  FBrandName_Specified := True;
end;

function InvoiceLine.BrandName_Specified(Index: Integer): boolean;
begin
  Result := FBrandName_Specified;
end;

procedure InvoiceLine.SetModelName(Index: Integer; const Astring: string);
begin
  FModelName := Astring;
  FModelName_Specified := True;
end;

function InvoiceLine.ModelName_Specified(Index: Integer): boolean;
begin
  Result := FModelName_Specified;
end;

procedure InvoiceLine.SetItemDescription(Index: Integer; const Astring: string);
begin
  FItemDescription := Astring;
  FItemDescription_Specified := True;
end;

function InvoiceLine.ItemDescription_Specified(Index: Integer): boolean;
begin
  Result := FItemDescription_Specified;
end;

procedure InvoiceLine.SetUnitCode(Index: Integer; const Astring: string);
begin
  FUnitCode := Astring;
  FUnitCode_Specified := True;
end;

function InvoiceLine.UnitCode_Specified(Index: Integer): boolean;
begin
  Result := FUnitCode_Specified;
end;

procedure InvoiceLine.SetCurrency(Index: Integer; const Astring: string);
begin
  FCurrency := Astring;
  FCurrency_Specified := True;
end;

function InvoiceLine.Currency_Specified(Index: Integer): boolean;
begin
  Result := FCurrency_Specified;
end;

procedure InvoiceLine.SetAllowanceChargeReason(Index: Integer; const Astring: string);
begin
  FAllowanceChargeReason := Astring;
  FAllowanceChargeReason_Specified := True;
end;

function InvoiceLine.AllowanceChargeReason_Specified(Index: Integer): boolean;
begin
  Result := FAllowanceChargeReason_Specified;
end;

procedure InvoiceLine.SetNotes(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FNotes := AArrayOfString;
  FNotes_Specified := True;
end;

function InvoiceLine.Notes_Specified(Index: Integer): boolean;
begin
  Result := FNotes_Specified;
end;

procedure InvoiceLine.SetLineTaxes(Index: Integer; const AArrayOfInvoiceTax: ArrayOfInvoiceTax);
begin
  FLineTaxes := AArrayOfInvoiceTax;
  FLineTaxes_Specified := True;
end;

function InvoiceLine.LineTaxes_Specified(Index: Integer): boolean;
begin
  Result := FLineTaxes_Specified;
end;

procedure InvoiceLine.SetWithholdingTaxes(Index: Integer; const AArrayOfWithholdingTax: ArrayOfWithholdingTax);
begin
  FWithholdingTaxes := AArrayOfWithholdingTax;
  FWithholdingTaxes_Specified := True;
end;

function InvoiceLine.WithholdingTaxes_Specified(Index: Integer): boolean;
begin
  Result := FWithholdingTaxes_Specified;
end;

procedure InvoiceLine.SetDeliveryTypeObj(Index: Integer; const ADeliveryType: DeliveryType);
begin
  FDeliveryTypeObj := ADeliveryType;
  FDeliveryTypeObj_Specified := True;
end;

function InvoiceLine.DeliveryTypeObj_Specified(Index: Integer): boolean;
begin
  Result := FDeliveryTypeObj_Specified;
end;

destructor PARKInvoiceType.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FInvoiceTaxes)-1 do
    System.SysUtils.FreeAndNil(FInvoiceTaxes[I]);
  System.SetLength(FInvoiceTaxes, 0);
  for I := 0 to System.Length(FInvoiceLines)-1 do
    System.SysUtils.FreeAndNil(FInvoiceLines[I]);
  System.SetLength(FInvoiceLines, 0);
  for I := 0 to System.Length(FWithholdingTaxes)-1 do
    System.SysUtils.FreeAndNil(FWithholdingTaxes[I]);
  System.SetLength(FWithholdingTaxes, 0);
  for I := 0 to System.Length(FBillingReferences)-1 do
    System.SysUtils.FreeAndNil(FBillingReferences[I]);
  System.SetLength(FBillingReferences, 0);
  for I := 0 to System.Length(FAdditionalDocumentReferences)-1 do
    System.SysUtils.FreeAndNil(FAdditionalDocumentReferences[I]);
  System.SetLength(FAdditionalDocumentReferences, 0);
  for I := 0 to System.Length(FDespatchDocument)-1 do
    System.SysUtils.FreeAndNil(FDespatchDocument[I]);
  System.SetLength(FDespatchDocument, 0);
  System.SysUtils.FreeAndNil(FPricingExchangeRate);
  System.SysUtils.FreeAndNil(FIssueDate);
  System.SysUtils.FreeAndNil(FIssueTime);
  System.SysUtils.FreeAndNil(FAllowanceChargeAmount);
  System.SysUtils.FreeAndNil(FLineExtensionAmount);
  System.SysUtils.FreeAndNil(FAllowanceTotalAmount);
  System.SysUtils.FreeAndNil(FChargeAmount);
  System.SysUtils.FreeAndNil(FTaxExclusiveAmount);
  System.SysUtils.FreeAndNil(FTaxInclusiveAmount);
  System.SysUtils.FreeAndNil(FPayableAmount);
  System.SysUtils.FreeAndNil(FCustomerParty);
  System.SysUtils.FreeAndNil(FSupplierParty);
  System.SysUtils.FreeAndNil(FInvoicePeriod);
  inherited Destroy;
end;

procedure PARKInvoiceType.SetGIBAlias(Index: Integer; const Astring: string);
begin
  FGIBAlias := Astring;
  FGIBAlias_Specified := True;
end;

function PARKInvoiceType.GIBAlias_Specified(Index: Integer): boolean;
begin
  Result := FGIBAlias_Specified;
end;

procedure PARKInvoiceType.SetUUID(Index: Integer; const Astring: string);
begin
  FUUID := Astring;
  FUUID_Specified := True;
end;

function PARKInvoiceType.UUID_Specified(Index: Integer): boolean;
begin
  Result := FUUID_Specified;
end;

procedure PARKInvoiceType.SetTypeCode(Index: Integer; const Astring: string);
begin
  FTypeCode := Astring;
  FTypeCode_Specified := True;
end;

function PARKInvoiceType.TypeCode_Specified(Index: Integer): boolean;
begin
  Result := FTypeCode_Specified;
end;

procedure PARKInvoiceType.SetProfileId(Index: Integer; const Astring: string);
begin
  FProfileId := Astring;
  FProfileId_Specified := True;
end;

function PARKInvoiceType.ProfileId_Specified(Index: Integer): boolean;
begin
  Result := FProfileId_Specified;
end;

procedure PARKInvoiceType.SetID(Index: Integer; const Astring: string);
begin
  FID := Astring;
  FID_Specified := True;
end;

function PARKInvoiceType.ID_Specified(Index: Integer): boolean;
begin
  Result := FID_Specified;
end;

procedure PARKInvoiceType.SetCurrencyCode(Index: Integer; const Astring: string);
begin
  FCurrencyCode := Astring;
  FCurrencyCode_Specified := True;
end;

function PARKInvoiceType.CurrencyCode_Specified(Index: Integer): boolean;
begin
  Result := FCurrencyCode_Specified;
end;

procedure PARKInvoiceType.SetCustomerParty(Index: Integer; const APartyDetails: PartyDetails);
begin
  FCustomerParty := APartyDetails;
  FCustomerParty_Specified := True;
end;

function PARKInvoiceType.CustomerParty_Specified(Index: Integer): boolean;
begin
  Result := FCustomerParty_Specified;
end;

procedure PARKInvoiceType.SetSupplierParty(Index: Integer; const APartyDetails: PartyDetails);
begin
  FSupplierParty := APartyDetails;
  FSupplierParty_Specified := True;
end;

function PARKInvoiceType.SupplierParty_Specified(Index: Integer): boolean;
begin
  Result := FSupplierParty_Specified;
end;

procedure PARKInvoiceType.SetInvoiceTaxes(Index: Integer; const AArrayOfInvoiceTax: ArrayOfInvoiceTax);
begin
  FInvoiceTaxes := AArrayOfInvoiceTax;
  FInvoiceTaxes_Specified := True;
end;

function PARKInvoiceType.InvoiceTaxes_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceTaxes_Specified;
end;

procedure PARKInvoiceType.SetInvoiceLines(Index: Integer; const AArrayOfInvoiceLine: ArrayOfInvoiceLine);
begin
  FInvoiceLines := AArrayOfInvoiceLine;
  FInvoiceLines_Specified := True;
end;

function PARKInvoiceType.InvoiceLines_Specified(Index: Integer): boolean;
begin
  Result := FInvoiceLines_Specified;
end;

procedure PARKInvoiceType.SetNotes(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FNotes := AArrayOfString;
  FNotes_Specified := True;
end;

function PARKInvoiceType.Notes_Specified(Index: Integer): boolean;
begin
  Result := FNotes_Specified;
end;

procedure PARKInvoiceType.SetWithholdingTaxes(Index: Integer; const AArrayOfWithholdingTax: ArrayOfWithholdingTax);
begin
  FWithholdingTaxes := AArrayOfWithholdingTax;
  FWithholdingTaxes_Specified := True;
end;

function PARKInvoiceType.WithholdingTaxes_Specified(Index: Integer): boolean;
begin
  Result := FWithholdingTaxes_Specified;
end;

procedure PARKInvoiceType.SetBillingReferences(Index: Integer; const AArrayOfBillingReference: ArrayOfBillingReference);
begin
  FBillingReferences := AArrayOfBillingReference;
  FBillingReferences_Specified := True;
end;

function PARKInvoiceType.BillingReferences_Specified(Index: Integer): boolean;
begin
  Result := FBillingReferences_Specified;
end;

procedure PARKInvoiceType.SetAdditionalDocumentReferences(Index: Integer; const AArrayOfAdditionalDocumentReference: ArrayOfAdditionalDocumentReference);
begin
  FAdditionalDocumentReferences := AArrayOfAdditionalDocumentReference;
  FAdditionalDocumentReferences_Specified := True;
end;

function PARKInvoiceType.AdditionalDocumentReferences_Specified(Index: Integer): boolean;
begin
  Result := FAdditionalDocumentReferences_Specified;
end;

procedure PARKInvoiceType.SetInvoicePeriod(Index: Integer; const APeriod: Period);
begin
  FInvoicePeriod := APeriod;
  FInvoicePeriod_Specified := True;
end;

function PARKInvoiceType.InvoicePeriod_Specified(Index: Integer): boolean;
begin
  Result := FInvoicePeriod_Specified;
end;

procedure PARKInvoiceType.SetDespatchDocument(Index: Integer; const AArrayOfDespatchDocumentModel: ArrayOfDespatchDocumentModel);
begin
  FDespatchDocument := AArrayOfDespatchDocumentModel;
  FDespatchDocument_Specified := True;
end;

function PARKInvoiceType.DespatchDocument_Specified(Index: Integer): boolean;
begin
  Result := FDespatchDocument_Specified;
end;

destructor SendInvoiceResponseWithServerSignRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  inherited Destroy;
end;

procedure SendInvoiceResponseWithServerSignRequest.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function SendInvoiceResponseWithServerSignRequest.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure SendInvoiceResponseWithServerSignRequest.SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FINVOICE := AArrayOfINVOICE;
  FINVOICE_Specified := True;
end;

function SendInvoiceResponseWithServerSignRequest.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure SendInvoiceResponseWithServerSignRequest.SetDESCRIPTION(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FDESCRIPTION := AArrayOfString;
  FDESCRIPTION_Specified := True;
end;

function SendInvoiceResponseWithServerSignRequest.DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FDESCRIPTION_Specified;
end;

destructor PrepareInvoiceResponseRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FINVOICE)-1 do
    System.SysUtils.FreeAndNil(FINVOICE[I]);
  System.SetLength(FINVOICE, 0);
  inherited Destroy;
end;

procedure PrepareInvoiceResponseRequest.SetSTATUS(Index: Integer; const Astring: string);
begin
  FSTATUS := Astring;
  FSTATUS_Specified := True;
end;

function PrepareInvoiceResponseRequest.STATUS_Specified(Index: Integer): boolean;
begin
  Result := FSTATUS_Specified;
end;

procedure PrepareInvoiceResponseRequest.SetINVOICE(Index: Integer; const AArrayOfINVOICE: ArrayOfINVOICE);
begin
  FINVOICE := AArrayOfINVOICE;
  FINVOICE_Specified := True;
end;

function PrepareInvoiceResponseRequest.INVOICE_Specified(Index: Integer): boolean;
begin
  Result := FINVOICE_Specified;
end;

procedure PrepareInvoiceResponseRequest.SetDESCRIPTION(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FDESCRIPTION := AArrayOfString;
  FDESCRIPTION_Specified := True;
end;

function PrepareInvoiceResponseRequest.DESCRIPTION_Specified(Index: Integer): boolean;
begin
  Result := FDESCRIPTION_Specified;
end;

constructor CreateInsideStock.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateInsideStock.Destroy;
begin
  System.SysUtils.FreeAndNil(FInsideStock);
  inherited Destroy;
end;

procedure CreateInsideStock.SetInsideStock(Index: Integer; const Ainside: inside);
begin
  FInsideStock := Ainside;
  FInsideStock_Specified := True;
end;

function CreateInsideStock.InsideStock_Specified(Index: Integer): boolean;
begin
  Result := FInsideStock_Specified;
end;

procedure CreateInsideStock.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function CreateInsideStock.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetManuelStockAllResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetManuelStockAllResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetManuelStockAllResult)-1 do
    System.SysUtils.FreeAndNil(FGetManuelStockAllResult[I]);
  System.SetLength(FGetManuelStockAllResult, 0);
  inherited Destroy;
end;

procedure GetManuelStockAllResponse.SetGetManuelStockAllResult(Index: Integer; const AArrayOfManuelinvoice: ArrayOfManuelinvoice);
begin
  FGetManuelStockAllResult := AArrayOfManuelinvoice;
  FGetManuelStockAllResult_Specified := True;
end;

function GetManuelStockAllResponse.GetManuelStockAllResult_Specified(Index: Integer): boolean;
begin
  Result := FGetManuelStockAllResult_Specified;
end;

constructor GetManuelStockAll.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetManuelStockAll.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetManuelStockAll.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor CreateInsideStockResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetInsideStockInvoiceResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInsideStockInvoiceResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInsideStockInvoiceResult);
  inherited Destroy;
end;

procedure GetInsideStockInvoiceResponse.SetGetInsideStockInvoiceResult(Index: Integer; const Ainside: inside);
begin
  FGetInsideStockInvoiceResult := Ainside;
  FGetInsideStockInvoiceResult_Specified := True;
end;

function GetInsideStockInvoiceResponse.GetInsideStockInvoiceResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInsideStockInvoiceResult_Specified;
end;

constructor GetInsideStockInvoice.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetInsideStockInvoice.SetItemName(Index: Integer; const Astring: string);
begin
  FItemName := Astring;
  FItemName_Specified := True;
end;

function GetInsideStockInvoice.ItemName_Specified(Index: Integer): boolean;
begin
  Result := FItemName_Specified;
end;

procedure GetInsideStockInvoice.SetTaxId(Index: Integer; const Astring: string);
begin
  FTaxId := Astring;
  FTaxId_Specified := True;
end;

function GetInsideStockInvoice.TaxId_Specified(Index: Integer): boolean;
begin
  Result := FTaxId_Specified;
end;

procedure GetInsideStockInvoice.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetInsideStockInvoice.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor CreateManuelCurrentResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor CreateManuelCurrent.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateManuelCurrent.Destroy;
begin
  System.SysUtils.FreeAndNil(FCurrent);
  inherited Destroy;
end;

procedure CreateManuelCurrent.SetCurrent(Index: Integer; const AManuelcurrent: Manuelcurrent);
begin
  FCurrent := AManuelcurrent;
  FCurrent_Specified := True;
end;

function CreateManuelCurrent.Current_Specified(Index: Integer): boolean;
begin
  Result := FCurrent_Specified;
end;

procedure CreateManuelCurrent.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function CreateManuelCurrent.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor SendInvoiceRefAddResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetManuelCurrentAll.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetManuelCurrentAll.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetManuelCurrentAll.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor CreateManuelStockResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor CreateManuelStock.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateManuelStock.Destroy;
begin
  System.SysUtils.FreeAndNil(FStock);
  inherited Destroy;
end;

procedure CreateManuelStock.SetStock(Index: Integer; const AManuelinvoice: Manuelinvoice);
begin
  FStock := AManuelinvoice;
  FStock_Specified := True;
end;

function CreateManuelStock.Stock_Specified(Index: Integer): boolean;
begin
  Result := FStock_Specified;
end;

procedure CreateManuelStock.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function CreateManuelStock.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetManuelCurrentAllResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetManuelCurrentAllResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetManuelCurrentAllResult)-1 do
    System.SysUtils.FreeAndNil(FGetManuelCurrentAllResult[I]);
  System.SetLength(FGetManuelCurrentAllResult, 0);
  inherited Destroy;
end;

procedure GetManuelCurrentAllResponse.SetGetManuelCurrentAllResult(Index: Integer; const AArrayOfManuelcurrent: ArrayOfManuelcurrent);
begin
  FGetManuelCurrentAllResult := AArrayOfManuelcurrent;
  FGetManuelCurrentAllResult_Specified := True;
end;

function GetManuelCurrentAllResponse.GetManuelCurrentAllResult_Specified(Index: Integer): boolean;
begin
  Result := FGetManuelCurrentAllResult_Specified;
end;

constructor GetSerialListResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSerialListResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetSerialListResult)-1 do
    System.SysUtils.FreeAndNil(FGetSerialListResult[I]);
  System.SetLength(FGetSerialListResult, 0);
  inherited Destroy;
end;

procedure GetSerialListResponse.SetGetSerialListResult(Index: Integer; const AArrayOfSerial: ArrayOfSerial);
begin
  FGetSerialListResult := AArrayOfSerial;
  FGetSerialListResult_Specified := True;
end;

function GetSerialListResponse.GetSerialListResult_Specified(Index: Integer): boolean;
begin
  Result := FGetSerialListResult_Specified;
end;

constructor UpdateSerialWithNewInIdResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor UpdateSerialResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor GetUsersByCustomer.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetUsersByCustomer.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetUsersByCustomer.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetLoginCustomerResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetLoginCustomerResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetLoginCustomerResult);
  inherited Destroy;
end;

procedure GetLoginCustomerResponse.SetGetLoginCustomerResult(Index: Integer; const ACustomer: Customer);
begin
  FGetLoginCustomerResult := ACustomer;
  FGetLoginCustomerResult_Specified := True;
end;

function GetLoginCustomerResponse.GetLoginCustomerResult_Specified(Index: Integer): boolean;
begin
  Result := FGetLoginCustomerResult_Specified;
end;

constructor GetLoginCustomer.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetLoginCustomer.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetLoginCustomer.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetUsersByCustomerResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetUsersByCustomerResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetUsersByCustomerResult)-1 do
    System.SysUtils.FreeAndNil(FGetUsersByCustomerResult[I]);
  System.SetLength(FGetUsersByCustomerResult, 0);
  inherited Destroy;
end;

procedure GetUsersByCustomerResponse.SetGetUsersByCustomerResult(Index: Integer; const AArrayOfUser: ArrayOfUser);
begin
  FGetUsersByCustomerResult := AArrayOfUser;
  FGetUsersByCustomerResult_Specified := True;
end;

function GetUsersByCustomerResponse.GetUsersByCustomerResult_Specified(Index: Integer): boolean;
begin
  Result := FGetUsersByCustomerResult_Specified;
end;

constructor CreateSerialResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateSerialResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FCreateSerialResult);
  inherited Destroy;
end;

procedure CreateSerialResponse.SetCreateSerialResult(Index: Integer; const ASerial: Serial);
begin
  FCreateSerialResult := ASerial;
  FCreateSerialResult_Specified := True;
end;

function CreateSerialResponse.CreateSerialResult_Specified(Index: Integer): boolean;
begin
  Result := FCreateSerialResult_Specified;
end;

constructor CreateSerial.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor CreateSerial.Destroy;
begin
  System.SysUtils.FreeAndNil(FserialObj);
  inherited Destroy;
end;

procedure CreateSerial.SetserialObj(Index: Integer; const ASerial: Serial);
begin
  FserialObj := ASerial;
  FserialObj_Specified := True;
end;

function CreateSerial.serialObj_Specified(Index: Integer): boolean;
begin
  Result := FserialObj_Specified;
end;

procedure CreateSerial.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function CreateSerial.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetSerialResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetSerialResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetSerialResult);
  inherited Destroy;
end;

procedure GetSerialResponse.SetGetSerialResult(Index: Integer; const ASerial: Serial);
begin
  FGetSerialResult := ASerial;
  FGetSerialResult_Specified := True;
end;

function GetSerialResponse.GetSerialResult_Specified(Index: Integer): boolean;
begin
  Result := FGetSerialResult_Specified;
end;

constructor GetNextSerialStringResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetNextSerialStringResponse.SetGetNextSerialStringResult(Index: Integer; const Astring: string);
begin
  FGetNextSerialStringResult := Astring;
  FGetNextSerialStringResult_Specified := True;
end;

function GetNextSerialStringResponse.GetNextSerialStringResult_Specified(Index: Integer): boolean;
begin
  Result := FGetNextSerialStringResult_Specified;
end;

constructor GetNextSerialString.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetNextSerialString.Destroy;
begin
  System.SysUtils.FreeAndNil(FserialObj);
  inherited Destroy;
end;

procedure GetNextSerialString.SetserialObj(Index: Integer; const ASerial: Serial);
begin
  FserialObj := ASerial;
  FserialObj_Specified := True;
end;

function GetNextSerialString.serialObj_Specified(Index: Integer): boolean;
begin
  Result := FserialObj_Specified;
end;

procedure GetNextSerialString.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetNextSerialString.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor SendInvoiceRefAdd.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendInvoiceRefAdd.Destroy;
begin
  System.SysUtils.FreeAndNil(FsendInvoice);
  inherited Destroy;
end;

procedure SendInvoiceRefAdd.SetsendInvoice(Index: Integer; const ASendInvoiceRef: SendInvoiceRef);
begin
  FsendInvoice := ASendInvoiceRef;
  FsendInvoice_Specified := True;
end;

function SendInvoiceRefAdd.sendInvoice_Specified(Index: Integer): boolean;
begin
  Result := FsendInvoice_Specified;
end;

procedure SendInvoiceRefAdd.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function SendInvoiceRefAdd.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor LogoutResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor Logout.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure Logout.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function Logout.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor LoginWithTaxOrIdNoResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LoginWithTaxOrIdNoResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FLoginWithTaxOrIdNoResult);
  inherited Destroy;
end;

procedure LoginWithTaxOrIdNoResponse.SetLoginWithTaxOrIdNoResult(Index: Integer; const ALoginRes: LoginRes);
begin
  FLoginWithTaxOrIdNoResult := ALoginRes;
  FLoginWithTaxOrIdNoResult_Specified := True;
end;

function LoginWithTaxOrIdNoResponse.LoginWithTaxOrIdNoResult_Specified(Index: Integer): boolean;
begin
  Result := FLoginWithTaxOrIdNoResult_Specified;
end;

constructor GetInvQueries.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetInvQueries.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetInvQueries.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor InvQueriesInsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor InvQueriesIns.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor InvQueriesIns.Destroy;
begin
  System.SysUtils.FreeAndNil(Fquery);
  inherited Destroy;
end;

procedure InvQueriesIns.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function InvQueriesIns.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure InvQueriesIns.Setquery(Index: Integer; const AQuery: Query);
begin
  Fquery := AQuery;
  Fquery_Specified := True;
end;

function InvQueriesIns.query_Specified(Index: Integer): boolean;
begin
  Result := Fquery_Specified;
end;

constructor GetInvQueriesResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvQueriesResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FGetInvQueriesResult);
  inherited Destroy;
end;

procedure GetInvQueriesResponse.SetGetInvQueriesResult(Index: Integer; const AQuery: Query);
begin
  FGetInvQueriesResult := AQuery;
  FGetInvQueriesResult_Specified := True;
end;

function GetInvQueriesResponse.GetInvQueriesResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInvQueriesResult_Specified;
end;

destructor ENVELOPE3.Destroy;
begin
  System.SysUtils.FreeAndNil(FHEADER);
  System.SysUtils.FreeAndNil(FCONTENT);
  inherited Destroy;
end;

procedure ENVELOPE3.SetINSTANCEIDENTIFIER(Index: Integer; const Astring: string);
begin
  FINSTANCEIDENTIFIER := Astring;
  FINSTANCEIDENTIFIER_Specified := True;
end;

function ENVELOPE3.INSTANCEIDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FINSTANCEIDENTIFIER_Specified;
end;

procedure ENVELOPE3.SetHEADER(Index: Integer; const AHEADER: HEADER);
begin
  FHEADER := AHEADER;
  FHEADER_Specified := True;
end;

function ENVELOPE3.HEADER_Specified(Index: Integer): boolean;
begin
  Result := FHEADER_Specified;
end;

procedure ENVELOPE3.SetCONTENT(Index: Integer; const Abase64Binary: base64Binary);
begin
  FCONTENT := Abase64Binary;
  FCONTENT_Specified := True;
end;

function ENVELOPE3.CONTENT_Specified(Index: Integer): boolean;
begin
  Result := FCONTENT_Specified;
end;

constructor GetEnvelopeStatusResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEnvelopeStatusResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetEnvelopeStatusResult)-1 do
    System.SysUtils.FreeAndNil(FGetEnvelopeStatusResult[I]);
  System.SetLength(FGetEnvelopeStatusResult, 0);
  inherited Destroy;
end;

procedure GetEnvelopeStatusResponse.SetGetEnvelopeStatusResult(Index: Integer; const AArrayOfENVELOPE: ArrayOfENVELOPE);
begin
  FGetEnvelopeStatusResult := AArrayOfENVELOPE;
  FGetEnvelopeStatusResult_Specified := True;
end;

function GetEnvelopeStatusResponse.GetEnvelopeStatusResult_Specified(Index: Integer): boolean;
begin
  Result := FGetEnvelopeStatusResult_Specified;
end;

constructor GetEnvelopeResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetEnvelopeResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetEnvelopeResult)-1 do
    System.SysUtils.FreeAndNil(FGetEnvelopeResult[I]);
  System.SetLength(FGetEnvelopeResult, 0);
  inherited Destroy;
end;

procedure GetEnvelopeResponse.SetGetEnvelopeResult(Index: Integer; const AArrayOfENVELOPE: ArrayOfENVELOPE);
begin
  FGetEnvelopeResult := AArrayOfENVELOPE;
  FGetEnvelopeResult_Specified := True;
end;

function GetEnvelopeResponse.GetEnvelopeResult_Specified(Index: Integer): boolean;
begin
  Result := FGetEnvelopeResult_Specified;
end;

procedure GIBUSER.SetIDENTIFIER(Index: Integer; const Astring: string);
begin
  FIDENTIFIER := Astring;
  FIDENTIFIER_Specified := True;
end;

function GIBUSER.IDENTIFIER_Specified(Index: Integer): boolean;
begin
  Result := FIDENTIFIER_Specified;
end;

procedure GIBUSER.SetALIAS(Index: Integer; const Astring: string);
begin
  FALIAS := Astring;
  FALIAS_Specified := True;
end;

function GIBUSER.ALIAS_Specified(Index: Integer): boolean;
begin
  Result := FALIAS_Specified;
end;

procedure GIBUSER.SetTITLE(Index: Integer; const Astring: string);
begin
  FTITLE := Astring;
  FTITLE_Specified := True;
end;

function GIBUSER.TITLE_Specified(Index: Integer): boolean;
begin
  Result := FTITLE_Specified;
end;

procedure GIBUSER.SetTYPE_(Index: Integer; const Astring: string);
begin
  FTYPE_ := Astring;
  FTYPE__Specified := True;
end;

function GIBUSER.TYPE__Specified(Index: Integer): boolean;
begin
  Result := FTYPE__Specified;
end;

procedure GIBUSER.SetREGISTER_TIME(Index: Integer; const Astring: string);
begin
  FREGISTER_TIME := Astring;
  FREGISTER_TIME_Specified := True;
end;

function GIBUSER.REGISTER_TIME_Specified(Index: Integer): boolean;
begin
  Result := FREGISTER_TIME_Specified;
end;

procedure GIBUSER.SetUNIT_(Index: Integer; const Astring: string);
begin
  FUNIT_ := Astring;
  FUNIT__Specified := True;
end;

function GIBUSER.UNIT__Specified(Index: Integer): boolean;
begin
  Result := FUNIT__Specified;
end;

procedure GIBUSER.SetALIAS_CREATION_TIME(Index: Integer; const Astring: string);
begin
  FALIAS_CREATION_TIME := Astring;
  FALIAS_CREATION_TIME_Specified := True;
end;

function GIBUSER.ALIAS_CREATION_TIME_Specified(Index: Integer): boolean;
begin
  Result := FALIAS_CREATION_TIME_Specified;
end;

constructor UpdateSerial.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure UpdateSerial.Setprefix(Index: Integer; const Astring: string);
begin
  Fprefix := Astring;
  Fprefix_Specified := True;
end;

function UpdateSerial.prefix_Specified(Index: Integer): boolean;
begin
  Result := Fprefix_Specified;
end;

procedure UpdateSerial.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function UpdateSerial.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetSerial.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetSerial.Setprefix(Index: Integer; const Astring: string);
begin
  Fprefix := Astring;
  Fprefix_Specified := True;
end;

function GetSerial.prefix_Specified(Index: Integer): boolean;
begin
  Result := Fprefix_Specified;
end;

procedure GetSerial.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetSerial.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor UpdateSerialWithNewInId.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure UpdateSerialWithNewInId.SetnewSerialId(Index: Integer; const Astring: string);
begin
  FnewSerialId := Astring;
  FnewSerialId_Specified := True;
end;

function UpdateSerialWithNewInId.newSerialId_Specified(Index: Integer): boolean;
begin
  Result := FnewSerialId_Specified;
end;

procedure UpdateSerialWithNewInId.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function UpdateSerialWithNewInId.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GetSerialList.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetSerialList.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetSerialList.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor LoginWithTaxOrIdNo.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure LoginWithTaxOrIdNo.SetuserName(Index: Integer; const Astring: string);
begin
  FuserName := Astring;
  FuserName_Specified := True;
end;

function LoginWithTaxOrIdNo.userName_Specified(Index: Integer): boolean;
begin
  Result := FuserName_Specified;
end;

procedure LoginWithTaxOrIdNo.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function LoginWithTaxOrIdNo.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

procedure LoginWithTaxOrIdNo.SettaxOrIdNo(Index: Integer; const Astring: string);
begin
  FtaxOrIdNo := Astring;
  FtaxOrIdNo_Specified := True;
end;

function LoginWithTaxOrIdNo.taxOrIdNo_Specified(Index: Integer): boolean;
begin
  Result := FtaxOrIdNo_Specified;
end;

procedure LoginWithTaxOrIdNo.SetbatchId(Index: Integer; const Astring: string);
begin
  FbatchId := Astring;
  FbatchId_Specified := True;
end;

function LoginWithTaxOrIdNo.batchId_Specified(Index: Integer): boolean;
begin
  Result := FbatchId_Specified;
end;

constructor LoginResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor LoginResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FLoginResult);
  inherited Destroy;
end;

procedure LoginResponse.SetLoginResult(Index: Integer; const ALoginRes: LoginRes);
begin
  FLoginResult := ALoginRes;
  FLoginResult_Specified := True;
end;

function LoginResponse.LoginResult_Specified(Index: Integer): boolean;
begin
  Result := FLoginResult_Specified;
end;

constructor Login.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure Login.SetuserName(Index: Integer; const Astring: string);
begin
  FuserName := Astring;
  FuserName_Specified := True;
end;

function Login.userName_Specified(Index: Integer): boolean;
begin
  Result := FuserName_Specified;
end;

procedure Login.Setpassword(Index: Integer; const Astring: string);
begin
  Fpassword := Astring;
  Fpassword_Specified := True;
end;

function Login.password_Specified(Index: Integer): boolean;
begin
  Result := Fpassword_Specified;
end;

constructor GetInvQueryParams.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GetInvQueryParams.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GetInvQueryParams.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor PARKInvoiceObjectToUblTextResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure PARKInvoiceObjectToUblTextResponse.SetPARKInvoiceObjectToUblTextResult(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FPARKInvoiceObjectToUblTextResult := ATByteDynArray;
  FPARKInvoiceObjectToUblTextResult_Specified := True;
end;

function PARKInvoiceObjectToUblTextResponse.PARKInvoiceObjectToUblTextResult_Specified(Index: Integer): boolean;
begin
  Result := FPARKInvoiceObjectToUblTextResult_Specified;
end;

constructor PARKInvoiceObjectToUblText.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor PARKInvoiceObjectToUblText.Destroy;
begin
  System.SysUtils.FreeAndNil(FinvoiceObj);
  inherited Destroy;
end;

procedure PARKInvoiceObjectToUblText.SetinvoiceObj(Index: Integer; const APARKInvoiceType: PARKInvoiceType);
begin
  FinvoiceObj := APARKInvoiceType;
  FinvoiceObj_Specified := True;
end;

function PARKInvoiceObjectToUblText.invoiceObj_Specified(Index: Integer): boolean;
begin
  Result := FinvoiceObj_Specified;
end;

procedure PARKInvoiceObjectToUblText.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function PARKInvoiceObjectToUblText.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor SendPARKInvoiceObjectConnectorResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendPARKInvoiceObjectConnectorResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendPARKInvoiceObjectConnectorResult);
  inherited Destroy;
end;

procedure SendPARKInvoiceObjectConnectorResponse.SetSendPARKInvoiceObjectConnectorResult(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FSendPARKInvoiceObjectConnectorResult := AREQUEST_RETURNType;
  FSendPARKInvoiceObjectConnectorResult_Specified := True;
end;

function SendPARKInvoiceObjectConnectorResponse.SendPARKInvoiceObjectConnectorResult_Specified(Index: Integer): boolean;
begin
  Result := FSendPARKInvoiceObjectConnectorResult_Specified;
end;

constructor GibUserListTxt.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GibUserListTxt.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function GibUserListTxt.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor ERPRefSendInvoiceAllResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor ERPRefSendInvoiceAllResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FERPRefSendInvoiceAllResult)-1 do
    System.SysUtils.FreeAndNil(FERPRefSendInvoiceAllResult[I]);
  System.SetLength(FERPRefSendInvoiceAllResult, 0);
  inherited Destroy;
end;

procedure ERPRefSendInvoiceAllResponse.SetERPRefSendInvoiceAllResult(Index: Integer; const AArrayOfSendInvoiceRef: ArrayOfSendInvoiceRef);
begin
  FERPRefSendInvoiceAllResult := AArrayOfSendInvoiceRef;
  FERPRefSendInvoiceAllResult_Specified := True;
end;

function ERPRefSendInvoiceAllResponse.ERPRefSendInvoiceAllResult_Specified(Index: Integer): boolean;
begin
  Result := FERPRefSendInvoiceAllResult_Specified;
end;

constructor ERPRefSendInvoiceAll.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure ERPRefSendInvoiceAll.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function ERPRefSendInvoiceAll.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor GibUserListTxtResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure GibUserListTxtResponse.SetGibUserListTxtResult(Index: Integer; const ATByteDynArray: TByteDynArray);
begin
  FGibUserListTxtResult := ATByteDynArray;
  FGibUserListTxtResult_Specified := True;
end;

function GibUserListTxtResponse.GibUserListTxtResult_Specified(Index: Integer): boolean;
begin
  Result := FGibUserListTxtResult_Specified;
end;

constructor InvQueryInsParamsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

constructor InvQueryInsParams.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor InvQueryInsParams.Destroy;
begin
  System.SysUtils.FreeAndNil(Fparam);
  inherited Destroy;
end;

procedure InvQueryInsParams.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function InvQueryInsParams.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure InvQueryInsParams.Setparam(Index: Integer; const AQueryParameter: QueryParameter);
begin
  Fparam := AQueryParameter;
  Fparam_Specified := True;
end;

function InvQueryInsParams.param_Specified(Index: Integer): boolean;
begin
  Result := Fparam_Specified;
end;

constructor GetInvQueryParamsResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor GetInvQueryParamsResponse.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FGetInvQueryParamsResult)-1 do
    System.SysUtils.FreeAndNil(FGetInvQueryParamsResult[I]);
  System.SetLength(FGetInvQueryParamsResult, 0);
  inherited Destroy;
end;

procedure GetInvQueryParamsResponse.SetGetInvQueryParamsResult(Index: Integer; const AArrayOfQueryParameter: ArrayOfQueryParameter);
begin
  FGetInvQueryParamsResult := AArrayOfQueryParameter;
  FGetInvQueryParamsResult_Specified := True;
end;

function GetInvQueryParamsResponse.GetInvQueryParamsResult_Specified(Index: Integer): boolean;
begin
  Result := FGetInvQueryParamsResult_Specified;
end;

constructor SendPARKInvoiceObject.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendPARKInvoiceObject.Destroy;
begin
  System.SysUtils.FreeAndNil(FinvoiceObj);
  inherited Destroy;
end;

procedure SendPARKInvoiceObject.SetinvoiceObj(Index: Integer; const APARKInvoiceType: PARKInvoiceType);
begin
  FinvoiceObj := APARKInvoiceType;
  FinvoiceObj_Specified := True;
end;

function SendPARKInvoiceObject.invoiceObj_Specified(Index: Integer): boolean;
begin
  Result := FinvoiceObj_Specified;
end;

procedure SendPARKInvoiceObject.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function SendPARKInvoiceObject.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

constructor SendPARKInvoiceObjectConnector.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendPARKInvoiceObjectConnector.Destroy;
begin
  System.SysUtils.FreeAndNil(FinvoiceObj);
  inherited Destroy;
end;

procedure SendPARKInvoiceObjectConnector.SetinvoiceObj(Index: Integer; const APARKInvoiceType: PARKInvoiceType);
begin
  FinvoiceObj := APARKInvoiceType;
  FinvoiceObj_Specified := True;
end;

function SendPARKInvoiceObjectConnector.invoiceObj_Specified(Index: Integer): boolean;
begin
  Result := FinvoiceObj_Specified;
end;

procedure SendPARKInvoiceObjectConnector.SetsessionId(Index: Integer; const Astring: string);
begin
  FsessionId := Astring;
  FsessionId_Specified := True;
end;

function SendPARKInvoiceObjectConnector.sessionId_Specified(Index: Integer): boolean;
begin
  Result := FsessionId_Specified;
end;

procedure SendPARKInvoiceObjectConnector.SetxsltStyleName(Index: Integer; const Astring: string);
begin
  FxsltStyleName := Astring;
  FxsltStyleName_Specified := True;
end;

function SendPARKInvoiceObjectConnector.xsltStyleName_Specified(Index: Integer): boolean;
begin
  Result := FxsltStyleName_Specified;
end;

procedure SendPARKInvoiceObjectConnector.SetonEk(Index: Integer; const Astring: string);
begin
  FonEk := Astring;
  FonEk_Specified := True;
end;

function SendPARKInvoiceObjectConnector.onEk_Specified(Index: Integer): boolean;
begin
  Result := FonEk_Specified;
end;

procedure SendPARKInvoiceObjectConnector.SeterpRef(Index: Integer; const Astring: string);
begin
  FerpRef := Astring;
  FerpRef_Specified := True;
end;

function SendPARKInvoiceObjectConnector.erpRef_Specified(Index: Integer): boolean;
begin
  Result := FerpRef_Specified;
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

procedure REQUEST_RETURNType.SetWARNINGS(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  FWARNINGS := AArrayOfString;
  FWARNINGS_Specified := True;
end;

function REQUEST_RETURNType.WARNINGS_Specified(Index: Integer): boolean;
begin
  Result := FWARNINGS_Specified;
end;

constructor SendPARKInvoiceObjectResponse.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor SendPARKInvoiceObjectResponse.Destroy;
begin
  System.SysUtils.FreeAndNil(FSendPARKInvoiceObjectResult);
  inherited Destroy;
end;

procedure SendPARKInvoiceObjectResponse.SetSendPARKInvoiceObjectResult(Index: Integer; const AREQUEST_RETURNType: REQUEST_RETURNType);
begin
  FSendPARKInvoiceObjectResult := AREQUEST_RETURNType;
  FSendPARKInvoiceObjectResult_Specified := True;
end;

function SendPARKInvoiceObjectResponse.SendPARKInvoiceObjectResult_Specified(Index: Integer): boolean;
begin
  Result := FSendPARKInvoiceObjectResult_Specified;
end;

initialization
  { EFaturaServiceSoap }
  InvRegistry.RegisterInterface(TypeInfo(EFaturaServiceSoap), 'http://parkentegrasyon.com.tr/', 'utf-8');
  InvRegistry.RegisterAllSOAPActions(TypeInfo(EFaturaServiceSoap), '|http://parkentegrasyon.com.tr/Login'
                                                                  +'|http://parkentegrasyon.com.tr/LoginWithTaxOrIdNo'
                                                                  +'|http://parkentegrasyon.com.tr/Logout'
                                                                  +'|http://parkentegrasyon.com.tr/GetInvQueries'
                                                                  +'|http://parkentegrasyon.com.tr/InvQueriesIns'
                                                                  +'|http://parkentegrasyon.com.tr/GetInvQueryParams'
                                                                  +'|http://parkentegrasyon.com.tr/InvQueryInsParams'
                                                                  +'|http://parkentegrasyon.com.tr/SendPARKInvoiceObject'
                                                                  +'|http://parkentegrasyon.com.tr/SendPARKInvoiceObjectConnector'
                                                                  +'|http://parkentegrasyon.com.tr/PARKInvoiceObjectToUblText'
                                                                  +'|http://parkentegrasyon.com.tr/GibUserListTxt'
                                                                  +'|http://parkentegrasyon.com.tr/ERPRefSendInvoiceAll'
                                                                  +'|http://parkentegrasyon.com.tr/SendInvoiceRefAdd'
                                                                  +'|http://parkentegrasyon.com.tr/CreateManuelCurrent'
                                                                  +'|http://parkentegrasyon.com.tr/GetManuelCurrentAll'
                                                                  +'|http://parkentegrasyon.com.tr/CreateManuelStock'
                                                                  +'|http://parkentegrasyon.com.tr/GetManuelStockAll'
                                                                  +'|http://parkentegrasyon.com.tr/CreateInsideStock'
                                                                  +'|http://parkentegrasyon.com.tr/GetInsideStockInvoice'
                                                                  +'|http://parkentegrasyon.com.tr/GetSerialList'
                                                                  +'|http://parkentegrasyon.com.tr/CreateSerial'
                                                                  +'|http://parkentegrasyon.com.tr/GetSerial'
                                                                  +'|http://parkentegrasyon.com.tr/GetNextSerialString'
                                                                  +'|http://parkentegrasyon.com.tr/UpdateSerial'
                                                                  +'|http://parkentegrasyon.com.tr/UpdateSerialWithNewInId'
                                                                  +'|http://parkentegrasyon.com.tr/GetUsersByCustomer'
                                                                  +'|http://parkentegrasyon.com.tr/GetLoginCustomer'
                                                                  +'|http://parkentegrasyon.com.tr/UploadXSLTFiles'
                                                                  +'|http://parkentegrasyon.com.tr/DownloadXslt'
                                                                  +'|http://parkentegrasyon.com.tr/GetXsltByName'
                                                                  +'|http://parkentegrasyon.com.tr/UpdateXSLTFiles'
                                                                  +'|http://parkentegrasyon.com.tr/DeleteXSLTFiles'
                                                                  +'|http://parkentegrasyon.com.tr/ListXSLTFiles'
                                                                  +'|http://parkentegrasyon.com.tr/GetXSLTFiles'
                                                                  +'|http://parkentegrasyon.com.tr/SetDefaultXslt'
                                                                  +'|http://parkentegrasyon.com.tr/GetCities'
                                                                  +'|http://parkentegrasyon.com.tr/GetDistricts'
                                                                  +'|http://parkentegrasyon.com.tr/GetDistrictsWithPlateNumber'
                                                                  +'|http://parkentegrasyon.com.tr/MarkEnvelope'
                                                                  +'|http://parkentegrasyon.com.tr/SendInvoice'
                                                                  +'|http://parkentegrasyon.com.tr/SendInvoiceResponseMethod'
                                                                  +'|http://parkentegrasyon.com.tr/LoadInvoice'
                                                                  +'|http://parkentegrasyon.com.tr/GetInvoice'
                                                                  +'|http://parkentegrasyon.com.tr/GetInvoiceStatus'
                                                                  +'|http://parkentegrasyon.com.tr/GetInvoiceStatusAll'
                                                                  +'|http://parkentegrasyon.com.tr/GetInvoiceWithType'
                                                                  +'|http://parkentegrasyon.com.tr/MarkInvoice'
                                                                  +'|http://parkentegrasyon.com.tr/PrepareInvoiceResponse'
                                                                  +'|http://parkentegrasyon.com.tr/SendInvoiceResponseWithServerSign'
                                                                  +'|http://parkentegrasyon.com.tr/GetUserList'
                                                                  +'|http://parkentegrasyon.com.tr/CheckUser'
                                                                  +'|http://parkentegrasyon.com.tr/GetApplicationResponse'
                                                                  +'|http://parkentegrasyon.com.tr/GetEnvelope'
                                                                  +'|http://parkentegrasyon.com.tr/GetEnvelopeStatus'
                                                                  +'|http://parkentegrasyon.com.tr/GetUserListBinary'
                                                                  );
  InvRegistry.RegisterInvokeOptions(TypeInfo(EFaturaServiceSoap), ioDocument);
  InvRegistry.RegisterInvokeOptions(TypeInfo(EFaturaServiceSoap), ioLiteral);
  RemClassRegistry.RegisterXSClass(GetInvoice, 'http://parkentegrasyon.com.tr/', 'GetInvoice');
  RemClassRegistry.RegisterSerializeOptions(GetInvoice, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvoiceStatus, 'http://parkentegrasyon.com.tr/', 'GetInvoiceStatus');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceStatus, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvoiceStatusResponse2, 'http://schemas.i2i.com/ei/wsdl', 'GetInvoiceStatusResponse2', 'GetInvoiceStatusResponse');
  RemClassRegistry.RegisterXSClass(GetInvoiceStatusResponse, 'http://parkentegrasyon.com.tr/', 'GetInvoiceStatusResponse');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceStatusResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseResponse, 'http://schemas.i2i.com/ei/wsdl', 'SendInvoiceResponseResponse');
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseMethodResponse, 'http://parkentegrasyon.com.tr/', 'SendInvoiceResponseMethodResponse');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceResponseMethodResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoadInvoice, 'http://parkentegrasyon.com.tr/', 'LoadInvoice');
  RemClassRegistry.RegisterSerializeOptions(LoadInvoice, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoadInvoiceResponse2, 'http://schemas.i2i.com/ei/wsdl', 'LoadInvoiceResponse2', 'LoadInvoiceResponse');
  RemClassRegistry.RegisterXSClass(LoadInvoiceResponse, 'http://parkentegrasyon.com.tr/', 'LoadInvoiceResponse');
  RemClassRegistry.RegisterSerializeOptions(LoadInvoiceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvoiceStatusAll, 'http://parkentegrasyon.com.tr/', 'GetInvoiceStatusAll');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceStatusAll, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PrepareInvoiceResponse, 'http://parkentegrasyon.com.tr/', 'PrepareInvoiceResponse');
  RemClassRegistry.RegisterSerializeOptions(PrepareInvoiceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MarkInvoiceResponse2, 'http://schemas.i2i.com/ei/wsdl', 'MarkInvoiceResponse2', 'MarkInvoiceResponse');
  RemClassRegistry.RegisterXSClass(MarkInvoiceResponse, 'http://parkentegrasyon.com.tr/', 'MarkInvoiceResponse');
  RemClassRegistry.RegisterSerializeOptions(MarkInvoiceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseWithServerSign, 'http://parkentegrasyon.com.tr/', 'SendInvoiceResponseWithServerSign');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceResponseWithServerSign, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvoiceWithType, 'http://parkentegrasyon.com.tr/', 'GetInvoiceWithType');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceWithType, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MarkInvoice, 'http://parkentegrasyon.com.tr/', 'MarkInvoice');
  RemClassRegistry.RegisterSerializeOptions(MarkInvoice, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseMethod, 'http://parkentegrasyon.com.tr/', 'SendInvoiceResponseMethod');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceResponseMethod, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteXSLTFilesResponse, 'http://parkentegrasyon.com.tr/', 'DeleteXSLTFilesResponse');
  RemClassRegistry.RegisterSerializeOptions(DeleteXSLTFilesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetXSLTFilesResponse, 'http://parkentegrasyon.com.tr/', 'GetXSLTFilesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetXSLTFilesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DownloadXsltResponse, 'http://parkentegrasyon.com.tr/', 'DownloadXsltResponse');
  RemClassRegistry.RegisterSerializeOptions(DownloadXsltResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UploadXSLTFilesResponse, 'http://parkentegrasyon.com.tr/', 'UploadXSLTFilesResponse');
  RemClassRegistry.RegisterSerializeOptions(UploadXSLTFilesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateXSLTFilesResponse, 'http://parkentegrasyon.com.tr/', 'UpdateXSLTFilesResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateXSLTFilesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetXsltByNameResponse, 'http://parkentegrasyon.com.tr/', 'GetXsltByNameResponse');
  RemClassRegistry.RegisterSerializeOptions(GetXsltByNameResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDefaultXsltResponse, 'http://parkentegrasyon.com.tr/', 'SetDefaultXsltResponse');
  RemClassRegistry.RegisterSerializeOptions(SetDefaultXsltResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MarkEnvelopeResponse2, 'http://schemas.i2i.com/ei/wsdl', 'MarkEnvelopeResponse2', 'MarkEnvelopeResponse');
  RemClassRegistry.RegisterXSClass(MarkEnvelopeResponse, 'http://parkentegrasyon.com.tr/', 'MarkEnvelopeResponse');
  RemClassRegistry.RegisterSerializeOptions(MarkEnvelopeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoice, 'http://parkentegrasyon.com.tr/', 'SendInvoice');
  RemClassRegistry.RegisterSerializeOptions(SendInvoice, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceResponse2, 'http://schemas.i2i.com/ei/wsdl', 'SendInvoiceResponse2', 'SendInvoiceResponse');
  RemClassRegistry.RegisterXSClass(SendInvoiceResponse, 'http://parkentegrasyon.com.tr/', 'SendInvoiceResponse');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MarkEnvelope, 'http://parkentegrasyon.com.tr/', 'MarkEnvelope');
  RemClassRegistry.RegisterSerializeOptions(MarkEnvelope, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(USERCONTENTTYPE), 'http://schemas.i2i.com/ei/wsdl', 'USERCONTENTTYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SIGNTYPE), 'http://schemas.i2i.com/ei/wsdl', 'SIGNTYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(USERTYPE), 'http://schemas.i2i.com/ei/wsdl', 'USERTYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ENVELOPE), 'http://schemas.i2i.com/ei/wsdl', 'Array_Of_ENVELOPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_USERCONTENT), 'http://schemas.i2i.com/ei/wsdl', 'Array_Of_USERCONTENT');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ENVELOPE2), 'http://schemas.i2i.com/ei/wsdl', 'Array_Of_ENVELOPE2', 'Array_Of_ENVELOPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ATTRIBUTESTYPE), 'http://schemas.i2i.com/ei/common', 'Array_Of_ATTRIBUTESTYPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TYPE_), 'http://schemas.i2i.com/ei/wsdl', 'TYPE_', 'TYPE');
  RemClassRegistry.RegisterXSClass(GetApplicationResponse, 'http://parkentegrasyon.com.tr/', 'GetApplicationResponse');
  RemClassRegistry.RegisterSerializeOptions(GetApplicationResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEnvelope, 'http://parkentegrasyon.com.tr/', 'GetEnvelope');
  RemClassRegistry.RegisterSerializeOptions(GetEnvelope, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetApplicationResponseResponse, 'http://parkentegrasyon.com.tr/', 'GetApplicationResponseResponse');
  RemClassRegistry.RegisterSerializeOptions(GetApplicationResponseResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUserList, 'http://parkentegrasyon.com.tr/', 'GetUserList');
  RemClassRegistry.RegisterSerializeOptions(GetUserList, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseWithServerSignResponse2, 'http://schemas.i2i.com/ei/wsdl', 'SendInvoiceResponseWithServerSignResponse2', 'SendInvoiceResponseWithServerSignResponse');
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseWithServerSignResponse, 'http://parkentegrasyon.com.tr/', 'SendInvoiceResponseWithServerSignResponse');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceResponseWithServerSignResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CheckUser, 'http://parkentegrasyon.com.tr/', 'CheckUser');
  RemClassRegistry.RegisterSerializeOptions(CheckUser, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(GetUserListResponse2), 'http://schemas.i2i.com/ei/wsdl', 'GetUserListResponse2', 'GetUserListResponse');
  RemClassRegistry.RegisterXSClass(GetUserListResponse, 'http://parkentegrasyon.com.tr/', 'GetUserListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetUserListResponse), 'GetUserListResult', '[ArrayItemName="USER"]');
  RemClassRegistry.RegisterSerializeOptions(GetUserListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(REQUEST, 'http://schemas.i2i.com/ei/entity', 'REQUEST');
  RemClassRegistry.RegisterXSClass(CheckUserRequest, 'http://schemas.i2i.com/ei/wsdl', 'CheckUserRequest');
  RemClassRegistry.RegisterXSClass(LogoutRequest, 'http://schemas.i2i.com/ei/wsdl', 'LogoutRequest');
  RemClassRegistry.RegisterXSClass(UserRequest, 'http://schemas.i2i.com/ei/wsdl', 'UserRequest');
  RemClassRegistry.RegisterXSClass(MarkEnvelopeRequest, 'http://schemas.i2i.com/ei/wsdl', 'MarkEnvelopeRequest');
  RemClassRegistry.RegisterXSClass(MarkInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl', 'MarkInvoiceRequest');
  RemClassRegistry.RegisterXSClass(GetInvoiceStatusRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetInvoiceStatusRequest');
  RemClassRegistry.RegisterXSClass(GetEnvelopeRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetEnvelopeRequest');
  RemClassRegistry.RegisterXSClass(ENVELOPE, 'http://schemas.i2i.com/ei/wsdl', 'ENVELOPE');
  RemClassRegistry.RegisterXSClass(ENVELOPE2, 'http://schemas.i2i.com/ei/wsdl', 'ENVELOPE2', 'ENVELOPE');
  RemClassRegistry.RegisterXSClass(GetInvoiceCountRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetInvoiceCountRequest');
  RemClassRegistry.RegisterXSClass(ELEMENT, 'http://schemas.i2i.com/ei/wsdl', 'ELEMENT');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ELEMENT), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterXSClass(CancelDraftInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl', 'CancelDraftInvoiceRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_token), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_token');
  RemClassRegistry.RegisterXSClass(GetInvoiceStatusAllRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetInvoiceStatusAllRequest');
  RemClassRegistry.RegisterXSClass(GetInvoiceWithTypeRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetInvoiceWithTypeRequest');
  RemClassRegistry.RegisterXSClass(GetInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetInvoiceRequest');
  RemClassRegistry.RegisterXSClass(GetUserListBinaryResponse2, 'http://schemas.i2i.com/ei/wsdl', 'GetUserListBinaryResponse2', 'GetUserListBinaryResponse');
  RemClassRegistry.RegisterXSClass(ATTRIBUTESTYPE, 'http://schemas.i2i.com/ei/common', 'ATTRIBUTESTYPE');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ATTRIBUTESTYPE), 'NAME_', '[ExtName="NAME"]');
  RemClassRegistry.RegisterXSClass(GetEnvelopeStatusRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetEnvelopeStatusRequest');
  RemClassRegistry.RegisterXSClass(GetEnvelopeStatus, 'http://parkentegrasyon.com.tr/', 'GetEnvelopeStatus');
  RemClassRegistry.RegisterSerializeOptions(GetEnvelopeStatus, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUserListBinaryResponse, 'http://parkentegrasyon.com.tr/', 'GetUserListBinaryResponse');
  RemClassRegistry.RegisterSerializeOptions(GetUserListBinaryResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUserListBinary, 'http://parkentegrasyon.com.tr/', 'GetUserListBinary');
  RemClassRegistry.RegisterSerializeOptions(GetUserListBinary, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CHANGE_INFOType, 'http://schemas.i2i.com/ei/common', 'CHANGE_INFOType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfManuelcurrent), 'http://parkentegrasyon.com.tr/', 'ArrayOfManuelcurrent');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfManuelinvoice), 'http://parkentegrasyon.com.tr/', 'ArrayOfManuelinvoice');
  RemClassRegistry.RegisterXSClass(Attachment, 'http://parkentegrasyon.com.tr/', 'Attachment');
  RemClassRegistry.RegisterXSInfo(TypeInfo(BillingReferenceTypes), 'http://parkentegrasyon.com.tr/', 'BillingReferenceTypes');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSendInvoiceRef), 'http://parkentegrasyon.com.tr/', 'ArrayOfSendInvoiceRef');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfSerial), 'http://parkentegrasyon.com.tr/', 'ArrayOfSerial');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfINVOICE), 'http://parkentegrasyon.com.tr/', 'ArrayOfINVOICE');
  RemClassRegistry.RegisterXSClass(SendInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl', 'SendInvoiceRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SendInvoiceRequest), 'INVOICE', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterXSClass(GetInvoiceWithTypeResponse, 'http://parkentegrasyon.com.tr/', 'GetInvoiceWithTypeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetInvoiceWithTypeResponse), 'GetInvoiceWithTypeResult', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceWithTypeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvoiceStatusAllResponse, 'http://parkentegrasyon.com.tr/', 'GetInvoiceStatusAllResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetInvoiceStatusAllResponse), 'GetInvoiceStatusAllResult', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceStatusAllResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoadInvoiceRequest, 'http://schemas.i2i.com/ei/wsdl', 'LoadInvoiceRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LoadInvoiceRequest), 'INVOICE', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterXSClass(GetInvoiceResponse, 'http://parkentegrasyon.com.tr/', 'GetInvoiceResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetInvoiceResponse), 'GetInvoiceResult', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterSerializeOptions(GetInvoiceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDistrict), 'http://parkentegrasyon.com.tr/', 'ArrayOfDistrict');
  RemClassRegistry.RegisterXSClass(GetDistrictsWithPlateNumberResponse, 'http://parkentegrasyon.com.tr/', 'GetDistrictsWithPlateNumberResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetDistrictsWithPlateNumberResponse), 'GetDistrictsWithPlateNumberResult', '[ArrayItemName="District"]');
  RemClassRegistry.RegisterSerializeOptions(GetDistrictsWithPlateNumberResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDistrictsResponse, 'http://parkentegrasyon.com.tr/', 'GetDistrictsResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetDistrictsResponse), 'GetDistrictsResult', '[ArrayItemName="District"]');
  RemClassRegistry.RegisterSerializeOptions(GetDistrictsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfGIBUSER), 'http://parkentegrasyon.com.tr/', 'ArrayOfGIBUSER');
  RemClassRegistry.RegisterXSClass(CheckUserResponse, 'http://parkentegrasyon.com.tr/', 'CheckUserResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(CheckUserResponse), 'CheckUserResult', '[ArrayItemName="GIBUSER"]');
  RemClassRegistry.RegisterSerializeOptions(CheckUserResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBase64Binary), 'http://parkentegrasyon.com.tr/', 'ArrayOfBase64Binary');
  RemClassRegistry.RegisterXSClass(PrepareInvoiceResponseResponse, 'http://parkentegrasyon.com.tr/', 'PrepareInvoiceResponseResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PrepareInvoiceResponseResponse), 'PrepareInvoiceResponseResult', '[ArrayItemName="base64Binary"]');
  RemClassRegistry.RegisterSerializeOptions(PrepareInvoiceResponseResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseRequest, 'http://schemas.i2i.com/ei/wsdl', 'SendInvoiceResponseRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SendInvoiceResponseRequest), 'APPRESPONSE', '[ArrayItemName="base64Binary"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfUser), 'http://parkentegrasyon.com.tr/', 'ArrayOfUser');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCity), 'http://parkentegrasyon.com.tr/', 'ArrayOfCity');
  RemClassRegistry.RegisterXSClass(GetCitiesResponse, 'http://parkentegrasyon.com.tr/', 'GetCitiesResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetCitiesResponse), 'GetCitiesResult', '[ArrayItemName="City"]');
  RemClassRegistry.RegisterSerializeOptions(GetCitiesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfStylefiles), 'http://parkentegrasyon.com.tr/', 'ArrayOfStylefiles');
  RemClassRegistry.RegisterXSClass(ListXSLTFilesResponse, 'http://parkentegrasyon.com.tr/', 'ListXSLTFilesResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ListXSLTFilesResponse), 'ListXSLTFilesResult', '[ArrayItemName="Stylefiles"]');
  RemClassRegistry.RegisterSerializeOptions(ListXSLTFilesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DataObject, 'http://parkentegrasyon.com.tr/', 'DataObject');
  RemClassRegistry.RegisterXSClass(GetUserListBinaryRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetUserListBinaryRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetUserListBinaryRequest), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterXSClass(REQUEST_HEADERType, 'http://schemas.i2i.com/ei/entity', 'REQUEST_HEADERType');
  RemClassRegistry.RegisterXSClass(GetUserListRequest, 'http://schemas.i2i.com/ei/wsdl', 'GetUserListRequest');
  RemClassRegistry.RegisterXSClass(INVOICE, 'http://schemas.i2i.com/ei/wsdl', 'INVOICE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfQueryParameter), 'http://parkentegrasyon.com.tr/', 'ArrayOfQueryParameter');
  RemClassRegistry.RegisterXSInfo(TypeInfo(guid), 'http://microsoft.com/wsdl/types/', 'guid');
  RemClassRegistry.RegisterXSClass(BillingReference, 'http://parkentegrasyon.com.tr/', 'BillingReference');
  RemClassRegistry.RegisterXSClass(AdditionalDocumentReference, 'http://parkentegrasyon.com.tr/', 'AdditionalDocumentReference');
  RemClassRegistry.RegisterXSClass(base64Binary, 'http://www.w3.org/2005/05/xmlmime', 'base64Binary');
  RemClassRegistry.RegisterXSClass(DespatchDocumentModel, 'http://parkentegrasyon.com.tr/', 'DespatchDocumentModel');
  RemClassRegistry.RegisterXSClass(EmbeddedDocumentBinaryObject, 'http://parkentegrasyon.com.tr/', 'EmbeddedDocumentBinaryObject');
  RemClassRegistry.RegisterXSClass(UploadXSLTFiles, 'http://parkentegrasyon.com.tr/', 'UploadXSLTFiles');
  RemClassRegistry.RegisterSerializeOptions(UploadXSLTFiles, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(MARK, 'http://schemas.i2i.com/ei/wsdl', 'MARK');
  RemClassRegistry.RegisterXSClass(getAppRespResponseType, 'http://gib.gov.tr/vedop3/eFatura', 'getAppRespResponseType');
  RemClassRegistry.RegisterXSClass(getAppRespRequestType, 'http://gib.gov.tr/vedop3/eFatura', 'getAppRespRequestType');
  RemClassRegistry.RegisterXSClass(INVOICE_STATUS, 'http://schemas.i2i.com/ei/wsdl', 'INVOICE_STATUS');
  RemClassRegistry.RegisterXSClass(HEADER, 'http://schemas.i2i.com/ei/wsdl', 'HEADER');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HEADER), 'TO_', '[ExtName="TO"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HEADER), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterXSClass(MARK2, 'http://schemas.i2i.com/ei/wsdl', 'MARK2', 'MARK');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(MARK2), 'INVOICE', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterXSClass(USERCONTENT, 'http://schemas.i2i.com/ei/wsdl', 'USERCONTENT');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(USERCONTENT), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterXSClass(LoginRequest, 'http://schemas.i2i.com/ei/wsdl', 'LoginRequest');
  RemClassRegistry.RegisterXSClass(SENDER, 'http://schemas.i2i.com/ei/wsdl', 'SENDER');
  RemClassRegistry.RegisterXSClass(RECEIVER, 'http://schemas.i2i.com/ei/wsdl', 'RECEIVER');
  RemClassRegistry.RegisterXSClass(HEADER2, 'http://schemas.i2i.com/ei/wsdl', 'HEADER2', 'HEADER');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(HEADER2), 'TO_', '[ExtName="TO"]');
  RemClassRegistry.RegisterXSClass(GetDistrictsWithPlateNumber, 'http://parkentegrasyon.com.tr/', 'GetDistrictsWithPlateNumber');
  RemClassRegistry.RegisterSerializeOptions(GetDistrictsWithPlateNumber, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetCities, 'http://parkentegrasyon.com.tr/', 'GetCities');
  RemClassRegistry.RegisterSerializeOptions(GetCities, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetDistricts, 'http://parkentegrasyon.com.tr/', 'GetDistricts');
  RemClassRegistry.RegisterSerializeOptions(GetDistricts, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateXSLTFiles, 'http://parkentegrasyon.com.tr/', 'UpdateXSLTFiles');
  RemClassRegistry.RegisterSerializeOptions(UpdateXSLTFiles, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetXsltByName, 'http://parkentegrasyon.com.tr/', 'GetXsltByName');
  RemClassRegistry.RegisterSerializeOptions(GetXsltByName, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DownloadXslt, 'http://parkentegrasyon.com.tr/', 'DownloadXslt');
  RemClassRegistry.RegisterSerializeOptions(DownloadXslt, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetXSLTFiles, 'http://parkentegrasyon.com.tr/', 'GetXSLTFiles');
  RemClassRegistry.RegisterSerializeOptions(GetXSLTFiles, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SetDefaultXslt, 'http://parkentegrasyon.com.tr/', 'SetDefaultXslt');
  RemClassRegistry.RegisterSerializeOptions(SetDefaultXslt, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(DeleteXSLTFiles, 'http://parkentegrasyon.com.tr/', 'DeleteXSLTFiles');
  RemClassRegistry.RegisterSerializeOptions(DeleteXSLTFiles, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ListXSLTFiles, 'http://parkentegrasyon.com.tr/', 'ListXSLTFiles');
  RemClassRegistry.RegisterSerializeOptions(ListXSLTFiles, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(INVOICE_SEARCH_KEY, 'http://schemas.i2i.com/ei/wsdl', 'INVOICE_SEARCH_KEY');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(INVOICE_SEARCH_KEY), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(INVOICE_SEARCH_KEY), 'TO_', '[ExtName="TO"]');
  RemClassRegistry.RegisterXSClass(ENVELOPE_SEARCH_KEY, 'http://schemas.i2i.com/ei/wsdl', 'ENVELOPE_SEARCH_KEY');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ENVELOPE_SEARCH_KEY), 'TO_', '[ExtName="TO"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ENVELOPE_SEARCH_KEY), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterXSClass(INVOICE_SEARCH_KEY2, 'http://schemas.i2i.com/ei/wsdl', 'INVOICE_SEARCH_KEY2', 'INVOICE_SEARCH_KEY');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(INVOICE_SEARCH_KEY2), 'TO_', '[ExtName="TO"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCustomerExtended), 'http://parkentegrasyon.com.tr/', 'ArrayOfCustomerExtended');
  RemClassRegistry.RegisterXSClass(LoginRes, 'http://parkentegrasyon.com.tr/', 'LoginRes');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LoginRes), 'Message_', '[ExtName="Message"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(LoginRes), 'CustomerList', '[ArrayItemName="CustomerExtended"]');
  RemClassRegistry.RegisterXSClass(DataModelObject, 'http://parkentegrasyon.com.tr/', 'DataModelObject');
  RemClassRegistry.RegisterXSClass(QueryParameter, 'http://parkentegrasyon.com.tr/', 'QueryParameter');
  RemClassRegistry.RegisterXSClass(Query, 'http://parkentegrasyon.com.tr/', 'Query');
  RemClassRegistry.RegisterXSClass(City, 'http://parkentegrasyon.com.tr/', 'City');
  RemClassRegistry.RegisterXSClass(Stylefiles, 'http://parkentegrasyon.com.tr/', 'Stylefiles');
  RemClassRegistry.RegisterXSClass(Serial, 'http://parkentegrasyon.com.tr/', 'Serial');
  RemClassRegistry.RegisterXSClass(User, 'http://parkentegrasyon.com.tr/', 'User');
  RemClassRegistry.RegisterXSClass(District, 'http://parkentegrasyon.com.tr/', 'District');
  RemClassRegistry.RegisterXSClass(inside, 'http://parkentegrasyon.com.tr/', 'inside');
  RemClassRegistry.RegisterXSClass(SendInvoiceRef, 'http://parkentegrasyon.com.tr/', 'SendInvoiceRef');
  RemClassRegistry.RegisterXSClass(Manuelcurrent, 'http://parkentegrasyon.com.tr/', 'Manuelcurrent');
  RemClassRegistry.RegisterXSClass(Customer, 'http://parkentegrasyon.com.tr/', 'Customer');
  RemClassRegistry.RegisterXSClass(CustomerExtended, 'http://parkentegrasyon.com.tr/', 'CustomerExtended');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfDespatchDocumentModel), 'http://parkentegrasyon.com.tr/', 'ArrayOfDespatchDocumentModel');
  RemClassRegistry.RegisterXSClass(Period, 'http://parkentegrasyon.com.tr/', 'Period');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfAdditionalDocumentReference), 'http://parkentegrasyon.com.tr/', 'ArrayOfAdditionalDocumentReference');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInvoiceTax), 'http://parkentegrasyon.com.tr/', 'ArrayOfInvoiceTax');
  RemClassRegistry.RegisterXSClass(PartyDetails, 'http://parkentegrasyon.com.tr/', 'PartyDetails');
  RemClassRegistry.RegisterXSClass(DeliveryType, 'http://parkentegrasyon.com.tr/', 'DeliveryType');
  RemClassRegistry.RegisterXSClass(WithholdingTax, 'http://parkentegrasyon.com.tr/', 'WithholdingTax');
  RemClassRegistry.RegisterXSClass(InvoiceTax, 'http://parkentegrasyon.com.tr/', 'InvoiceTax');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(InvoiceTax), 'Name_', '[ExtName="Name"]');
  RemClassRegistry.RegisterXSClass(Manuelinvoice, 'http://parkentegrasyon.com.tr/', 'Manuelinvoice');
  RemClassRegistry.RegisterXSClass(AmountType, 'http://schemas.i2i.com/ei/common', 'AmountType');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfInvoiceLine), 'http://parkentegrasyon.com.tr/', 'ArrayOfInvoiceLine');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfBillingReference), 'http://parkentegrasyon.com.tr/', 'ArrayOfBillingReference');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfWithholdingTax), 'http://parkentegrasyon.com.tr/', 'ArrayOfWithholdingTax');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://parkentegrasyon.com.tr/', 'ArrayOfString');
  RemClassRegistry.RegisterXSClass(InvoiceLine, 'http://parkentegrasyon.com.tr/', 'InvoiceLine');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(InvoiceLine), 'Notes', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(InvoiceLine), 'LineTaxes', '[ArrayItemName="InvoiceTax"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(InvoiceLine), 'WithholdingTaxes', '[ArrayItemName="WithholdingTax"]');
  RemClassRegistry.RegisterXSClass(PARKInvoiceType, 'http://parkentegrasyon.com.tr/', 'PARKInvoiceType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'InvoiceTaxes', '[ArrayItemName="InvoiceTax"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'InvoiceLines', '[ArrayItemName="InvoiceLine"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'Notes', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'WithholdingTaxes', '[ArrayItemName="WithholdingTax"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'BillingReferences', '[ArrayItemName="BillingReference"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'AdditionalDocumentReferences', '[ArrayItemName="AdditionalDocumentReference"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PARKInvoiceType), 'DespatchDocument', '[ArrayItemName="DespatchDocumentModel"]');
  RemClassRegistry.RegisterXSClass(SendInvoiceResponseWithServerSignRequest, 'http://schemas.i2i.com/ei/wsdl', 'SendInvoiceResponseWithServerSignRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SendInvoiceResponseWithServerSignRequest), 'INVOICE', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SendInvoiceResponseWithServerSignRequest), 'DESCRIPTION', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterXSClass(PrepareInvoiceResponseRequest, 'http://schemas.i2i.com/ei/wsdl', 'PrepareInvoiceResponseRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PrepareInvoiceResponseRequest), 'INVOICE', '[ArrayItemName="INVOICE"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(PrepareInvoiceResponseRequest), 'DESCRIPTION', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterXSClass(CreateInsideStock, 'http://parkentegrasyon.com.tr/', 'CreateInsideStock');
  RemClassRegistry.RegisterSerializeOptions(CreateInsideStock, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetManuelStockAllResponse, 'http://parkentegrasyon.com.tr/', 'GetManuelStockAllResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetManuelStockAllResponse), 'GetManuelStockAllResult', '[ArrayItemName="Manuelinvoice"]');
  RemClassRegistry.RegisterSerializeOptions(GetManuelStockAllResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetManuelStockAll, 'http://parkentegrasyon.com.tr/', 'GetManuelStockAll');
  RemClassRegistry.RegisterSerializeOptions(GetManuelStockAll, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateInsideStockResponse, 'http://parkentegrasyon.com.tr/', 'CreateInsideStockResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateInsideStockResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInsideStockInvoiceResponse, 'http://parkentegrasyon.com.tr/', 'GetInsideStockInvoiceResponse');
  RemClassRegistry.RegisterSerializeOptions(GetInsideStockInvoiceResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInsideStockInvoice, 'http://parkentegrasyon.com.tr/', 'GetInsideStockInvoice');
  RemClassRegistry.RegisterSerializeOptions(GetInsideStockInvoice, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateManuelCurrentResponse, 'http://parkentegrasyon.com.tr/', 'CreateManuelCurrentResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateManuelCurrentResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateManuelCurrent, 'http://parkentegrasyon.com.tr/', 'CreateManuelCurrent');
  RemClassRegistry.RegisterSerializeOptions(CreateManuelCurrent, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceRefAddResponse, 'http://parkentegrasyon.com.tr/', 'SendInvoiceRefAddResponse');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceRefAddResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetManuelCurrentAll, 'http://parkentegrasyon.com.tr/', 'GetManuelCurrentAll');
  RemClassRegistry.RegisterSerializeOptions(GetManuelCurrentAll, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateManuelStockResponse, 'http://parkentegrasyon.com.tr/', 'CreateManuelStockResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateManuelStockResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateManuelStock, 'http://parkentegrasyon.com.tr/', 'CreateManuelStock');
  RemClassRegistry.RegisterSerializeOptions(CreateManuelStock, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetManuelCurrentAllResponse, 'http://parkentegrasyon.com.tr/', 'GetManuelCurrentAllResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetManuelCurrentAllResponse), 'GetManuelCurrentAllResult', '[ArrayItemName="Manuelcurrent"]');
  RemClassRegistry.RegisterSerializeOptions(GetManuelCurrentAllResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSerialListResponse, 'http://parkentegrasyon.com.tr/', 'GetSerialListResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetSerialListResponse), 'GetSerialListResult', '[ArrayItemName="Serial"]');
  RemClassRegistry.RegisterSerializeOptions(GetSerialListResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateSerialWithNewInIdResponse, 'http://parkentegrasyon.com.tr/', 'UpdateSerialWithNewInIdResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateSerialWithNewInIdResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateSerialResponse, 'http://parkentegrasyon.com.tr/', 'UpdateSerialResponse');
  RemClassRegistry.RegisterSerializeOptions(UpdateSerialResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUsersByCustomer, 'http://parkentegrasyon.com.tr/', 'GetUsersByCustomer');
  RemClassRegistry.RegisterSerializeOptions(GetUsersByCustomer, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetLoginCustomerResponse, 'http://parkentegrasyon.com.tr/', 'GetLoginCustomerResponse');
  RemClassRegistry.RegisterSerializeOptions(GetLoginCustomerResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetLoginCustomer, 'http://parkentegrasyon.com.tr/', 'GetLoginCustomer');
  RemClassRegistry.RegisterSerializeOptions(GetLoginCustomer, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetUsersByCustomerResponse, 'http://parkentegrasyon.com.tr/', 'GetUsersByCustomerResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetUsersByCustomerResponse), 'GetUsersByCustomerResult', '[ArrayItemName="User"]');
  RemClassRegistry.RegisterSerializeOptions(GetUsersByCustomerResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateSerialResponse, 'http://parkentegrasyon.com.tr/', 'CreateSerialResponse');
  RemClassRegistry.RegisterSerializeOptions(CreateSerialResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(CreateSerial, 'http://parkentegrasyon.com.tr/', 'CreateSerial');
  RemClassRegistry.RegisterSerializeOptions(CreateSerial, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSerialResponse, 'http://parkentegrasyon.com.tr/', 'GetSerialResponse');
  RemClassRegistry.RegisterSerializeOptions(GetSerialResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNextSerialStringResponse, 'http://parkentegrasyon.com.tr/', 'GetNextSerialStringResponse');
  RemClassRegistry.RegisterSerializeOptions(GetNextSerialStringResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetNextSerialString, 'http://parkentegrasyon.com.tr/', 'GetNextSerialString');
  RemClassRegistry.RegisterSerializeOptions(GetNextSerialString, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendInvoiceRefAdd, 'http://parkentegrasyon.com.tr/', 'SendInvoiceRefAdd');
  RemClassRegistry.RegisterSerializeOptions(SendInvoiceRefAdd, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LogoutResponse, 'http://parkentegrasyon.com.tr/', 'LogoutResponse');
  RemClassRegistry.RegisterSerializeOptions(LogoutResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Logout, 'http://parkentegrasyon.com.tr/', 'Logout');
  RemClassRegistry.RegisterSerializeOptions(Logout, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoginWithTaxOrIdNoResponse, 'http://parkentegrasyon.com.tr/', 'LoginWithTaxOrIdNoResponse');
  RemClassRegistry.RegisterSerializeOptions(LoginWithTaxOrIdNoResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvQueries, 'http://parkentegrasyon.com.tr/', 'GetInvQueries');
  RemClassRegistry.RegisterSerializeOptions(GetInvQueries, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(InvQueriesInsResponse, 'http://parkentegrasyon.com.tr/', 'InvQueriesInsResponse');
  RemClassRegistry.RegisterSerializeOptions(InvQueriesInsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(InvQueriesIns, 'http://parkentegrasyon.com.tr/', 'InvQueriesIns');
  RemClassRegistry.RegisterSerializeOptions(InvQueriesIns, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvQueriesResponse, 'http://parkentegrasyon.com.tr/', 'GetInvQueriesResponse');
  RemClassRegistry.RegisterSerializeOptions(GetInvQueriesResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ENVELOPE3, 'http://schemas.i2i.com/ei/wsdl', 'ENVELOPE3', 'ENVELOPE');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfENVELOPE), 'http://parkentegrasyon.com.tr/', 'ArrayOfENVELOPE');
  RemClassRegistry.RegisterXSClass(GetEnvelopeStatusResponse, 'http://parkentegrasyon.com.tr/', 'GetEnvelopeStatusResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetEnvelopeStatusResponse), 'GetEnvelopeStatusResult', '[ArrayItemName="ENVELOPE"]');
  RemClassRegistry.RegisterSerializeOptions(GetEnvelopeStatusResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetEnvelopeResponse, 'http://parkentegrasyon.com.tr/', 'GetEnvelopeResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetEnvelopeResponse), 'GetEnvelopeResult', '[ArrayItemName="ENVELOPE"]');
  RemClassRegistry.RegisterSerializeOptions(GetEnvelopeResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GIBUSER, 'http://schemas.i2i.com/ei/wsdl', 'GIBUSER');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GIBUSER), 'TYPE_', '[ExtName="TYPE"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GIBUSER), 'UNIT_', '[ExtName="UNIT"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(SerialTypes), 'http://parkentegrasyon.com.tr/', 'SerialTypes');
  RemClassRegistry.RegisterXSClass(UpdateSerial, 'http://parkentegrasyon.com.tr/', 'UpdateSerial');
  RemClassRegistry.RegisterSerializeOptions(UpdateSerial, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSerial, 'http://parkentegrasyon.com.tr/', 'GetSerial');
  RemClassRegistry.RegisterSerializeOptions(GetSerial, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(UpdateSerialWithNewInId, 'http://parkentegrasyon.com.tr/', 'UpdateSerialWithNewInId');
  RemClassRegistry.RegisterSerializeOptions(UpdateSerialWithNewInId, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetSerialList, 'http://parkentegrasyon.com.tr/', 'GetSerialList');
  RemClassRegistry.RegisterSerializeOptions(GetSerialList, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoginWithTaxOrIdNo, 'http://parkentegrasyon.com.tr/', 'LoginWithTaxOrIdNo');
  RemClassRegistry.RegisterSerializeOptions(LoginWithTaxOrIdNo, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(LoginResponse, 'http://parkentegrasyon.com.tr/', 'LoginResponse');
  RemClassRegistry.RegisterSerializeOptions(LoginResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(Login, 'http://parkentegrasyon.com.tr/', 'Login');
  RemClassRegistry.RegisterSerializeOptions(Login, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvQueryParams, 'http://parkentegrasyon.com.tr/', 'GetInvQueryParams');
  RemClassRegistry.RegisterSerializeOptions(GetInvQueryParams, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PARKInvoiceObjectToUblTextResponse, 'http://parkentegrasyon.com.tr/', 'PARKInvoiceObjectToUblTextResponse');
  RemClassRegistry.RegisterSerializeOptions(PARKInvoiceObjectToUblTextResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(PARKInvoiceObjectToUblText, 'http://parkentegrasyon.com.tr/', 'PARKInvoiceObjectToUblText');
  RemClassRegistry.RegisterSerializeOptions(PARKInvoiceObjectToUblText, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendPARKInvoiceObjectConnectorResponse, 'http://parkentegrasyon.com.tr/', 'SendPARKInvoiceObjectConnectorResponse');
  RemClassRegistry.RegisterSerializeOptions(SendPARKInvoiceObjectConnectorResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GibUserListTxt, 'http://parkentegrasyon.com.tr/', 'GibUserListTxt');
  RemClassRegistry.RegisterSerializeOptions(GibUserListTxt, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ERPRefSendInvoiceAllResponse, 'http://parkentegrasyon.com.tr/', 'ERPRefSendInvoiceAllResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ERPRefSendInvoiceAllResponse), 'ERPRefSendInvoiceAllResult', '[ArrayItemName="SendInvoiceRef"]');
  RemClassRegistry.RegisterSerializeOptions(ERPRefSendInvoiceAllResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(ERPRefSendInvoiceAll, 'http://parkentegrasyon.com.tr/', 'ERPRefSendInvoiceAll');
  RemClassRegistry.RegisterSerializeOptions(ERPRefSendInvoiceAll, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GibUserListTxtResponse, 'http://parkentegrasyon.com.tr/', 'GibUserListTxtResponse');
  RemClassRegistry.RegisterSerializeOptions(GibUserListTxtResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(InvQueryInsParamsResponse, 'http://parkentegrasyon.com.tr/', 'InvQueryInsParamsResponse');
  RemClassRegistry.RegisterSerializeOptions(InvQueryInsParamsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(InvQueryInsParams, 'http://parkentegrasyon.com.tr/', 'InvQueryInsParams');
  RemClassRegistry.RegisterSerializeOptions(InvQueryInsParams, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(GetInvQueryParamsResponse, 'http://parkentegrasyon.com.tr/', 'GetInvQueryParamsResponse');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(GetInvQueryParamsResponse), 'GetInvQueryParamsResult', '[ArrayItemName="QueryParameter"]');
  RemClassRegistry.RegisterSerializeOptions(GetInvQueryParamsResponse, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendPARKInvoiceObject, 'http://parkentegrasyon.com.tr/', 'SendPARKInvoiceObject');
  RemClassRegistry.RegisterSerializeOptions(SendPARKInvoiceObject, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(SendPARKInvoiceObjectConnector, 'http://parkentegrasyon.com.tr/', 'SendPARKInvoiceObjectConnector');
  RemClassRegistry.RegisterSerializeOptions(SendPARKInvoiceObjectConnector, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(REQUEST_RETURNType, 'http://schemas.i2i.com/ei/entity', 'REQUEST_RETURNType');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(REQUEST_RETURNType), 'WARNINGS', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterXSClass(SendPARKInvoiceObjectResponse, 'http://parkentegrasyon.com.tr/', 'SendPARKInvoiceObjectResponse');
  RemClassRegistry.RegisterSerializeOptions(SendPARKInvoiceObjectResponse, [xoLiteralParam]);

end.