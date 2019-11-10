function fn() {   
  var env = karate.env;
  karate.log('karate.env system property was:', env);
 
  var config = { 
    'baseURL' : 'http://localhost:3030/'
  };
  
  
  karate.configure('connectTimeout', 15000);
  karate.configure('readTimeout', 15000);
  return config;
}