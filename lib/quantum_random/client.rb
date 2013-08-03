require 'httparty'

module QuantumRandom

  class Client

    # Class methods:

    class << self

      def get(data_type = :uint8, array_length = 1, block_size = 6)
        options = {
          type: data_type,
          length: array_length,
          size: block_size
        }
        HTTParty.get('https://qrng.anu.edu.au/API/jsonI.php', query: options)
      end

    end # class_methods

  end # client

end # module
