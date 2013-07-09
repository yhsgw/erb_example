#-*- coding: utf-8 -*-
#

require 'erb'

something = "埋め込み表示用テキスト"
erb = File.open('./template/template.erb'){|f| ERB.new(f.read)}
puts erb.result

