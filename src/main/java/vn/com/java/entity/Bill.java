package vn.com.java.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="bills")
public class Bill 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="room_no")
	private Room room;
	
//	@ManyToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="product_id")
//	private Product product;
	
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="booking_history_id")
//	private BookingHistory bookinghistory;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="booking_information_id")
	private BookingInformation bookingInformation;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="booking_histories_id")
	private BookingHistory bookingHistory;
	
//	@Column(name="status")
//	private String status;
	
	@Column(name="service_total")
	private int serviceTotal;
	
	@Column(name="room_total")
	private int roomTotal;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

//	public Product getProduct() {
//		return product;
//	}
//
//	public void setProduct(Product product) {
//		this.product = product;
//	}

	
//	public String getStatus() {
//		return status;
//	}

//	public BookingHistory getBookinghistory() {
//		return bookinghistory;
//	}
//
//	public void setBookinghistory(BookingHistory bookinghistory) {
//		this.bookinghistory = bookinghistory;
//	}

	public BookingInformation getBookingInformation() {
		return bookingInformation;
	}

	public BookingHistory getBookingHistory() {
		return bookingHistory;
	}

	public void setBookingHistory(BookingHistory bookingHistory) {
		this.bookingHistory = bookingHistory;
	}

	public void setBookingInformation(BookingInformation bookingInformation) {
		this.bookingInformation = bookingInformation;
	}

//	public void setStatus(String status) {
//		this.status = status;
//	}

	public int getServiceTotal() {
		return serviceTotal;
	}

	public void setServiceTotal(int serviceTotal) {
		this.serviceTotal = serviceTotal;
	}

	public int getRoomTotal() {
		return roomTotal;
	}

	public void setRoomTotal(int roomTotal) {
		this.roomTotal = roomTotal;
	}
	
}
