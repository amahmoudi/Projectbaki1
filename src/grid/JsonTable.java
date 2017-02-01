package grid;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.domain.AdminUserDao;
import dao.tables.Adminuser;
public class JsonTable extends ActionSupport {

	  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//Your result List
	  private List<Adminuser>      gridModel;
	  private AdminUserDao adminUserDao;

	  //get how many rows we want to have into the grid - rowNum attribute in the grid
	  private Integer             rows             = 0;

	  //Get the requested page. By default grid sets this to 1.
	  private Integer             page             = 0;

	  // sorting order - asc or desc
	  private String              sord;

	  // get index row - i.e. user click to sort.
	  private String              sidx;

	  // Search Field
	  private String              searchField;

	  // The Search String
	  private String              searchString;

	  // he Search Operation ['eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc']
	  private String              searchOper;

	  // Your Total Pages
	  private Integer             total            = 0;

	  // All Record
	  private Integer             records          = 0;
	  public String execute()
	  {

	    int to = (rows * page);
	    int from = to - rows;


	    //Count Rows (select count(*) from custumer)
	    records =100;

	    //Your logic to search and select the required data.
	    setGridModel(adminUserDao.findAll());

	    //calculate the total pages for the query
	    total =(int) Math.ceil((double)records / (double)rows);

	    return SUCCESS;
	  }

	  public String getJSON()
	  {
	    return execute();
	  }

	public List<Adminuser> getGridModel() {
		if (gridModel == null)
			gridModel = new ArrayList<Adminuser>();
		return gridModel;
	}

	public void setGridModel(List<Adminuser> gridModel) {
		this.gridModel = gridModel;
	}

	  //Getters and Setters for Attributes
	}
