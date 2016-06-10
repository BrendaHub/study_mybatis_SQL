import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.yiibai.pojo.Post;
import com.yiibai.pojo.User;

/**
 * MyBatis 核心创建SqlSession类
 */
public class Test {
	
	private static SqlSessionFactory sqlSessionFactory;
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
	private static Reader reader;
	
	static{
		try {
			/**通过resources类来获取核心配置文件*/
			reader = Resources.getResourceAsReader("config/Configure.xml");
			/**再通过SqlSessionFactoryBuilder类通过加载reader的参数来创建 SqlSessionFacotory对象*/
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
/*
	public static void mainnew(String[] args) {
		*//**首先创建SqlSession*//*
		SqlSession sqlSession = null;
		try{
			sqlSession = sqlSessionFactory.openSession();
			int userid = 1;
			//User user = sqlSession.selectOne("com.yiibai.userMaper.getUser", 1); 
			List<User> userList = sqlSession.selectList("com.yiibai.userMaper.getUserList");
			if(userList != null && userList.size() > 0){
				for(User user : userList){
					System.out.println(">>> username: "+user.getUsername()+",");
					List<Post> posts = user.getPosts();  
		            for(Post p : posts) {
		                System.out.println(">>>>>> sub Title:" + p.getTitle()); 
		                System.out.println(">>>>>> sub Content:" + p.getContent()); 
		                //System.out.println("Content:" + p.getId()); 
		            }  
				}
			}
		} catch(Exception e){
			e.printStackTrace();  
		}finally{
			if(sqlSession != null){
				sqlSession.close();
			}
		}
	}*/
 
	public static void main(String[] args) {
		SqlSession sqlsession = null;
		try{
			sqlsession = sqlSessionFactory.openSession();
			List<Post> postList = sqlsession.selectList("com.yiibai.postMaper.getPostList");
			if(postList != null && postList.size() > 0){
				for(Post post:postList){
					System.out.println(">>> post: "+post.getTitle()+",");
					User user = post.getUser();
					System.out.println(">>>>>> user : " + user.getUsername());
				}
			}  
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(sqlsession != null){
				sqlsession.close();
			}
		}
	}
}
