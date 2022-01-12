feature 'Submitting Information' do
    scenario 'submit name and birthday' do
        visit ('/')
        fill_in :name, with: 'JimBob'
        fill_in :birthday_day, with: 13
        fill_in :birthday_month, with: 1
        click_on 'Submit'
        expect(page).to have_content 'JimBob, your birthday is 1 day away'
    end 
end 