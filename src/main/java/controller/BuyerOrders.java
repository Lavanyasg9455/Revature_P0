package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.BuyerService;
import dto.OrderDetails;
import java.io.IOException;
import java.util.List;

@WebServlet("/myorders")
public class BuyerOrders extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public BuyerOrders() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// Get buyerId from session or request parameter
    	HttpSession session=request.getSession();
        int buyerid =  (int) session.getAttribute("buyerid"); // Assumes buyerid is passed as a request parameter
        

        // Get order details from service
        BuyerService service = new BuyerService();
        List<OrderDetails> orderDetails = service.getOrderDetails(buyerid);

        // Set orderDetails as request attribute
        request.setAttribute("orderDetails", orderDetails);

        // Forward to JSP page
        request.getRequestDispatcher("/myorders.jsp").forward(request, response);
    	// This method can be used if you need to handle form submissions or other POST requests
        doGet(request, response);
    }
}
