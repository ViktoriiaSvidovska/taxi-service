package taxi.service;

import java.util.Optional;
import taxi.dao.ManagerDao;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Manager;

@Service
public class ManagerServiceImpl implements ManagerService {
    @Inject
    private ManagerDao managerDao;

    @Override
    public Optional<Manager> findByLogin(String login) {
        return managerDao.findByLogin(login);
    }
}
