package cn.myhotel.page;

public class PageInfo {
	
	private int totalcount = 0;
	private int pageno = 0;
	private int totalpage = 0;
	private int pagescoll = 0;
	private static final int pagecount = 20;
	
	public int getTotalcount(){
		return totalcount;
	}
	
	public void setTotalcount(int totalcount){
		this.totalcount = totalcount;
	}
	
	public int getPageno(){
		return pageno;
	}
	
	public void setPageno(int pageno){
		if(pageno>getTotalpage())
			this.pageno = getTotalpage();
		else if(pageno<=0)
			this.pageno = 1;
		else
			this.pageno = pageno;
	}

	public int getTotalpage(){
		if(totalcount==0)
			return 1;
		if(totalcount%pagecount==0)
			totalpage = totalcount/pagecount;
		else
			totalpage = totalcount/pagecount + 1;
		return totalpage;
	}
	
	public int getFirstno(){
		return pageno*pagecount - pagecount;
	}
	
	public int getPagescoll(){
		if(getTotalpage()==1)
			pagescoll = 0;
		else
		{
			if(pageno==1)
				pagescoll = 1;
			else if(pageno==totalpage)
				pagescoll = 3;
			else
				pagescoll = 2;
		}
		return pagescoll;
	}
	
	public int getPagecount(){
		return pagecount;
	}

}