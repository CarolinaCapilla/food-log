require 'application_system_test_case'

class ArchivesTest < ApplicationSystemTestCase
  setup { @entry = entries(:breakfast) }

  test 'visiting the archives index' do
    visit archives_index_url

    assert_selector 'h1', text: 'FoodLog'
    assert_selector 'h3', text: "Entries for #{@entry.day}"
    assert_selector text: "#{@entry.meal_type}"
  end
end
