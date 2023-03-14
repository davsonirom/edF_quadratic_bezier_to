<!-- ![logo](https://user-images.githubusercontent.com/37612961/190645988-160f46df-da18-4fc8-84bb-e4b87a10ed7c.png) -->
<p align="center">
<img src=https://user-images.githubusercontent.com/37612961/208954235-32b1cf78-9f45-4b07-80bf-a14ef566587f.png />
</p>


# edF_ Curva em Quadrado - (Quadratic Bezier)

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white) ![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white) ![Badge](https://img.shields.io/badge/cross-platform-%237159c1?style=for-the-badge&logo=ghost) ![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white) ![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white) ![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white) ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black) ![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)

![Safari](https://img.shields.io/badge/Safari-000000?style=for-the-badge&logo=Safari&logoColor=white) ![YouTube Music](https://img.shields.io/badge/YouTube_Music-FF0000?style=for-the-badge&logo=youtube-music&logoColor=white)

<!-- estado do estudo -->
[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

<!-- Seu objetivo -->
>O objetivo do método QuadraticBezierTo é simplesmente fazer um curva com as posições declarada de X1 e Y1, X2 e Y2, vamos chamar de endPoint (Ponto final) os pontos da reta e controlPoint (Ponto de controle) que faz a reta se curvar. Irei explicar mais a frente cada posição. Para entender melhor essas posições vou começar primeiro com o método lineTo.
No método lineTo é usado dois parâmetro X e Y para traçar uma reta, ligando os pontos de X até Y, e assim formando um um desenho com as retas.


<!-- o que  pode ser feito com este aplicativo? -->
## <span style="color:rgb(99,202,227)">Tema do estudo dirigido</span>
- QuadraticBezierTo
- lineTo

## <span style="color:rgb(190,200,209)">Sobre</span>
De onde começa a posição X, Y e como sei o valor final?
A posição X começa da esquerda para direita, então na esquerda o valor é igual a 0, na classe Paint tem um método chamado getClip que pega os valores do tamanho da tela do dispositivo, declaramos dentro dele a classe Size e a variável que irá receber esse valor, normalmente é declarado size mas você pode declarar outro nome para pegar o tamanho da tela do dispositivo. Usamos o nome declarado que receber o valor, mais o ponto e a posição que queremos, na implementação fica size.widgth (Largura) que é o valor máximo de X.
Na posição de Y é a mesma forma, mas o valor máximo é chamado de heigth (Altura), na implementação fica size.widgth (Largura). No gráfico abaixo mostra o inicio de X e Y, para um melhor entendimento.

O gráfico a direita mostra como flutter irá desenhar no widget container, com os valores de X e Y declarados em duas retas (Vermelhas). A reta (Preta) de X até Y é traçada pelo flutter, quando realizado os calculados das posições dos pontos declarados.

<table>
   <tr>
      <td><img src="https://miro.medium.com/v2/resize:fit:1246/format:webp/1*xSgdp_nCE57fWM2z0H1C8g.png" />
      </td>
      <td> <img src="https://miro.medium.com/v2/resize:fit:1246/format:webp/1*ula33AmxzN-KIkO4lVOy1w.png" />
      </td>
   </tr>
</table>

Para formar uma gráfico assim com lineTo, tem que declarar as retas, como podem ver existe duas retas vermelhas no gráfico, essas retas que são declaradas no método. A primeira reta será da posição 0 de Y até a posição máxima de X (X = size.widgth, Y = 0), e a segunda será da posição 0 de X até a posição máxima de Y (X = 0, Y = size.heigth).

## QuadraticBezierTo.
O método recebe quatro parâmetros, os dois primeiros X1 e Y1 são a posição do ponto de controle, esse ponto de controle é como se fosse um “imã” que puxa a reta para posição dele curvando-a. Os dois último X2 e Y2, como deve imaginar é a posição dos pontos da reta. No exemplo abaixo está o ponto de controle entre X e Y.
<center>
<img src="https://miro.medium.com/v2/resize:fit:1246/format:webp/1*Macd8iX823VSLHCwltukDQ.png" />
</center>
E com esse ponto de controle declarado fiz um calculo até chegar ao resultado desejado no final o valor foi esse X = ((size.width/2)/2) e Y = ((size.heigth/2)/2). Já nos valores da reta declarei o valor de X= size.width e Y = 0.

## Pontos de controle
Posso declarar mais de um ponto de controle? Claro que pode, vou fazer mais um exemplo com dois pontos de controle, lembre-se nem sempre vai ser de primeira o resultado esperado e as vezes vai precisar de vários pontos de controle pra chegar a um bom resultado. Normalmente declaro os valores que serão mais próximo e com isso faço ajuste nos cálculos pra ficar exatamente com à forma de referência que quero. Abaixo segue o exemplo do gráfico do desenho.

<table>
   <tr>
      <td><img src="https://miro.medium.com/v2/resize:fit:1246/format:webp/1*sZ9TK9qnQ7PtEhgclMdeOA.png" />
      </td>
      <td><img src="https://miro.medium.com/v2/resize:fit:1246/format:webp/1*rVMFHctYWZM0OQO6RriZ4Q.png" />
      </td>
   </tr>
</table>

O primeiro passo foi descobrir onde coloco os pontos de controle, então olhei as curvas da reta, e vi que na metade da posição X e Y é curvada pra baixo e da outra metade é curvada pra cima. Então coloquei o ponto final (endPoint) na metade de X (X = size.width/2) e Y ( Y= size.heigth/2), lembrando que os pontos da reta já foram declarados com lineTo só estou colocando pontos em cima dela. Já o primeiro ponto de controle dividi X por 4 (X = size.width/4) para um resultado satisfatório, e Y por 2 ( Y= size.heigth/2).
Já o segundo ponto final (endPoint) da na reta coloquei no final de X e Y na posição 0 (X = size.width, Y = 0) para manter a reta dividida no meio da tela e só curvando com o ponto de controle. O segundo ponto de controle coloquei na posição final de X e Y dividi por 2 (X = size.width, Y=size.heigth/2)


## <span style="color:rgb(201,45,146)">Resultado</span>
![Estudo_Mockup](https://user-images.githubusercontent.com/37612961/212330577-07aa6c3a-4d15-4ebc-8ce0-d743c214f823.png)

-------
## Instalação
Projeto desenvolvido com Flutter, partindo do pressuposto que já tenha o ambiente de desenvolvimento totalmente funcional.

Clone o repositório
```sh
gitclone ....
```
Após clonar o repositório não esquece do "flutter pub get" para baixar as pendências

### Dependências
| Pacote |  Sobre | Link |
| ------ | ------ | ------ |
| intl | Fornece facilidades de internacionalização e localização | https://pub.dev/packages/intl |

### Compilação
Para liberação em produção:
```sh
flutter run --release
```

<!-- coisa que amamos -->
## Tecnologia
- [Dart] - Dart é uma linguagem desenvolvida pela Google
- [Flutter] - Flutter é um kit de desenvolvimento de interface de usuário, de código aberto, criado pela empresa Google em 2015.
- [vs Code] - O Visual Studio Code é um editor de código-fonte desenvolvido pela Microsoft para Windows, Linux e macOS.
- [Café] - O café é uma bebida produzida a partir dos grãos torrados do fruto do cafeeiro. É servido tradicionalmente quente, mas também pode ser consumido gelado. O café é um estimulante, por possuir cafeína — geralmente 80 a 140 mg para cada 207 ml, dependendo do método de preparação. Estudos mostram que pessoas que bebem quatro xícaras de café por dia têm um menor risco de morrer de um ataque cardíaco. Dia 13/04 é dia mundial do café.

<!-- venha para o lado dart da força -->

## Conheça o Flutter e cria apps lindos
Este é um ponto de partida para uma aplicação Flutter. Alguns recursos para você começar se este for seu primeiro encontro com o Flutter:
- [Laboratório: Escreva seu primeiro aplicativo Flutter](https://docs.flutter.dev/get-started/codelab)
- [Livro de receitas: amostras úteis do Flutter](https://docs.flutter.dev/cookbook)

Para obter ajuda para começar com o desenvolvimento do Flutter, consulte a [documentação online](https://docs.flutter.dev/), que oferece tutoriais, amostras, orientação sobre desenvolvimento para dispositivos móveis e uma referência completa de API.

----
# License
MIT

**Software Livre!**

[//]: # (Estes são links de referência usados ​​no corpo desta nota e são removidos quando o processador de remarcação faz seu trabalho. Não há necessidade de formatar bem porque não deve ser visto. Obrigado SO - http: //stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

[comment]: <> (links das tecnologia)
   [Dart]: <https://dart.dev>
   [Flutter]: <https://flutter.dev>
   [vs Code]: <https://code.visualstudio.com>
   [café]: <https://pt.wikipedia.org/wiki/Café>
