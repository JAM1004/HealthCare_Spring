package edu.study.vo;

public class ReplyVO {
	private int pidx;
	private int bidx;
	private int pgrp;
	private int pgrps;
	private int midx;
	private int plikecount;
	private int likeCheck;
	public int getLikeCheck() {
		return likeCheck;
	}
	public void setLikeCheck(int likeCheck) {
		this.likeCheck = likeCheck;
	}
	private String pcontent;
	private String pwriter;
	private String ptitle;
	private String pdate;
	
	public int getPlikecount() {
		return plikecount;
	}
	public void setPlikecount(int plikecount) {
		this.plikecount = plikecount;
	}
	
	public int	  getPidx()		{ return pidx;		}
	public int	  getBidx()		{ return bidx;		}
	public int	  getPgrp()		{ return pgrp;		}
	public int	  getPgrps()	{ return pgrps;		}
	public int	  getMidx()		{ return midx;		}
	public String getPcontent()	{ return pcontent;	}
	public String getPtitle()	{ return ptitle;	}
	public String getPwriter()	{ return pwriter;	}
	public String getPdate()	{ return pdate;		}
	
	public void setPidx(int pidx) { this.pidx = pidx; }
	public void setBidx(int bidx) { this.bidx = bidx; }
	public void setPgrp(int pgrp) { this.pgrp = pgrp; }
	public void setPgrps(int pgrps) { this.pgrps = pgrps; }
	public void setMidx(int midx) { this.midx = midx; }
	public void setPcontent(String pcontent) { this.pcontent = pcontent; }
	public void setPtitle(String ptitle) { this.ptitle = ptitle; }
	public void setPwriter(String pwriter) { this.pwriter = pwriter; }
	public void setPdate(String pdate) { this.pdate = pdate; }
	@Override
	public String toString() {
		return "ReplyVO [pidx=" + pidx + ", bidx=" + bidx + ", pgrp=" + pgrp + ", pgrps=" + pgrps + ", midx=" + midx
				+ ", plikecount=" + plikecount + ", likeCheck=" + likeCheck + ", pcontent=" + pcontent + ", pwriter="
				+ pwriter + ", ptitle=" + ptitle + ", pdate=" + pdate + "]";
	}
}
