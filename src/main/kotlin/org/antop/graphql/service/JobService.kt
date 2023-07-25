package org.antop.graphql.service

import org.antop.graphql.dto.JobDto
import org.antop.graphql.fullLike
import org.antop.graphql.mapper.JobMapper
import org.antop.graphql.model.Job
import org.antop.graphql.model.Jobs
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class JobService(private val jobMapper: JobMapper) {

    fun getJob(id: String) = Job.findById(id)?.let { toDto(it) }

    fun getJobs() = Job.all().map { toDto(it) }

    fun getJobs(title: String) = Job.find {
        Jobs.title fullLike title
    }.map {
        toDto(it)
    }

    private fun toDto(job: Job): JobDto = jobMapper.convert(job)

}
