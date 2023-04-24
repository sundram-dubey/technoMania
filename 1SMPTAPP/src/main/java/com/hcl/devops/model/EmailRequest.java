package com.hcl.devops.model;

import lombok.Data;

@Data
public class EmailRequest {

	String from, to, sub, msg;
}
