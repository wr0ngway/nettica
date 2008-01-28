require 'rubygems'
gem 'soap4r'
require "nettica/stubs/netticaDriver"

# http://dev.ctor.org/soap4r
# http://markthomas.org/2007/09/12/getting-started-with-soap4r/
# wsdl2ruby.rb --module_path Nettica::Stubs --wsdl 'https://www.nettica.com/DNS/DnsApi.asmx?WSDL' --type client --classdef nettica --force

module Nettica

  class Client

    include Nettica::Stubs

    def initialize(username, password)
      @username = username
      @password = password
      @proxy = DnsApiAsmxSoap.new
    end


    #   domainName - SOAP::SOAPString
    #   hostName - SOAP::SOAPString
    #   recordType - SOAP::SOAPString
    #   data - SOAP::SOAPString
    #   ttl - SOAP::SOAPInt
    #   priority - SOAP::SOAPInt
    def self.create_domain_record(domainName = nil, hostName = nil, recordType = nil, data = nil, ttl = nil, priority = nil)
      DomainRecord.new(domainName, hostName, recordType, data, ttl, priority)
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

    def create_zone(domainName, ipAddress)
      @proxy.createZone(CreateZone.new(@username, @password, domainName, ipAddress)).createZoneResult
    end

    def add_record(domain_record)
      @proxy.addRecord(AddRecord.new(@username, @password, domain_record)).addRecordResult
    end
  end

end
