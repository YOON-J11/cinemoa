package com.cinemoa.config;

import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TomcatConfig implements WebServerFactoryCustomizer<TomcatServletWebServerFactory> {
    @Override
    public void customize(TomcatServletWebServerFactory factory) {
        factory.addConnectorCustomizers(connector -> {
            // Tomcat의 파일 업로드 개수 제한을 늘려줌 (기본값은 1임)
            connector.setProperty("maxFileCount", "100"); // 충분히 여유있게 설정
        });
    }
}
