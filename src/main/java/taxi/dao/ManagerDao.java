package taxi.dao;

import java.util.Optional;
import taxi.model.Manager;

public interface ManagerDao {

    Optional<Manager> findByLogin(String login);

}
