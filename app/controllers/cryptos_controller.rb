class CryptosController < ApplicationController

  def query
    @start_time = Time.now
  end

  def decrypt
    @message = params[:message]
    start_time = params[:start_time]
    end_time = Time.now
    @total_time = end_time - Time.at(start_time.to_i)

    @decrypted_message = Cipher.decrypt(@message)




    @decrypted_message.each do |message|

      message_array = message.split(" ")
      valid_sentence = true

      p message

        message_array.each do |word|
        if Wordreference.is_not_valid?(word)
          valid_sentence = false
        end
      end

      if valid_sentence
        @final_message = message
      end
    end
  end
end
