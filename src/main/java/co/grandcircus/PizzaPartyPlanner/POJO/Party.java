package co.grandcircus.PizzaPartyPlanner.POJO;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "party")
public class Party {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String name;
	private Timestamp pdate;

	@OneToMany(mappedBy ="party")
	private List<Rsvp> rsvps;
	
	public Party() {

	}

	public Party(long id, String name, Timestamp pdate) {
		super();
		this.id = id;
		this.name = name;
		this.pdate = pdate;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Timestamp getPdate() {
		return pdate;
	}

	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}

	public List<Rsvp> getRsvps() {
		return rsvps;
	}

	public void setRsvps(List<Rsvp> rsvps) {
		this.rsvps = rsvps;
	}

}
