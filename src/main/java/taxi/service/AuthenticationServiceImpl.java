package taxi.service;

import java.util.Optional;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Manager;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Inject
    private ManagerService managerService;

    @Override
    public Manager login(String login, String password)
            throws AuthenticationException {
        Optional<Manager> manager = managerService.findByLogin(login);
        if (manager.isEmpty() || !manager.get().getPassword().equals(password)) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        return manager.get();
    }

}

