require "sayisal_captcha/version"

# Kullanılacak modül
module SayisalCaptcha
  NUMBERS = ["Sıfır", "Bir", "İki", "Üç", "Dört", "Beş", "Altı", "Yedi", "Sekiz", "Dokuz"]
  OPERATORS = [:+, :*]

  # Sayıyı Türkçe tekste çeviren method
  def self.number_to_text(number: 0)
    NUMBERS[number]
  end
  
  # Random numaraları üreten ve hem sayı hem tekst olarak döndüren method
  def self.generate_numbers
    numbers = [(0..9).to_a.sample, (0..9).to_a.sample]
    [numbers, numbers.map{ |n| number_to_text(number: n) }]
  end
  
  # Esas kullanacağımız ana method
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
