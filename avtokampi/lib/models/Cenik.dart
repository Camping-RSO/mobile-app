class Cenik {
    int id;
    String naziv;
    double cena;
    int avtokamp;

    Cenik.nov();

    Cenik(this.id, this.naziv, this.cena, this.avtokamp);

    static Cenik fromJson(json) {
        Cenik c = new Cenik.nov();
        c.id = json['cenikId'];
        c.naziv = json['naziv'];
        c.cena = json['cena'];
        c.avtokamp = json['avtokamp'];
        return c;
    }
}
