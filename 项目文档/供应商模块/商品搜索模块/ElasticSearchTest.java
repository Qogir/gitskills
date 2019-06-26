package com.lemuji.test;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lemuji.commons.pojo.ActionData;
import com.lemuji.commons.pojo.ActionEnum;
import com.lemuji.message.client.KafkaProducer;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
public class ElasticSearchTest {

    @Autowired
    KafkaProducer kafkaProducer;

    @Value("${lemuji.cloudshop.supplier.commodity.search}")
    String searchTopic;
    private String content;

    @Autowired
    ObjectMapper objectMapper;

    @Test
    public void testElasticSearch() throws Exception {
        for (int i = 0; i < 3; i++) {
            String content = "test-" + RandomStringUtils.randomNumeric(20);
            ActionData actionData = new ActionData();
            actionData.setActionEnum(ActionEnum.CREATE);
            Map map = new HashMap();
            map.put("id", RandomStringUtils.randomNumeric(20));
            map.put("name", content);
            actionData.setData(map);

            String json = objectMapper.writeValueAsString(actionData);
            kafkaProducer.publish(searchTopic, json);
        }
    }
}
