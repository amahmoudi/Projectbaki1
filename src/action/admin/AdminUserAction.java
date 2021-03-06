package action.admin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import common.commonAction;

import dao.domain.impl.AdminUserDaoImpl;
import dao.tables.Adminuser;

public class AdminUserAction extends commonAction implements
	ModelDriven<Adminuser> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Adminuser model;
	AdminUserDaoImpl dao = new AdminUserDaoImpl();
	List<Adminuser> list = new ArrayList<Adminuser>();
	ActionContext context = ActionContext.getContext();
	Map<String, Object> session = null;
	static Logger logger = Logger.getLogger(AdminUserAction.class);

	//test tst;

	@Override
	public String execute() throws Exception {
		logger.debug("This is a debug statement");
		list = dao.findUser(model);
		if (model.getUserid().length() == 0) {
			addFieldError("userid", "User ID is required.");
		}
		if (model.getPassword().length() == 0) {
			addFieldError("password", "Password is required.");
		} else if (list.size() == 1) {
			//tst=new test(model, dao);
			session = context.getSession();
			session.put("loggerAdmin", model.getUserid());
			return SUCCESS;
		} else {
			addActionError("You are not a valid user.");
			return INPUT;
		}
		return INPUT;
	}
	public String  myremoteactionone(){
		return SUCCESS;
	}
	public String  myremoteactiontwo(){
		return SUCCESS;
	}
	public String myremoteactionthree(){
		return SUCCESS;
	}
	public String loadDashboard(){
		return SUCCESS;
	}
	public Adminuser getModel() {
		model = new Adminuser();
		return model;
	}
}