This is an experimental IG using Clinical Quality Language (CQL), a high-level, domain-specific language focused on clinical quality. This IG is to assist building computable measures using FHIR resources and decision-support knowledge artifacts for clinical pathogen genomic data
 
 ![image](https://github.com/soyeangrey/CQFPathogenGenomic/assets/59749174/b8204501-73eb-4868-98ab-2fb7e09ab1c9)
  ![image](https://github.com/soyeangrey/CQFPathogenGenomic/assets/59749174/a4c1b8c9-d251-4494-8a1e-b9f6e7c4ebc4)

Basic Setup

The first step is to get a local clone of this repo.

To open a terminal in VS Code

Prerequisites

Install a git client

Depedencies

Before you build the IG, please install dependencies

Java / IG Publisher
Go to https://adoptopenjdk.net/ and download the latest (version 8 or higher) JDK for your platform, and install it.

There are scripts in this repository that will download and run the latest HL7 IG Publisher.

Please make sure that the Java bin directory is added to your path.

This project includes scripts that will automatically download the correct version of the IG-Publisher.

Documentation for the IG-Publisher is available at https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation.

Ruby / Jekyll
Jekyll requires Ruby version 2.1 or greater. Depending on your operating system, you may already have Ruby bundled with it. Otherwise, or if you need a newer version, go to https://www.ruby-lang.org/en/downloads/ for directions.

Jekyll

Go to https://jekyllrb.com and follow the instructions there, for example gem install jekyll bundler. The end result of this should be that the binary "jekyll" is now in your path.

Build
Once you have the dependencies installed, you can build the IG by first updating the publisher:

_updatePublisher
Once the publisher has been downloaded to your local environment, you can build the IG:

_genonce

Adding a CQL library

VSCode CQL Support
To validate and test CQL, use the VSCode CQL Plugin. Follow the instructions there to install the plugin, then open VS Code on the root folder of this IG.
