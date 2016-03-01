require_relative '../test_helper'

class DummyModel < OneSignal::BaseModel
  attr_accessor :id, :name, :created_at
end

class BaseModelTest < Minitest::Test
  def test_to_proc
    attributes = [{ id: 1 }]

    dummies = attributes.map(&DummyModel)

    assert_equal DummyModel, dummies.first.class
  end

  def test_initialize
    attributes = { id: 1, name: 'Test', created_at: '2014-04-01T04:20:02.003Z' }

    dummy = DummyModel.new(attributes)

    assert_equal attributes[:id], dummy.id
    assert_equal attributes[:name], dummy.name
    assert_equal DateTime.parse(attributes[:created_at]), dummy.created_at
  end

  def test_inspect
    dummy = DummyModel.new(id: 1)

    assert_equal "<DummyModel {:@id=>1}>", dummy.inspect
  end
end
