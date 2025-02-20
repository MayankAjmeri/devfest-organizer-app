class SpeakersData {
  List<Speaker> speakers;

  SpeakersData({this.speakers});

  SpeakersData.fromJson(Map<String, dynamic> json) {
    if (json['speakers'] != null) {
      speakers = new List<Speaker>();
      json['speakers'].forEach((v) {
        speakers.add(Speaker.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.speakers != null) {
      data['speakers'] = this.speakers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  // String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerSession;
  String sessionId;
  String sessionDetail;
  String speakerBio;
  String track;
  bool isFeatured;
  bool isShown;
  String company;
  String sessionLevel;
  String startTime;
  String totalTime;

  Speaker({
    this.speakerName,
    this.speakerDesc,
    this.speakerImage,
    // this.speakerInfo,
    this.speakerId,
    this.fbUrl,
    this.twitterUrl,
    this.linkedinUrl,
    this.githubUrl,
    this.speakerSession,
    this.sessionId,
    this.sessionDetail,
    this.speakerBio,
    this.isFeatured,
    this.isShown,
    this.track,
    this.company,
    this.sessionLevel,
    this.startTime,
    this.totalTime,
  });

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    // speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerSession = json['speaker_session'];
    sessionId = json['session_id'];
    sessionDetail = json["session_details"];
    speakerBio = json["speaker_bio"];
    isFeatured = json["is_featured"];
    isShown = json["show"];
    track = json["track"];
    company = json["company"];
    sessionLevel = json["session_level"];
    startTime = json["start_time"];
    totalTime = json["total_time"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    // data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerSession;
    data['session_id'] = this.sessionId;
    data["session_details"] = this.sessionDetail;
    data["speaker_bio"] = this.speakerBio;
    data["is_featured"] = this.isFeatured;
    data["show"] = this.isShown;
    data["track"] = this.track;
    data["company"] = this.company;
    data["session_level"] = this.sessionLevel;
    data["start_time"] = this.startTime;
    data["total_time"] = this.totalTime;
    return data;
  }
}
