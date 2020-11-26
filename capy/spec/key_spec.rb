
describe 'Teclado', :key do

    before(:each)do
        visit '/key_presses'
    end

    it 'Pressionar as teclas' do
        teclas = %i[tab escape space enter shift control alt] #teclas usa i

        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end
    end

    it 'Enviar letras' do
        letras = %w[a s t u v x y z] #letras usa w

        letras.each do |l|
        find('#campo-id').send_keys l
        expect(page).to have_content 'You entered: ' + l.to_s.upcase
        sleep 1
        end
    end
end