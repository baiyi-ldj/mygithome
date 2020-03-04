package cn.convertor;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StrToDateConverter implements Converter<String, Date> {
    private String dateFormat;

    public StrToDateConverter(String dateFormat) {
        this.dateFormat = dateFormat;
    }

    @Override
    public Date convert(String s) {
        Date date=null;
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat(dateFormat);
        try {
            date=simpleDateFormat.parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return date;
    }
}
