package com.itwill.joo.dto;

import com.itwill.joo.domain.BasketProduct;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BasketProductCreateDto {
	
	private long id;
	private long b_id;
	private long p_id;
	private int pcount;
	
	public BasketProduct toEntity() {
		
		return BasketProduct.builder()
				.id(id)
				.b_id(b_id)
				.p_id(p_id)
				.pcount(pcount)
				.build();
	}
}
