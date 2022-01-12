require 'birth_date'

describe BirthDate do

    describe '#calculate' do 
        it 'responds to calculate method' do
            birthday = BirthDate.new(4,4)
            expect(birthday).to respond_to(:calculate)
        end
    end 
end 