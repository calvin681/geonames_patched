#=============================================================================
#
# Copyright 2007 Adam Wisniewski <adamw@tbcn.ca> 
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at 
#
#  http://www.apache.org/licenses/LICENSE-2.0 
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
#=============================================================================

require 'cgi'
require 'net/http'
require 'rexml/document'

require File.dirname(__FILE__) + '/web_service'
require File.dirname(__FILE__) + '/toponym'
require File.dirname(__FILE__) + '/toponym_search_result'
require File.dirname(__FILE__) + '/toponym_search_criteria'
require File.dirname(__FILE__) + '/postal_code'
require File.dirname(__FILE__) + '/postal_code_search_criteria'
require File.dirname(__FILE__) + '/timezone'
require File.dirname(__FILE__) + '/country_subdivision'
require File.dirname(__FILE__) + '/wikipedia_article'
require File.dirname(__FILE__) + '/intersection'

module Geonames
  
  GEONAMES_SERVER = "http://ws.geonames.org"
  GEONAMES_COMMERCIAL_SERVER = "http://ws.geonames.net"
  USER_AGENT = "geonames ruby webservice client 0.1"
  
  @@commercial_username = nil
  
  def self.username
    @@commercial_username
  end
  
  def self.username=(user_name)
    puts "Using Geonames commercial web service with username='#{user_name}'"
    @@commercial_username = user_name
  end
  
  def self.build_url(ws_name)
    unless @@commercial_username.blank?
      url = GEONAMES_COMMERCIAL_SERVER
      user_param = "&username=#{@@commercial_username}"
    else
      url = GEONAMES_SERVER
      user_param = ''
    end
    url + ws_name + user_param
  end
end

