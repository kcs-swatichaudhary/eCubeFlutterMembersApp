/// Status : "Success"
/// StatusCode : 200
/// Message : "User login successfully."
/// Result : {"GetMemberLogin":[{"MemberId":224,"UserToken":"796EB6C2-B81A-4811-8DC2-18728092A6D3","FName":"SIDDHARTH test ","LName":"TRIVEDI","Address":"7 \"LAXMI\" SWASTIK SOCITY (GHB), SECTOR-21","ZipCode":"382021","City":"GANDHINAGAR","State":"GUJARAT","Country":"INDIA","Gender":"Male","Nationality":"INDIAN","Photo":null,"Occupation":"JOB","BirthDate":"16/Oct/1962","BloodGroup":"O+","AnniversaryDate":"17/May/1987","OfficialAddress":"\"GSFC\" B/H RELIANCE MART DRIVE IN ROAD,AHMEDABAD","OfficeNo":"-","ResidenceNo":"-","MobileNo":"9879348811","Fax":"-","EMail":"jigar.chauhan@kcsitglobal.com","Website":"-","MemberShipName":"Premium","MembershipId":1.0,"MemberCode":"KCS1021","MembershipEndDate":"17/Sep/2043","RegistrationFees":"350000.0000","PayableRegistrationFees":"350000.0000","AvailableCredit":9441.00,"IsServicePaidByEmployer":false,"IsMasterCorporate":false,"QRCode":"Member/QRcode/M-QR-224.png","ImageName":"https://kcsappstorage.blob.core.windows.net/ecubeehsmqa/Development/public%5Cimages%5Cmember%5Cphoto%5C19022020012739383.jpg?sv=2018-03-28&sr=b&sig=2TVxhGEe2%2BxwYLSe082T9ZBGQ0RRj4kQmjs5y2TUBbQ%3D&st=2020-12-22T07%3A54%3A24Z&se=2020-12-22T08%3A34%3A24Z&sp=r","Area":"aaa"}],"SubMemberDetail":[]}

class LoginResponseModels {
  String _status;
  int _statusCode;
  String _message;
  LoginResponseResultModel _result;


  LoginResponseModels({
      String status, 
      int statusCode, 
      String message,
    LoginResponseResultModel result}){
    _status = status;
    _statusCode = statusCode;
    _message = message;
    _result = result;
}

  LoginResponseModels.fromJson(dynamic json) {
    _status = json["Status"];
    _statusCode = json["StatusCode"];
    _message = json["Message"];
    _result = json["Result"] != null ? LoginResponseResultModel.fromJson(json["Result"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Status"] = _status;
    map["StatusCode"] = _statusCode;
    map["Message"] = _message;
    if (_result != null) {
      map["Result"] = _result.toJson();
    }
    return map;
  }

}

/// GetMemberLogin : [{"MemberId":224,"UserToken":"796EB6C2-B81A-4811-8DC2-18728092A6D3","FName":"SIDDHARTH test ","LName":"TRIVEDI","Address":"7 \"LAXMI\" SWASTIK SOCITY (GHB), SECTOR-21","ZipCode":"382021","City":"GANDHINAGAR","State":"GUJARAT","Country":"INDIA","Gender":"Male","Nationality":"INDIAN","Photo":null,"Occupation":"JOB","BirthDate":"16/Oct/1962","BloodGroup":"O+","AnniversaryDate":"17/May/1987","OfficialAddress":"\"GSFC\" B/H RELIANCE MART DRIVE IN ROAD,AHMEDABAD","OfficeNo":"-","ResidenceNo":"-","MobileNo":"9879348811","Fax":"-","EMail":"jigar.chauhan@kcsitglobal.com","Website":"-","MemberShipName":"Premium","MembershipId":1.0,"MemberCode":"KCS1021","MembershipEndDate":"17/Sep/2043","RegistrationFees":"350000.0000","PayableRegistrationFees":"350000.0000","AvailableCredit":9441.00,"IsServicePaidByEmployer":false,"IsMasterCorporate":false,"QRCode":"Member/QRcode/M-QR-224.png","ImageName":"https://kcsappstorage.blob.core.windows.net/ecubeehsmqa/Development/public%5Cimages%5Cmember%5Cphoto%5C19022020012739383.jpg?sv=2018-03-28&sr=b&sig=2TVxhGEe2%2BxwYLSe082T9ZBGQ0RRj4kQmjs5y2TUBbQ%3D&st=2020-12-22T07%3A54%3A24Z&se=2020-12-22T08%3A34%3A24Z&sp=r","Area":"aaa"}]
/// SubMemberDetail : []

class LoginResponseResultModel {
  List<GetMemberLogin> _getMemberLogin;
  List<dynamic> _subMemberDetail;

  LoginResponseResultModel({
      List<GetMemberLogin> getMemberLogin, 
      List<dynamic> subMemberDetail}){
    _getMemberLogin = getMemberLogin;
    _subMemberDetail = subMemberDetail;
}

  LoginResponseResultModel.fromJson(dynamic json) {
    if (json["GetMemberLogin"] != null) {
      _getMemberLogin = [];
      json["GetMemberLogin"].forEach((v) {
        _getMemberLogin.add(GetMemberLogin.fromJson(v));
      });
    }
    if (json["SubMemberDetail"] != null) {
      _subMemberDetail = [];
      json["SubMemberDetail"].forEach((v) {
        _subMemberDetail.add(GetMemberLogin.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_getMemberLogin != null) {
      map["GetMemberLogin"] = _getMemberLogin.map((v) => v.toJson()).toList();
    }
    if (_subMemberDetail != null) {
      map["SubMemberDetail"] = _subMemberDetail.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// MemberId : 224
/// UserToken : "796EB6C2-B81A-4811-8DC2-18728092A6D3"
/// FName : "SIDDHARTH test "
/// LName : "TRIVEDI"
/// Address : "7 \"LAXMI\" SWASTIK SOCITY (GHB), SECTOR-21"
/// ZipCode : "382021"
/// City : "GANDHINAGAR"
/// State : "GUJARAT"
/// Country : "INDIA"
/// Gender : "Male"
/// Nationality : "INDIAN"
/// Photo : null
/// Occupation : "JOB"
/// BirthDate : "16/Oct/1962"
/// BloodGroup : "O+"
/// AnniversaryDate : "17/May/1987"
/// OfficialAddress : "\"GSFC\" B/H RELIANCE MART DRIVE IN ROAD,AHMEDABAD"
/// OfficeNo : "-"
/// ResidenceNo : "-"
/// MobileNo : "9879348811"
/// Fax : "-"
/// EMail : "jigar.chauhan@kcsitglobal.com"
/// Website : "-"
/// MemberShipName : "Premium"
/// MembershipId : 1.0
/// MemberCode : "KCS1021"
/// MembershipEndDate : "17/Sep/2043"
/// RegistrationFees : "350000.0000"
/// PayableRegistrationFees : "350000.0000"
/// AvailableCredit : 9441.00
/// IsServicePaidByEmployer : false
/// IsMasterCorporate : false
/// QRCode : "Member/QRcode/M-QR-224.png"
/// ImageName : "https://kcsappstorage.blob.core.windows.net/ecubeehsmqa/Development/public%5Cimages%5Cmember%5Cphoto%5C19022020012739383.jpg?sv=2018-03-28&sr=b&sig=2TVxhGEe2%2BxwYLSe082T9ZBGQ0RRj4kQmjs5y2TUBbQ%3D&st=2020-12-22T07%3A54%3A24Z&se=2020-12-22T08%3A34%3A24Z&sp=r"
/// Area : "aaa"

class GetMemberLogin {
  int _memberId;
  String _userToken;
  String _fName;
  String _lName;
  String _address;
  String _zipCode;
  String _city;
  String _state;
  String _country;
  String _gender;
  String _nationality;
  dynamic _photo;
  String _occupation;
  String _birthDate;
  String _bloodGroup;
  String _anniversaryDate;
  String _officialAddress;
  String _officeNo;
  String _residenceNo;
  String _mobileNo;
  String _fax;
  String _eMail;
  String _website;
  String _memberShipName;
  double _membershipId;
  String _memberCode;
  String _membershipEndDate;
  String _registrationFees;
  String _payableRegistrationFees;
  double _availableCredit;
  bool _isServicePaidByEmployer;
  bool _isMasterCorporate;
  String _qRCode;
  String _imageName;
  String _area;


  GetMemberLogin({
      int memberId,
      String userToken, 
      String fName, 
      String lName, 
      String address, 
      String zipCode, 
      String city, 
      String state, 
      String country, 
      String gender, 
      String nationality, 
      dynamic photo, 
      String occupation, 
      String birthDate, 
      String bloodGroup, 
      String anniversaryDate, 
      String officialAddress, 
      String officeNo, 
      String residenceNo, 
      String mobileNo, 
      String fax, 
      String eMail, 
      String website, 
      String memberShipName, 
      double membershipId, 
      String memberCode, 
      String membershipEndDate, 
      String registrationFees, 
      String payableRegistrationFees, 
      double availableCredit, 
      bool isServicePaidByEmployer, 
      bool isMasterCorporate, 
      String qRCode, 
      String imageName, 
      String area}){
    _memberId = memberId;
    _userToken = userToken;
    _fName = fName;
    _lName = lName;
    _address = address;
    _zipCode = zipCode;
    _city = city;
    _state = state;
    _country = country;
    _gender = gender;
    _nationality = nationality;
    _photo = photo;
    _occupation = occupation;
    _birthDate = birthDate;
    _bloodGroup = bloodGroup;
    _anniversaryDate = anniversaryDate;
    _officialAddress = officialAddress;
    _officeNo = officeNo;
    _residenceNo = residenceNo;
    _mobileNo = mobileNo;
    _fax = fax;
    _eMail = eMail;
    _website = website;
    _memberShipName = memberShipName;
    _membershipId = membershipId;
    _memberCode = memberCode;
    _membershipEndDate = membershipEndDate;
    _registrationFees = registrationFees;
    _payableRegistrationFees = payableRegistrationFees;
    _availableCredit = availableCredit;
    _isServicePaidByEmployer = isServicePaidByEmployer;
    _isMasterCorporate = isMasterCorporate;
    _qRCode = qRCode;
    _imageName = imageName;
    _area = area;
}

  GetMemberLogin.fromJson(dynamic json) {
    _memberId = json["MemberId"];
    _userToken = json["UserToken"];
    _fName = json["FName"];
    _lName = json["LName"];
    _address = json["Address"];
    _zipCode = json["ZipCode"];
    _city = json["City"];
    _state = json["State"];
    _country = json["Country"];
    _gender = json["Gender"];
    _nationality = json["Nationality"];
    _photo = json["Photo"];
    _occupation = json["Occupation"];
    _birthDate = json["BirthDate"];
    _bloodGroup = json["BloodGroup"];
    _anniversaryDate = json["AnniversaryDate"];
    _officialAddress = json["OfficialAddress"];
    _officeNo = json["OfficeNo"];
    _residenceNo = json["ResidenceNo"];
    _mobileNo = json["MobileNo"];
    _fax = json["Fax"];
    _eMail = json["EMail"];
    _website = json["Website"];
    _memberShipName = json["MemberShipName"];
    _membershipId = json["MembershipId"];
    _memberCode = json["MemberCode"];
    _membershipEndDate = json["MembershipEndDate"];
    _registrationFees = json["RegistrationFees"];
    _payableRegistrationFees = json["PayableRegistrationFees"];
    _availableCredit = json["AvailableCredit"];
    _isServicePaidByEmployer = json["IsServicePaidByEmployer"];
    _isMasterCorporate = json["IsMasterCorporate"];
    _qRCode = json["QRCode"];
    _imageName = json["ImageName"];
    _area = json["Area"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["MemberId"] = _memberId;
    map["UserToken"] = _userToken;
    map["FName"] = _fName;
    map["LName"] = _lName;
    map["Address"] = _address;
    map["ZipCode"] = _zipCode;
    map["City"] = _city;
    map["State"] = _state;
    map["Country"] = _country;
    map["Gender"] = _gender;
    map["Nationality"] = _nationality;
    map["Photo"] = _photo;
    map["Occupation"] = _occupation;
    map["BirthDate"] = _birthDate;
    map["BloodGroup"] = _bloodGroup;
    map["AnniversaryDate"] = _anniversaryDate;
    map["OfficialAddress"] = _officialAddress;
    map["OfficeNo"] = _officeNo;
    map["ResidenceNo"] = _residenceNo;
    map["MobileNo"] = _mobileNo;
    map["Fax"] = _fax;
    map["EMail"] = _eMail;
    map["Website"] = _website;
    map["MemberShipName"] = _memberShipName;
    map["MembershipId"] = _membershipId;
    map["MemberCode"] = _memberCode;
    map["MembershipEndDate"] = _membershipEndDate;
    map["RegistrationFees"] = _registrationFees;
    map["PayableRegistrationFees"] = _payableRegistrationFees;
    map["AvailableCredit"] = _availableCredit;
    map["IsServicePaidByEmployer"] = _isServicePaidByEmployer;
    map["IsMasterCorporate"] = _isMasterCorporate;
    map["QRCode"] = _qRCode;
    map["ImageName"] = _imageName;
    map["Area"] = _area;
    return map;
  }

}