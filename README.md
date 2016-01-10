# Go Puppet Module for Boxen


## Usage

```puppet
include go

go::version { '1.5.2': }

include go::1_5_2

go::local { '/path/to/whatever':
  version => '1.5.2'
}
```

## Required Puppet Modules

* `boxen`
* `repository`
* `stdlib`
