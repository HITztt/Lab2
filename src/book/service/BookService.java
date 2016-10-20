package book.service;

import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import book.domain.Book;
import database.Connect;

public class BookService {
	private Connect cont = new Connect();
	private List<Book> books;
	private Book book;
	
	public List<Book> getAllBooks() {
		books = new ArrayList<>();
		String sql = "select * from mybook";
		ResultSet result = cont.executeQuery(sql);
		try{
			while (result.next()){
					book = new Book();
					book.setISBN(result.getString("isbn"));
					book.setTitle(result.getString("title"));
					book.setAuthorID(result.getInt("authorid"));
					book.setPublisher(result.getString("publisher"));
					book.setPublishDate(result.getDate("publishdate"));
					book.setPrice(result.getDouble("price"));
					books.add(book);
			}
		}catch (Exception e) {
			e.printStackTrace();
			books = null;
		}
		return books;	
	}
	public List<Book> getBooks(int authorID) {
		books = new ArrayList<>();
		String sql = "select * from mybook where authorid='" + authorID + "'";
		ResultSet result = cont.executeQuery(sql);
		System.out.println("result: "+result);
		try{
			while (result.next()){
				book = new Book();
				book.setISBN(result.getString("isbn"));
				book.setTitle(result.getString("title"));
				book.setAuthorID(result.getInt("authorid"));
				book.setPublisher(result.getString("publisher"));
				book.setPublishDate(result.getDate("publishdate"));
				book.setPrice(result.getDouble("price"));
				books.add(book);
			}
		}catch (Exception e) {
			e.printStackTrace();
			books = null;
		}
		return books;
	}
	public Book getBook(String ISBN) {
		String sql = "select * from mybook where isbn='" + ISBN + "'";
		ResultSet result = cont.executeQuery(sql);
		System.out.println("result: "+result);
		try{
			if (result.next()){
				book = new Book();
				book.setISBN(result.getString("isbn"));
				book.setTitle(result.getString("title"));
				book.setAuthorID(result.getInt("authorid"));
				book.setPublisher(result.getString("publisher"));
				book.setPublishDate(result.getDate("publishdate"));
				book.setPrice(result.getDouble("price"));
			}
		}catch (Exception e) {
			e.printStackTrace();
			book = null;
		}
		return book;	
	}
	public int delBook(String ISBN) {
		String sql = "delete from mybook where isbn='" + ISBN + "'";
		int i = cont.executeUpdate(sql);
		return i;
	}
}
	
