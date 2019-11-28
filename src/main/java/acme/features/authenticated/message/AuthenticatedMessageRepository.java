
package acme.features.authenticated.message;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.messageThreads.MessageThread;
import acme.entities.messages.Message;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuthenticatedMessageRepository extends AbstractRepository {

	@Query("select mt from MessageThread mt where mt.id=?1")
	MessageThread findOneMessageThreadById(int id);

	@Query("select m.messageThread from Message m where m.authenticated.id=?1")
	Collection<MessageThread> findManyByAuthenticatedId(int authenticatedId);

	@Query("select count(m) from Message m where m.messageThread.id=?1 and m.authenticated.id=?2")
	Integer findNumberOfMessagesOfUserInThread(int messageThreadId, int authenticatedId);

	@Query("select m from Message m where m.messageThread.id=?1")
	Collection<Message> findManyMessagesByThreadId(Integer messageThreadId);
}
