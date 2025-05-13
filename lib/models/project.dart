class Project {
  final String title;
  final String description;
  final String imageUrl;
  Project({required this.title, required this.description, required
  this.imageUrl});
}
List<Project> projects = [
  Project(
    title: "Portfolio Website",
    description: "Website pribadi untuk menampilkan portofolio",
    imageUrl: "assets/portfolio.jpg",
  ),
  Project(
    title: "To-Do List App",
    description: "Aplikasi Flutter untuk mengelola tugas harian",
    imageUrl: "assets/todo.png",
  ),
];
