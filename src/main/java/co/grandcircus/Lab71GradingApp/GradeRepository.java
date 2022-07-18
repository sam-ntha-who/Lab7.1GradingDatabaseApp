package co.grandcircus.Lab71GradingApp;

import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface GradeRepository extends MongoRepository<Grade, String>{

	List<Grade> findAll();
	Optional<Grade> findByName(String name);
	List<Grade> findByType(String type);
	List<Grade> findByScore(double score);
}
