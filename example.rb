#-*- coding: utf-8 -*-
#
#
require 'erb'
require 'date'

#クラスにメソッド定義をして使用する例
class Foo
  extend ERB::DefMethod

  def initialize()
    @today = DateTime.now
  end

  def_erb_method('hello(name)','./template/hello.erb')
end

puts "Foo#hello => #{Foo.new.hello('yhsgw')}"

#テンプレートを読み込んで、値を埋め込む単純な例
something = "埋め込み表示用テキスト"
erb = File.open('./template/template.erb'){|f| ERB.new(f.read)}
puts "template.erb => **********\n#{erb.result}\n**********"

