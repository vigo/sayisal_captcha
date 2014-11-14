require 'minitest/autorun'
require 'sayisal_captcha'

class SayisalCaptchaTest < Minitest::Unit::TestCase
  def setup
    @captcha = SayisalCaptcha
  end
  def test_number_to_text
    assert_equal "Bir", @captcha.number_to_text(number: 1)
    assert_equal "Sıfır", @captcha.number_to_text(number: 0)
  end
  
  # [[7, 2], ["Yedi", "İki"]]
  def test_generate_numbers
    result = @captcha.generate_numbers
    digits = result.first
    texts = result.last
    digits.each_with_index do |number, index|
      assert_instance_of Fixnum, number
      assert_equal texts[index], @captcha.number_to_text(number: number)
    end
  end
  
  def test_question
    result = @captcha.generate_question
    assert_match /\d (\*|\+) \d/, result[:question]
  end
end