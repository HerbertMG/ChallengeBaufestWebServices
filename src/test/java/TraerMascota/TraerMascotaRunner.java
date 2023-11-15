package TraerMascota;

import com.intuit.karate.junit5.Karate;

public class TraerMascotaRunner {

    @Karate.Test
    Karate testGetPet(){
        return Karate.run("Traer.feature")
                .tags("@EscenarioGET")
                .karateEnv("uat")
                .relativeTo(getClass());
    }
}
