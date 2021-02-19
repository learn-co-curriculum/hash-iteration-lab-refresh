describe "key_for_found_value" do

  it "does not call th `#keys` method" do
    hash = {:blake => 500, :ashley => 2, :adam => 1}

    expect(hash).to_not receive(:keys)
  
    key_for_found_value(hash, 2)
  end

  it "returns the first key associated with a provided value" do
    hash = {:blake => 500, :ashley => 2, :adam => 1}

    expect(key_for_found_value(hash, 2)).to equal(:ashley)
    expect(key_for_found_value(hash, 500)).to equal(:blake)
  end

end