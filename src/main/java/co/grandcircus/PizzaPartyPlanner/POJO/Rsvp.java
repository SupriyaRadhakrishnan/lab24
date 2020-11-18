package co.grandcircus.PizzaPartyPlanner.POJO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="rsvp")
public class Rsvp {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String attendee;
	private String comment;
	
	@ManyToOne
	@JoinColumn(name = "partyid")
	private Party party;
	
	public Rsvp()
	{
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAttendee() {
		return attendee;
	}

	public void setAttendee(String attendee) {
		this.attendee = attendee;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Party getParty() {
		return party;
	}

	public void setParty(Party party) {
		this.party = party;
	}
	
}
