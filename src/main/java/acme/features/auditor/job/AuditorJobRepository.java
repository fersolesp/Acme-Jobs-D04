
package acme.features.auditor.job;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import acme.entities.auditRecords.AuditRecord;
import acme.entities.jobs.Job;
import acme.framework.repositories.AbstractRepository;

@Repository
public interface AuditorJobRepository extends AbstractRepository {

	@Query("select a.job from AuditRecord a where a.auditor.id=?1")
	Collection<Job> findJobsByAuditorId(int idAuditor);

	@Query("select a.job from AuditRecord a where a.auditor.id!=?1")
	Collection<Job> findNoJobsByAuditorId(int idAuditor);

	@Query("select j from Job j where j.id=?1")
	Job findOneJobById(int jobId);

	@Query("select a from AuditRecord a where(a.job.id=?1 and a.auditor.id=?2)")
	AuditRecord findOneAuditRecordById(int jobId, int auditorId);

}