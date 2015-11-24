# ParseDhcp

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/parse_dhcp`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'parse_dhcp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parse_dhcp

## Usage
__1. Read file__

* The first, create object dhcp with param: the path to file config

```ruby
dhcp = Parse_Dhcp::DHCP.new(path)
```

* Get subnet

```ruby
dhcp.subnets
#Result
=> ["192.168.1.0", "10.152.187.0"]
```

* Get netmask

```ruby
dhcp.netmasks
#Result
=> ["255.255.255.0"]
```


* Get list pool

```ruby
dhcp.pools
#Result
=> [{"1"=>
   {"host"=>"bla1",
    "hardware_ethernet"=>"DD:GH:DF:E5:F7:D7",
    "fixed-address"=>"192.168.1.2"},
  "2"=>
   {"host"=>"bla2",
    "hardware_ethernet"=>"00:JJ:YU:38:AC:45",
    "fixed-address"=>"192.168.1.20"}},
 {"1"=>
   {"host"=>"bla3",
    "hardware_ethernet"=>"00:KK:HD:66:55:9B",
    "fixed-address"=>"10.152.187.2"}}]
```


* Get list option

```ruby
dhcp.options
#Result
=> [{""=>"",
  "routers"=>"192.168.1.1",
  "subnet-mask"=>"255.255.255.0",
  "broadcast-address"=>"192.168.1.255",
  "domain-name-servers"=>"194.168.4.100",
  "ntp-servers"=>"192.168.1.1",
  "netbios-name-servers"=>"192.168.1.1",
  "netbios-node-type"=>"2",
  "default-lease-time"=>"86400",
  "max-lease-time"=>"86400",
  "authoritative"=>true},
 {"routers"=>"10.152.187.1",
  "subnet-mask"=>"255.255.255.0",
  "broadcast-address"=>"10.152.187.255",
  "domain-name-servers"=>"194.168.4.100",
  "ntp-servers"=>"10.152.187.1",
  "netbios-name-servers"=>"10.152.187.1",
  "netbios-node-type"=>"2",
  "default-lease-time"=>"86400",
  "max-lease-time"=>"86400"}]
```

* Get range, allow in pool
```ruby

```
__2. Write file__

Create object net, then set attribute for object. Then call method write_file in module WriteConf with param: "path/file_name"
```ruby
result = WriteConf.write_file(path/file_name)
#Success
	=> true
#Fail
 => false 
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/parse_dhcp.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

