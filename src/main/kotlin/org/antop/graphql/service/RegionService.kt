package org.antop.graphql.service

import org.antop.graphql.model.Region
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
@Transactional(readOnly = true)
class RegionService {
    fun getRegions(): List<Region> {
        return Region.all().toList()
    }
}
