function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
    karate.configure('retry',{ count:10, interval:2000});
  if (!env) {
    env = 'uat';
  } var config = {
        env: env,
            Entorno: 'UAT',
            host: 'https://petstore.swagger.io',
      }
  if (env == 'STG') {
    config.Entorno='STG';
    config.host='https://petstore.swagger.io';
  } else if (env == 'uat') {
        config.Entorno= 'UAT';
        config.host= 'https://petstore.swagger.io';
  }

  return config;
}