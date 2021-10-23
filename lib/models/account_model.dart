class AccountModel {
  String? nickname;
  String? accountName;
  double? accountBalance;
  String? icon;
  String? privateKey;
  String? publicKey;
  bool? linkedAccount;

  AccountModel({
    this.nickname,
    this.accountName,
    this.accountBalance,
    this.icon,
    this.privateKey,
    this.publicKey,
    this.linkedAccount,
  });

  AccountModel.fromJson(Map<String, dynamic> json) {
    nickname = json['nickname'];
    accountName = json['accountName'];
    accountBalance = json['accountBalance'];
    icon = json['icon'];
    privateKey = json['privateKey'];
    publicKey = json['publicKey'];
    linkedAccount = json['linkedAccount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nickname'] = this.nickname;
    data['accountName'] = this.accountName;
    data['accountBalance'] = this.accountBalance;
    data['icon'] = this.icon;
    data['privateKey'] = this.privateKey;
    data['publicKey'] = this.publicKey;
    data['linkedAccount'] = this.linkedAccount;
    return data;
  }
}
