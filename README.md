<h2>Diferenciação Numérica</h2>

<h3>1) Primeira Questão</h3>

**a)** Inicialmente vamos encontrar os polinômios de Taylor para a função $f(x) = \sqrt{x}$ em torno do ponto $a = 1$. Para tanto, precisamos de suas derivadas de primeira e segunda ordens. Assim, $f'(x) = \dfrac{-1}{2\,\sqrt{x}}$ e $f''(x) = \dfrac{1}{4\,\sqrt{x^{3}}}$. Desta forma, o polinômio de Taylor linear em torno do ponto $a = 1$ da função $f$ é dado por:
$$ P_{1}(x) = 1 - \frac{1}{2}\,(x - 1) = \frac{1}{2}\,(3 - x). $$
Agora, o polinômio quadrático é dado pela seguinte expressão:

$$ P_{2}(x) = 1 - \frac{1}{2}\,(x - 1) + \frac{1}{4}\,\frac{(x - 1)^{2}}{2!}. $$

**b)** Vamos agora determinar os polinômios de Taylor para a função $f(x) = \sin(x)$ em torno do ponto $a = \dfrac{\pi}{4}$. Precisamos das derivadas da função $f$ de primeira e segunda ordens. Assim, $f'(x) = \cos(x)$ e $f''(x) = -\sin(x)$. Diante disso, o polinômio de Taylor linear é dado pela seguinte expressão:

$$ P_{1}(x) = \frac{\sqrt{2}}{2} + \frac{\sqrt{2}}{2}\,\left(x - \frac{\pi}{4}\right). $$

Já o polinômio quadrático é dado pela seguinte expressão:

$$ P_{2}(x) = \frac{\sqrt{2}}{2} + \frac{\sqrt{2}}{2}\,\left(x - \frac{\pi}{4}\right) - \frac{\sqrt{2}}{2}\,\frac{1}{2!}\,\left(x - \frac{\pi}{4}\right)^{2}.$$

<h3>2) Segunda Questão</h3>

**a)** Consideremos primeiramente a função $f(x) = e^{x}$. Queremos mostrar que $ e^{x} = \sum\limits_{n=0}^{\infty} \dfrac{x^{n}}{n!} $. Fazendo $a_{n} = \dfrac{x^{n}}{n!}$, segue que:

$$ \left| \frac{a_{n+1}}{a_{n}} \right| = \left| \frac{x^{n+1}}{(n+1)!}\,\frac{n!}{x^{n}} \right| = \frac{|x|}{n+1} \to 0 < 1, \text{ quando } n \to \infty.$$

Logo, pelo Teste da Razão, a série é convergente e seu raio de convergência é $R = \infty$, isto é, a série converge para todo $x \in \mathbb{R}$. Consequentemente, $\displaystyle \lim_{n \to \infty} a_{n} = \lim_{n \to \infty} \frac{x^{n}}{n!} = 0$ para todo $x \in \mathbb{R}$. Agora, observamos que $f^{(n+1)}(x) = e^{x}$ para todo $x \in \mathbb{R}$ e todo $n$ inteiro não negativo. Seja $d > 0$ qualquer tal que $|x| \leq d$. Então, $|f^{(n+1)}(x)| = e^{x} \leq e^{d}$...

<h3>3) Terceira Questão</h3>

...

<h3>4) Quarta Questão</h3>

Utilizamos três pontos $x_i - h$, $x_{i}$ e $x_{i} + h$ para aproximar a derivada de 1ª ordem de uma função $f$ no ponto $x_{i}$ com diferença centrada. Primeiramente, expandimos $f$ em polinômio de Taylor em torno de $x_i$, isto é,
$$f(x) = f(x_{i}) + f'(x_{i})\,(x - x_{i}) + f''(x_{i})\,\frac{(x - x_{i})^{2}}{2!} + f'''(\xi)\,\frac{(x - x_{i})^{3}}{3!}.$$
Avaliando essa expansão no ponto $x_{i} + h$, temos:
$$ f(x_{i} + h) = f(x_{i}) + f'(x_{i})\,h + f''(x_{i})\frac{h^{2}}{2!} + f'''(\xi_{1})\,\frac{h^{3}}{3!}. $$
Da mesma maneira, avaliação a aproximação em série de Taylor no ponto $x_{i} - h$. Assim, temos:

$$ f(x_{i} - h) = f(x_{i}) - f'(x_{i})\,h + f''(x_{i})\,\frac{h^{2}}{2!} - f'''(\xi_{2})\,\frac{h^{3}}{3!}. $$

Multiplicamos agora a última equação por $-1$ e somamos o resultado com a penúltima equação, obtendo o seguinte resultado:

$$ f(x_{i} + h) - f(x_{i} - h) = 2\,f'(x_{i})\,h + M\,\frac{h^{3}}{3!}, $$

onde $M = f'''(\xi_{1}) + f'''(\xi_{2})$. Isolando o termo da derivada, segue que $f'(x_{i}) = \dfrac{f(x_{i} + h) - f(x_{i} - h)}{2\,h} - \dfrac{M}{12}\,h^{2}$. Logo, a aproximação da derivada de primeira ordem por diferença centrada é $f'(x_{i}) \approx \dfrac{f(x_{i} + h) - f(x_{i} - h)}{2}$ e seu erro é $O(h^{2}) = - \dfrac{M}{12}\,h^{2}$, isto é, o erro é da ordem de $h^{2}$.

<h3>5) Quinta Questão</h3>

Para encontrar o polinômio de Taylor de 2ª ordem $P_{2}$ próximo a $(0, 0)$ da função $f(x, y) = e^{2\,x} + e^{y}$, precisamos determinar suas derivadas parciais. Então, temos $f_{x}(x, y) =2\,e^{2\,x}$, $f_{xx}(x, y) = 4\,e^{2\,x}$, $f_{y}(x, y) = e^{y}$, $f_{yy}(x, y) = e^{y}$ e $f_{xy}(x, y) = 0$. Dessa forma, o polinômio $P_{2}$ é dado pela seguinte expressão:

$$ P_{2}(x, y) = f(0, 0) + f_{x}(0, 0)\,x + f_{y}(0, 0)\,y + f_{xy}(0, 0)\,x\,y + f_{xx}(0, 0)\,\frac{x^{2}}{2} + f_{yy}(0, 0)\,\frac{y^{2}}{2}. $$

Logo, $P_{2}(x, y) = 2 + 2\,x + y + 2\,x^{2} + \frac{1}{2}\,y^{2}$ é o polinômio de Taylor de 2ª ordem da função $f$ em torno de $(0, 0)$. Agora, usando este polinômio, uma aproximação para o valor de $(x, y) = (0.5, 0.1)$ é $P_{2}(0.5, 0.1) = 3.6050$. O valor de $f$ no ponto $(x, y) = (0.5, 0.1)$ é $f(0.5, 0.1) = 3.8235$, de modo que o erro absoluto na aproximação é $E_{abs} = 0.2185$ com quatro casas decimais.

<h3>6) Sexta Questão</h3>

Na tabela a seguir, observa-se que os pontos nos quaos é possível fazer o cálculo de modo mais preciso são os pontos intermédiários, isto é, $t = 0.1, 0.2, 0.3$, pois nestes pontos podemos aplicar a diferença centrada que possui ordem de convergência quadrática $O(k^{2})$. Já nos pontos extremos $t = 0.0$ e $t = 0.4$ utiliza-se as diferenças progressiva e regressiva, respectivamente. Nestes casos, temos uma precisão menor, de ordem linear $O(k)$.
<div align="center">

| **t** | **h(t)** | **v(t)** |
|:----:|:----:|:----:|
| 0.0 | 1.001 | $\frac{h(0.1) - h(0.0)}{k} = \frac{1.353 - 1.001}{0.1 - 0.0} = 3.520$ |
| 0.1 | 1.353 | $\frac{h(0.2) - h(0.0)}{2\,k} = \frac{1.821 - 1.001}{0.2} = 4.100$ |
| 0.2 | 1.821 | $\frac{h(0.3) - h(0.1)}{2\,k} = \frac{2.465 - 1.353}{0.2} = 5.560$ |
| 0.3 | 2.465 | $\frac{h(0.4) - h(0.2)}{2\,k} = \frac{3.318 - 1.821}{0.2} = 7.485$ |
| 0.4 | 3.318 | $\frac{h(0.4) - h(0.3)}{k} = \frac{3.318 - 2.465}{0.1} = 8.530$ |

</div>

<h2>Problema de Valor Inicial</h2>

<h3>1) Primeira Questão</h3>

...dsdsds