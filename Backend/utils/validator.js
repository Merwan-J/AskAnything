const emailValidator = require('deep-email-validator');
const {
  Types: { ObjectId },
} = require('mongoose');
exports.isIdValid = id => {
  return ObjectId.isValid(id) && new ObjectId(id).toString() === id;
};

exports.isEmailValid = email => {
  return emailValidator.validate(email);
};
