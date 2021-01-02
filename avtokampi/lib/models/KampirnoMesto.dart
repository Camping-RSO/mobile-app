class KampirnoMesto {
    int id;
    String naziv;
    String velikost;
    int avtokamp;
    int kategorija;

    KampirnoMesto.nov();

    KampirnoMesto(this.id, this.naziv, this.velikost, this.avtokamp,
        this.kategorija);

    KampirnoMesto.novo(this.naziv, this.velikost, this.avtokamp,
        this.kategorija);

    static KampirnoMesto fromJson(json) {
        KampirnoMesto km = new KampirnoMesto.nov();
        km.id = json['kampirnoMestoId'];
        km.naziv = json['naziv'];
        km.velikost = json['velikost'];
        km.avtokamp = json['avtokamp'];
        km.kategorija = json['kategorija'];
        return km;
    }
}
