require 'statements'

describe Statements do
  let(:statements) { described_class.new }
  let(:transactions) { double :transactions }

  it 'initializes with an empty list of transactions' do
    expect(statements.list).to eq([])
  end

  describe '#add' do
    it 'adds transactions to the array' do
      statements.add(transactions)
      expect(statements.list).to include(transactions)
    end
  end
end
