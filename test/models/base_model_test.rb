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
    attributes = { id: 1, name: 'Test' }

    dummy = DummyModel.new(attributes)

    assert_equal attributes[:id], dummy.id
    assert_equal attributes[:name], dummy.name
  end

  def test_inspect
    dummy = DummyModel.new(id: 1)

    assert_equal '<DummyModel {:@id=>1}>', dummy.inspect
  end
end
