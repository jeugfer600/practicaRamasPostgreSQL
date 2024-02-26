import jakarta.persistence.*;

@Entity
public class Partida {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String review;
    private int puntuacion;
    private float tiempoDeJuego;

    @ManyToOne
    @JoinColumn(name = "juego_id")
    private Juego juego;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public int getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(int puntuacion) {
        this.puntuacion = puntuacion;
    }

    public float getTiempoDeJuego() {
        return tiempoDeJuego;
    }

    public void setTiempoDeJuego(float tiempoDeJuego) {
        this.tiempoDeJuego = tiempoDeJuego;
    }

    public Juego getJuego() {
        return juego;
    }

    public void setJuego(Juego juego) {
        this.juego = juego;
    }
}
