class Series {
  late String pathToImage;
  late String title;
  late String description;
  late bool isPageDetails;
  late String? moreInformation;

  Series(this.pathToImage, this.title, this.description,
      {this.moreInformation, this.isPageDetails = true});
}
