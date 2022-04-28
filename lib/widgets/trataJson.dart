// ignore_for_file: file_names

class Noticias{
  String titulo;
  String banca;
  String imagem;

  Noticias(
    this.titulo,this.banca,this.imagem,
  );

  //
  // Transformar os dados do formato JSON em um objeto
  //
  factory Noticias.fromJson(Map<String,dynamic> json){
    return Noticias(
      json["noticia"]["titulo"],
      json["noticia"]["banca"],
      json["noticia"]["imagem"],
    );
  }


}