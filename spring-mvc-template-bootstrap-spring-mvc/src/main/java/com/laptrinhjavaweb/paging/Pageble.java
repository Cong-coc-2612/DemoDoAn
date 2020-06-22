package com.laptrinhjavaweb.paging;

import com.laptrinhjavaweb.paging.Sorter;

public interface Pageble {
	Integer getPage();
	Integer getOffset();
	Integer getLimit();
	Sorter getSorter();
}
