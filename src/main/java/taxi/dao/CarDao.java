package taxi.dao;

import java.util.List;
import taxi.model.Car;

public interface CarDao extends GenericDao<Car> {
    Car getCarByLicensePlate(String licensePlate);

    boolean isDriverAddedToCar(Long driverId, Long carId);

    List<Car> getAllByDriver(Long driverId);
}
