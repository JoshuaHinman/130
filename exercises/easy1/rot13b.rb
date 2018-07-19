# A-M: 65 - 77 ,  N-Z: 78 - 90
NAMES = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu']

def rot13_decrypt(string)
  return_string = 
    string.chars.map do |char|
      if ('A'..'M').include?(char.upcase)
        (char.ord + 13).chr
      elsif ('N'..'Z').include?(char.upcase)
        (char.ord - 13).chr
      else
        char
      end
    end
  return_string.join
end

NAMES.each do |n|
  p rot13_decrypt(n)
end