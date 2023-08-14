#### 14/08/2023

Curso de iOS com SwiftUI: construindo componentes e layouts

@01-Conhecendo o Chef Delivery e o SwiftUI 

@@01
Apresentação

Olá! Boas-vindas a você que está iniciando mais um curso de Swift na Alura! Eu sou o Ândriu Coelho e serei seu instrutor.
#acessibilidade: Ândriu é um homem de pele branca, cabelo castanho-claro e barba curta e escura. Está com uma camiseta azul-marinho com o nome da Alura estampado. Ao fundo, uma parede lisa com uma iluminação degradê do roxo para o azul, um vaso de plantas alto no chão e uma estante preta com itens decorativos.
Projeto e conteúdo do curso
Começaremos esse curso criando um projeto do início: o Chef Delivery, um aplicativo de entrega de refeições.

mockup do aplicativo Chef Delivery. na parte superior da tela, o endereço "R. Vergueiro, 3185" e um ícone de sino de Notificações. abaixo, uma grade com ícones de categorias de navegação e seus nomes: Restaurantes, Farmácia, Descontos, Gourmet, Mercado, Pet, Bebidas. abaixo, um banner de propaganda de Pokes com 40% de desconto. por fim, uma lista de título "Lojas" contendo os restaurantes "Monstro burger", "Food court" e "Carbron", bessa ordem.

Com ele, estudaremos componentes visuais que você usará em qualquer aplicativo que criar.

Começaremos criando a NavigationBar, o componente da parte superior da tela, em que começaremos a estudar alguns componentes de empilhamento de elementos, como o StackView. Em seguida, entenderemos como funciona o Grid, um componente similar ao CollectionView do UIKit, em que conseguimos inserir itens.

Também trabalharemos com o TabView para criar o carrossel de imagens que temos no centro do aplicativo, usado para exibir as propagandas dos restaurantes. Por último, criaremos uma lista de restaurantes. [ Avançaremos nesse conteúdo aos poucos para assimilar todos os conceitos necessários.

Pré-requisito
Para realizar este curso, é preciso que você tenha feito os cursos iniciais de Swift da Alura para que você consiga seguir sem nenhum problema.

Confira todos os cursos de Swift na Formação "Domine a Linguagem Swift"!
Caso você tenha alguma dúvida ou precise de ajuda, acesse a nossa comunidade do Discord e o fórum do curso. Temos várias pessoas prontas para te responder!

Nos encontramos na primeira aula!

https://cdn1.gnarususercontent.com.br/1/1310273/ccd24b88-db90-40ec-976d-bf5f942a0113.png

https://cursos.alura.com.br/formacao-domine-linguagem-swift

https://discord.gg/SK9bj7hEYD

https://cursos.alura.com.br/forum/curso-layouts-e-gerenciamento-de-estado-com-swift-ui/todos

@@02
Preparando o ambiente: baixando a ferramenta Xcode

Olá, dev!
Você está iniciando seu mergulho no curso iOS com SwiftUI: construindo componentes e layouts!

Vamos preparar o nosso computador com a única ferramenta necessária (Xcode)?

1) Preparando o Xcode
Neste curso, vamos construir o aplicativo Chef Delivery com Xcode - a ferramenta oficial da Apple para construir projetos iOS! Assim, siga os dois passos a seguir:

Acesse aqui as instruções de instalação, caso não tenha o Xcode instalado;
Atualize o seu Xcode para a versão 14.3, se necessário.
Após ter realizado esses passos, você pode prosseguir com seus estudos!

Lembre-se: o Xcode é a ferramenta padrão para desenvolvimento iOS e roda apenas em ambientes com sistemas operacionais MacOS, portanto, é imprescindível que você possua uma máquina com esse sistema operacional. Infelizmente, essa é uma limitação para as pessoas que buscam estudar iOS!
2) Projeto do zero
Vamos iniciar nossos estudos com um projeto feito do zero, então não é necessário fazer o download de nenhum arquivo por enquanto.

3) Como fazer este curso?
Durante sua jornada, você encontrará atividades práticas e teóricas para testar seus conhecimentos, material extra para se aprofundar nos seus estudos e atividades “faça como eu fiz” para praticar suas habilidades.

Vamos ver dicas para fazer bem este curso?

Levante a mão e participe! Tudo bem se não conseguir realizar alguma atividade, isso faz parte do processo. Procure o fórum ou nossa comunidade no Discord e aproveite para tirar dúvidas, para interagir com outras pessoas e ajudar alguém (ensinar é uma ótima forma de aprender).
Pratique! Faça, teste, replique as atividades sinalizadas pelo instrutor, pois assim você ganhará confiança e fixará melhor o conteúdo.
Foque, mas descanse! Caso sinta-se cansado(a) ou não esteja entendendo algo, dê uma pausa, tome uma água, e depois assista novamente às videoaulas.
O importante é persistir até o fim! Preparado(a)? Podemos começar.

Bons estudos!

@@03
Conhecendo a demanda

No contexto do nosso projeto, você é uma pessoa desenvolvedora e recebeu um freelance para desenvolver um aplicativo de entrega de refeições. Esse aplicativo será o Chef Delivery, que conhecemos na aula anterior, e o desenvolveremos do zero nesse curso.
Nele, temos alguns componentes muito importantes que você encontrará em quase todos os aplicativos, ainda que em formatos diferentes. São eles:

um Grid de opções que funciona como um menu de categorias de comércio;
um Banner de propagandas em forma de carrossel de imagens;
uma listagem de restaurantes.
A ideia é que você consiga construir esse aplicativo conosco desde o início. Escolhemos o SwiftUI para fazer isso, um framework de construção de layout para aplicativos iOS, MacOS e WatchOS (sistemas operacionais da Apple). Com uma única sintaxe, podemos desenvolver layouts para diferentes dispositivos!

Características do SwiftUI
Na documentação do SwiftUI, passaremos por alguns dos pontos principais desse framework. Na primeira seção, temos a sintaxe declarativa (declarative syntax), uma sintaxe diferente do UIKit.

No UIKit, trabalhamos com sintaxe imperativa, com a qual vamos construindo o layout e gerando os builds para visualizar as modificações. No SwiftUI, com a sintaxe declarativa, conseguimos visualizar em tempo real as mudanças que fazemos no decorrer das implementações.

Por exemplo: se alterarmos um valor de texto, conseguimos ver essa alteração automaticamente na seção de Preview (pré-visualização). É bastante parecido com o Jetpack Compose do Android e o Flutter, caso você já tenha trabalhado com algum deles.

Mais abaixo na documentação, temos algumas informações interessantes. Na seção "Design Tools", podemos notar que temos um ambiente mais propício para o desenvolvimento de interfaces, com uma biblioteca de documentos que podemos clicar e arrastar para dentro da nossa View e construir o layout.

Um ponto importante é que nós temos o UIKit junto do SwiftUI. Ou seja, a ideia não é usar um ou outro, mas usar ambos. Esses dois frameworks de construção de layout conviverão em muitos aplicativos em que você for trabalhar.

Agora que conhecemos algumas das principais características do SwiftUI, é hora de começar a trabalhar no nosso primeiro projeto!

https://developer.apple.com/xcode/swiftui/

@@04
Para saber mais: mergulhando no SwiftUI

SwiftUI é um framework (ferramenta) de construção de aplicativos da Apple. Ele permite o desenvolvimento de layouts e interfaces (telas) de forma declarativa, oferecendo uma série de vantagens em relação ao paradigma imperativo do UI Kit.
Você escreverá códigos na linguagem Swift ao utilizar o SwiftUI, então é importante dominar os conceitos e técnicas da linguagem que são baseados no paradigma de orientação a objetos.
Diferentemente do UIKit, em que as declarações são imperativas e é necessário gerar builds para visualizar as modificações e como o projeto está ficando e funcionando, o SwiftUI utiliza uma sintaxe declarativa que permite ver as mudanças em tempo real durante a implementação - o que economiza tempo!

Assim, é possível observar automaticamente as modificações feitas em um texto, por exemplo, na sessão de preview. Veja um exemplo de criação de botão para comparar o SwiftUI com o UI Kit:

SwiftUI (código declarativo)

Button(action: buttonTapped) {
Text("Clique aqui")
}
COPIAR CÓDIGO
UI Kit (código imperativo)

let button = UIButton()
button.setTitle("Clique aqui", for: .normal)
button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
COPIAR CÓDIGO
A abordagem declarativa do Swift UI é semelhante ao Jetpack Compose do Android e ao Flutter, proporcionando um ambiente mais propício para o desenvolvimento de interfaces (telas de aplicativos).

O SwiftUI também oferece uma biblioteca de objetos, componentes e documentos que podem ser arrastados e soltos na view, facilitando a construção do layout - um exemplo é o image que exibe uma imagem na tela do app.

Um ponto interessante é que o SwiftUI pode ser usado em conjunto com o UIKit. Em vez de escolher entre um ou outro, é possível utilizar ambos os frameworks (ferramentas) **de construção de layout em um mesmo aplicativo.

O SwiftUI é uma opção poderosa para o desenvolvimento de aplicativos para diversos dispositivos da Apple, como iOS, macOS, iPad e WatchOS. Com uma única sintaxe, é possível criar layouts adaptáveis a diferentes telas.

Se você deseja aprender mais sobre SwiftUI e suas vantagens, recomendo a leitura do artigo "Vale a pena aprender SwiftUI hoje?" escrito pelo Matheus Perez. No artigo, você encontrará informações detalhadas sobre as capacidades e benefícios do SwiftUI, além de dicas para começar a utilizar o framework em seus projetos.

Bons estudos!

https://cursos.alura.com.br/course/swift-entendendo-praticando-orientacao-objetos

https://www.alura.com.br/artigos/vale-a-pena-aprender-swift-ui-hoje?_gl=1*da2zbl*_ga*MTgwMzIzMjk2Ni4xNjg4ODE5OTcz*_ga_59FP0KYKSM*MTY5MjA0NjgyNy41OC4xLjE2OTIwNDgyMjguMC4wLjA.*_fplc*N3lrYjZyTUNycHF4bGVjYXVtOGtaeGk4a0JGUk5oMG1Jd2x5Y0g4b1cyOENrY01NRWFvN0gxcERybkJud1BmTTd2NDRYQVhDdXV2VG44aEIyMFVKOUtEMVFhZzAzV3VnbmkzekdJY1UlMkJSSHBaSzdUVWZTJTJGdHpoJTJCNlAxJTJCMGclM0QlM0Q.

@@05
Iniciando o projeto e declarando o primeiro objeto no SwiftUI

Agora que já sabemos o contexto do projeto que desenvolveremos e também conhecemos um pouco do SwiftUI, é hora de trabalhar no nosso projeto.
Criando o projeto
Primeiramente, abrimos o Xcode. Estamos utilizando a versão 14.3, e seria interessante que você também a utilizasse para seguirmos sem problemas. Na janela inicial, clicamos em "Create a new Xcode project" (criar um novo projeto no Xcode). Manteremos a opção "App" selecionada e clicamos em "Next" para seguir.

No campo "Product Name", inserimos o nome da aplicação: "ChefDelivery", sem espaços. No campo "Interface", geralmente a opção padrão é "SwiftUI" — nesse caso, não precisamos alterar nada. Do contrário, selecionamos essa opção. Clicamos em "Next" novamente.

Product Name: ChefDelivery
Interface: SwiftUI
Por fim, escolhemos o diretório do projeto, que pode ser o Desktop. Clicamos em "Create" para criar o projeto. Ao finalizar esse processo, nossa área de desenvolvimento é aberta. À esquerda da tela, temos o código; à direita, um preview da tela da aplicação no simulador do iPhone, em branco, exibindo apenas o texto "Hello, world!" no centro e um ícone de globo.

área de pré-visualização do Xcode. simulador do iPhone, conforme descrito no texto.

Caso você nunca tenha usado o SwiftUI, temos algumas novidades desse framework em relação ao UIKit:

No SwiftUI não se utiliza as classes do tipo ViewController, as classes controladoras da View, muito comuns no UIKit. Aqui, usamos com a própria View.
A área de pré-visualização, à direita da tela, exibe em tempo real as alterações que implementamos na View.
Por exemplo: temos um texto na View, com o clássico "Hello, world!". Podemos alterar o conteúdo desse texto, colocando, por exemplo, "Minha primeira aula": Text("Minha primeira aula").

Repare que, ao fazer isso, a pré-visualização atualiza automaticamente o texto exibido ao centro da tela. Usaremos bastante essa funcionalidade no decorrer do curso, alterando propriedades e verificando se elas estão de acordo com o layout proposto. Isso é algo fantástico e economiza bastante tempo.

Estrutura do arquivo e pré-visualização
Agora, vamos entender o que é essa primeira struct no nosso arquivo, criada por padrão:

ContentView
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)

            Text("Minha primeira aula")
        }
        .padding()
    }
}COPIAR CÓDIGO
Nossa primeira struct tem o nome ContentView. Poderia ser qualquer outro nome, mas esse é o padrão. Essa struct é do tipo View; quando implementamos esse tipo, ele traz automaticamente a variável body. Tudo o que colocarmos dentro dela é o que será mostrado na pré-visualização.

Não se preocupe em entender todo o código nesse momento! O entenderemos aos poucos ao longo das aulas.
Podemos apagar todo o conteúdo da variável body, porque isso não nos interessa por enquanto. Vamos inserir apenas um texto simples, Text(), com o valor "Teste":

struct ContentView: View {
    var body: some View {
                Text("Teste")
    }
}COPIAR CÓDIGO
Colocamos esse texto para mexer um pouco com a pré-visualização. Já entendemos que essa primeira parte do código é, de fato, a View que construiremos.

A segunda struct implementa o protocolo PreviewProvider que nos dá toda a pré-visualização. Estamos instanciando a View ContentView() para exibí-la na tela. Qualquer View que colocarmos dentro da variável preview será a View exibida na tela:

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}COPIAR CÓDIGO
Nessa pré-visualização, podemos mostrar a tela contendo todo o tamanho do simulador que estamos utilizando (iPhone 14 Pro) ou podemos configurar a exibição restrita da área que estamos desenvolvendo.

Por exemplo: nesse momento, nossa tela de pré-visualização está em branco e exibindo apenas o texto "Teste" ao centro:

área de pré-visualização do Xcode. simulador do iPhone exibindo o texto "Teste" sobre fundo branco.

Em determinados casos, quando queremos visualizar nosso layout com mais detalhes, conseguimos alterar a pré-visualização para que ela mostre apenas a área em que estamos trabalhando.

Para fazer isso, inserimos dentro dos parênteses de ContentView() um .previewLayout(). Temos algumas opções de preview do layout e, dentre elas, podemos escolher .sizeThatFits. Assim, ele ocupará o espaço do nosso componente de texto.

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}COPIAR CÓDIGO
Para que isso funcione, precisamos alterar a configuração do nosso preview. Na metade direita da tela, no canto inferior esquerdo, temos algumas opções de visualização. A primeira, pré-selecionada, é a "Live". Ela simula o aplicativo funcionando, então, quando tivermos funcionalidades, conseguiremos interagir com elas na tela.

A segunda opção é a "Selectable", com a qual podemos exibir somente o objeto selecionado; ou seja, o objeto que estamos utilizando no body naquele momento. Se clicamos nessa opção, o simulador completo some e é exibido apenas o texto "Teste" sobre um fundo branco, redimensionando a área.

Para entender melhor, vamos inserir mais um objeto dentro do body, como umVStack com duas labels de valor "Teste":

struct ContentView: View {
    var body: some View {
                VStack{
                        Text("Teste")
                        Text("Teste")
                }
    }
}COPIAR CÓDIGO
Com isso, a pré-visualização aumenta o espaço conforme a quantidade de componentes que adicionamos na nossa View principal, exibindo dois textos "Teste" sobre um fundo branco, um acima do outro.

área de pré-visualização do Xcode exibindo apenas os textos "Teste" um sobre o outro, conforme descrito no texto.

Esse é um início para entender a estrutura do nosso arquivo e entender um pouco sobre a pré-visualização. A seguir, começaremos a implementar a primeira funcionalidade do nosso aplicativo.

@@06
SwiftUI ou UIKit?

Foi dada a largada!
Você está na reunião de início do projeto Chef Delivery e um dos clientes - o Roberto - começou a fazer perguntas técnicas. Uma das dúvidas principais era o porquê da escolha do SwiftUI.

Explicar termos técnicos (desde que de forma didática e rápida) pode ajudar você a ganhar mais confiança e vender melhor suas ideias no trabalho.

Pensando nisso, selecione as alternativas verdadeiras para explicar o framework SwiftUI para o cliente:

O SwiftUI tem um algoritmo para gerar automaticamente componentes visuais, sugerindo implementações de acordo com a demanda que você pretende implementar em seu projeto.
 
Alternativa correta
O SwiftUI é uma ferramenta de construção de layout para aplicações Apple e tem facilidades como a preview (pré-visualização), que permite ver como o aplicativo está ficando em tempo real.
 
Com SwiftUI podemos criar interfaces do usuário para diversos dispositivos Apple como mencionado na questão. Um dos recursos mais interessantes é a preview (pré-visualização), que permite conferir o resultado sem a necessidade de fazer um build a todo momento.
Alternativa correta
O SwiftUI não permite fazer uma boa integração com UI Kit. Por esse motivo, podemos utilizá-lo somente em novos projetos sem usar o UI Kit.
 
Alternativa correta
O SwiftUI tem uma abordagem declarativa, permitindo que você descreva o que deseja alcançar e tornando o código mais legível, conciso e fácil de entender.
 
Enquanto o paradigma imperativo se concentra em descrever passo a passo o fluxo de execução de um programa, fornecendo instruções explícitas sobre como realizar determinadas ações, o paradigma declarativo do SwiftUI se concentra em descrever o resultado desejado. Em vez de dizer ao programa como realizar uma tarefa, você simplesmente declara quais são os componentes e como eles devem ser exibidos.

@@07
Entendendo o código do preview (pré-visualização)

Quando criamos um projeto utilizando o framework SwiftUI, ele por padrão nos traz uma área de preview (pré-visualização):
import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
COPIAR CÓDIGO
Com base no que aprendemos na aula, marque a alternativa correta que explica o que esse código faz:

A struct ContentView: View implementa o protocolo View que, por sua vez, nos obriga a implementar a variável computada Body. Dentro do Body, podemos desenhar a View. struct ContentView_Previews: PreviewProvider é uma estrutura obrigatória que devemos implementar. Ela nos fornece o recurso de pré-visualização.
 
Não é obrigatório a implementação da struct de pré-visualização. Ela é opcional, e nos ajuda somente na exibição do recurso de preview.
Alternativa correta
A struct ContentView: View implementa o protocolo View, que nos obriga a implementar a variável computada Body. Dentro do Body, podemos desenhar a View. A struct ContentView_Previews: PreviewProvider é a estrutura que nos fornece o recurso de pré-visualização da View que está sendo desenhada.
 
A primeira struct implementa o protocolo View, que nos fornece a variável computada body. Dentro dessa variável, desenhamos os elementos da tela. A segunda struct implementa o protocolo PreviewProvider, que nos fornece o recurso da pré-visualização.
Alternativa correta
A struct ContentView: View implementa o protocolo View, que para estar em conformidade utiliza a variável computada body. A implementação dessa estrutura é opcional, já que temos o recurso de preview, para ver a View que está sendo construída em tempo real.

@@08
Faça como eu fiz: abrindo o projeto e declarando objetos

Hora de colocar a mão na massa!
Vamos começar nosso freela abrindo o projeto no Xcode!

Inicie um novo projeto;
Selecione a opção SwiftUI;
Aproveite para explorar a ferramenta e mostrar três texts no modo de pré-visualização, alterando entre a visualização default (padrão) e a sizeThatFits (ocupa somente o espaço utilizado).
Até aqui, não temos grandes segredos. Apenas entendemos como criar um projeto com SwiftUI e qual é a estrutura da tela inicial do programa. Já já vamos construir a primeira parte do layout!
Vamos lá?

Opinião do instrutor

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/chef-delivery-parte1/tree/aula-1

@@09
O que aprendemos?

Nesta aula, você aprendeu a:
Compreender o que é e para que serve o framework SwiftUI, bem como suas principais características e diferenças em relação ao UIKit;
Criar um novo projeto com SwiftUI no Xcode;
Entender o código da estrutura default (padrão) de uma view (ou seja, estrutura que representa um componente visual que será mostrado na tela).
E assim damos o pontapé inicial no Chef Delivery!

Vejo você na próxima aula.