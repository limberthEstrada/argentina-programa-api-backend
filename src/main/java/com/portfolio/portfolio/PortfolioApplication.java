package com.portfolio.portfolio;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Arrays;
import org.springframework.context.annotation.Bean;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

@SpringBootApplication
public class PortfolioApplication {

	public static void main(String[] args) {
		SpringApplication.run(PortfolioApplication.class, args);
	}
        @Bean
        public CorsFilter corsFilter() {
            CorsConfiguration corsConfig = new CorsConfiguration();
            corsConfig.setAllowCredentials(Boolean.TRUE);
            corsConfig.setAllowedOrigins(Arrays.asList("https://portfolio-angular-74cfd.web.app/"));
            corsConfig.setAllowedHeaders(Arrays.asList("Origin", "Access-Control-Allow-Origin", "Content-Type", "Accept", "Authorization", "Origin, Accept",
                    "X-Requested-With", "Access-Control-Request-Method", "Acces-Control-Request-Headers"));
            corsConfig.setExposedHeaders(Arrays.asList("Origin", "Content-Type", "Accept", "Authorization", "Access-Control-Allow-Origin",
                    "Access-Control-Allow-Origin", "Access-Control-Allow-Credentials"));
            corsConfig.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE", "OPTIONS"));
            UrlBasedCorsConfigurationSource urlBasedCorsConfigurationSource = new UrlBasedCorsConfigurationSource();
            urlBasedCorsConfigurationSource.registerCorsConfiguration( "/**", corsConfig);
            return new CorsFilter(urlBasedCorsConfigurationSource);
        }
}
