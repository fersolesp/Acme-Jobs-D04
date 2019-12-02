
package acme.features.auditor.job;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.components.CustomCommand;
import acme.entities.jobs.Job;
import acme.entities.roles.Auditor;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;

@Controller
@RequestMapping("/auditor/job")
public class AuditorJobController extends AbstractController<Auditor, Job> {

	@Autowired
	private AuditorJobListService	listService;

	@Autowired
	private AuditorNoJobListService	listNotService;

	@Autowired
	private AuditorJobShowService	showService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addCustomCommand(CustomCommand.LIST_NOT, BasicCommand.LIST, this.listNotService);
		super.addBasicCommand(BasicCommand.SHOW, this.showService);
	}

}
