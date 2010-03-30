require 'rubygems'
gem 'mumboe-soap4r'
require "nettica/stubs/netticaDriver"
require 'base64'

# http://dev.ctor.org/soap4r
# http://markthomas.org/2007/09/12/getting-started-with-soap4r/
# wsdl2ruby.rb --module_path Nettica::Stubs --wsdl 'https://www.nettica.com/DNS/DnsApi.asmx?WSDL' --type client --classdef nettica --force

module Nettica

  class Client

    include Nettica::Stubs

    def initialize(username, password)
      @username = username
      @password = Base64.encode64(password).strip
      @proxy = DnsApiAsmxSoap.new
    end


    #   domainName - SOAP::SOAPString
    #   hostName - SOAP::SOAPString
    #   recordType - SOAP::SOAPString
    #   data - SOAP::SOAPString
    #   ttl - SOAP::SOAPInt
    #   priority - SOAP::SOAPInt
    def create_domain_record(domainName = nil, hostName = nil, recordType = nil, data = nil, ttl = 0, priority = 0)
      valid_ttls = [0, 1, 60, 300, 600, 900, 1800, 2700, 3600, 7200, 14400, 28800, 43200, 64800, 86400, 172800]
      raise "Ttl must be one of #{valid_ttls.join(',')}" if ttl && ! valid_ttls.include?(ttl)

      mx_prio = [5, 10, 20, 30, 40, 50, 60, 70, 80, 90]
      f_prio = [1, 2, 3]
      raise "MX priority must be one of #{mx_prio.join(',')}" if recordType == "MX" and ! mx_prio.include?(priority)
      raise "F priority must be one of #{f_prio.join(',')}" if recordType == "F" and ! f_prio.include?(priority)

      valid_types = ["A", "CNAME", "MX", "F", "TXT", "SRV"]
      raise "Record type must be one of #{valid_types.join(',')}" if recordType && ! valid_types.include?(recordType)

      DomainRecord.new(domainName, hostName, recordType, data, ttl, priority)
    end

    def decode_status(result)
      case result.result.status
        when 200 then "Success"
        when 401 then "Access Denied"
        when 404 then "Not Found"
        when 430 then "Domain Exists"
        when 431 then "Record already exists"
        when 432 then "Invalid record type.  Must be A, CNAME, MX, F, TXT, SRV"
        when 450 then "No Service"
        when 451 then "No credits"
        when 460 then "Your service has expired"
      end
    end

    def update_record(old_domain_record, new_domain_record)
      @proxy.updateRecord(UpdateRecord.new(@username, @password, old_domain_record, new_domain_record)).updateRecordResult
    end

    def delete_record(domain_record)
      @proxy.deleteRecord(DeleteRecord.new(@username, @password, domain_record)).deleteRecordResult
    end

    def list_zones()
      @proxy.listZones(ListZones.new(@username, @password)).listZonesResult
    end

    def apply_template(domainName, groupName)
      @proxy.applyTemplate(ApplyTemplate.new(@username, @password, domainName, groupName)).applyTemplateResult
    end

    def list_domain(domainName)
      @proxy.listDomain(ListDomain.new(@username, @password, domainName)).listDomainResult
    end

    def create_secondary_zone(domainName, master, ipAddress)
      @proxy.createSecondaryZone(CreateSecondaryZone.new(@username, @password, domainName, master, ipAddress)).createSecondaryZoneResult
    end

    def get_service_info()
      @proxy.getServiceInfo(GetServiceInfo.new(@username, @password)).getServiceInfoResult
    end

    def delete_zone(domainName)
      @proxy.deleteZone(DeleteZone.new(@username, @password, domainName)).deleteZoneResult
    end

    def create_zone(domainName)
      @proxy.createZone(CreateZone.new(@username, @password, domainName, "")).createZoneResult
    end

    def add_record(domain_record)
      @proxy.addRecord(AddRecord.new(@username, @password, domain_record)).addRecordResult
    end
  end

end
