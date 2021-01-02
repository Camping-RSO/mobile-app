class Avtokamp {
    int id;
    String naziv;
    String opis;
    String naslov;
    String telefon;
    String nazivLokacije;
    String koordinataX;
    String koordinataY;
    int regija;

    Avtokamp.nov();

    Avtokamp(this.id, this.naziv, this.opis, this.naslov, this.telefon,
        this.nazivLokacije, this.koordinataX, this.koordinataY, this.regija);

    Avtokamp.novi(this.naziv, this.nazivLokacije, this.naslov, this.telefon,
        this.opis, this.regija);

    static Avtokamp fromJson(json) {
        Avtokamp a = new Avtokamp.nov();
        a.id = json['avtokampId'];
        a.naziv = json['naziv'];
        a.opis = json['opis'];
        a.naslov = json['naslov'];
        a.telefon = json['telefon'];
        a.nazivLokacije = json['nazivLokacije'];
        a.koordinataX = json['koordinataX'];
        a.koordinataY = json['koordinataY'];
        a.regija = json['regija'];
        return a;
    }
}