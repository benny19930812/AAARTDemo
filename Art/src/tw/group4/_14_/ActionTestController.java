package tw.group4._14_;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import tw.group4._14_.back.ARTProduct;
import tw.group4._14_.back.dao.ProductBeanDAOService;
import tw.group4.util.IdentityFilter;

@Controller
public class ActionTestController {
	
	@Autowired
	private ProductBeanDAOService pDaoservice;
	

	@RequestMapping(path = "/14/VueTest.ctrl")
	public String processActionTest() {
		
		return IdentityFilter.loginID+"14/VueTest";
	}
	
	@RequestMapping(path = "/14/jsonTest/{id}.ctrl")
	@ResponseBody
	public String testTest(@PathVariable(name = "id") int pdId) {
		
		List<ARTProduct> selectAll = pDaoservice.selectAll(pdId);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(selectAll);
		
		System.out.println(json);
		return json;
	}
	
}
