module Fluent
  class TextParser
    class MsgPackParser < Parser
      Plugin.register_parser("msgpack", self)

      def parse(text)
        yield MessagePack.unpack(text)
      end
    end
  end
end
