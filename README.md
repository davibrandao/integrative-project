# integrative-project
#Introdução ao Sistema

Nosso sistema terá como solução principal incentivar a leitura para as pessoas.

#Apresentação

Nosso sistema terá recompensas por tokens (moedas virtuais), onde a cada capítulo de livro lido e por livro lido ele receberá uma certa quantidade de tokens. Os tokens acumulados pelo usuário poderá ser utilizado como desconto em lojas parceiras ao aplicativo, ou seja, caso o usuário for fazer uma compra em uma dessas lojas parceiras ele receberá um desconto de acordo com a quantidade de tokens que ele possui.

Um problema também observado é como garantir que o usuário está realmente lendo o livro, por isso implementaremos uma solução que será um cálculo formado pela quantidade de palavras e letras existente na página que o usuário está lendo, pois uma pessoa normal consegue ler de 200 a 400 palavras por minuto.

Também haverá uma forma de incentivo que será realizar um resumo do livro que lhe garantirá o dobro de tokens, além de construirmos um algoritmo que verifica se o que o usuário colocou no resumo é copiado e colado da internet ou é realmente das suas próprias palavras.

#Usuários

Os usuários serão divididos por: Administradores (quem terá total acesso ao aplicativo, podendo fazer o que bem entender), Suporte (usuário que realizará o suporte/ajuda dos clientes que estão fazendo o uso do sistema) Cliente (usuário que fará o uso do sistema afim de buscar suas recompensas pela leitura).



#Necessidades e Regras de Negócio

Cálculo de Leitura – Cálculo baseado no tempo que uma pessoa normal lê determinadas palavras por página que estava sendo lida pelo consumidor final.
Cálculo de Tokens – Cálculo feito a partir de quantas palavras foram lidas ao final de um capítulo ou livro.
Benefícios para Assinantes – Assinatura no aplicativo que busca dar maiores vantagens ao consumidor final e incentiva ainda mais a leitura.
Aprovação de Tokens – Algoritmo desenvolvido para certificar de que o consumidor final realmente leu determinado livro para os tokens serem liberados para eles.
Anúncios na Plataforma – Visando o sustento do sistema será necessário fazer parcerias com plataformas de anúncios como Google e Facebook.
Divulgação do Aplicativo – Será necessário ter uma equipe dedicada para o anúncio e branding do aplicativo sendo anunciado por toda a internet.
Programa de Parceria – Procurar lojas que estejam interessadas em fazer parceria, especialmente livrarias.

Requisitos Funcionais
•	Cadastramento de Usuários
•	Adição e Remoção de Tokens
•	Realização de Compras
•	Comunicação com Suporte
•	Sistema verifica a certificação de leitura do consumidor.
•	Sistema limita a quantidade de tokens que pode ser adquirida por dia.
•	Inclusão, alteração e exclusão de assinantes
Requisitos Não-Funcionais
•	Será utilizado a linguagem SQL para banco de dados;
•	Sistema operacional abrangerá desde Linux, Android e iOS;
•	Autenticação por celular ou digital;
•	Linguagens a ser utilizadas: Kotlin, Java, JavaScript, Swift, ReactNative.

#Tecnologias Previstas
Seria necessário a implementação de uma Inteligência Artificial depois de um tempo, pois ela faria com que a chance de burladores do sistema de tokens diminuísse drasticamente, além de formar perfis de usuários como tal.







