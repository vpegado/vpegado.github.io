module Jekyll
  module IndentFilter
    def indent(content, indent=0)
      output = []
      indentation = ' ' * indent.to_i
      first_line = true
      content.each_line do |line|
        if first_line
          output << line
          first_line = false
        else
          output << (indentation + line)
        end
      end
      output.join('')
    end
  end
end

Liquid::Template.register_filter(Jekyll::IndentFilter)