package org.antop.graphql.controller

import org.antop.graphql.service.JobService
import org.springframework.graphql.data.method.annotation.Argument
import org.springframework.graphql.data.method.annotation.QueryMapping
import org.springframework.stereotype.Controller

@Controller
class JobController(private val jobService: JobService) {
    @QueryMapping
    fun getJobById(@Argument id: String) = jobService.getJob(id)

    @QueryMapping
    fun getJobs() = jobService.getJobs()

    @QueryMapping
    fun getJobsByTitle(@Argument title: String) = jobService.getJobs(title)
}
