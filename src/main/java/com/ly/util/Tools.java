package com.ly.util;

import org.apache.commons.lang.ArrayUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class Tools {
    private static final Logger logger = LogManager.getLogger(Tools.class);
    public static Map<String, Object> makeResponseMessage(int status, String message,Object data) {
        Map<String, Object> responseMessage = new HashMap<String, Object>();
        responseMessage.put("status", status);
        responseMessage.put("message", message);
        responseMessage.put("data",data);
        return responseMessage;
    }

    public static String currentTimestamp() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return simpleDateFormat.format(new Date());
    }

    public static long parseStrTime(String strTime) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date = simpleDateFormat.parse(strTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date.getTime();
    }

    public static String random6Str() {
        Random random = new Random();
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            builder.append(String.valueOf(random.nextInt(10)));
        }
        return builder.toString();
    }

    public static String randomFileNamePrefix() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        return simpleDateFormat.format(new Date()) + "_" + random6Str() + "_";
    }

    public static void CreateFile(String path, String name, String content) {
        File file = new File(path, name);

        try {
            BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), "utf-8"));
            writer.write(content);
            writer.close();
        } catch (IOException e) {
            logger.error(e.getMessage());
        }
    }

    public static void CreateFile(String path, String name, byte[] content) {
        File file = new File(path, name);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(content);
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (IOException e) {
            logger.error(e.getMessage());
        }
    }

    public static String readFile(String path, String name) {
        File file = new File(path, name);

        StringBuilder builder = new StringBuilder();
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));
            char[] buffer = new char[20480];
            int readBytes = 0;
            while ((readBytes = reader.read(buffer)) > 0) {
                builder.append(buffer, 0, readBytes);
            }
        }  catch (IOException e) {
            logger.error(e.getMessage());
            return null;
        }

        return builder.toString();
    }

    public static byte[] readFileBytes(String path, String name) {
        byte[] ret = {};
        File file = new File(path, name);
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] buffer = new byte[20480];
            int readBytes = 0;
            while((readBytes = fileInputStream.read(buffer)) > 0) {
                ret = ArrayUtils.addAll(ret, ArrayUtils.subarray(buffer, 0, readBytes));
            }
            fileInputStream.close();
        } catch (IOException e) {
            logger.error(e.getMessage());
            return null;
        }
        return ret;
    }

    public static double saveDecimals(double org, int len) {
        int tmp = (int)Math.pow(10, len);
        return (int)(org * tmp) / (tmp * 1.0);
    }
}