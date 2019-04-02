require 'employee'

RSpec.describe 'Mocks:' do
  # Failing positive message
  # it 'Expecting messages' do
  #   employee = Employee.new

  #   expect(employee).to receive(:save_documents)
  # end

  # Passing positive message
  it 'Expecting messages' do
    # setup
    employee = Employee.new

    # verify
    expect(employee).to receive(:save_documents)

    # exercise
    employee.save_documents
  end
end
