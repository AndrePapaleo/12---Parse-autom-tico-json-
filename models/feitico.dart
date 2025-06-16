import 'package:json_annotation/json_annotation.dart';

part 'feitico.g.dart'; // Arquivo que será gerado 

@JsonSerializable() // Anotação para gerar o código de serialização 
class Feitico {
  final String nome;
  final String descricao;
  final String elemento;

  Feitico({required this.nome, required this.descricao, required this.elemento});

  // Construtor factory que cria um Feitico a partir de um mapa JSON 
  factory Feitico.fromJson(Map<String, dynamic> json) => _$FeiticoFromJson(json);

  // Método que converte uma instância de Feitico para um mapa JSON 
  Map<String, dynamic> toJson() => _$FeiticoToJson(this);
}
