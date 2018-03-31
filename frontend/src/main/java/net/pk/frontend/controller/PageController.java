package net.pk.frontend.controller;



@Controller
public class PageController {
@RequestMapping(value ={'/',""/home","/index"})
		public ModelAndView index()
		{
	ModelAndView mv = new ModelAndView("page");
	return mv;
		}
}
