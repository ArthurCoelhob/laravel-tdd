<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Produto;

class ProdutoApiTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_example()
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    public function test_pode_criar_um_produto()
    {
        $response = $this->postJson('/api/produtos', [
            'nome' => 'Produto Teste 2',
            'tipo' => 'Tipo X',
            'valor' => 19.50,
            'descricao' => 'Descrição do produto de teste',
        ]);
    
        $response->assertStatus(201);
        $this->assertDatabaseHas('produto', ['nome' => 'Produto Teste']);
    }
    
    public function test_pode_listar_produtos()
    {

        $response = $this->getJson('/api/produtos');

        $response->assertStatus(200);
        $response->assertJsonCount(8); // quantidade de itens atual no banco //
    }

    public function test_pode_exibir_um_produto()
    {
    
        $produto = Produto::create([
            'nome' => 'Produto Teste',
            'tipo' => 'Eletronico',
            'valor' => 19.99,
            'descricao' => 'Descrição xxxx',
        ]);
   
        $response = $this->getJson('/api/produtos/' . $produto->id);

        $response->assertStatus(200);
        $response->assertJson([
            'nome' => 'Produto Teste',
            'tipo' => 'Eletronico',
            'valor' => 19.99,
            'descricao' => 'Descrição xxxx',
        ]);
    }


    public function test_pode_atualizar_um_produto()
    {
        $produto = Produto::create([
            'nome' => 'Produto Original',
            'tipo' => 'Tipo A',
            'valor' => 29.99,
            'descricao' => 'Descrição original',
        ]);

        $response = $this->putJson('/api/produtos/' . $produto->id, [
            'nome' => 'Produto Atualizado',
            'tipo' => 'Tipo B',
            'valor' => 39.99,
            'descricao' => 'Descrição atualizada',
        ]);

        $response->assertStatus(200);
        $response->assertJson([
            'nome' => 'Produto Atualizado',
            'tipo' => 'Tipo B',
            'valor' => 39.99,
            'descricao' => 'Descrição atualizada',
        ]);
    }


    public function test_pode_deletar_um_produto()
    {
        $produto = Produto::create([
            'nome' => 'Produto para Deletar',
            'tipo' => 'Tipo Z',
            'valor' => 9.99,
            'descricao' => 'Descrição para deletar',
        ]);

        $response = $this->deleteJson('/api/produtos/' . $produto->id);

        $response->assertStatus(204);
        $this->assertDatabaseMissing('produto', ['id' => $produto->id]);
    }

}
