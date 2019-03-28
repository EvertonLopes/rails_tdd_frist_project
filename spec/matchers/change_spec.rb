require 'contador'

describe 'Matcher Change' do
  it { expect { Counter.increment }.to change { Counter.qtd }.from(0).to(1) }
  it { expect { Counter.increment }.to change { Counter.qtd }.by(1) }
  it { expect { Counter.increment }.to change { Counter.qtd }.from(2).to(3) }
  it { expect { Counter.increment }.to change { Counter.qtd }.by(1) }
  it { expect { Counter.increment }.to change { Counter.qtd }.from(4).to(5) }
end
