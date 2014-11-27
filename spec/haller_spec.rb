require 'haller'

describe String do
  describe '#to_hal' do

    context 'when iyelik given it' do
      data = [
        ["Osman", "Osman'ın"],
        ["Kemal Sunal", "Kemal Sunal'ın"],
        ["Alp", "Alp'in"],
        ["Mustafa", "Mustafa'nın"],
        ["Teslime", "Teslime'nin"],
        ["Alphan", "Alphan'ın"],
        ["Burak", "Burak'ın"],
        ["Cem", "Cem'in"],
        ["Aşk", "Aşk'ın"],
        ["Ahu", "Ahu'nun"],
        ['İstanbul', "İstanbul'un"],
        ["Cemal", "Cemal'in"],
        ['Resul', "Resul'ün"]
      ]

      data.each do |test, expect|
        it { expect(test.to_hal('iyelik')).to eq(expect) }
      end
    end

    context 'when i hali given it' do
      data = [
          ["Osman", "Osman'ı"],
          ["Kemal Sunal", "Kemal Sunal'ı"],
          ["Alp", "Alp'i"],
          ["Mustafa", "Mustafa'yı"],
          ["Teslime", "Teslime'yi"],
          ["Alphan", "Alphan'ı"],
          ["Burak", "Burak'ı"],
          ["Cem", "Cem'i"],
          ["Aşk", "Aşk'ı"],
          ["Ahu", "Ahu'yu"],
          ['İstanbul', "İstanbul'u"],
          ["Cemal", "Cemal'i"],
          ['Resul', "Resul'ü"]
      ]

      data.each do |test, expect|
        it { expect(test.to_hal('i')).to eq(expect) }
      end
    end

    context 'when e hali given it' do
      data = [
          ["Osman", "Osman'a"],
          ["Kemal Sunal", "Kemal Sunal'a"],
          ["Alp", "Alp'e"],
          ["Mustafa", "Mustafa'ya"],
          ["Teslime", "Teslime'ye"],
          ["Alphan", "Alphan'a"],
          ["Burak", "Burak'a"],
          ["Cem", "Cem'e"],
          ["Aşk", "Aşk'a"],
          ["Ahu", "Ahu'ya"],
          ['İstanbul', "İstanbul'a"],
          ["Cemal", "Cemal'e"],
          ['Resul', "Resul'e"]
      ]

      data.each do |test, expect|
        it { expect(test.to_hal('e')).to eq(expect) }
      end
    end

    context 'when de hali given it' do
      data = [
          ["Osman", "Osman'da"],
          ["Kemal Sunal", "Kemal Sunal'da"],
          ["Alp", "Alp'te"],
          ["Mustafa", "Mustafa'da"],
          ["Teslime", "Teslime'de"],
          ["Alphan", "Alphan'da"],
          ["Burak", "Burak'ta"],
          ["Cem", "Cem'de"],
          ["Aşk", "Aşk'ta"],
          ["Ahu", "Ahu'da"],
          ['İstanbul', "İstanbul'da"],
          ["Cemal", "Cemal'de"],
          ['Resul', "Resul'de"]
      ]

      data.each do |test, expect|
        it { expect(test.to_hal('de')).to eq(expect) }
      end
    end

    context 'when den hali given it' do
      data = [
          ["Osman", "Osman'dan"],
          ["Kemal Sunal", "Kemal Sunal'dan"],
          ["Alp", "Alp'ten"],
          ["Mustafa", "Mustafa'dan"],
          ["Teslime", "Teslime'den"],
          ["Alphan", "Alphan'dan"],
          ["Burak", "Burak'tan"],
          ["Cem", "Cem'den"],
          ["Aşk", "Aşk'tan"],
          ["Ahu", "Ahu'dan"],
          ['İstanbul', "İstanbul'dan"],
          ["Cemal", "Cemal'den"],
          ['Resul', "Resul'den"]
      ]

      data.each do |test, expect|
        it { expect(test.to_hal('den')).to eq(expect) }
      end
    end
  end
end