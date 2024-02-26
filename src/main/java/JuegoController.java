import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class JuegoController {
    @Autowired
    private JuegoRepository juegoRepository;

    @PostMapping("/juego")
    public Juego addJuego(@RequestBody Juego juego) {
        return juegoRepository.save(juego);
    }

    @PutMapping("/juego/{id}/favorito")
    public Juego toggleFavorito(@PathVariable int id) {
        Juego juego = juegoRepository.findById(id).orElseThrow(() -> new RuntimeException("Juego no encontrado"));
        juego.setFavorito(!juego.isFavorito());
        return juegoRepository.save(juego);
    }
}