require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test 'is valid with valid attributes' do
    entry =
      Entry.new(
        meal_type: 'Breakfast',
        carbohydrates: 20,
        proteins: 30,
        fats: 15,
        calories: 450
      )
    assert entry.save
  end

  test 'should not save entry without calories' do
    entry =
      Entry.new(
        meal_type: 'Breakfast', carbohydrates: 20, proteins: 30, fats: 15
      )
    assert_not entry.save
  end
  test 'should not save entry without meal type' do
    entry = Entry.new(carbohydrates: 20, proteins: 30, fats: 15, calories: 450)
    assert_not entry.save
  end
  test 'should not save entry without proteins' do
    entry =
      Entry.new(
        meal_type: 'Breakfast', carbohydrates: 20, fats: 15, calories: 450
      )
    assert_not entry.save
  end
  test 'should not save entry without fats' do
    entry =
      Entry.new(
        meal_type: 'Breakfast', carbohydrates: 20, proteins: 30, calories: 450
      )
    assert_not entry.save
  end
  test 'should not save entry without carbohydrates' do
    entry =
      Entry.new(meal_type: 'Breakfast', proteins: 30, fats: 15, calories: 450)
    assert_not entry.save
  end
end
