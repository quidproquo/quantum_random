require 'httparty'

module QuantumRandom

  class Client

    # Class methods:

    class << self

      def random
        get_random_number.to_f/255.0
      end

      def random_number
        get_random_number
      end

      protected

      def get_random_number
        get_random_numbers[0]
      end

      def get_random_numbers(data_type = :uint8, array_length = 1, block_size = 6)
        get_parsed_response(data_type, array_length, block_size)['data']
      end

      def get_parsed_response(data_type = :uint8, array_length = 1, block_size = 6)
        get(data_type, array_length, block_size).parsed_response
      end

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
