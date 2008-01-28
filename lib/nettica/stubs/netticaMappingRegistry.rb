require 'nettica/stubs/nettica.rb'
require 'soap/mapping'

module Nettica; module Stubs

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsDnsApi = "http://www.nettica.com/DNS/DnsApi"

  EncodedRegistry.register(
    :class => Nettica::Stubs::ServiceResult,
    :schema_type => XSD::QName.new(NsDnsApi, "ServiceResult"),
    :schema_element => [
      ["result", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "Result")], [0, 1]],
      ["remainingCredits", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "RemainingCredits")]],
      ["totalCredits", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "TotalCredits")]],
      ["serviceRenewalDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsDnsApi, "ServiceRenewalDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => Nettica::Stubs::DnsResult,
    :schema_type => XSD::QName.new(NsDnsApi, "DnsResult"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Status")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Description")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Nettica::Stubs::ZoneResult,
    :schema_type => XSD::QName.new(NsDnsApi, "ZoneResult"),
    :schema_element => [
      ["result", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "Result")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Count")]],
      ["zone", ["Nettica::Stubs::ArrayOfString", XSD::QName.new(NsDnsApi, "Zone")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Nettica::Stubs::ArrayOfString,
    :schema_type => XSD::QName.new(NsDnsApi, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Nettica::Stubs::DomainResult,
    :schema_type => XSD::QName.new(NsDnsApi, "DomainResult"),
    :schema_element => [
      ["result", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "Result")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Count")]],
      ["record", ["Nettica::Stubs::ArrayOfDomainRecord", XSD::QName.new(NsDnsApi, "Record")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Nettica::Stubs::ArrayOfDomainRecord,
    :schema_type => XSD::QName.new(NsDnsApi, "ArrayOfDomainRecord"),
    :schema_element => [
      ["domainRecord", ["Nettica::Stubs::DomainRecord[]", XSD::QName.new(NsDnsApi, "DomainRecord")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Nettica::Stubs::DomainRecord,
    :schema_type => XSD::QName.new(NsDnsApi, "DomainRecord"),
    :schema_element => [
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]],
      ["hostName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "HostName")], [0, 1]],
      ["recordType", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "RecordType")], [0, 1]],
      ["data", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Data")], [0, 1]],
      ["tTL", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "TTL")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Priority")]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ServiceResult,
    :schema_type => XSD::QName.new(NsDnsApi, "ServiceResult"),
    :schema_element => [
      ["result", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "Result")], [0, 1]],
      ["remainingCredits", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "RemainingCredits")]],
      ["totalCredits", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "TotalCredits")]],
      ["serviceRenewalDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsDnsApi, "ServiceRenewalDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DnsResult,
    :schema_type => XSD::QName.new(NsDnsApi, "DnsResult"),
    :schema_element => [
      ["status", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Status")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Description")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ZoneResult,
    :schema_type => XSD::QName.new(NsDnsApi, "ZoneResult"),
    :schema_element => [
      ["result", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "Result")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Count")]],
      ["zone", ["Nettica::Stubs::ArrayOfString", XSD::QName.new(NsDnsApi, "Zone")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ArrayOfString,
    :schema_type => XSD::QName.new(NsDnsApi, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DomainResult,
    :schema_type => XSD::QName.new(NsDnsApi, "DomainResult"),
    :schema_element => [
      ["result", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "Result")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Count")]],
      ["record", ["Nettica::Stubs::ArrayOfDomainRecord", XSD::QName.new(NsDnsApi, "Record")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ArrayOfDomainRecord,
    :schema_type => XSD::QName.new(NsDnsApi, "ArrayOfDomainRecord"),
    :schema_element => [
      ["domainRecord", ["Nettica::Stubs::DomainRecord[]", XSD::QName.new(NsDnsApi, "DomainRecord")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DomainRecord,
    :schema_type => XSD::QName.new(NsDnsApi, "DomainRecord"),
    :schema_element => [
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]],
      ["hostName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "HostName")], [0, 1]],
      ["recordType", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "RecordType")], [0, 1]],
      ["data", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Data")], [0, 1]],
      ["tTL", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "TTL")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(NsDnsApi, "Priority")]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::GetServiceInfo,
    :schema_name => XSD::QName.new(NsDnsApi, "GetServiceInfo"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::GetServiceInfoResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "GetServiceInfoResponse"),
    :schema_element => [
      ["getServiceInfoResult", ["Nettica::Stubs::ServiceResult", XSD::QName.new(NsDnsApi, "GetServiceInfoResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::CreateZone,
    :schema_name => XSD::QName.new(NsDnsApi, "CreateZone"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]],
      ["ipAddress", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "IpAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::CreateZoneResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "CreateZoneResponse"),
    :schema_element => [
      ["createZoneResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "CreateZoneResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::CreateSecondaryZone,
    :schema_name => XSD::QName.new(NsDnsApi, "CreateSecondaryZone"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]],
      ["master", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Master")], [0, 1]],
      ["ipAddress", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "IpAddress")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::CreateSecondaryZoneResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "CreateSecondaryZoneResponse"),
    :schema_element => [
      ["createSecondaryZoneResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "CreateSecondaryZoneResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DeleteZone,
    :schema_name => XSD::QName.new(NsDnsApi, "DeleteZone"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DeleteZoneResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "DeleteZoneResponse"),
    :schema_element => [
      ["deleteZoneResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "DeleteZoneResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ListZones,
    :schema_name => XSD::QName.new(NsDnsApi, "ListZones"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ListZonesResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "ListZonesResponse"),
    :schema_element => [
      ["listZonesResult", ["Nettica::Stubs::ZoneResult", XSD::QName.new(NsDnsApi, "ListZonesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ListDomain,
    :schema_name => XSD::QName.new(NsDnsApi, "ListDomain"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ListDomainResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "ListDomainResponse"),
    :schema_element => [
      ["listDomainResult", ["Nettica::Stubs::DomainResult", XSD::QName.new(NsDnsApi, "ListDomainResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::AddRecord,
    :schema_name => XSD::QName.new(NsDnsApi, "AddRecord"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["d", "Nettica::Stubs::DomainRecord", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::AddRecordResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "AddRecordResponse"),
    :schema_element => [
      ["addRecordResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "AddRecordResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::UpdateRecord,
    :schema_name => XSD::QName.new(NsDnsApi, "UpdateRecord"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["old", ["Nettica::Stubs::DomainRecord", XSD::QName.new(NsDnsApi, "Old")], [0, 1]],
      ["new", ["Nettica::Stubs::DomainRecord", XSD::QName.new(NsDnsApi, "New")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::UpdateRecordResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "UpdateRecordResponse"),
    :schema_element => [
      ["updateRecordResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "UpdateRecordResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DeleteRecord,
    :schema_name => XSD::QName.new(NsDnsApi, "DeleteRecord"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["d", "Nettica::Stubs::DomainRecord", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::DeleteRecordResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "DeleteRecordResponse"),
    :schema_element => [
      ["deleteRecordResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "DeleteRecordResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ApplyTemplate,
    :schema_name => XSD::QName.new(NsDnsApi, "ApplyTemplate"),
    :schema_element => [
      ["userName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "UserName")], [0, 1]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "Password")], [0, 1]],
      ["domainName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "DomainName")], [0, 1]],
      ["groupName", ["SOAP::SOAPString", XSD::QName.new(NsDnsApi, "GroupName")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Nettica::Stubs::ApplyTemplateResponse,
    :schema_name => XSD::QName.new(NsDnsApi, "ApplyTemplateResponse"),
    :schema_element => [
      ["applyTemplateResult", ["Nettica::Stubs::DnsResult", XSD::QName.new(NsDnsApi, "ApplyTemplateResult")], [0, 1]]
    ]
  )
end

end; end
