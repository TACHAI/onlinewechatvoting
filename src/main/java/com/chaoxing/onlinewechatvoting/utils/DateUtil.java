package com.chaoxing.onlinewechatvoting.utils;

import org.joda.time.DateTime;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @class: DateUtils
 * @Author: darren
 * @CreateDate: 2019-06-13 9:53
 * @Version 1.0
 */
public class DateUtil {

    public static final String DATENAME_FORMAT="yyyyMMddHHmmsss";
    /**这种方法会导致线程不安全*/
    public static final String DEFAULT_FORMAT="yyyy-MM-dd HH:mm:ss";

    /**
     * 锁对象
     */
    private static final Object LOCKOBJECT = new Object();

    /**
     * 存放不同的日期模板格式的sdf的Map
     * @return
     */
    private static Map<String,ThreadLocal<SimpleDateFormat>> sdfMap = new HashMap<>();

    private static SimpleDateFormat getSdf(final String pattern){
        ThreadLocal<SimpleDateFormat> tl = sdfMap.get(pattern);

        // 此处的双重判断和同步是为了防止sdfMap这个单例被多次put重复的sdf
        if(tl==null){
            synchronized (LOCKOBJECT){
                tl = sdfMap.get(pattern);
                if(tl==null){
                    // 只有Map中还没有这个pattern的sdf才会生成新的sdf并放入map
                    System.out.println("put new sdf of pattern"+pattern+"to map");

                    //这里是关键，使用ThreadLocal<SimpleDateFormat>替代原来直接new Simple
                    tl = new ThreadLocal<SimpleDateFormat> () {
                        @Override
                        protected SimpleDateFormat initialValue() {
                          return new SimpleDateFormat(pattern);
                      }
                    };
                    sdfMap.put(pattern,tl);
                }
            }
        }
        return tl.get();
    }


    public static Date getNowDate() {

        Date currentTime = new Date();

        String dateString = getSdf(DATENAME_FORMAT).format(currentTime);
        ParsePosition pos = new ParsePosition(8);
        Date res = getSdf(DATENAME_FORMAT).parse(dateString, pos);
        return res;
    }


    public static String dateToStr(Date date,String formStr){
        DateTime dateTime = new DateTime(date);
        return dateTime.toString(formStr);
    }

    public static Date strToDate(String date,String format)  {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat(format);
            return formatter.parse(date);
        }catch (ParseException e) {

        }
         return null;
    }


    //获得两个时间差
    public static int getMinutes(Date endTime,Date startTime){

        int diff=(int)Math.ceil((endTime.getTime()-startTime.getTime())/1000/60);
        return  diff;
    }

    //判断两个时间是否是今天

    /**
     *
     * @param date
     * @return true 同一天  false 不同一天
     */
    public static boolean checkNow(Date date){
        return checkOneDay(date,new Date());
    }
    //判断两个时间是否是同一天

    /**
     *
     * @param date1
     * @param date2
     * @return true 同一天  false 不同一天
     */
    public static boolean checkOneDay(Date date1,Date date2){
        LocalDate obj1 = dateToLocalDate(date1);
        LocalDate obj2 = dateToLocalDate(date2);
        if(obj1.equals(obj2)){
            return true;
        }
        return false;
    }
    /**
     *
     * DateToLocalDate
     * @param date
     * @return
     */
    public static LocalDate dateToLocalDate(Date date){
        Instant instant = date.toInstant();
        ZoneId zoneId = ZoneId.systemDefault();
        LocalDate localDate = instant.atZone(zoneId).toLocalDate();
        return localDate;
    }

    /**
     * DateToLocalDate
     * @param date
     * @return
     */
    public static LocalDateTime dateToLocalDateTime(Date date){
        Instant instant = date.toInstant();
        ZoneId zone = ZoneId.systemDefault();
        return instant.atZone(zone).toLocalDateTime();
    }

    public static void main(String[] args) throws ParseException {
        System.out.println(checkNow(new Date()));
    }


}
