package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.MygroupDao;
import mvc.dto.Groups;
import mvc.dto.Mygroup;

@Service
public class MygroupServiceImpl implements MygroupService{
@Autowired MygroupDao mygroupDao;

@Override
public int groupRegistration(Groups mygroup) {
	int gno = mygroupDao.groupRegistration(mygroup);
	System.out.println("service gno :"+gno);
	return gno;
}

@Override
public List getList(String user) {
	return mygroupDao.getList(user);
}

@Override
public Mygroup getViewMygroup(Groups mygroup) {
	
	return mygroupDao.getViewMygroup(mygroup);
}

@Override
public void mygroupDelete(Groups mygroup) {
	
	mygroupDao.mygroupDelete(mygroup);
}



}
