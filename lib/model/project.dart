class Project {
  final String titulo;
  final String descricao;
  final List<String> midias;
  final String? linkGit;

  Project({
    required this.descricao, 
    required this.midias, 
    this.linkGit, 
    required this.titulo});
}
