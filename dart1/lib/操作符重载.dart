
/*
https://www.jianshu.com/p/d7b7e490a5ad
 */
class Role {
  final String name;
  final int _accessLevel;

  const Role(this.name, this._accessLevel);
  bool operator >(Role Other) {
    return this._accessLevel > Other._accessLevel;
  }

  bool operator <(Role Other) {
    return this._accessLevel < Other._accessLevel;
  }
}

main() {
  var adminRole = new Role('管理员', 3);
  var reporterRole = new Role('报告员', 2);
  var userRole = new Role('用户', 1);
  if (adminRole > reporterRole) {
    print("管理员的权限大于报告员");
  }
  if (reporterRole > userRole) {
    print("报告员的权限大于用户");
  }
}