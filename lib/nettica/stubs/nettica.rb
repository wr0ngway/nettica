require 'xsd/qname'

module Nettica; module Stubs


# {http://www.nettica.com/DNS/DnsApi}ServiceResult
#   result - Nettica::Stubs::DnsResult
#   remainingCredits - SOAP::SOAPInt
#   totalCredits - SOAP::SOAPInt
#   serviceRenewalDate - SOAP::SOAPDateTime
class ServiceResult
  attr_accessor :result
  attr_accessor :remainingCredits
  attr_accessor :totalCredits
  attr_accessor :serviceRenewalDate

  def initialize(result = nil, remainingCredits = nil, totalCredits = nil, serviceRenewalDate = nil)
    @result = result
    @remainingCredits = remainingCredits
    @totalCredits = totalCredits
    @serviceRenewalDate = serviceRenewalDate
  end
end

# {http://www.nettica.com/DNS/DnsApi}DnsResult
#   status - SOAP::SOAPInt
#   description - SOAP::SOAPString
class DnsResult
  attr_accessor :status
  attr_accessor :description

  def initialize(status = nil, description = nil)
    @status = status
    @description = description
  end
end

# {http://www.nettica.com/DNS/DnsApi}ZoneResult
#   result - Nettica::Stubs::DnsResult
#   count - SOAP::SOAPInt
#   zone - Nettica::Stubs::ArrayOfString
class ZoneResult
  attr_accessor :result
  attr_accessor :count
  attr_accessor :zone

  def initialize(result = nil, count = nil, zone = nil)
    @result = result
    @count = count
    @zone = zone
  end
end

# {http://www.nettica.com/DNS/DnsApi}ArrayOfString
class ArrayOfString < ::Array
end

# {http://www.nettica.com/DNS/DnsApi}DomainResult
#   result - Nettica::Stubs::DnsResult
#   count - SOAP::SOAPInt
#   record - Nettica::Stubs::ArrayOfDomainRecord
class DomainResult
  attr_accessor :result
  attr_accessor :count
  attr_accessor :record

  def initialize(result = nil, count = nil, record = nil)
    @result = result
    @count = count
    @record = record
  end
end

# {http://www.nettica.com/DNS/DnsApi}ArrayOfDomainRecord
class ArrayOfDomainRecord < ::Array
end

# {http://www.nettica.com/DNS/DnsApi}DomainRecord
#   domainName - SOAP::SOAPString
#   hostName - SOAP::SOAPString
#   recordType - SOAP::SOAPString
#   data - SOAP::SOAPString
#   tTL - SOAP::SOAPInt
#   priority - SOAP::SOAPInt
class DomainRecord
  attr_accessor :domainName
  attr_accessor :hostName
  attr_accessor :recordType
  attr_accessor :data
  attr_accessor :tTL
  attr_accessor :priority

  def initialize(domainName = nil, hostName = nil, recordType = nil, data = nil, tTL = nil, priority = nil)
    @domainName = domainName
    @hostName = hostName
    @recordType = recordType
    @data = data
    @tTL = tTL
    @priority = priority
  end
end

# {http://www.nettica.com/DNS/DnsApi}GetServiceInfo
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
class GetServiceInfo
  attr_accessor :userName
  attr_accessor :password

  def initialize(userName = nil, password = nil)
    @userName = userName
    @password = password
  end
end

# {http://www.nettica.com/DNS/DnsApi}GetServiceInfoResponse
#   getServiceInfoResult - Nettica::Stubs::ServiceResult
class GetServiceInfoResponse
  attr_accessor :getServiceInfoResult

  def initialize(getServiceInfoResult = nil)
    @getServiceInfoResult = getServiceInfoResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}CreateZone
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   domainName - SOAP::SOAPString
#   ipAddress - SOAP::SOAPString
class CreateZone
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :domainName
  attr_accessor :ipAddress

  def initialize(userName = nil, password = nil, domainName = nil, ipAddress = nil)
    @userName = userName
    @password = password
    @domainName = domainName
    @ipAddress = ipAddress
  end
end

# {http://www.nettica.com/DNS/DnsApi}CreateZoneResponse
#   createZoneResult - Nettica::Stubs::DnsResult
class CreateZoneResponse
  attr_accessor :createZoneResult

  def initialize(createZoneResult = nil)
    @createZoneResult = createZoneResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}CreateSecondaryZone
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   domainName - SOAP::SOAPString
#   master - SOAP::SOAPString
#   ipAddress - SOAP::SOAPString
class CreateSecondaryZone
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :domainName
  attr_accessor :master
  attr_accessor :ipAddress

  def initialize(userName = nil, password = nil, domainName = nil, master = nil, ipAddress = nil)
    @userName = userName
    @password = password
    @domainName = domainName
    @master = master
    @ipAddress = ipAddress
  end
end

# {http://www.nettica.com/DNS/DnsApi}CreateSecondaryZoneResponse
#   createSecondaryZoneResult - Nettica::Stubs::DnsResult
class CreateSecondaryZoneResponse
  attr_accessor :createSecondaryZoneResult

  def initialize(createSecondaryZoneResult = nil)
    @createSecondaryZoneResult = createSecondaryZoneResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}DeleteZone
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   domainName - SOAP::SOAPString
class DeleteZone
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :domainName

  def initialize(userName = nil, password = nil, domainName = nil)
    @userName = userName
    @password = password
    @domainName = domainName
  end
end

# {http://www.nettica.com/DNS/DnsApi}DeleteZoneResponse
#   deleteZoneResult - Nettica::Stubs::DnsResult
class DeleteZoneResponse
  attr_accessor :deleteZoneResult

  def initialize(deleteZoneResult = nil)
    @deleteZoneResult = deleteZoneResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}ListZones
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
class ListZones
  attr_accessor :userName
  attr_accessor :password

  def initialize(userName = nil, password = nil)
    @userName = userName
    @password = password
  end
end

# {http://www.nettica.com/DNS/DnsApi}ListZonesResponse
#   listZonesResult - Nettica::Stubs::ZoneResult
class ListZonesResponse
  attr_accessor :listZonesResult

  def initialize(listZonesResult = nil)
    @listZonesResult = listZonesResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}ListDomain
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   domainName - SOAP::SOAPString
class ListDomain
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :domainName

  def initialize(userName = nil, password = nil, domainName = nil)
    @userName = userName
    @password = password
    @domainName = domainName
  end
end

# {http://www.nettica.com/DNS/DnsApi}ListDomainResponse
#   listDomainResult - Nettica::Stubs::DomainResult
class ListDomainResponse
  attr_accessor :listDomainResult

  def initialize(listDomainResult = nil)
    @listDomainResult = listDomainResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}AddRecord
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   d - Nettica::Stubs::DomainRecord
class AddRecord
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :d

  def initialize(userName = nil, password = nil, d = nil)
    @userName = userName
    @password = password
    @d = d
  end
end

# {http://www.nettica.com/DNS/DnsApi}AddRecordResponse
#   addRecordResult - Nettica::Stubs::DnsResult
class AddRecordResponse
  attr_accessor :addRecordResult

  def initialize(addRecordResult = nil)
    @addRecordResult = addRecordResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}UpdateRecord
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   old - Nettica::Stubs::DomainRecord
#   new - Nettica::Stubs::DomainRecord
class UpdateRecord
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :old
  attr_accessor :new

  def initialize(userName = nil, password = nil, old = nil, new = nil)
    @userName = userName
    @password = password
    @old = old
    @new = new
  end
end

# {http://www.nettica.com/DNS/DnsApi}UpdateRecordResponse
#   updateRecordResult - Nettica::Stubs::DnsResult
class UpdateRecordResponse
  attr_accessor :updateRecordResult

  def initialize(updateRecordResult = nil)
    @updateRecordResult = updateRecordResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}DeleteRecord
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   d - Nettica::Stubs::DomainRecord
class DeleteRecord
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :d

  def initialize(userName = nil, password = nil, d = nil)
    @userName = userName
    @password = password
    @d = d
  end
end

# {http://www.nettica.com/DNS/DnsApi}DeleteRecordResponse
#   deleteRecordResult - Nettica::Stubs::DnsResult
class DeleteRecordResponse
  attr_accessor :deleteRecordResult

  def initialize(deleteRecordResult = nil)
    @deleteRecordResult = deleteRecordResult
  end
end

# {http://www.nettica.com/DNS/DnsApi}ApplyTemplate
#   userName - SOAP::SOAPString
#   password - SOAP::SOAPString
#   domainName - SOAP::SOAPString
#   groupName - SOAP::SOAPString
class ApplyTemplate
  attr_accessor :userName
  attr_accessor :password
  attr_accessor :domainName
  attr_accessor :groupName

  def initialize(userName = nil, password = nil, domainName = nil, groupName = nil)
    @userName = userName
    @password = password
    @domainName = domainName
    @groupName = groupName
  end
end

# {http://www.nettica.com/DNS/DnsApi}ApplyTemplateResponse
#   applyTemplateResult - Nettica::Stubs::DnsResult
class ApplyTemplateResponse
  attr_accessor :applyTemplateResult

  def initialize(applyTemplateResult = nil)
    @applyTemplateResult = applyTemplateResult
  end
end


end; end
