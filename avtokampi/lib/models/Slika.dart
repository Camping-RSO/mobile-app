class Slika {
    int id;
    String url;
    int avtokamp;
    String created;

    Slika.nov();

    Slika(this.id, this.url, this.avtokamp, this.created);

    static Slika fromJson(json) {
        Slika s = new Slika.nov();
        s.id = json['cenikId'];
        s.url = json['url'];
        s.avtokamp = json['avtokamp'];
        s.created = json['created'];
        return s;
    }
}
