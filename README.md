# Fluent::TextParser::MsgPackParser

[MessagePack](http://msgpack.org/) parser for Fluentd.
Useful for Inputs that don't support this format, namely [in\_udp](http://docs.fluentd.org/articles/in_udp), [in\_tcp](http://docs.fluentd.org/articles/in_tcp) and [in\_tail](http://docs.fluentd.org/articles/in_tail)

## Installation

Please check [Plugin management docs](http://docs.fluentd.org/articles/plugin-management)

## Usage
### Example configuration
```
<source>
  @type udp
  port 12201
  tag system
  format msgpack
</source>
```

### Wire protocol
The parser is wire protocol agnostic, meaning it will just `yield` whatever is fed to it, assuming it's a valid MessagePack string.

## Contributing

1. Fork it ( https://github.com/bitex-la/fluent-plugin-msgpack-parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## TODO
* Specs?
