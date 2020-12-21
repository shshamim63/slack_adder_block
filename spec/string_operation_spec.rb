require_relative '../adder_bot/string_operation'

RSpec.describe Calculation do
  let(:command_converted_string) {"adder_bot 123+123"}
  let(:command_string) {"123+123"}
  context 'seperate_target_string' do
    it "returns the arithmetic string when attached with the bot class name" do
      expect(Calculation.seperate_target_string(command_converted_string)).to eql("123+123")
    end

    it "returns the arithmetic string when extracted the actual pattern" do
      expect(Calculation.seperate_target_string(command_string)).to eql("123+123")
    end
  end

  context 'separate_numbers' do
    it "returns the two separate numbers in string format enclosed in an array(+ is pattern)" do
      expect(Calculation.separate_numbers(command_string)).to eql(["123","123"])
    end

    it "returns the two separate numbers in string format enclosed in an array(+ is pattern)" do
      expect(Calculation.separate_numbers(command_converted_string)).not_to eql(["123","123"])
    end
  end

  context 'generate_result' do
    let(:integer_num) { "123" }
    let(:float_num) { "123.30" }
    it "converts the strings into integer and returns the summation" do
      expect(Calculation.generate_result(integer_num, integer_num)).to eql(246)
    end

    it "converts the strings into decimal and returns the summation" do
      expect(Calculation.generate_result(float_num, float_num)).to eql(246.60)
    end
  end
end
