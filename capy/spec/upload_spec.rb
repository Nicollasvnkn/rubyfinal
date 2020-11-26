
describe 'Upload', :upload do

    before(:each)do
        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
    end
    it 'Upload arquivo de texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find ('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'Upload arquivo de imagem', :Upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        div_imagem = find ('#new-image')
        expect(div_imagem[:src]).to include 'uploads/imagem.jpg'
    end

    after(:each)do
        sleep 3
    end
end