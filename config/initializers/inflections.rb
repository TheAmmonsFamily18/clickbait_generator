# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
  inflect.plural /\A(passer) (by)\Z/i, '\1s \2'
  inflect.plural /\A(\w+) ([at|from|to|for|by|with|around|above|below|into])\Z/i, '\1s \2'
  inflect.plural /\ABe ([\w ]+)\Z/i, 'Is \1'
  inflect.plural /\A(\w+)(c|p)us\Z/i, '\1\2uses'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
