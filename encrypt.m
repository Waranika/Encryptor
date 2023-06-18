%RSA Encryption
%
% This script performs encryption using the RSA algorithm. It takes a message
% and encrypts it using the recipient's public key. The encrypted message is
% returned as a sequence of numbers.
%
%
% This script assumes that the RSA keys have already been generated using the
% `keygen.m` script, and the recipient's public key has been provided.
% The public key consists of two components: the modulus (n) and the public
% exponent (e).
%
% Usage: encrypted_message = encrypt(message, public_key)
%
% Inputs:
% - message = m
%
% Output:
% - encrypted_message: The encrypted message as a sequence of numbers
%                      (numeric array).

p = 61
q = 53

keygen(p, q)

m_c = m^(e)*mod(n)
