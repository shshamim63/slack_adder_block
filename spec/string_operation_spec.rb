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
end
