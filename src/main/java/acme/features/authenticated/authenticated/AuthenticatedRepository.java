
package acme.features.authenticated.authenticated;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.framework.entities.Authenticated;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedRepository extends AbstractRepository {

	@Query("select m.authenticated from Message m where m.messageThread.id=?1")
	Collection<Authenticated> findManyAuthenticatedByThreadId(Integer messageThreadId);

	@Query("select a from Authenticated a where a.id=?1")
	Authenticated findOneAuthenticatedById(int id);

	@Query("select count(m) from Message m where m.messageThread.id=(select m.messageThread.id from Message m where m.id=?1) and m.authenticated.id=?2")
	Integer findNumberOfMessagesOfUserInThreadByMessageGiven(int messageId, int authenticatedId);

	@Query("select count(m) from Message m where m.messageThread.id=?1 and m.authenticated.id=?2")
	Integer findNumberOfMessagesOfUserInThread(int messageThreadId, int authenticatedId);

}
