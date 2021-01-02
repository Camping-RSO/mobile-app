class ApiRoutes {
    static const API_ENDPOINT = "http://52.249.216.197";

    static const AVTOKAMPI = '$API_ENDPOINT/camping-overview/api/avtokampi';
    static const AVTOKAMP = '$API_ENDPOINT/camping-overview/api/avtokampi/%s';
    static const AVTOKAMP_SLIKE = '$API_ENDPOINT/camping-images/slike/avtokamp/slike/%s';
    static const AVTOKAMP_SLIKA = '$API_ENDPOINT/camping-images/slike/avtokamp/%s';
    static const REGIJE = '$API_ENDPOINT/camping-overview/api/avtokampi/regije';
    static const DRZAVE = '$API_ENDPOINT/camping-overview/api/avtokampi/drzave';
    static const CENIKI_ZA_KAMP = '$API_ENDPOINT/camping-overview/api/avtokampi/%s/ceniki';
    static const CENIK_PODROBNOSTI = '$API_ENDPOINT/camping-overview/api/avtokampi/%s/cenik';

    static const KAMPIRNA_MESTA_SEZNAM = '$API_ENDPOINT/camping-overview/api/kampirnamesta/%s/avtokamp';
    static const KAMPIRNA_MESTA_PODATKI = '$API_ENDPOINT/camping-overview/api/kampirnamesta/%s';
    static const KAMPIRNA_MESTA_NOVO = '$API_ENDPOINT/camping-overview/api/kampirnamesta/%s';
    static const KAMPIRNA_MESTA_UREDI_BRISI = '$API_ENDPOINT/camping-overview/api/kampirnamesta/%s/%s';
    static const KAMPIRNA_MESTA_KATEGORIJE = '$API_ENDPOINT/camping-overview/api/kampirnamesta/kategorije';

    static const REZERVACIJE = '$API_ENDPOINT/camping-reservations/api/rezervacije/%s/uporabnik';
    static const REZERVACIJE_DODAJ = '$API_ENDPOINT/camping-reservations/api/rezervacije';
    static const REZERVACIJE_VRSTA_KAMPIRANJA = '$API_ENDPOINT/camping-reservations/api/rezervacije/vrsta_kampiranja';
    static const REZERVACIJE_STATUSI = '$API_ENDPOINT/camping-reservations/api/rezervacije/status';

    static const UPORABNIKI_MNENJA_ZA_KAMP = '$API_ENDPOINT/camping-opinions/api/mnenja/avtokamp/%s/mnenja';
    static const UPORABNIKI_MNENJA = '$API_ENDPOINT/camping-opinions/api/mnenja/%s/mnenja';
    static const UPORABNIKI_MNENJE = '$API_ENDPOINT/camping-opinions/api/mnenja/%s/mnenje';
}
