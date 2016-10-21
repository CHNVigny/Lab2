package po;

public class InsertBook {
	private String isbn;
	private String title;
	private String author;
	private String publisher;
	private String publishdate;
	private String price;
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String excute()
	{
		if(this.isbn!=null && this.title!=null && this.author!=null && this.publisher!=null && this.publishdate!=null && this.price!=null)
			return "success";
		else return "error";
	}
	
}
