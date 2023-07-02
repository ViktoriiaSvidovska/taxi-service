package taxi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Optional;
import taxi.exception.DataProcessingException;
import taxi.lib.Dao;
import taxi.model.Manager;
import taxi.util.ConnectionUtil;

@Dao
public class ManagerDaoImpl implements ManagerDao {
    @Override
    public Optional<Manager> findByLogin(String login) {
        String query = "SELECT * FROM managers WHERE login = ? AND is_deleted = FALSE";
        try (Connection connection = ConnectionUtil.getConnection();
                PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, login);
            ResultSet resultSet = statement.executeQuery();
            Manager manager = null;
            if (resultSet.next()) {
                manager = parseManagerFromResultSet(resultSet);
            }
            return Optional.ofNullable(manager);
        } catch (SQLException e) {
            throw new DataProcessingException("Can't get manager by login " + login, e);
        }
    }

    private Manager parseManagerFromResultSet(ResultSet resultSet)
            throws SQLException {
        Long id = resultSet.getObject("id", Long.class);
        String name = resultSet.getString("name");
        String login = resultSet.getString("login");
        String password = resultSet.getString("password");
        Manager manager = new Manager();
        manager.setId(id);
        manager.setName(name);
        manager.setLogin(login);
        manager.setPassword(password);
        return manager;
    }
}
