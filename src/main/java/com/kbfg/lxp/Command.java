package com.kbfg.lxp;

import org.springframework.ui.Model;

public interface Command {
	void execute(Model model);
}
