require "sayisal_captcha/version"

module SayisalCaptcha
  NUMBERS = ["Sıfır", "Bir", "İki", "Üç", "Dört", "Beş", "Altı", "Yedi", "Sekiz", "Dokuz"]
  OPERATORS = [:+, :*]

  def self.number_to_text(number: 0)
    NUMBERS[number]
  end
  def self.generate_numbers
    numbers = [(0..9).to_a.sample, (0..9).to_a.sample]
    [numbers, numbers.map{ |n| number_to_text(number: n) }]
  end
  
  def self.generate_question
    numbers = generate_numbers.first
    operation = OPERATORS.sample
    first_number = numbers.first
    last_number = numbers.last
    result = first_number.method(operation).call(last_number)
    {
      first_number: first_number,
      last_number: last_number,
      operation: operation,
      question: "#{first_number} #{operation.to_s} #{last_number}",
      result: result
    }
  end
end
