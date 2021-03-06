require 'refinerycms-core'

module Refinery
  autoload :WorksGenerator, 'generators/refinery/works_generator'

  module Works
    require 'refinery/works/engine'

    class << self
      attr_writer :root

      def root
        # @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
        @root = "abc"
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
