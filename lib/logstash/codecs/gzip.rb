# encoding: utf-8
require "logstash/codecs/base"
require "logstash/namespace"
require "zlib"
require "stringio"

# This  codec will ungzip the input data.
#
#
# input {
#   jms { codec => gzip }
# }
#
# or (not supported yet)
#
# output {
#   stdout { codec =>  }
# }
#
class LogStash::Codecs::Gzip < LogStash::Codecs::Base

  # The codec name
  config_name "gzip"

  # Append a string to the message
  #config :append, :validate => :string, :default => ', Hello World!'

  def register
  end # def register

  def decode(data)
    decoder = Zlib::GzipReader.new(StringIO.new(data))
	raw = decoder.read

	yield LogStash::Event.new("message" => raw)
  end # def decode

  # Encode a single event, this returns the raw data to be returned as a String
  def encode_sync(event)
    #Zlib::GzipWriter
  end # def encode_sync

end # class LogStash::Codecs::Gzip
