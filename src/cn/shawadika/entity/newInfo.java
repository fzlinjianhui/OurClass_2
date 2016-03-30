package cn.shawadika.entity;

/**
 * 各类新闻信息实体类
 * 
 * @author lin
 * 
 */
public class newInfo {
	private String id;
	private String type;
	private String title;
	private String content;
	private Long time;
	private String userId;
	private String ineffect;
	private String res1;
	private String res2;

	public String getIneffect() {
		return ineffect;
	}

	public void setIneffect(String ineffect) {
		this.ineffect = ineffect;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getTime() {
		return time;
	}

	public void setTime(Long time) {
		this.time = time;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRes1() {
		return res1;
	}

	public void setRes1(String res1) {
		this.res1 = res1;
	}

	public String getRes2() {
		return res2;
	}

	public void setRes2(String res2) {
		this.res2 = res2;
	}

	@Override
	public String toString() {
		return "newInfo [id=" + id + ", type=" + type + ", title=" + title
				+ ", content=" + content + ", time=" + time + ", userId="
				+ userId + ", res1=" + res1 + ", res2=" + res2 + "]";
	}

}
