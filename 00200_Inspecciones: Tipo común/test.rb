class Inspector
  include Inspections
end

describe "Inspections" do
  let(:inspector) { Inspector.new }

  describe('common_type') do
    it { expect(inspector.common_type([])).to eq([]) }
    it { expect(inspector.common_type([3, 4, 6])).to eq(4.methods) }
    it { expect(inspector.common_type([3, "foo", []])).to include(:to_s) }
    it { expect(inspector.common_type([:foo, "foo"])).to include(:to_sym) }

    it { expect(inspector.common_type([:foo, 2])).to_not include(:to_sym) }
    it { expect(inspector.common_type([3, "foo", []])).to_not include(:upcase) }
  end

end