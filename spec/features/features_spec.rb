feature 'Enter Name & Birthday' do
    scenario 'Ask for name' do 
        visit ('/')
        expect(page).to have_content ("What is your name?")
    end

    scenario 'Ask for Birthday' do
        visit ('/')
        expect(page).to have_content ("What is your birthday?")
    end
end 

feature 'Submitting Information' do
    scenario 'submit name and birthday' do
        visit ('/')
        fill_in :name, with: 'JimBob'
        fill_in :Birthday, with: '08/01/99'
        click_button 'Submit'
        expect(page).to have_content 'birthday is tomorrow!'
    end 
end 

