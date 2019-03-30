package com.longuto.springbootemplate.common.base;

import com.longuto.springbootemplate.common.annotation.EnumValue;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class EnumValueValidator implements ConstraintValidator<EnumValue, Object> {

    private String[] strValues;
    private int[] intValues;
    private byte[] byteValues;

    @Override
    public void initialize(EnumValue constraintAnnotation) {
        strValues = constraintAnnotation.strValues();
        intValues = constraintAnnotation.intValues();
        byteValues = constraintAnnotation.byteValues();
    }

    @Override
    public boolean isValid(Object value, ConstraintValidatorContext context ) {
        if(value instanceof String) {
            for (String s:strValues) {
                if(s.equals(value)){
                    return true;
                }
            }
        }else if(value instanceof Integer){
            for (Integer s:intValues) {
                if(s==value){
                    return true;
                }
            }
        }else if(value instanceof Byte) {
            for (Byte s : byteValues) {
                if(s == value) {
                    return true;
                }
            }
        }
        return false;

    }



}
