package co.grandcircus.PizzaPartyPlanner.Respository;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.PizzaPartyPlanner.POJO.Rsvp;

public interface RsvpRepository extends JpaRepository<Rsvp, Long>{

}
