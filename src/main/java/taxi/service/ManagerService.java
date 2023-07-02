package taxi.service;

import java.util.Optional;
import taxi.model.Manager;

public interface ManagerService {
    Optional<Manager> findByLogin(String login);
}
