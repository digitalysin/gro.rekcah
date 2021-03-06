#!usr/bin/ruby

# it's a morse codes

map = {
  '.-'    => 'a', '-...' => 'b', '-.-.'  => 'c', '-..'   => 'd',
  '.'     => 'e', '..-.' => 'f', '--.'   => 'g', '....'  => 'h',
  '..'    => 'i', '.---' => 'j', '-.-'   => 'k', '.-..'  => 'l',
  '--'    => 'm', '-.'   => 'n', '---'   => 'o', '.--.'  => 'p',
  '--.-'  => 'q', '.-.'  => 'r', '...'   => 's', '-'     => 't',
  '..-'   => 'u', '...-' => 'v', '.--'   => 'w', '-..-'  => 'x',
  '-.--'  => 'y', '--..' => 'z', '.----' => '1', '..---' => '2',
  '...--' => '3','....-' => '4','.....'  => '5', '-....' => '6',
  '--...' => '7','---..' => '8', '----.' => '9', '-----' => '0'
}

input = "- .... . .- -. ... .-- . .-. .. ... .... --- .- .-. ... ."

words = input.split ' '

twords = words.map do |w|
  w.split(' ').map {|x| map[x]}.join
end

print twords.join
