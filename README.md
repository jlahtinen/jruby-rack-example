This is a simple rack app that fails with test.pdf file when running inside tomcat. Inside puma this works fine.

# Wabler problem workaround
Without changing init.rb file warbler creaters, app will not work inside tomcat.
In init.rb file (under META-INF directory) you have to set `Gem.paths = ENV`

# To make a war file

`bundle`

`bundle exec warble`

# To run without tomcat

`bundle exec puma`

# How to get test file

File to use can be downloaded from https://tcpdf.org/examples/example_065/

# Example crl

curl -F upload=@file.pdf http://localhost:7000/jruby-rack-example/
