package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.TestingAuthenticationToken;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.ActorRepository;
import repositories.CnaeRepository;
import repositories.MunicipiosRepository;
import security.LoginService;
import security.UserAccount;
import domain.Actor;
import domain.Cnae;
import domain.Municipios;

@Service
@Transactional
public class ActorService {
	
		
	// Managed repository -----------------------------------------------------------------------
	
	@Autowired
	private ActorRepository actorRepository;
	
	@Autowired
	private MunicipiosRepository municipiosRepository;
	
	@Autowired
	private CnaeRepository cnaeRepository;
	
	
	
	// Supporting services -----------------------------------------------------------------------
			
	@Autowired
	private LoginService loginService;
				
	// Constructors --------------------------------------------------------------------------------


	// Simple CRUD methods ------------------------------------------------------------------
				
				
	// Other business methods -----------------------------------------------------------------
	
	public Actor findByPrincipal() {
		Actor result;
		UserAccount userAccount;

		userAccount = LoginService.getPrincipal();
		Assert.notNull(userAccount);
		result = findByUserAccount(userAccount);
		Assert.notNull(result);

		return result;
	}
	
	public Actor findByUserAccount(UserAccount userAccount) {
		Assert.notNull(userAccount);
		
		Actor result;
		
		result = actorRepository.findByUserAccountId(userAccount.getId());
		
		return result;
	}
	
	public Actor findOne(int actorId){
		Assert.notNull(actorId);
		Actor result;
		
		result = actorRepository.findOne(actorId);
		Assert.notNull(result);
		
		return result;
		
	}
	
	public Collection<Actor> finAll(){
		
		Collection<Actor> result;
				
		result=actorRepository.findAll();
		return result;
	}
	
	public void authenticate(String username) {
		UserDetails userDetails;
		TestingAuthenticationToken authenticationToken;
		SecurityContext context;
	
		if (username == null)
			authenticationToken = null;
		else {
			userDetails = loginService.loadUserByUsername(username);
			authenticationToken = new TestingAuthenticationToken(userDetails, null);		    
		}
		
		context = SecurityContextHolder.getContext();
		context.setAuthentication(authenticationToken);
	}
	
	public void unauthenticate() {
		authenticate(null);
	}
	
	public Collection<Municipios> findMunicipios(){
			
			Collection<Municipios> result;
					
			result=municipiosRepository.findAll();
			return result;
		}
	
	public Collection<Cnae> findCnaes(){
		
		Collection<Cnae> result;
				
		result=cnaeRepository.findAll();
		return result;
	}
	


	

	}


