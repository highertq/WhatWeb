##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Spinnaker"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-04
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Spinnaker web server - Searchight Software sold Searchlight BBS, along with Spinnaker Web Server, to TeleGrafix Communications in 1998. TeleGrafix Communications, Inc., closed its doors in late 2000."
website "http://www.telegrafix.com/"

# More Info #
# http://en.wikipedia.org/wiki/Searchlight_BBS
# http://www.slbbs.com/files/packages.html

# ShodanHQ results as at 2011-06-04 #
# 274 for spinnaker http

matches [

	# HTTP Server Header
	{ :regexp=>/^Spinnaker/, :search=>"headers[server]" },

	# Version Detection # HTTP Server Header
	{ :version=>/^Spinnaker\/([^\s]+)/, :search=>"headers[server]" },

]

end

