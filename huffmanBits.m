function [avgBits] = huffmanBits(hist)
huffman = hufflen(hist);
%var(huffman);
totalBits = sum(hist.*huffman);
avgBits = totalBits/sum(hist);
end
