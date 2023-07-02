package taxi.controller.car;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.DuplicateException;
import taxi.lib.Injector;
import taxi.model.Car;
import taxi.model.Driver;
import taxi.service.CarService;
import taxi.service.DriverService;

public class AddDriverToCarController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final CarService carService = (CarService) injector.getInstance(CarService.class);
    private final DriverService driverService = (DriverService) injector
            .getInstance(DriverService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        List<Driver> drivers = driverService.getAll();
        List<Car> cars = carService.getAll();
        req.setAttribute("drivers", drivers);
        req.setAttribute("cars", cars);
        req.getRequestDispatcher("/WEB-INF/views/cars/drivers/add.jsp")
                .forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        long driverId = Long.parseLong(req.getParameter("driver_id"));
        long carId = Long.parseLong(req.getParameter("car_id"));
        Driver driver = driverService.get(driverId);
        Car car = carService.get(carId);
        try {
            carService.addDriverToCar(driver, car);
        } catch (DuplicateException e) {
            req.setAttribute("errorMsg", e.getMessage());
            doGet(req, resp);
        }
        req.setAttribute("successMsg", driver + " added to the car: " + car);
        doGet(req, resp);
        resp.sendRedirect(req.getContextPath() + "/cars/drivers/add");
    }
}
