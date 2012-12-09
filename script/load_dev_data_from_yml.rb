#! /usr/bin/env ruby
#
# use this while in the Rails console cause they load the yaml gem for you

# usage: [full path to file] [desired class, capitalized properly]


# klass = Kernel.const_get(ARGV[1])


def populate(file, klass)
  yml = YAML.load_file(file)
  yml.each_pair do |key, values|
    obj = klass.new
    values.each_pair do |k, val|
      obj.send(("#{k}" + "=").to_sym, val) unless val == "id"
    end
    obj.save
  end
end

#populate("/Users/jian/lsat/test/fixtures/questions.yml", Question)
populate("/Users/jian/lsat/test/fixtures/lsat_sections.yml", LsatSection)
populate("/Users/jian/lsat/test/fixtures/questions.yml", LsatSection)
populate("/Users/jian/lsat/test/fixtures/lsat_test.yml", LsatSection)

# file = "/Users/jian/lsat/test/fixtures/lsat_sections.yml"

# Question.find(7, 8).each { |q| q.lsat_section_id = 2; q.save }
