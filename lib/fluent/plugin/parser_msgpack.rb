require 'fluent/parser'

module Fluent
  class TextParser
    class MsgPackParser < Parser
      Plugin.register_parser("msgpack", self)

      def parse(text)
        yield Fluent::EventTime.now, MessagePack.unpack(text)
        # yield nil, MessagePack.unpack(text)
      end
    end
  end
end
