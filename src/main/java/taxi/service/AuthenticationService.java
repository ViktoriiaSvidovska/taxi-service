package taxi.service;

import taxi.exception.AuthenticationException;
import taxi.model.Manager;

public interface AuthenticationService {
    Manager login(String login, String password)
            throws AuthenticationException;
}
