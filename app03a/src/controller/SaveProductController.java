package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import domain.Product;
import form.ProductForm;

public class SaveProductController implements Controller{
	private static final Log logger = LogFactory.getLog(SaveProductController.class);
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
			logger.info("SaveProductController called!");
			ProductForm pf = new ProductForm();
			pf.setName(request.getParameter("name"));
			pf.setDescription(request.getParameter("description"));
			pf.setPrice(request.getParameter("price"));
			Product p = new Product();
			p.setName(pf.getName());
			p.setDescription(pf.getDescription());
			String price = pf.getPrice();
			try {
				float newPrice = Float.parseFloat(price);
				p.setPrice(newPrice);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		return new ModelAndView("/WEB-INF/jsp/ProductDetial.jsp","product",p);
	}
	
}
