package taxi.controller.manufacturer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.exception.DuplicateException;
import taxi.lib.Injector;
import taxi.model.Manufacturer;
import taxi.service.ManufacturerService;

public class AddManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/manufacturers/add.jsp").forward(req, resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String name = req.getParameter("name");
        String model = req.getParameter("model");
        Manufacturer manufacturer = new Manufacturer(name, model);
        try {
            manufacturerService.create(manufacturer);
        } catch (DuplicateException e) {
            req.setAttribute("errorMsg", e.getMessage());
            doGet(req, resp);
        }
        req.setAttribute("successMsg", manufacturer + " added");
        doGet(req, resp);
        resp.sendRedirect(req.getContextPath() + "/manufacturers/add");
    }
}

