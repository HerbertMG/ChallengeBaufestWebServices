package ModificarMascota;

import com.intuit.karate.junit5.Karate;

public class ModificarMascotaRunner {

    @Karate.Test
    Karate testPutPet(){
        return Karate.run("Modificar.feature")
                .tags("@EscenarioPUT")
                .karateEnv("uat")
                .relativeTo(getClass());
    }
}
