package com.techelevator;

import java.time.LocalDateTime;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.model.Review;
import com.techelevator.model.ReviewDao;

@Controller 
public class ReviewController {

	@Autowired
	 private ReviewDao reviewDao;
	 
	@RequestMapping(path= {"/","/greeting"}, method=RequestMethod.GET)
	public String displayGreetingPage(ModelMap modelHolder) {
		modelHolder.put("reviews", reviewDao.getAllReviews());
		return "greeting";
	}
	
	@RequestMapping(path= {"/inputReview"}, method=RequestMethod.GET)
	public String displayReviewPage() {
		return "inputReview";
	}
	
	@RequestMapping(path= {"/","/inputReview"}, method=RequestMethod.POST)
	public String syncReview(@RequestParam String username, @RequestParam int rating, 
			@ RequestParam String title, @RequestParam String text) {
	LocalDateTime dateSubmitted = LocalDateTime.now();
	Review review = new Review();
	review.setUsername(username);
	review.setRating(rating);
	review.setTitle(title);
	review.setText(text);
	review.setDateSubmitted(dateSubmitted);
	reviewDao.save(review);
	return "redirect:/greeting";
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

