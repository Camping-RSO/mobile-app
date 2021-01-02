class Rezervacija {
    int id;
    String datumOd;
    String datumDo;
    int uporabnik;
    int avtokamp;
    int kampirnoMesto;
    int vrstaKampiranja;
    int statusRezervacije;

    Rezervacija.nov();

    Rezervacija(this.id,
        this.datumOd,
        this.datumDo,
        this.uporabnik,
        this.avtokamp,
        this.kampirnoMesto,
        this.vrstaKampiranja,
        this.statusRezervacije);

    Rezervacija.nova(this.datumOd,
        this.datumDo,
        this.uporabnik,
        this.avtokamp,
        this.kampirnoMesto,
        this.vrstaKampiranja,
        this.statusRezervacije);

    static Rezervacija fromJson(json) {
        Rezervacija r = new Rezervacija.nov();
        r.id = json['rezervacijaId'];
        r.datumOd = json['trajanjeOd'];
        r.datumDo = json['trajanjeDo'];
        r.uporabnik = json['uporabnik'];
        r.avtokamp = json['avtokamp'];
        r.kampirnoMesto = json['kampirnoMesto'];
        r.vrstaKampiranja = json['vrstaKampiranja'];
        r.statusRezervacije = json['statusRezervacije'];
        return r;
    }
}
