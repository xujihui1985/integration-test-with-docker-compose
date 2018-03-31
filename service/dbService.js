const mysql = require("mysql");

module.exports = class DbService {

  queryApplication(connection) {
    return new Promise((resolve, reject) => {
      connection.query("SELECT * FROM application", (error, results, fields) => {
        if (error) {
          reject(error);
          return;
        }
        resolve(results);
      });
    });
  }
  
  queryUsers(connection) {
    return new Promise((resolve, reject) => {
      connection.query("SELECT * FROM users", (error, results, fields) => {
        if (error) {
          reject(error);
          return;
        }
        resolve(results);
      });
    });
  }

};


