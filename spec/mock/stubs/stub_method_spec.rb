require 'employee'

RSpec.describe 'Stub Method' do
  it 'Argument dinamic' do
    employee = Employee.new

    allow(employee).to receive(:send_documents) do |data|
      if data == :hello
        'Olá'
      elsif data == :hi
        'Hi'
      end
    end

    expect(employee.send_documents(:hello)).to eq('Olá')
    expect(employee.send_documents(:hi)).to eq('Hi')
  end

  it 'Any Instance Class' do
    employee = Employee.new
    other_employee = Employee.new

    allow_any_instance_of(Employee).to receive(:save_documents).and_return(true)

    expect(employee.save_documents).to be true
    expect(other_employee.save_documents).to be true
  end

  it 'Errors' do
    employee = Employee.new

    allow(employee).to receive(:errors_process).and_raise(RuntimeError)

    expect { employee.errors_process }.to raise_error(RuntimeError)
  end
end
