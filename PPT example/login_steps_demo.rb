  Given (/^I login evernote with "([^"]*)" account$/) do |account|
    login_page.skip_login_animation
    login_page.login(test_account[account])
  end

  When(/^I create new text note named "([^"]*)"$/) do |note_name|
    all_notes_page.createTextNote
    all_notes_page.addTextNoteTitle(note_name)
  end

  When(/^I add content "([^"]*)"$/) do |note_content|
    all_notes_page.addTextNoteContent(note_content)
  end

  When(/^I save note$/) do
    all_notes_page.saveNote
  end

  Then(/^I should see note named "([^"]*)" in All Notes page$/) do |text|
    all_notes_page.verifyTextExist(text)
  end

  Then(/^I should see "([^"]*)" in the page$/) do |text|
    all_notes_page.verifyTextExist(text)
  end
