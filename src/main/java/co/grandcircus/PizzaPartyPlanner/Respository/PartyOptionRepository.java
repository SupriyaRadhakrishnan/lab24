package co.grandcircus.PizzaPartyPlanner.Respository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import co.grandcircus.PizzaPartyPlanner.POJO.PartyOption;

public interface PartyOptionRepository extends JpaRepository<PartyOption, Long>{

	
	@Query(value = "select * from partyoption where partyoption.votes <> ?1 order by votes", nativeQuery = true)
	List<PartyOption> findByVotes(int zero);
}
