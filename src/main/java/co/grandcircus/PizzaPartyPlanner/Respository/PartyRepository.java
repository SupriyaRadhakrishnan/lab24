package co.grandcircus.PizzaPartyPlanner.Respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import co.grandcircus.PizzaPartyPlanner.POJO.Party;


public interface PartyRepository extends JpaRepository<Party, Long>{

	//@Query(value = "select * from party where party.name like ?1", nativeQuery = true)
	List<Party> findByNameContaining(String str);
	
	List<Party> findByOrderByPdateDesc();
	@Query(value = "select name from party", nativeQuery = true)
	List<String> findName();
}
