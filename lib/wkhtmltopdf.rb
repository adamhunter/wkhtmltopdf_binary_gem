require "pathname"
require "wkhtmltopdf/version"

module Wkhtmltopdf
  extend self

  def spec
    @spec||= Gem.loaded_specs['wkhtmltopdf-binary']
  end

  def path
    @path ||= Pathname.new(spec.full_gem_path).join(spec.bindir, 'wkhtmltopdf')
  end
end
