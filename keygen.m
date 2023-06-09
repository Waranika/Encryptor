function [n, e, d] = keygen(p, q)
% RSA Key Generation
%
% This script generates the public and private keys for the RSA encryption
% algorithm. The keys are generated based on two prime numbers p and q, and
% the RSA algorithm parameters e and d are calculated according to the RSA
% key generation process.
%
% Usage:
%   [n, e, d] = keygen(p, q)
%
% Inputs:
%   p - a prime number
%   q - a prime number
%
% Outputs:
%   n - the modulus for the public and private keys
%   e - the public exponent for the public key
%   d - the private exponent for the private key
%
% Written by Elijah Ki-Zerbo

  n = p*q

  lambda = lcm(p - 1, q - 1)

  e = randi([2, lambda],1,1)

  while gcd(e, lambda) != 1
    e = randi([2, lambda],1,1)
  endwhile

  d = mod(e^(-1),lambda)
endfunction
