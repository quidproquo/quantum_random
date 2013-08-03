require 'hashie'

module QuantumRandom

  class Game

    # Constants:
    NUM_QUESTIONS = 10


    # Class methods:

    class << self

      def run
        puts "You will be asked a series of #{NUM_QUESTIONS} questions."
        qs = questions
        qs.each_with_index { |q, i|
          puts "Question:"
          random = Client.random_number

          if random % 2 == 0
            q.question = q.answer
          else
            q.question = 'X'
          end

          question = "[#{q.question}] choices: {choices}"
          puts question
          q.user_answer = gets.chomp.to_i
        }

        puts 'OK, we are done asking you questions, now time for the results!'

        correct = 0
        guesses = 0

        qs.each_with_index { |q, i|
          guesses += 1
          if q.question == 'X'
            if q.answer == q.user_answer
              correct += 1
            end
          end
        }

        percent_correct = correct.to_f/guesses.to_f * 100

        puts "You got #{percent_correct}% of the questions correct."

        true
      end

      def questions
        NUM_QUESTIONS.times.map { |i|
          a = cards.shuffle
          Hashie::Mash.new({
            question: nil,
            answer: a.pop,
            user_answer: nil
          })
        }
      end

      def cards
        [1, 2, 3, 4]
      end

      def choices(*args)
        cards - args
      end

    end # class_methods

  end # command

end # module
