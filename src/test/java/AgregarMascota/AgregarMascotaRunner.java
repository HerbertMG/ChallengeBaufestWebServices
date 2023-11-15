package AgregarMascota;

import com.intuit.karate.junit5.Karate;

public class AgregarMascotaRunner {

    @Karate.Test
    Karate testAddPet(){
        return Karate.run("Agregar.feature")
                .tags("@EscenarioPOST")
                .karateEnv("uat")
                .relativeTo(getClass());
    }
}
