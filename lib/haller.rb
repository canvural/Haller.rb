require 'unicode_utils'

class String
  def to_hal(hal)
    _isim = isim = UnicodeUtils.downcase self, :tr

    isim = isim.split.last

    iyelik   = 'iyelik'
    i_hali   = 'i'
    e_hali   = 'e'
    de_hali  = 'de'
    den_hali = 'den'
    i_ekleri = 'ııiiuuüü'

    son_harf = isim[-1,1]

    istisna  = (isim =~ /(^[ei][^ıüoö]*[au]l$)|^alp$/).nil? ? 0 : 2

    son_sesli = isim.scan(/[aıeiouöü]/).last

    if hal == iyelik || hal == i_hali
      ek = i_ekleri['aıeiouöü'.index(son_sesli) + istisna]
    else
      ek = (son_sesli =~ /[aıou]/).nil? ? 'e' : (istisna == 2) ? 'e' : 'a'
    end

    if son_harf == son_sesli
      ek = (hal == iyelik) ? 'n' + ek : (hal == i_hali || hal == e_hali) ? 'y' + ek : ek
    end

    # Harf yumusamalarini kontrol eder
    if hal == de_hali || hal == den_hali
      ek = (son_harf =~ /[fstkçşhp]/ ? 't' : 'd') + ek
    end

    if hal == iyelik || hal == den_hali
      ek << 'n'
    end

    "#{_isim.split.map(&:capitalize)*' '}'#{ek}"
  end
end
