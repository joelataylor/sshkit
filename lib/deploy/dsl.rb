require_relative '../deploy'

module SSHKit

  module DSL

    def on(hosts, options={}, &block)
      ConnectionManager.new(hosts).each(options, &block)
    end

  end

end

include Deploy::DSL