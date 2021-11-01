package com.spring.customannotation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CouponCodeValidator implements ConstraintValidator<CouponCode, String> {

	private String couponCodePrefix;

	public void initialize(CouponCode couponCode) {
		couponCodePrefix = couponCode.value();

	}

	public boolean isValid(String couponCode, ConstraintValidatorContext constraintValidatorContext) {
		if (couponCode != null) {
			return couponCode.startsWith(couponCodePrefix);
		} else {
			return true;
		}
	}

}
