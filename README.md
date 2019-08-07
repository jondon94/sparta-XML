# sparta-XML

## XML

**Introduction**

>This Repo was created to help understnad how to run tests against differnet file types. In the past i have ran test against json files when testing APIs. However some databases are stored in XML files and this requires a slightly different method for parsing and testing. Nokogiri has alsobeen implemented to get a better grasp on its function for passing data.

**Nokogiri**

To implement Nokogiri type:

    require 'nokogiri'

 in to the spec_helper file. From there you can:

    require 'spec_helper'
in the testing file (where the tests will be written).

**Walkthrough**

>To run the tests type 'rspec' into the terminal at the file location.

>Additional tests can be added to the files by following the structure of existing tests.
