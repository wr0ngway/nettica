#!/usr/bin/env ruby
require 'nettica/stubs/netticaDriver.rb'


module Nettica::Stubs

endpoint_url = ARGV.shift
obj = DnsApiAsmxSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   GetServiceInfo(parameters)
#
# ARGS
#   parameters      GetServiceInfo - {http://www.nettica.com/DNS/DnsApi}GetServiceInfo
#
# RETURNS
#   parameters      GetServiceInfoResponse - {http://www.nettica.com/DNS/DnsApi}GetServiceInfoResponse
#
parameters = nil
puts obj.getServiceInfo(parameters)

# SYNOPSIS
#   CreateZone(parameters)
#
# ARGS
#   parameters      CreateZone - {http://www.nettica.com/DNS/DnsApi}CreateZone
#
# RETURNS
#   parameters      CreateZoneResponse - {http://www.nettica.com/DNS/DnsApi}CreateZoneResponse
#
parameters = nil
puts obj.createZone(parameters)

# SYNOPSIS
#   CreateSecondaryZone(parameters)
#
# ARGS
#   parameters      CreateSecondaryZone - {http://www.nettica.com/DNS/DnsApi}CreateSecondaryZone
#
# RETURNS
#   parameters      CreateSecondaryZoneResponse - {http://www.nettica.com/DNS/DnsApi}CreateSecondaryZoneResponse
#
parameters = nil
puts obj.createSecondaryZone(parameters)

# SYNOPSIS
#   DeleteZone(parameters)
#
# ARGS
#   parameters      DeleteZone - {http://www.nettica.com/DNS/DnsApi}DeleteZone
#
# RETURNS
#   parameters      DeleteZoneResponse - {http://www.nettica.com/DNS/DnsApi}DeleteZoneResponse
#
parameters = nil
puts obj.deleteZone(parameters)

# SYNOPSIS
#   ListZones(parameters)
#
# ARGS
#   parameters      ListZones - {http://www.nettica.com/DNS/DnsApi}ListZones
#
# RETURNS
#   parameters      ListZonesResponse - {http://www.nettica.com/DNS/DnsApi}ListZonesResponse
#
parameters = nil
puts obj.listZones(parameters)

# SYNOPSIS
#   ListDomain(parameters)
#
# ARGS
#   parameters      ListDomain - {http://www.nettica.com/DNS/DnsApi}ListDomain
#
# RETURNS
#   parameters      ListDomainResponse - {http://www.nettica.com/DNS/DnsApi}ListDomainResponse
#
parameters = nil
puts obj.listDomain(parameters)

# SYNOPSIS
#   AddRecord(parameters)
#
# ARGS
#   parameters      AddRecord - {http://www.nettica.com/DNS/DnsApi}AddRecord
#
# RETURNS
#   parameters      AddRecordResponse - {http://www.nettica.com/DNS/DnsApi}AddRecordResponse
#
parameters = nil
puts obj.addRecord(parameters)

# SYNOPSIS
#   UpdateRecord(parameters)
#
# ARGS
#   parameters      UpdateRecord - {http://www.nettica.com/DNS/DnsApi}UpdateRecord
#
# RETURNS
#   parameters      UpdateRecordResponse - {http://www.nettica.com/DNS/DnsApi}UpdateRecordResponse
#
parameters = nil
puts obj.updateRecord(parameters)

# SYNOPSIS
#   DeleteRecord(parameters)
#
# ARGS
#   parameters      DeleteRecord - {http://www.nettica.com/DNS/DnsApi}DeleteRecord
#
# RETURNS
#   parameters      DeleteRecordResponse - {http://www.nettica.com/DNS/DnsApi}DeleteRecordResponse
#
parameters = nil
puts obj.deleteRecord(parameters)

# SYNOPSIS
#   ApplyTemplate(parameters)
#
# ARGS
#   parameters      ApplyTemplate - {http://www.nettica.com/DNS/DnsApi}ApplyTemplate
#
# RETURNS
#   parameters      ApplyTemplateResponse - {http://www.nettica.com/DNS/DnsApi}ApplyTemplateResponse
#
parameters = nil
puts obj.applyTemplate(parameters)




end
