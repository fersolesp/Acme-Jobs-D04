
package acme.features.authenticated.authenticated;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractShowService;

@Service
public class AuthenticatedShowService implements AbstractShowService<Authenticated, Authenticated> {

	@Autowired
	AuthenticatedRepository repository;


	@Override
	public boolean authorise(final Request<Authenticated> request) {
		assert request != null;
		//		boolean result;
		//		int messageId;
		//		Integer messagesOfUserInThread;
		//		Principal principal = request.getPrincipal();
		//
		//		messageId = request.getModel().getInteger("id");
		//		messagesOfUserInThread = this.repository.findNumberOfMessagesOfUserInThreadByMessageGiven(messageId, principal.getActiveRoleId());
		//		result = messagesOfUserInThread > 0;

		return true;
	}

	@Override
	public void unbind(final Request<Authenticated> request, final Authenticated entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "userAccount.username", "userAccount.identity.name", "userAccount.identity.surname");
	}

	@Override
	public Authenticated findOne(final Request<Authenticated> request) {
		assert request != null;

		Authenticated result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneAuthenticatedById(id);

		return result;
	}

}
