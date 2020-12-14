require 'Oystercard'

describe Oystercard do
  describe 'balance' do
    it 'shows the balance of the card' do
      oystercard = Oystercard.new
      expect(oystercard.balance).to eq 0
    end
  end

  describe 'top up' do
    it { is_expected.to respond_to(:add).with(1).argument }

    it 'adds the topup value to the balance' do
      oystercard = Oystercard.new
      expect { oystercard.add 5 }.to change{ oystercard.balance }.by 5
    end


    it "does not add anymore value if balance is £90" do
      oystercard = Oystercard.new
      expect { oystercard.add(91) }.to raise_error('Max limit is £90')
    end
  end
end
