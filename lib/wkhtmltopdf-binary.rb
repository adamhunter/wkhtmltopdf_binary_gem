require 'pathname'

module Wkhtmltopdf
  module Binary
    extend self

    def spec
      @spec||= Gem.loaded_specs['wkhtmltopdf-binary']
    end

    def path
      @path ||= spec.bin_file('wkhtmltopdf')
    end
  end
end
