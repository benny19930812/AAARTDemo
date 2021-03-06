package tw.group4._11_.model;

import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


@Repository("UserSADao")
public class UserSADao {

	private SessionFactory sessionFactory;
	
	@Autowired
	public UserSADao(@Qualifier("sessionFactory") SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<UserSABean> selectAll(){
		Session session = sessionFactory.getCurrentSession();
		Query<UserSABean> query = session.createQuery("From UserSABean", UserSABean.class);
		
//		圖片檔需要轉檔 否則無法讀出
		List<UserSABean> list = query.list();
		return list;
	}
	
	public byte[] picSaByteArray(UserSABean uBean) {
		Session session = sessionFactory.getCurrentSession();
		
		Query<UserSABean> query = session.createQuery("FROM UserSABean ORDER BY ID_SA", UserSABean.class);
		UserSABean uBeanResult = query.uniqueResult();
		Blob blobResult = uBeanResult.getPic_SA();
		
		byte[] byteArray = null;
		try {
			byteArray = blobResult.getBytes(1, (int) blobResult.length());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return byteArray;
	}
	
	public String judgePic(int id) {
		Session session = sessionFactory.getCurrentSession();
		UserSABean saBean = session.get(UserSABean.class, id);
		
		Blob pic = saBean.getPic_SA();
		String name = saBean.getName_SA();
		
		if (pic != null) {
			return name;
		} else {
			return "這人很懶，沒設照片喔！";
		}
	}
	
	public UserSABean changePic(int id_SA , Blob pic_SA) {
		Session session = sessionFactory.getCurrentSession();
		UserSABean result = session.get(UserSABean.class, id_SA);
		
		
		if (result != null) {
			result.setPic_SA(pic_SA);
		}
		return result;
	}
	
	public List<UserSABean> search(String word){
		String sss = "%"+word+"%";
		
		Session session = sessionFactory.getCurrentSession();
		Query<UserSABean> query = session.createQuery("FROM UserSABean WHERE theme_SA like ?0 Or classification_SA like ?1 Order by ID_SA",UserSABean.class);
		query.setParameter(0, sss);
		query.setParameter(1, sss);
		List<UserSABean> list = query.list();
		return list;
	}
	
	public List<UserSABean> searchID(int id){
		Session session = sessionFactory.getCurrentSession();
		Query<UserSABean> query = session.createQuery("FROM UserSABean WHERE ID_SA =?0 ",UserSABean.class);
		query.setParameter(0, id);
		List<UserSABean> list = query.list();
		return list;
	}
	
	public UserSABean donateToSA(int id_SA , int sal_SA) {
		Session session = sessionFactory.getCurrentSession();
		UserSABean result = session.get(UserSABean.class, id_SA);
		int a = result.getSal_SA();
		
		if (sal_SA > 0) {
			a = a + sal_SA;
			result.setSal_SA(a);
		} 
		return result;
	}
}
