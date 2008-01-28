require 'nettica/stubs/nettica.rb'
require 'nettica/stubs/netticaMappingRegistry.rb'
require 'soap/rpc/driver'

module Nettica::Stubs

class DnsApiAsmxSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.nettica.com/DNS/DnsApi.asmx"

  Methods = [
    [ "http://www.nettica.com/DNS/DnsApi/GetServiceInfo",
      "getServiceInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "GetServiceInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "GetServiceInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/CreateZone",
      "createZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "CreateZone"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "CreateZoneResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/CreateSecondaryZone",
      "createSecondaryZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "CreateSecondaryZone"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "CreateSecondaryZoneResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/DeleteZone",
      "deleteZone",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "DeleteZone"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "DeleteZoneResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/ListZones",
      "listZones",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "ListZones"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "ListZonesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/ListDomain",
      "listDomain",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "ListDomain"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "ListDomainResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/AddRecord",
      "addRecord",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "AddRecord"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "AddRecordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/UpdateRecord",
      "updateRecord",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "UpdateRecord"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "UpdateRecordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/DeleteRecord",
      "deleteRecord",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "DeleteRecord"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "DeleteRecordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.nettica.com/DNS/DnsApi/ApplyTemplate",
      "applyTemplate",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "ApplyTemplate"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.nettica.com/DNS/DnsApi", "ApplyTemplateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
