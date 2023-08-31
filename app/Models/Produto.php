<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produto extends Model
{
    use HasFactory;

    protected $fillable = ['nome', 'tipo', 'valor', 'descricao'];

    protected $table = 'produto';

    public static $rules = [
        'nome' => 'required|string|max:255',
        'tipo' => 'required|string|max:50',
        'valor' => 'required|numeric',
        'descricao' => 'nullable|string',
    ];
}
