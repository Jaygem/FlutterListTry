
class Person{
  num id, age;
  String name, lastname; 
  Person(num i,num a, String nam, String lnam)
  {
    this.id = i;
    this.age = a;
    this.name = nam;
    this.lastname = lnam;
  }
  String get getName
  {
    return this.name;
  }
}
