/**package com.itwill.joo.dto;

import com.itwill.joo.domain.Basket;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class BasketCreateDto {
	
	private long id;
	private long u_id; // 사용자 아이디
	private int estimated_price; 
	
	public Basket toEntity() {
		return Basket.builder()
				.u_id(u_id)
				.estimated_price(estimated_price)
				.build();
	}
}
**/