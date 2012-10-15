#!/usr/bin/env ruby
require 'optparse'
require 'find'
require 'FileUtils'

options = {}
option_parser = OptionParser.new do |opts|
  # Create a switch
  opts.on("-c","--clean") do 
    options[:clean] = true
  end
end
option_parser.parse!
here = File.expand_path(File.dirname(__FILE__))

if options[:clean] == true
  Find.find(here) do |path|
    if File.basename(path) == 'reveal.html'
      FileUtils.remove_dir(path, true)
      Find.prune
    end
  end
  puts "Files removed"
  exit
end

def get_title (content)
  title = content.match(/^# (.*)\n/)[1]
  title
end

def convert_markdown (content)
  content = content.gsub(/^<slide>/, "<section data-markdown>\n<script type=\"text/template\">\n" )
  content = content.gsub(/^<\/slide>/, "</script>\n</section> \n")
  content = content.sub(/^# .*\n/, "")
  content
end

def create_reveal_content (template, title, body, path)
  template = template.sub(/\*\*TITLE\*\*/,title)
  template = template.sub(/\*\*SLIDES\*\*/,body)
  template = template.gsub(/PATH/,path)
  template
end

Dir.foreach(here) do |item|
  next if item == '..' or item == 'reveal'
  if item == '.' then path = '.' else path = '..' end

  # do work on real items
  if File.directory? item and File.exist?(item + "/reveal.md")
    markdown_source= File.read(item + "/reveal.md")
    title = get_title(markdown_source)
    body = convert_markdown(markdown_source)

    template = File.read(here + "/reveal/template.html")
    reveal_content = create_reveal_content(template, title, body, path)
    File.open(item + "/reveal.html", 'w') { |file| file.write(reveal_content) }
  end
end

