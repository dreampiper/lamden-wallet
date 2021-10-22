class AccountModel {
  String? nickname;
  String? accountName;
  double? accountBalance;
  String? icon;
  String? privateKey;
  String? publicKey;

  AccountModel({
    this.nickname,
    this.accountName,
    this.accountBalance,
    this.icon,
    this.privateKey,
    this.publicKey,
  });

  AccountModel.fromJson(Map<String, dynamic> json) {
    nickname = json['nickname'];
    accountName = json['accountName'];
    accountBalance = json['accountBalance'];
    icon = json['icon'];
    privateKey = json['privateKey'];
    publicKey = json['publicKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nickname'] = this.nickname;
    data['accountName'] = this.accountName;
    data['accountBalance'] = this.accountBalance;
    data['icon'] = this.icon;
    data['privateKey'] = this.privateKey;
    data['publicKey'] = this.publicKey;
    return data;
  }
}
