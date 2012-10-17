module Apipie

  class SuccessDescription

    attr_reader :code, :description, :sample

    def initialize(args)
      if args.first.is_a? Hash
        args = args.first
      elsif args.count == 2
        args = {:code => args.first, :description => args.second}
      elsif args.count == 3
        args = {:code => args.first, :description => args.second, :sample => args.third }
      else
        raise ArgumentError "ApipieError: Bad use of success method."
      end
      @code = args[:code] || args['code']
      @description = args[:desc] || args[:description] || args['desc'] || args['description']
      @sample = args[:sample] || args['sample']
    end

    def to_json
      {:code => code, :description => description, :sample => sample}
    end

  end

end
