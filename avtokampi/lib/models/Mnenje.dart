class Mnenje {
    int id;
    String mnenje;
    int ocena;
    int uporabnik;
    int avtokamp;

    Mnenje.nov();

    Mnenje(this.id, this.mnenje, this.ocena, this.uporabnik, this.avtokamp);

    Mnenje.novo(this.mnenje, this.ocena, this.uporabnik, this.avtokamp);

    static Mnenje fromJson(json) {
        Mnenje m = new Mnenje.nov();
        m.id = json['mnenjeId'];
        m.mnenje = json['mnenje'];
        m.ocena = json['ocena'];
        m.uporabnik = json['uporabnik'];
        m.avtokamp = json['avtokamp'];
        return m;
    }
}
