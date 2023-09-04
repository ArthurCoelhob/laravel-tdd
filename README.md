#       Laravel-TDD: API de Cadastro de Itens

 
TDD (Test-Driven Development) é uma abordagem de desenvolvimento de software que envolve escrever testes automatizados antes de escrever o próprio código da funcionalidade. Esses testes são geralmente testes unitários, que são focados em testar unidades individuais de código, como funções ou métodos, de forma isolada. O objetivo do TDD é orientar o processo de desenvolvimento, garantindo que o código atenda aos requisitos e funcione conforme o esperado desde o início.

No contexto do TDD, o ciclo geralmente segue essas etapas:

Escrever um teste: Primeiro, você escreve um teste unitário que descreve a funcionalidade que você deseja implementar. Esse teste geralmente falha inicialmente, já que o código ainda não foi escrito.

Escrever o código mínimo: Em seguida, você escreve a quantidade mínima de código necessária para fazer o teste passar. Isso não significa implementar toda a funcionalidade, apenas o suficiente para satisfazer o teste.

Refatorar: Depois que o teste passa, você pode refatorar o código para melhorar sua qualidade, clareza ou eficiência, mantendo o teste passando o tempo todo.

* Este é um projeto Laravel que implementa uma API de cadastro de itens, com um foco especial em Test-Driven Development (TDD)


        git clone https://github.com/ArthurCoelhob/laravel-tdd.git
        cd laravel-tdd

* Instale as depedencias do Laravel
  

        composer install


* Configure o arquivo .env

    DB_CONNECTION=pgsql
  <br>
    DB_HOST=127.0.0.1
  <br>
    DB_PORT=5432
  <br>
    DB_DATABASE=produtos
  <br>
    DB_USERNAME=postgres
  <br>
    DB_PASSWORD=123
  <br>

 * Inicie o servidor de desenvolvimento

       php artisan serve
     
 * teste o projeto executando os testes

        php artisan test

 
        
