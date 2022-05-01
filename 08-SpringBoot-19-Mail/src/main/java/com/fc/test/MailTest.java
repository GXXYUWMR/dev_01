package com.fc.test;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.Date;

@SpringBootTest
public class MailTest {
    // 邮件发送器
    @Autowired
    private JavaMailSender sender;

    @Test
    void testHtmlMail() {
        String content = "<img src='https://mmbiz.qpic.cn/mmbiz_jpg/tibx4wXfkxmhlW78c36ib5b0SVvDbec3hafxV32mrRmZ71cBiaRSgjUbcX72GJXibPKVo9vGAUBGWNH9zgBpeon1DQ/640?wx_fmt=jpeg&wxfrom=5&wx_lazy=1&wx_co=1' alt='打扰了'>" +
                "<font align='center' color='red'>" +
                "" +
                "</font>";

        //html类型邮件
        MimeMessage mimeMessage = sender.createMimeMessage();

        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);

        try{
            helper.setFrom("2295280288@qq.com");

            helper.setTo(new String[]{
                  //  "2295280288@qq.com",
                   // "1376055937@qq.com",
                  //  "3014114649@qq.com"

                  // "2937753364@qq.com"
            });

            helper.setCc("2295280288@qq.com");

            helper.setBcc("2295280288@qq.com");

            helper.setSubject("打扰了");

            helper.setText(content, true);
        } catch (MessagingException e) {
            e.printStackTrace();
        }

        sender.send(mimeMessage);
    }


    // 测试简单消息邮件
    @Test
    void testSimpleMail() {
        // 简单消息邮件
        SimpleMailMessage message = new SimpleMailMessage();

        // 设置发送人
        message.setFrom("2295280288@qq.com");

        // 设置接收人
        message.setTo("2295280288@qq.com", "453203081@qq.com", "1376055937@qq.com");
        //2937753364@qq.com
        // 设置主题
        message.setSubject("重要消息，收到请回复");

        // 设置邮件的内容
        message.setText("测试");

        // 设置抄送人
        message.setCc("2295280288@qq.com");

        // 设置私密抄送人
        message.setBcc("2295280288@qq.com");

        // 设置发送的日期
        message.setSentDate(new Date());

        sender.send(message);

        try {
            // 通过发送者，需要一个消息对象，直接发送邮件即可
            sender.send(message);
        } catch (Exception e) {
            System.out.println("发送失败：" + e);
        }


    }
}
