package com.divyan.aquanet.service;




import okhttp3.*;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.OutputStream;


@Service
public class WhatsappService {


    public void sendMessage(String mobile) throws IOException {
        System.out.println("wasapy");
        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        MediaType mediaType = MediaType.parse("text/plain");
        RequestBody body = RequestBody.create(mediaType, "{\n        \"api_secret\": \"GcbpgNe6sey8J01Mu8j5CmG3xO6Wq8dDxsGsDqzm4u0sJvHKE2bccWiuRw7WeNbA\",\n        \"phone_number\": \""+mobile+"\",\n        \"message\": \"Dear user,\n water quality is currently outside the safe threshold. \nImmediate attention is required!\n- Team AquaNet\"\n}");
        Request request = new Request.Builder()
                .url("https://wasapy.com/send-message")
                .method("POST", body)
                .build();
        Response response = client.newCall(request).execute();
    }


}
