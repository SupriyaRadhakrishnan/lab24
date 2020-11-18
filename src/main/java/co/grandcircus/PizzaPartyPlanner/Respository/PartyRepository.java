package co.grandcircus.PizzaPartyPlanner.Respository;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.PizzaPartyPlanner.POJO.Party;

public interface PartyRepository extends JpaRepository<Party, Long>{

}
