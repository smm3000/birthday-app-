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



