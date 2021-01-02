class Kategorija {
    int id;
    String naziv;

    Kategorija.nov();

    Kategorija(this.id, this.naziv);

    static Kategorija fromJson(json) {
        Kategorija k = new Kategorija.nov();
        k.id = json['kategorijaId'];
        k.naziv = json['naziv'];
        return k;
    }
}
