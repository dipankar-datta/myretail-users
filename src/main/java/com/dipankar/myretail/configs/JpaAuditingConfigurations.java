package com.dipankar.myretail.configs;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import java.util.Optional;

@Configuration
@EnableJpaAuditing(auditorAwareRef = "auditorProvider")
public class JpaAuditingConfigurations {

    @Bean
    public AuditorAware<Long> auditorProvider() {

        /*
          if you are using spring security, you can get the currently logged username with following code segment.

          SecurityContextHolder.getContext().getAuthentication().getName()
         */
        return () -> Optional.ofNullable(Long.valueOf(129L));
    }
}
