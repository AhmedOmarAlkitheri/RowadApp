
class Moths {
  double? madoubleainingPrayer;
  double? madoubleainingTheVoluntaryPrayers;
  double? weeklyScientificSession;
  double? goodDealingWithManagement;
  double? cleanlinessAndOrder;
  double? appearancesAndBehaviors;
  double? alquranAlkarim;
  double? accompanyingCurriculum;
  double? doubleeractionInActivities;
  double? excellenceAndCreativity;
  double? initiativeAndPositivity;

  Moths(
      {this.madoubleainingPrayer,
      this.madoubleainingTheVoluntaryPrayers,
      this.weeklyScientificSession,
      this.goodDealingWithManagement,
      this.cleanlinessAndOrder,
      this.appearancesAndBehaviors,
      this.alquranAlkarim,
      this.accompanyingCurriculum,
      this.doubleeractionInActivities,
      this.excellenceAndCreativity,
      this.initiativeAndPositivity});

  Moths.fromJson(Map<String, dynamic> json) {
    madoubleainingPrayer = json['Madoubleaining prayer']?.toDouble();
    madoubleainingTheVoluntaryPrayers = json['Madoubleaining the voluntary prayers']?.toDouble();
    weeklyScientificSession = json['Weekly scientific session']?.toDouble();
    goodDealingWithManagement = json['Good dealing with management']?.toDouble();
    cleanlinessAndOrder = json['Cleanliness and order']?.toDouble();
    appearancesAndBehaviors = json['Appearances and behaviors']?.toDouble();
    alquranAlkarim = json['alquran alkarim']?.toDouble();
    accompanyingCurriculum = json['Accompanying curriculum']?.toDouble();
    doubleeractionInActivities = json['doubleeraction in activities']?.toDouble();
    excellenceAndCreativity = json['Excellence and creativity']?.toDouble();
    initiativeAndPositivity = json['Initiative and positivity']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Madoubleaining prayer'] = this.madoubleainingPrayer;
    data['Madoubleaining the voluntary prayers'] =
        this.madoubleainingTheVoluntaryPrayers;
    data['Weekly scientific session'] = this.weeklyScientificSession;
    data['Good dealing with management'] = this.goodDealingWithManagement;
    data['Cleanliness and order'] = this.cleanlinessAndOrder;
    data['Appearances and behaviors'] = this.appearancesAndBehaviors;
    data['alquran alkarim'] = this.alquranAlkarim;
    data['Accompanying curriculum'] = this.accompanyingCurriculum;
    data['doubleeraction in activities'] = this.doubleeractionInActivities;
    data['Excellence and creativity'] = this.excellenceAndCreativity;
    data['Initiative and positivity'] = this.initiativeAndPositivity;
    return data;
  }
}
