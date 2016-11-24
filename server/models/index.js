var db = require('../db');
var mysql = require('mysql');

module.exports = {
  messages: {
    get: function () {
      dbConnection = db.connect();
      dbConnection.query('SELECT * FROM messages', [], function(err, results) {
        console.log(results);
      });
    }, // a function which produces all the messages
    post: function (message) {
      dbConnection = db.connect();
      dbConnection.query('INSERT INTO messages (messageId, userId, roomId, messageTest) VALUES (3, 1, 2,' + message + ')');
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};