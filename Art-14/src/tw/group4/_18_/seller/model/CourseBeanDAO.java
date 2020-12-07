package tw.group4._18_.seller.model;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("CourseBeanDAO")
public class CourseBeanDAO {

	
	private SessionFactory sessionFactory;
	
	@Autowired
	public CourseBeanDAO(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

//	public CourseBeanDAO(Session session) {
//		this.session = session;
//	}

	public Course insert(Course co) {
		Session session = sessionFactory.getCurrentSession();

			session.save(co);
			return co;

	}

	public Course select(String coId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Course.class, coId);
	}

	public List<Course> selectAll() {
		Session session = sessionFactory.getCurrentSession();
		Query<Course> query = session.createQuery("From Course", Course.class);
		List<Course> list = query.list();
		return list;
	}

	public boolean update(String coId, String coTitle, String coAct_Type, String coAct_Location, String coLocation_Name, int coPrice, 
			String coAct_Date, String coAct_Time, String coEnd_Date, String coEnd_Time, String coAct_Description, byte[] coAct_Image) {
		Session session = sessionFactory.getCurrentSession();
		Course result = session.get(Course.class, coId);
				
		Course cs = new Course();
		cs.setCoId(coId);
		cs.setCoTitle(coTitle);
		cs.setCoAct_Type(coAct_Type);
		cs.setCoAct_Location(coAct_Location);
		cs.setCoLocation_Name(coLocation_Name);
		cs.setCoPrice(coPrice);
		cs.setCoAct_Date(coAct_Date);
		cs.setCoAct_Time(coAct_Time);
		cs.setCoEnd_Date(coEnd_Date);
		cs.setCoEnd_Time(coEnd_Time);
		cs.setCoAct_Description(coAct_Description);
		cs.setCoAct_Image(coAct_Image);
		
		System.out.println(result.equals(null));
		if (!result.equals(null)) {
			//for(Course_LN cou:session.createQuery("From Course_LN where id= :id", Course_LN.class).getResultList()){
			session.detach(result);
			
			session.update(cs);
			return true;
//			result.setTitle(title);
//			result.setAct_Location(act_Location);
//			result.setLocation_Name(location_Name);
//			result.setPrice(price);
//			result.setAct_Time(act_Time);
//			result.setEnd_Time(end_Time);
//			result.setMain_Unit(main_Unit);
		}
		return false;
	}

	public boolean delete(String coId) {
		Session session = sessionFactory.getCurrentSession();
		Course result = session.get(Course.class, coId);
		
		Course cs = new Course();
		cs.setCoId(coId);
		
		
		if (!result.equals(null)) {
			session.detach(result);
			session.delete(cs);
			return true;
		}
		return false;
	}

}
