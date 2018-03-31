const mysql = require("mysql");
const { expect } = require('chai');
const DbService = require('../service/dbService');

describe('query application', () => {
  let connection;

  beforeEach(() => {
    connection = mysql.createConnection({
      host: "mysql",
      user: "admin",
      password: "admin",
      database: "basement"
    }); 
  });
  afterEach(()=>connection.end());


  it('should return only one application', async () => {
    const dbService = new DbService();
    const result = await dbService.queryApplication(connection);
    expect(result.length).to.eq(1);
    expect(result[0].name).to.eq('basement');
  });

  it('should return only 2 user account', async () => {
    const dbService = new DbService();
    const result = await dbService.queryUsers(connection);
    expect(result.length).to.eq(2);
  });


});
