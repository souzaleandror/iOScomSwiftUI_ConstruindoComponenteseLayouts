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

#### 15/08/2023

@02-Criando a barra superior do app

@@01
Projeto da aula anterior

Como apenas abrimos o projeto no Xcode, não temos link do projeto para esta aula. Você pode seguir as instruções da última aula e abrir o projeto em seu computador.
Vamos iniciar a segunda aula e começar a colocar a mão no código?

@@02
Implementando a NavigationBar no app

Recapitulando: nossa demanda é construir a tela principal de um aplicativo de entrega de refeições chamado ChefDelivery.
Vamos desenvolver vários componentes dessa tela e, a cada aula, incrementaremos nosso projeto com novas funcionalidades e entregas. Construiremos essa tela de cima para baixo, ou seja, começaremos pela NavigationBar e avançaremos para as funcionalidades inferiores em seguida.

A NavigationBar é o componente superior da tela, contendo dois botões: um é o nome do endereço de entrega ("R. Vergueiro, 3185") e o outro é um ícone de sino da área de notificações.

Organizando a estrutura de pastas
Para começar, vamos criar uma nova View no Xcode. Na parte superior esquerda da tela, temos a estrutura de pastas do nosso projeto em que, à medida que o projeto for avançando, vamos criando novas classes e Views.

A fim de manter a organização do projeto, criaremos uma estrutura de pastas baseada em cada funcionalidade. Para criar uma nova pasta, clicamos com o botão direito na pasta com o nome do nosso aplicativo, "ChefDelivery". Selecionamos a opção "New Group". Nomearemos esse novo grupo de "NavigationBar" e o arrastaremos para baixo dos arquivos preexistentes.

Para manter a organização dos arquivos criados por default (padrão) no projeto, vamos criar mais uma pasta, seguindo o mesmo procedimento. A nomearemos como "App" e arrastamos os arquivos preexistentes para dentro dela.

Com isso, nossa estrutura de pastas ficará assim (por enquanto):

ChefDelivery
App
ChefDeliveryApp
ContentView
NavigationBar
Assets
Preview Content
Arquivo da NavigationBar
Agora que já temos a pasta da feature (funcionalidade) que vamos desenvolver, criaremos uma nova View com o SwiftUI. Para isso, clicamos com o botão direito na pasta "NavigationBar" e selecionar a opção "New File..." (novo arquivo).

Na caixa de diálogo que se abrir, mantemos selecionado o template "SwiftUI View" e clicamos em "Next". Na nova caixa de diálogo, nomeamos o arquivo como NavigationBar e clicamos em "Create".

Com isso, um novo código se abre na área de desenvolvimento, com a mesma estrutura que conhecemos anteriormente: uma struct contendo o body, que é onde iremos, de fato, desenhar a NavigationBar; uma segunda struct contendo o preview.

Componentes da NavigationBar
Conferindo o simulador do projeto, vamos começar a entender alguns conceitos. Nossa NavigationBar contém o endereço de entrega e um ícone simples de notificações. Precisamos pensar em como adicionar esses elementos na nossa View.

Primeiramente, consideramos esses dois elementos como botões porque podemos clicar neles para realizar determinada ação. Futuramente, podemos clicar uma tela de redirecionamento para ambos os botões, ou seja, uma tela de alteração do endereço de entrega e uma tela de notificações.

É importante perceber, aos poucos, quais componentes precisamos utilizar para solucionar determinado problema. Se o endereço fosse um texto simples, sem clique, não precisaria ser um botão, mas apenas uma label Text(). O mesmo vale para o ícone de notificações.

Construir essa linha de raciocínio ao longo do curso é muito importante. Assim, quando você se deparar com outro aplicativo, identificará automaticamente os componentes usados no desenvolvimento de cada elemento da tela.
Sendo assim, vamos inserir esses dois botões na View. Na linha 12, dentro de body, temos um Text() que, por default, tem o valor "Hello, World!". Vamos remover esse componente para adicionar os componentes desejados.

Organizando os elementos na View
Algo fundamental a pensar é: como queremos organizar esses botões dentro da View? Um abaixo do outro? Um ao lado do outro? Um acima do outro? Baseado nessas respostas, escolhemos qual Container utilizaremos. Container é um espaço que temos na View para organizar esses objetos.

Por exemplo: se quisermos colocar um botão abaixo do outro, podemos utilizar uma estrutura chamada "Vertical stack view", ou "empilhamento vertical" em português. Para isso, na linha 12 (onde estava o Text()), vamos declarar um VStack {}:

struct NavigationBar: View {
    var body: some View {
        VStack {

        }
    }
}COPIAR CÓDIGO
Dentro desse VStack {}, adicionaremos dois botões.Caso você não saiba a sintaxe para declarar um botão (ou qualquer outro elemento) ou os componentes disponíveis para usar no aplicativo, você pode acessar a biblioteca de elementos.

No canto superior direito da tela, temos um botão com ícone de sinal de adição chamado "Library". Ao clicar nesse botão, será aberta uma caixa com várias opções de elementos para escolher, como Button (botão), Form (formulário), Link e assim por diante.

Ou seja, você não precisa, nesse momento, decorar a sintaxe de tudo o que implementaremos. À medida em que você utilizar esses elementos, a sintaxe dos componentes mais frequentes vai ficando mais gravada na sua memória. O botão é um deles.

Podemos implementá-lo de duas formas: clicar no componente "Button" na caixa de diálogo e arrastá-lo para o nosso código, ou digitar à mão o elemento Button() e, entre aspas, dar um nome para ele, por exemplo, "Notificações".

Quando clicamos e arrastamos diretamente da biblioteca, temos um placeholder chamado Action dentro do componente que indica que o que colocarmos dentro desse botão será a ação executada quando clicarmos nele. Ele não representa nada, então podemos clicar nele duas vezes e ele sumirá, porque não representa nada.

Vamos também alterar o nome do primeiro botão, deixando exatamente como está no protótipo: "R. Vergueiro, 3185". Por enquanto, nossa primeira struct está assim:

struct NavigationBar: View {
    var body: some View {
        VStack {
            Button("R. Vergueiro, 3185") {

            }

            Button("Notificações") {

            }
        }
    }
}COPIAR CÓDIGO
Na pré-visualização, os elementos estão empilhados. Ambos são clicáveis.

simulador do iPhone no Xcode. no centro da tela branca, o elemento "R. Vergueiro, 3185" e, abaixo dele, o elemento "Notificações". ambos em letras azuis.

Estamos utilizando o Vertical stack view (VStack {}), o empilhamento vertical. Mas, conforme nosso protótipo, os elementos da NavigationBar deveriam estar um ao lado do outro: o "R. Vergueiro, 3185" no centro e o botão de notificações no canto direito.

Para isso, podemos alterar o Container. Ao invés de usar o Vertical stack view, usamos o Horizontal stack view, alterando o VStack {} para HStack {}:

struct NavigationBar: View {
    var body: some View {
        HStack {
            Button("R. Vergueiro, 3185") {

            }

            Button("Notificações") {

            }
        }
    }
}COPIAR CÓDIGO
Na pré-visualização, os botões agora estão um ao lado do outro:

simulador do iPhone no Xcode. no centro da tela branca, os elementos "R. Vergueiro, 3185" e "Notificações" estão um ao lado do outro, nessa ordem, da esquerda para a direita.

Parece simples, mas é um começo fundamental para entender as estruturas de Container e o empilhamento de elementos na vertical e horizontal. Também aprendemos a abstrair esses componentes visuais e os implementando de acordo com o que precisamos.

Obviamente, a NavigationBar ainda não está igual à do protótipo que precisamos implementar. Mas, essa estrutura inicial é necessária para formatar os elementos da maneira desejada.

Continuaremos isso a seguir!

@@03
O objetivo do botão

Você iniciou a construção da primeira funcionalidade do Chef Delivery!
De acordo com o código desenvolvido na aula para criar um NavigationBar customizável em SwiftUI, qual é o propósito do button (botão) "R. Vergueiro, 3185"?

Adicionar um ícone de localização à barra de navegação.
 
Alternativa correta
Adicionar um ícone de localização à barra de navegação.
 
Alternativa correta
Modificar o estilo da fonte para o título da barra de navegação.
 
Alternativa correta
Exibir um botão com o título "R. Vergueiro, 3185" na barra de navegação.
 
Isso aí! Neste momento, nosso objetivo foi apenas mostrar o botão na tela.

@@04
Para saber mais: a library de elementos do SwiftUI

Como vimos, o SwiftUI possui uma opção incrível chamada library (biblioteca), que oferece vários templates (modelos) de objetos para utilizarmos. No nosso caso, utilizamos um button (para ver mais detalhes sobre esse objeto, você pode acessar a documentação). Essa biblioteca ajuda bastante quando não lembramos a sintaxe do código.
Outros objetos que você pode utilizar são:

Text (para exibir um texto na interface do usuário);
Image (para exibir imagens na interface do usuário);
TextField (para entrada de texto do usuário);
Toggle (um interruptor que pode ser alternado entre dois estados);
Slider (uma barra deslizante para selecionar um valor em um intervalo);
DatePicker (um seletor de data);
Picker (um seletor de valor em uma lista de opções);
List (uma exibição em lista de dados);
ScrollView (uma visualização que permite a rolagem de conteúdo);
NavigationLink (um link que permite a navegação para outra tela);
Alert (uma exibição de alerta para exibir mensagens ao usuário);
ActivityIndicator (uma animação indicando que uma tarefa está em andamento);
MapView (um mapa interativo);
VideoPlayer (um player de vídeo).
Aproveite para experimentar a library e brincar com os objetos disponíveis!

https://developer.apple.com/documentation/swiftui/button

@@05
Corrigindo o layout modificadores de objetos

Começamos a entender a estrutura de uma View em SwiftUI e aprendemos a utilizar a Vertical stack view, o empilhamento vertical de elementos, e a Horizontal stack view, o empilhamento de elementos na horizontal.
Se compararmos o layout proposto inicialmente com o nosso preview, concluiremos que precisamos realizar algumas customizações de layout para atingir o resultado esperado.

No protótipo, o botão de endereço está centralizado na parte superior da tela, gerando um espaçamento à esquerda e à direita, e o ícone de notificações fica no canto superior direito. Tendo isso em vista, a ideia é aprender a utilizar alguns modificadores nesses objetos para esse fim.

Modificadores são métodos usados para alterar objetos, mudando o seu estado. Em outras palavras, é um trecho de código que altera as características de um botão, por exemplo, como sua cor ou o peso da fonte.
Modificando o botão de endereço
Começaremos alterando a fonte do botão de endereço. Logo abaixo do fechamento das chaves de Button("R. Vergueiro, 3185") {}, vamos digitar um ponto final (.) para chamar a função font().

Dentro dos parênteses, digitando um ponto final novamente, conseguimos setar alguns tipos predefinidos de fonte. Utilizaremos o subheadline, o que diminuirá o tamanho da fonte do botão de endereço. Teremos: .font(.subheadline).

Vamos aplicar outros modificadores nesse botão. Sua fonte no protótipo é um pouco mais pesada, em seminegrito. Para aplicar esse estilo na nossa implementação, aplicaremos o modificador fontWeight() com o valor semibold. Teremos: .fontWeight(.semibold).

Em seguida, vamos alterar a cor da fonte de azul para preto. Para isso, usamos o modificador foregroundColor(). Digitando um ponto final entre os parênteses, temos um menu suspenso com várias cores que podemos utilizar. Vamos escolher black, resultando em: .foregroundColor(.black).

Temos um detalhe importante: o botão está centralizado na tela, gerando um espaçamento à esquerda e à direita. Para aplicar esse espaçamento, temos um objeto de layout chamado Spacer(). O inserimos antes da declaração de Button("R. Vergueiro, 3185") para adicionar esse espaço antes, e também o adicionamos logo após os modificadores para adicionar o espaço depois:

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R. Vergueiro, 3185") {

            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)

            Spacer()

// código omitidoCOPIAR CÓDIGO
Agora, o texto do primeiro botão está menor e mais pesado que o do segundo, além de preto e distante do segundo botão, bastante próximo do layout proposto.

área de pré-visualização do Xcode. no simulador do iPhone 14, uma tela em branco com os botões ao centro vertical. o "R Vergueiro, 3185" está em preto, no centro horizontal. o "Notificações" está em azul, na lateral direita.

Algo importante a salientar: quando estamos usando o Horizontal stack view, ele tenta preencher todo o espaço disponível na linha horizontal. Ou seja, se diminuirmos o título do segundo botão, "Notificações", os espaçamentos irão aumentar. O mesmo vale para o Vertical stack view.

Modificando o botão de notificações
No protótipo, o botão de notificações é representado por um ícone de sino vermelho. Na nossa pré-visualização, nosso botão está em texto.

Quando queremos setar uma imagem em um botão, utilizamos outro inicializador para ele. Vamos apagar o valor de Button("Notificações") e selecionar outro construtor de botão: Button(action:label:). Nele, temos a ação e o rótulo.

Nesse momento, não inseriremos nada no campo de ação. Então, apenas colocamos chaves depois dos dois pontos. Também podemos apagar o label. Dentro das chaves desse inicializador, podemos inserir a imagem.

Essa imagem, na verdade, é um tipo de objeto do SwiftUI. Podemos declará-la com Image(), utilizando o inicializador que contém o systemName:. Ele, na verdade, é uma fonte renderizada como imagem.

À frente dos dois pontos, passamos o nome do ícone que vamos utilizar. Sino é "bell" em inglês, e a fonte é: "bell.badge". Com isso, já podemos ver o ícone de sino no lugar de "Notificações" na pré-visualização, bastante parecido com o que precisamos implementar.

Mas, esse ícone ainda está azul e muito pequeno em comparação ao layout proposto. Para alterar seu tamanho, podemos utilizar a mesma propriedade .font() que utilizamos no botão de endereço, passando title3 como seu valor: .font(.title3).

Para finalizar, adicionaremos também o modificador foregroundColor() para alterar a cor, passando red (vermelho): .foregroundColor(.red):

Button(action: {}) {
    Image(systemName: "bell.badge")
        .font(.title3)
        .foregroundColor(.red)
}COPIAR CÓDIGO
Ótimo! Já temos algo bastante parecido com o que precisamos:

área de pré-visualização do Xcode. no simulador do iPhone 14, uma tela em branco com os botões ao centro vertical. o "R Vergueiro, 3185" está em preto, no centro horizontal. o sino de notificações está em vermelho, na lateral direita.

Algo que pode ser um pouco confuso é estarmos usando uma imagem em um botão mas alterando seu tamanho com o método .font(). A palavra "font" (fonte) geralmente remete a texto.

Mas, na verdade, temos uma coleção de ícones nativa da Apple que podemos utilizar para renderizar em fontes. Ou seja, o ícone de sino bell.badge é, na realidade, uma fonte. Por isso conseguimos usar esse método para alterar o seu tamanho.

Se você tiver curiosidade sobre quais são os outros ícones nativos da Apple, você pode conferir um aplicativo muito interessante chamado "Símbolos SF", que pode ser baixado na App Store. Ele possui uma biblioteca de ícones separados por categorias que podemos utilizar no nosso aplicativo, e que são renderizados como fonte.
Alterando a pré-visualização
Para finalizar, vamos alterar a pré-visualização setando a ocupação apenas do espaço disponível. Para isso, utilizaremos um modificador na segunda struct, chamado previewLayout(). Digitamos um ponto final dentro ele e chamamos o método sizeThatFits.

Para que o preview ocupe apenas o espaço disponível, precisamos nos dirigir até o canto inferior esquerdo da área de pré-visualização e selecionar a opção "Selectable" (selecionável). Com isso, a pré-visualização vai diminuir, descartando o mockup, para ocupar o espaço disponível.

Podemos melhorar isso um pouco mais aplicando um .padding(), ou seja, uma margem entre os elementos e as bordas. Podemos setar um padding à esquerda, ao topo, à direita ou na parte inferior. Quando não especificamos, ele seta um valor default para todas as bordas.

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }COPIAR CÓDIGO
Com isso, essa é a pré-visualização da nossa NavigationBar:

área de pré-visualização do Xcode. retângulo pequeno e branco com o botão "R. Vergueiro, 3185" ao centro e o sino vermelho de notificações no canto direito.

O layout está bastante parecido com o proposto. A NavigationBar é um componente relativamente simples, mas bem interessante para introduzir o SwiftUI e começar a entender os fundamentos e os componentes principais, como botões, tipos de empilhamento e modificadores.

A partir da próxima aula, implementaremos o Grid, o menu de opções logo abaixo da NavigationBar. Já temos alguns conceitos em mente para aplicar nesse novo componente!

Nos encontramos lá!

@@06
Para saber mais: aprofundando os modificadores

Como vimos em aula, no SwiftUI temos os modificadores, ou seja, pedaços de código que transformam e alteram as características básicas dos objetos. Por exemplo, posso usar um modificador para mudar a cor de um texto de preto para vermelho.
Abaixo, você pode conferir os cinco principais modificadores que usamos em SwiftUI:

Fonte:
.font(.headline): define a fonte como uma fonte de destaque.
.font(.system(size: 18)): define o tamanho da fonte como 18 pontos.
Tamanho:
.frame(width: 200, height: 50): define o tamanho da visualização para 200 pontos de largura e 50 pontos de altura.
.aspectRatio(contentMode: .fit): ajusta a proporção da visualização para caber no espaço disponível.
Peso:
.fontWeight(.bold): define o peso da fonte como negrito.
.fontWeight(.light): define o peso da fonte como leve.
Cor:
.foregroundColor(.blue): define a cor do texto ou da imagem como azul.
.background(Color.gray): define a cor de fundo da visualização como cinza.
Mostrar ícone:
.imageScale(.large): ajusta o tamanho de uma imagem para grande.
.iconColor(.red): define a cor do ícone como vermelho.
Lembre-se de que cada objeto possui seus próprios modificadores. Por exemplo, os modificadores do text são diferentes do image. Um texto tem características como tamanho de fonte, estilo itálico e outras estilizações que são bem diferentes de uma imagem, certo? Então por isso há modificadores específicos para textos e outros para imagens.

Se quiser, fique à vontade para brincar e explorar esses modificadores no seu Xcode e até descobrir outros!

@@07
Para saber mais: Symbols SF

Para construir o botão de notificação da NavigationBar, utilizamos a biblioteca Symbols SF!
A Apple disponibiliza uma biblioteca de mais de 4000 ícones que podemos utilizar em nossos projetos! O mais interessante, como mencionei, é que esses ícones são tratados como fontes, ou seja, podemos customizar o tamanho e cor bem facilmente com modificadores!

Você pode acessar o link da Symbols SF e explorar a página.

Bons estudos!

https://developer.apple.com/sf-symbols/

@@08
Empilhando botões na vertical

Em nossa primeira implementação no Chef Delivery, colocamos os botões lado a lado no aplicativo.
Pensando agora em outro projeto, como um aplicativo de chat como o WhatsApp, como poderíamos fazer para colocar vários botões empilhados na vertical?

O primeiro passo seria criar os objetos dos botões, conforme o código abaixo:

Button() {
    Text("Conversa 1")
}

Button() {
    Text("Conversa 2")
}

Button() {
    Text("Conversa 3")
}
COPIAR CÓDIGO
A seguir, precisamos colocar um container nesses botões. O que aconteceria no código acima se utilizarmos o HStackView? Selecione as opções verdadeiras:

Os botões seriam empilhados na vertical, então teríamos o resultado esperado.
 
Alternativa correta
Os botões seriam empilhados na horizontal pelo HStackView, então não teríamos o resultado esperado.
 
Exatamente! Para empilhar elementos como uma lista vertical, não poderíamos utilizar o HStackView.
Alternativa correta
Seria melhor utilizar o VStackView, que empilharia os botões na vertical, como uma lista.
 
Isso mesmo! Para empilhar elementos um embaixo do outro, usamos o VStack.
Alternativa correta
Os botões seriam empilhados na horizontal, então teríamos o resultado esperado.

@@09
Criando um botão azul com modificadores

Até agora, criamos objetos (botões e textos) e modificamos eles!
Mas, e se houvesse uma alteração no projeto? Às vezes, as cores de um projeto podem ser modificadas por questões de design da marca do produto.

Qual seria a sintaxe (código) utilizada para criar um botão com duas características: fonte na cor azul e estilo negrito?

Button("Botão azul") {
    // Action
}
.foregroundColor(.blue)
.fontWeight(.bold)
 
Isso mesmo! Usamos o código button() para criar um botão. Em seguida, para modificar o botão e deixar ele na cor azul e com peso bold, utilizamos os modificadores .foregroundColor(.blue) para definir a cor da fonte como azul e .fontWeight(.bold) para definir o negrito.
Alternativa correta
Button("Botão azul") {
    // Action
}
.style(fontColor: .blue, fontWeight: .bold)
 
Alternativa correta
Button("Botão azul") {
    // Action
}
.configure(fontColor: .blue, fontWeight: .bold)
 
Alternativa correta
UIButton().font(.blue).bold()

@@10
Faça como eu fiz: construindo a NavigationBar do app

Hora de colocar a mão na massa!
É sua vez de construir a NavigationBar - a barra superior que vai ter o endereço e o ícone de notificações do app! Vou dar algumas dicas:

Crie um arquivo para construir o NavigationBar;
Utilize o objeto de botão;
Lembre-se dos HStack e VStack;
Aplique os modificadores e faça os ajustes necessários;
Por fim, chame o arquivo do NavigationBar no arquivo que representa a tela inicial do app.
O resultado esperado desta implementação é que o aplicativo tenha, na parte superior, uma barra com o endereço e um ícone de navegação, enquanto o resto da tela fica em branco.
Vamos lá?

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

https://github.com/alura-cursos/chef-delivery-parte1/tree/aula-2

@@11
O que aprendemos?

Nessa aula, você aprendeu como:
Criar a NavigationBar (barra superior) customizável;
Organizar o projeto em pastas separadas para cada funcionalidade;
Implementar o VStack e o HStack para empilhar elementos na vertical e horizontal, respectivamente;
Aplicar modificadores para configurar a aparência dos botões;
Utilizar ícones do sistema (SF Symbols) como um botão;
Implementar o Spacer para ocupar espaços disponíveis em um HStack;
Configurar o padding e o PreviewProvider para melhorar a pré-visualização.
Concluímos a aula 1! Espero você na próxima aula!

@03-Montando peças do Grid

@@01
Projeto da aula anterior

Você pode revisar o seu código e acompanhar o passo a passo do desenvolvimento do nosso projeto e, se preferir, pode baixar o projeto da aula anterior.
Bons estudos!

https://github.com/alura-cursos/chef-delivery-parte1/archive/refs/heads/aula-2.zip

@@02
Entendendo o Grid

Construímos a NavigationBar, a primeira funcionalidade do nosso aplicativo.
Agora, desenvolveremos o próximo componente que é a grade de menu separada por serviços.

Esse componente é muito parecido com o UICollectionView, porém, nesse caso trabalharemos com o Grid, que forma uma grade de elementos.
Entendendo o Grid
No lado esquerdo do Xcode, clicamos na pasta "ChefDelivery" com o botão direito e depois em "New group". Nomeamos essa nova pasta de "GridView" e arrastamos para baixo do "NavigationBar".

Para criar o arquivo nessa pasta, clicamos com o botão direito e depois em "New File". Feito isso, abre uma janela. Nela, deixamos selecionado a opção "SwiftUI View", depois clicamos no botão "Next".

Em seguida, definimos o nome do arquivo como OrderTypeGridView e clicamos no botão "Create" localizado no lado inferior direito.

Feito isso temos uma estrutura de código que estamos começando a nos familiarizar que é a struct View e a struct PreviewProvider.
import SwiftUI

struct OrderTypeGridView: View {
        var body: some View {
                Text()
        }
}

struct OrderTypeGridView_Previews: PreviewProvider {
        static var previews: some View {
                OrderTypeGridViews()
        }
}
COPIAR CÓDIGO
Abaixo do struct View escrevemos Grid e abrimos o bloco de código com as chaves. Na linha seguinte, escrevemos GridRow e abrimos chaves novamente. Esse objeto cria uma linha na qual conseguimos colocar elementos lado a lado.

Para visualizarmos essa estrutura, na linha abaixo escrevemos Text("2a feira"), na seguinte Text("3a feira") e por fim Text("4a feira").

import SwiftUI

struct OrderTypeGridView: View {
        var body: some View {
                Grid {
                        GridRow {
                                Text("2a feira")
                                Text("3a feira")
                                Text("4a feira")
                        }
                }
        }
}
COPIAR CÓDIGO
Feito isso, temos a seguinte pré-visualização:

Print da pré-visualização do Xcode. Na tela do celular, em um fundo branco, os textos "2a feira", "3a feira" e "4a feira" enfileirados horizontalmente.

Para alimentar a grade de informações que estamos construindo, podemos criar outro GridRow. Para facilitar, copiamos esse trecho de código que acabamos de criar e colamos logo abaixo.

Agora, faremos as alterações. Suponha que essa seja uma grade de aulas da faculdade, então, na linha abaixo colocaremos as disciplinas para cada dia da semana.

Para isso, definimos o primeiro texto como Text("Engenharia de software"), seguido por Text("Redes") e Text("Matemática discreto").

Em seguida, utilizaremos um divisor de grade. Para isso, entre os GridRows adicionamos o Divider(), que adiciona uma linha de espaço entre eles.

Feito isso, na pré-visualização as matérias ficam ordenadas abaixo de cada dia da semana.

Para aumentar essa grade escolar, basta adicionar mais um Divider() e outro bloco GridRow.

Se abrimos o simulador, repare que no topo da tela do nosso aplicativo temos uma grade de elementos formada pelos ícones de restaurante, farmácia, descontos, gourmet, mercado, pet e bebidas. Cada um desses itens pode se caracterizar como um GridItem().

Geralmente utilizamos o Grid quando trabalhamos com informações fixas. O uso desse componente não é recomendado em alguns casos, como em tabelas grandes que ocupam um espaço além do que é exibido na tela.

Isso porque o Grid renderiza todos os elementos da tela, independente se é a área visível ou não. Isso acaba utilizando mais memória de forma desnecessária.

Para melhor escalabilidade e desempenho, existe outro tipo de estrutura recomendada para grades com mais informações, o Lazy horizontal grid e Lazy vertical grid. Diferente do Grid, esses componentes renderizam somente o que aparece na tela, ou seja, somente o necessário.

No vídeo seguinte começaremos a montar a grade do nosso aplicativo.

Até lá!

@@03
Entendendo as diferenças: Quando usar o Grid ou o Lazy Grid?

Quando estamos desenvolvendo um app, constantemente estamos resolvendo problemas e temos várias ferramentas para solucioná-los.
No Swift UI, vimos que há duas formas para criar um grid: o Grid e o LazyGrid.

De acordo com o conteúdo visto na aula, qual a principal diferença entre o Grid e LazyGrid em SwiftUI?

Grid é usado para exibir dados em grade ou tabela, preferencialmente com tamanho fixo. LazyGrid tem a mesma utilidade, porém ganha em performance, pois renderiza as informações de acordo com a necessidade (itens visíveis na tela).
 
O Grid geralmente é usado para montar uma estrutura com elementos fixos. Já o LazyGrid é recomendado para montar uma estrutura de layout que dependa da quantidade de informações que vem dinamicamente de uma API. Nesse caso, há o ganho de performance por renderizar somente os elementos visíveis na tela conforme a necessidade.
Alternativa correta
Grid é utilizado para empilhar elementos lado a lado. E LazyGrid pode ser utilizado para empilhar elementos um embaixo do outro.
 
Alternativa correta
Grid é um componente utilizado para listar elementos um embaixo do outro como uma lista de elementos fixo. LazyGrid é um componente que possibilita colocar elementos lado a lado.
 
Alternativa correta
Gridé utilizado para criar uma grade dinâmica de elementos, na qual serão carregadas as informações de acordo com a necessidade dos elementos na tela. LazyGrid é utilizado para criar uma grade fixa de elementos.

@@04
Construindo o Grid

Aprendemos que o Grid tem um comportamento semelhante ao de uma tabela. Para esboçar seu comportamento, criamos uma grade escolar.
Também descobrimos que esse componente é recomendado para informações fixas, porém, listas maiores não. Nesse caso o melhor é utilizar o Lazy horizontal grid ou Lazy vertical grid.

Nesse vídeo, colocaremos em prática esse aprendizado.

Construindo o Grid
Começamos abrindo o simulador. Na parte superior do aplicativo, encontramos a grade com as categorias de itens organizadas lado a lado em duas linhas.

Print do aplicativo Chef Delivery no simulador. No topo do celular, visualizamos uma grade com a categoria de itens oferecidos, composta por uma foto e um título, sendo: "Restaurantes" indicado pela foto de hambúrguer, "Farmácia" com a foto de cartelas de remédio, "Descontos" indicado pela imagem gráfica de três balões vermelhos com o símbolo de "%" dentro. Ao lado, "Gourmet" com a foto de um prato de comida, seguido por "Mercado" indicado por uma cesta com compras, "Pet" com a foto de um cachorro e "Bebidas" indicado pela foto de dois copos com bebidas.

Criaremos essa estrutura. Para isso, abrimos o Xcode e apagamos o exemplo que criamos na aula anterior.

Em seguida, abaixo de struct View escrevemos LazyHGrid(). Dentro das chaves passamos rows:[]. Nos colchetes, pulamos para a linha seguinte definimos a quantidade de linhas, que será duas. Para isso, escrevemos GridItem(.fixed(100))

Para adicionarmos o próximo elemento da lista, adicionamos uma vírgula, pulamos uma linha e escrevemos novamente GridItem(.fixed(100)).

import SwiftUI

struct OrderTypeGridView: View {
        var body: some View {
                LazyHGrid(rows:[
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100))
                ]) 

//código omitido
COPIAR CÓDIGO
Queremos uma lista de GridItem com imagem e texto para cada categoria de itens do aplicativo. Nessa aula criaremos uma lista de strings com os textos e na aula seguinte adicionaremos as imagens.

Para isso, abaixo da linha struct View, damos espaço e declaramos a variável let orders = []. Dentro dos colchetes passaremos o título de cada item do aplicativo. Dessa forma:

//código omitido

let orders = ["Restaurantes","Farmácia","Descontos","Gourmet","Mercados","Pet","Bebidas"]

//código omitido
COPIAR CÓDIGO
Agora, utilizaremos o for para percorrer cada item para preencher cada linha do GridITem(). Então, após o último parêntese do LazyHGrid(), nas chaves declaramos ForEach() e nos parênteses passamos orders.

Abrimos um novo bloco de código com chaves e damos espaço. Dentro dela definimos orderItem in. Na linha de baixo, escrevemos Text(orderItem).

Quando utilizamos o ForEach() para percorrer uma lista que não tem ID dá erro de compilação. Para resolver isso basta utilizarmos o id: \.self.
import SwiftUI

struct OrderTypeGridView: View {

        let orders = ["Restaurantes","Farmácia","Descontos","Gourmet","Mercados","Pet","Bebidas"]

        var body: some View {
                LazyHGrid(rows:[
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100))
                ]) {
                        ForEach(orders, id: \.self) { orderItem in
                                Text(orderItem
                        }
                }
        }
}
COPIAR CÓDIGO
Feito isso, a pré-visualização na lateral direita da tela é carregada. Repare que já temos uma estrutura semelhante a do simulador, visualizamos as duas linhas de textos referentes aos itens.

Print da pré-visualização do Xcode. No celular, em um fundo branco, duas linhas com as categorias de itens oferecidos no aplicativo. Na primeira linha os títulos "Restaurantes", "Descontos", "Mercados", "Bebidas". Na linha abaixo "Farmácia", "Gourmet" e "Pet".

Na aula seguinte adicionaremos os modificadores e as imagens.

Te esperamos lá!

@@05
Criando mocks

Na aula anterior criamos uma lista de strings para montar uma estrutura semelhante ao aplicativo.
Porém, além do texto também precisaremos mostrar as imagens dos itens e essa é uma lista simples. Isso significa que não atende o que precisamos.

Em uma situação real, é comum que o aplicativo se comunique com um servidor por meio de uma API para obter os itens necessários para criação dos componentes do Grid.

Como o foco do curso nesse momento não é trabalhar com requisições http, criaremos uma classe que irá simular esse comportamento chamada mock.

mocks são classes falsas que utilizamos para simular determinados comportamentos no aplicativo.
Criando OrderType
Como queremos manter a organização do projeto, criaremos uma nova pasta. Para isso, no menu lateral esquerdo, clicamos com o botão direito na pasta "ChefDelivery" e depois em "New Group". Nomeamos de Model e arrastamos para baixo de "App".

Dentro da Model criaremos dois arquivos. Para isso, clicamos nela com o botão direito e depois em "New File". Selecionamos a opção "Swift File" e clicamos no botão "Next". Nomeamos o arquivo como "OrderType" e depois clicamos no botão "Create".

Quando criamos um novo arquivo do tipo Swift File ele vem vazio.
Nesse arquivo, declaramos struct OrderType em seguida abrimos o bloco de código com as chaves.

Dentro dela, criaremos alguns atributos, começando com let id: Int. Feito isso, na primeira linha, após PrderType implementamos o protocolo Identifiable que serve para identificar a struct quando a utilizarmos.

import Foundation

struct OrderType: Identifiable {
        let id: Int
}COPIAR CÓDIGO
OrderTypeGridView
Se acessarmos o arquivo OrderTypeGridView na lateral esquerda da ferramenta, notamos que no ForEach() passamos um parâmetro id \.self para compilar o projeto.

Assim, quando for percorrer a lista, cada elemento será identificado. Isso é muito útil quando trabalhamos com estrutura simples de lista.

OrderType
A outra forma de fazer isso é implementando o protocolo Identifiable, que necessita de um id, asism como fizemos no arquivo OrderType.

Quando formos refatorar esse código, você irá perceber que esse parâmetro não será mais necessário, pois a própria classe se auto-identifica.
Agora, vamos definir os outros atributos. Abaixo de let id: Int escrevemos let name: String e na linha seguinte let image: String.

import Foundation

struct OrderType: Identifiable {
        let id: Int
        let name: String
        let image: String
}COPIAR CÓDIGO
Essa é a estrutura que irá nos ajudar a criar o Grid com texto e imagem.

Criando mocks
Agora vamos criar o arquivo mock. Para isso, na pasta "Model", clicamos com o botão direito e depois em "New File". Mantemos a opção "Swift File" selecionada e clicamos em "Next". Em seguida, nomeamos de DataSourceMock e clicamos no botão "Create".

Novamente temos um arquivo vazio. Primeiro criaremos a lista de mocks para montar o Grid. Começamos declarando let ordersMock: [OrderType] seguido do sinal de igual e colchetes.

Dentro dele, na linha seguinte, escrevemos OrderType(). Nas chaves passamos id:1 seguido de name:"Restaurantes".

import Foundation

 let ordersMock: [OrderType] = [
         OrderType(id: 1, name: "Restaurantes")
]COPIAR CÓDIGO
Em seguida passaremos a imagem. Imagens e ícones utilizados no aplicativo geralmente ficam na pasta "Assets". Então, na lateral esquerda, a acessamos. Depois, arrastamos do computador para essa pasta, os arquivos que usaremos no aplicativo ao longo do curso.

Agora, as imagens que utilizaremos nos ícones estão nessa pasta, todas nomeadas.

Voltando ao nosso código, escrevemos image: "hamburguer", o nome da imagem que irá representar o ícone "Restaurantes". Adicionamos vírgula e pulamos para a linha seguinte.

Agora, faremos o mesmo para os outros ícones. Portanto, copiamos essa mesma linha e colamos seis vezes seguidas. Em seguida, fazemos as alterações necessárias, definindo o nome e o nome da imagem dos outros ícones.

O código fica da seguinte forma:

import Foundation

 let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
        OrderType(id: 2, name: "Mercado", image: "mercado"),
        OrderType(id: 3, name: "Farmácia", image: "farmácia"),
        OrderType(id: 4, name: "Pet", image: "petshop"),
        OrderType(id: 5, name: "Descontos", image: "descontos"),
        OrderType(id: 6, name: "Bebidas", image: "bebidas"),
        OrderType(id: 7, name: "Gourmet", image: "gourmet"),
]COPIAR CÓDIGO
OrderTypeGridView
Voltamos no arquivo OrderTypeGridView. Como não usaremos mais a lista let oerders, apagamos.

Depois, dentro de ForEach() apagamos o orders e o id. No lugar, passamos a lista que criamos ordersMock. Por fim, na linha de baixo, em Text(), passamos dentro dos parêntese orderItem.name

struct OrderTypeGridView: View {

        var body: some View {
                LazyHGrid(rows: [
                        GridItem(.fixed(100))
                        GridItem(.fixed(1))
                ]) {
                        ForEach(ordersMock) { orderItem in
                                Text(orderItem.name)
                        }
                }
        }
}COPIAR CÓDIGO
Com essa estrutura de dados conseguimos montar o GridItem com imagem e título.

Daremos continuidade no vídeo seguinte.

@@06
Qual a função dos mocks?

Como vimos, para montar um grid, precisamos de duas informações: o nome da categoria e a foto da categoria do restaurante. Assim, você pode se perguntar: mas de onde vamos puxar essas duas informações?
Vimos que existem duas maneiras principais.

A primeira, que acontece na vida real, é puxar essas informações da nuvem, ou seja, os dados ficam armazenados na internet (servidores) e precisamos fazer um pedido. Como essa abordagem é complexa, não entraremos em detalhes no momento.

Infográfico que mostra a comunicação entre um aplicativo e um servidor. No lado esquerdo da tela, há a imagem de um celular e, abaixo dela, o título “aplicativo” e o subtítulo “precisa mostrar informações. No lado direito da imagem, há a imagem de um servidor acompanhada do título “servidor” e do subtítulo “armazena informações”. Entre a imagem do aplicativo e do servidor, há duas flechas e a palavra “comunicação”

A segunda solução, que utilizamos, são os mocks, certo?

Sobre o mock, assinale as alternativas verdadeiras:

https://caelum-online-public.s3.amazonaws.com/3152-ios/Aula+3+-+Montando+peças+do+Grid/Untitled.png

Para pegar os dados do mock, usamos o seguinte código:
ForEach(ordersMock) { orderItem in
        Text(orderItem.name)
} 
Usamos o forEach para fazer a função de percorrer o arquivo de mocks e puxar de lá o nome e a imagem da categoria de restaurante.
 
Alternativa correta
Para pegar os dados do mock, usamos o seguinte código:
ForEach(ordersMock) { orderItem in
        Text(orderItem.name)
} 
Usamos o forEach para fazer a função de percorrer o arquivo de mocks e puxar de lá o nome da categoria de restaurante.
 
Correto! É isso aí!
Alternativa correta
Na prática, o mock é uma pasta de arquivos que contém as informações de nome e imagem.
 
Alternativa correta
O mock (simulação) serve como uma espécie de “fonte de dados” que disponibiliza as informações de nome e foto de cada elemento do grid.
 
É isso mesmo! O mock vai fornecer as informações necessárias para construir o grid.
Alternativa correta
Na prática, criamos esses mocks para não ter a necessidade de fazer uma requisição para um servidor.
 
Correto! Mocks são objetos simulados para um determinado comportamento, geralmente, imitando uma situação da vida real.
Alternativa correta
O mock (simulação) serve como uma espécie de “banco de dados” que armazena as informações locais (no dispositivo) de nome e foto de cada elemento do grid.

@@07
Para saber mais: comunicação HTTP

Neste momento, não vamos focar em comunicação HTTP, pois envolve técnicas mais complexas.
Caso tenha curiosidade, pode consultar o artigo HTTP: Desmistificando o protocolo da Web.

Se quiser se aprofundar temos o curso: HTTP - entendendo a web por baixo dos panos (mas deixe para ver esse curso só depois de concluir o curso de SwiftUI).

@@08
Faça como eu fiz: construindo a primeira parte do Grid

Hora de colocar a mão na massa!
É sua vez de construir o grid de categorias que mostra os tipos de lojas (farmácia, restaurante etc) do app! Essa construção terá duas etapas. Na primeira, vamos montar as “peças” do grid (o GridItem), seguindo as dicas a seguir:

Crie um novo arquivo para construir o Grid;
Implemente um LazyHGrid para desenhar a “tabela” do grid;
Utilize o protocolo "Identifiable" para identificar os itens da lista de mocks;
Crie uma pasta que vai funcionar de mock e será a fonte de dados do grid.
O resultado esperado é que, após essas implementações, o app continue rodando perfeitamente. Falta a segunda parte de implementação do grid, que veremos na próxima aula.
Vamos lá?

Opinião do instrutor

O objetivo desta atividade é estimular a prática necessária para seu aprendizado!
Você pode conferir o código do projeto até o momento através desta branch no GitHub.

Se precisar de ajuda, chama a gente no fórum ou discord!

@@09
O que aprendemos?

Nessa aula, você aprendeu como:
Implementar a estrutura básica do LazyHGrid para o grid;
Criar mocks para os dados, como a classe "OrderType" com seus atributos;
Utilizar o protocolo "Identifiable" para identificar os itens da lista de mocks;
Construir o layout do "GridItem" utilizando as imagens da pasta de assets;
Aplicar modificadores na imagem, como redimensionamento e espaçamento;
Utilizar a view "GridItem" no "OrderTypesGridView" para exibir os tipos de restaurantes;
Definir a quantidade de linhas no "LazyHGrid" para controlar a disposição e aparência dos itens.
Na próxima aula, vamos finalizar o layout utilizando os componentes que criamos.