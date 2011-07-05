require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Hydra::Catalog do
  
  before(:all) do
    class CatalogTest
      include Hydra::Catalog
    end
  end
  
  it "should extend classes with the necessary Hydra modules" do
    CatalogTest.included_modules.should include(Hydra::AccessControlsEnforcement)
  end
end