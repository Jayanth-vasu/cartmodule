package com.niit.shopping.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopping.model.UserDetails;
import com.niit.shopping.model.UserRole;



@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired(required=true)
	SessionFactory sessionFactory;
	

@Override
public void saveOrUpdate(UserDetails userDetails){
	UserRole r =new UserRole();
	r.setUserDetails(userDetails);
	r.setRole("ROLE_USER");
	sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
}
}
