Given("Eu acesso a wikipedia") do
    visit "https://www.wikipedia.org/"
    #sleep 5
end
  
When("Eu busco por {string}") do |busca|
    #Primeiro método (Selenium puro)
    #find(id: "searchInput").set busca
    #find("button[type*=submit]").click
    #sleep 3

    #Segundo método (Capybara)
    fill_in "searchInput", with: busca # Escrever Cucumber no campo
    #select("en", from: "searchLanguage").select_option #Garantir que a busca será feita em Inglês
    click_on(class: "pure-button pure-button-primary-progressive") #Pesquisar
    within(id: "firstHeading") do
        expect(page).to have_content "Resultados da pesquisa"; #encontrar na página
    end
    sleep 3

end
  
Then("Eu vejo o primeiro artigo encontrado") do

end