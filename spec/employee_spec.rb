require('spec_helper')

describe(Employee) do

  describe('#name') do
    it('returns the name of an employee') do
      test_employee = Employee.create({ name: "Samson", project_id: nil, division_id: nil})
      expect(test_employee.name()).to(eq("Samson"))
    end
  end
end
