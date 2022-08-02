class Series {
  late int id;
  late String pathToImage;
  late String title;
  late String description;
  late bool isPageDetails;
  late String? moreInformation;

  Series(this.id, this.pathToImage, this.title, this.description,
      {this.moreInformation, this.isPageDetails = true});
}
