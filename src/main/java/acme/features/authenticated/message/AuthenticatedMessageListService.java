
package acme.features.authenticated.message;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.messages.Message;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.entities.Principal;
import acme.framework.services.AbstractListService;

@Service
public class AuthenticatedMessageListService implements AbstractListService<Authenticated, Message> {

	@Autowired
	AuthenticatedMessageRepository repository;


	@Override
	public boolean authorise(final Request<Message> request) {

		//Hay que mirar que el authenticated en cuestión tenga permiso
		assert request != null;
		boolean result;
		int messageThreadId;
		Integer messagesOfUserInThread;
		Principal principal = request.getPrincipal();

		messageThreadId = request.getModel().getInteger("id");
		messagesOfUserInThread = this.repository.findNumberOfMessagesOfUserInThread(messageThreadId, principal.getActiveRoleId());
		result = messagesOfUserInThread > 0;

		return true;
	}

	@Override
	public void unbind(final Request<Message> request, final Message entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "title", "moment");
	}

	@Override
	public Collection<Message> findMany(final Request<Message> request) {
		assert request != null;

		Collection<Message> result;
		Model model;

		model = request.getModel();
		result = this.repository.findManyMessagesByThreadId(model.getInteger("id"));

		return result;
	}

}
