class Popular {
  String image;
  String name;
  String rating;
  String stars;
  String reviewers;
  String price;

  Popular(this.image, this.name, this.rating, this.stars, this.reviewers,
      this.price);
}

List<Popular> popularList = [
  Popular("assets/images/Grilled-Salmon.jpg", "Grilled Salmon","4.9","assets/images/stars.png","(200)","\$96.00"),
  Popular("assets/images/Pasta-Ham.jpg", "Pasta with Ham","4.9","assets/images/stars.png","(200)","\$70.00")
];
