// Tugas ke 4 dari mata kuliah Pemrograman Mobile
import 'package:flutter/material.dart';

void main() {
  runApp(const RestoranApp());
}

class RestoranApp extends StatelessWidget {
  const RestoranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detail Restoran',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      home: const DetailRestoran(),
    );
  }
}

class DetailRestoran extends StatefulWidget {
  const DetailRestoran({super.key});

  @override
  State<DetailRestoran> createState() => _DetailRestoranState();
}

class _DetailRestoranState extends State<DetailRestoran> {
  final List<bool> favorit = [false, false, false];

  final List<Map<String, String>> menu = [
    {
      'nama': 'Grilled Sirloin Steak',
      'harga': 'Rp 145.000',
      'gambar':
          'https://images.unsplash.com/photo-1544025162-d76694265947?w=600',
    },
    {
      'nama': 'Truffle Carbonara',
      'harga': 'Rp 98.000',
      'gambar':
          'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?w=600',
    },
    {
      'nama': 'Grilled Salmon',
      'harga': 'Rp 128.000',
      'gambar':
          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFhUXGBoYGBgYGBgaGRgZGhgaHSAYGhcaHigiGB8lHRgYITEhJSkrLi4uGB81ODMtNygtLisBCgoKDg0OGhAQGy0lICYvLS0wNy0uMi0tKy0vLS0tLSsvMC0tLSstLSstLS0rLSsrLy0tLS0rKzAvNS0rKy0tLf/AABEIARMAtwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAFBgMEAAIHAQj/xABBEAACAQIEBAQDBQYFBAEFAAABAhEDIQAEEjEFIkFRBhNhcTKBkSNCobHRBxRSYsHwFTNyguFDktLxUySTorLC/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAEDBAUCBv/EADARAAEDAgQCCQUBAQEAAAAAAAEAAhEDIQQSMfATQSJRYXGBkaHR4QUyscHxFEIj/9oADAMBAAIRAxEAPwDtTG1hjeBiu7tFsZS1btE4EL2qSNjOInX2xutZysjSfqJ9sR+W07e4/T8cPRCo5pULFRzFYJFxHUSYvt0wH4goVwBswJ+hAn8cXPEXiLK5MHz6yq3RBzOf9gk/PbHMuIeOqlViKIhJ5WqAFgOwVTHa5J9sMFJdY4FxKaTl2UKh+M8o03F52iCPlPXFPPeNKC2pBqzfy2T/AO4fzAOObcMy2YzTAnzKp3EiQPUKOUfIDDvwrwW9jVYL6C5/TEjoJlctEBVM9xzNVZGsUl/hpyDHSX3+kYG5Xw5mKtVWprAmTUYwJHWdyZ7TjouR4HRpxCaj3a/4bYInHBK6UdJIABMkACe/rjfHuPGwklrjw42Axhw0LTFepJaO2J6jQMaKuGhexj1kx7GNiMNCgFI98exfEs4jZwGHrgQvTiCocWSMQ1B6YElVYXxmN3Im+Mx0iFdAx6GMbSMQK8jcahY+npj0VDeOnbEK7W/7zMQOo3MQOvz9MacTqRTkNABEn0636YjfLLUF7EdsRV8mKtNqTLCmQRM6gfywIXO/FnAMpmrUeWvPxiAnqX7/ACvOJOE+BstR0q1Q1qrDeIRfXTudup+WCrfs/wBB+yrOo9YMYI8M4EcuSxcu1lBP8xi/tM4QLiUGAFd8PZCilWq9MliVSmxM28vVyg9hMwOpPfDCMDshTAXlEA3Ht0+cRi8pxI6JsuBPNSYwDFSrn6aySwtY/pgZmfFNFeuFBXVkejHhwpv4xB+FScVn8U1TsuCEJ1GNXwlHxDmO2PV8Q5jtghKE3RJ9setPTCqniiqPiXFg+MKajVV0oo3JMAfP3w0QmSbYr1qzdBipkuP5esOVx8iDgjTgixBwIXtN5GPHGNlxoxvGBC2AxGT0xPGK7rzYaFCaKgzG+PcTOuPcCFAmWAbVJ9psPUDE/wCGPWTHgoyev1xEulAg5pBIn3E+/fF1RiKlTaLz7GJ/DE7uFEsQP17DucCF6YAwtcYfU0E6YhixMBEm5PSWuBiLxn4iGWp6mJBaRTURqdh3v8Pf88cyr8br1b1XLMTMbKD3jqek9rCBiRvRXMZl1Ct4moos6rd9p9hhc4j43drUh88KGWylSow1EmcOnA/COoBmOlfzxDVxDGarsMS8+brVTzMb4uZLhpOHij4aoDqw9TiZOBqP8treuIW4xruR9P0SuskIDk+C2vgpS4SO2L1BBtIxcQYmZVa/7SuSCEPXhg7Y8zWQRFLEqALkmwHuTgspxzv9qOcf7HS5WkUckQ12kDmSLxbfafUYKlTI0uUlGnxHhkwqXiXxNl6UqrrPQm3/AGiOYD5C4v2Q+IcdSsxivRsTAfUoPQ9wNz1/DEDZxVZiGDqbabNIP3YPudu9oxE+RyrknSqxuObf3Mb+3U9dqhrEmXk+At7rVZhg0RTAnrJv7KdKbNS83LAiqg5kUk6gJ5l0yCOvrG5icNngfxvUcBXY6ux3H6j1wo5HhqUqyvRJUjm5SeosJjaPfBzPcKFZRmctFPMLdxutS0zpsQbEdjMxN8R08a1j8rjY8+rsPYjEfT3PZna2DzHX2rrWU8Rf/IPngvlswtQa0v3HXHMPCvG1roUezqdLKd1P6djhiRHpHVTJjfGqL3WKWwYTur4rVcwAfTFDhfGVqcr2bF98te9xhhcrdKoInGYjqUYHLbGYcJKZM5TMkOpA3OpYB7f33x62YQREEmwiTJ+WOQH9oWdIhloN70z+WrEI8XZ1yPtQsbaUW0yIkgnrhBjUZiuv5riaoHJKgJALMwABMWk+4v64R/GHjhaR0Zb7SsReodkBjbrfeBvA9DhUzWYqXd2Z6huCxJi0TBxrwfgpdtTXkzfcnucBgaLoNnVV6GVrZh/MrO1Rz1bt2A6D0GGHIcAmLYYeG8IAi2D1DJAY5XZKXctkEpFdZtPbDYa6FQE2Atb8cBuK5YkYA5DixouUq/DsGvbfcdr74yvqNKqW5mXHPr8N8gpqOU2KdPM6i82Hofb54oZniIDrTBlm/AA/jitT4jpUtYrpJmbRHcdMKXCs49TOB2BAckLPQBTH9T88eapuqV2EtkRM9nKPG/h4K5www3XUKGY1CYH/ADbEZrCYIHytgXkc8ETmMdhvJB/DEVfi1NjIt7/8YvVPqA4DXZhm6lEMOcxEWRt43H9+h9cI37Scs1bLBqf/AEyWJEH7MqQ0H6HrZT7gvl/ECu+ik4YbM24HoO5/Afhi1UaZErpA+HdiDFz2vqEXnv0xs4Ks6vSlwifVVz/5PBHJfPtbgwqS+qGJgkGJ6TvBme3TEdHhFQAhGJgjla4EHrv+J7WINi/iKj+61zTj7IktTnTKmQwXUZjSVG1yLTvi9wzPU0cpUCoxgwWJ1hgeaSNyelzLHpAxHUfWYCNT1Qtum2hU6YEA85/KzJ03VdbkM3KLCIMnmIO9twLDFwZhUqatUKwABHTvv7jpF/pPl8sp1IysAQ0GRZtwNPSY6979cQ0+HI40uQXSNJJBgi3MRPQCAPljNOWSStIEiwWudymp1zFGEzKdC3JWTqpPYx+E9jh28L8Yp5mlqWbHSyNZqbD7rD+wcJWQdiJCjUhBlhokT2J2t36++CfC9VKv+801kERWRY5kuQ6jcspkgdeYC5xfwWLNJ3Cfp+PhZePwQqDi09efb8pzzmQ6jF3hPGCISr8if6/riTK1VZFZSGVgCCNiCLEYq5zJTcY3F55Mxgj0xmAfCM+U5H26H+mMwoKS5QmRG8YMcE4IarhVHqT2HfE2Xy2HnI5IZejpj7R7t6dh8vznHUpAJYzHA11wNh174OcM4YFi2L+WyvXBGlRjHCklRUKEYs+XjdVx5VqqvxMB7mMIkDVLVV61CRGFjjvCFbtJBI+W+GCvxamJgzAmdl+p3+U4WuIVKlVlPmQFMsossagQDN9W/wDxBxUr4umwWuVbo4V7zewQThvCKisVZz5ZMFOhMz8sEuM5BkRaiLLIwaPQG/4YuLRNRSNi3XYC+y+xhj7C5wR4erVGdKjz5ZI0gDmVgCpaRMi4sQO84gw7uIHMeAM3VzUuIpZIc0zGq5hxLxvUdmTL0LyRLmY/2L+uIspwnO5kaszW0UhdhZECjck/qcMHjrL0OHuuYQANVYJ5cEqWgzVYC5CrJ0rdjAws57xImf10ajslKxp0xKsRJhnKjmfYxdQTEdcQ08DQodLLz7/4mx1SucrSrXFPFVDJr5WTQViN6pkUxv8ADt5pt3A9cJbeJapqNWeoRmNOkVUA1ILypEfD0ldu2C+R4W8lEqa1IFqnUbSQJZGEAewFsa5rgSrqphLiebcBZmSCLHpMSPXbFn/VTDtVZH015aLKzxTPjN5fUSPNp/esdZ7wAIMETsIcR8UCtkytamrlF8xD5YlbTuFtdSDEH1+eIaVClSKyzmmP8wAESGsQI+IlSwETBcHBbxLwg5d0zmVJNJwGDKAbG+qD1Ft//QW8dkjULmf8lXI77SimXyZ+P4NgQXkydyrAAG8brEe+Kxqr5iAsFqMTKgs8GesoAO946AT1iyPE2qUtRqIT3Mcp3vc7xuYMt8sFVrUwFqaVUOCSTGpm1Hm1SASYET2FzYDKdLZDhfTfstWZgg2VrIZI06gV7q2pR0INokWMgH1G0bSSHBMtUMWiDYyQwBPwzItdjqAn5xjXyT+9T9iHOkEn1UMCGNuYKsiOkdoJcEV2p1TUUQF0mZ0loHQ3jrHWe+OmNlwChe+Gk93qhFLMNRLeTVZkZirU7jSSbVaWoTN7oAQ0TG4Z5ylVWUEMGBEgjr64XM4tDLg1Kh11NMFonSvTpyj9b7TiXgPF6RJAawgGYs1jPoCGWdoI2ucaGGxJY7hvNuvq7FmYrDh44jB89qOV8uDjzE4x7jUlZaCeGcgGqa2HKl/n0H9flg63O049y9DyqIXq1z8/+IxNl6eBIKajTxYVcaoMbnHKaEcdzr09IUgA6tR6zaI+p9dsLebzBA1NJvcEnUx2gGe8SfWB0IueMs+tJRUcwgYBm/hDHTq9IkGfTFPOVqelCJLFjIBi536iABe5FgL3E5OOa/PM2WtgXNyaXUL1hqAawBA2ktU2tG8MSI/l9ZxcpcNQBmViSLnnuGebkEgdRC22HpAavxdgSDTgLdWHMDqFwUXmEFptcyOouPzviFim9GryTaFOohiCdQJDQCADG564iosaJO/2rFTOYCY8/nx5YIZdc3AZbDVGoFogQTPtva8GW8RoldIpVGadOoTDAjmkwAdN2IExA+QvhXDRV11KzVDSIFOKZUzb4S2mwAg2tfvMmDwxFUIHrPrBl7LpSS0SZnsWFj3AOO3F1ixINYJa8Je/bvSZaOXrLU5RWssSZZGgo2wsNj3BHYoOXyGugsEMI5W2YaTIBMSwiRf0gbY7CvDFzeTq5TMcyoF0HZtJupH+llIB7AfPkvhjmUo5IOogiLTEDltNlHXoepvaxFY8IPaoMBQaK7mOvG5VrIZCpM6ySZO0frYT26nDPkkJo1IKqyMgYvH3iB0Bb2tfF7h+VC1vL08ppnmuCp8sGSBJJ3NtsVaVNzSWkICMwJPKdZH3YkaYB3O8AYxTL3Zndq3y8AZW9nqqGVyKEkShLC8tAgg8o1WIMHrMHc4u+HFDVMxw9uXzVNWjN4Y/GQrWnmVoG+kmLmY+K5RUZakkGCDJLAlTMCJBsTYETB3tgXxHKMwnzGWsjakfqAJIMb6TZSN436jFvDVDRfmOh36KpjKAxNKG6jTfarGW8MvQavlwHYEJpaf51BnrMTt64zJKyVVplGMyAGDkQDISmxMAKQ66SO+C2ZzAr5BK1EBHRWWqkkkMLumreNagg9bHFtOILSelU0hjSpPUIAVR8Jg3MgQFtfp3OJsTTh/YfHfWqOFqks7W7+ETRqOuq7AfZiALrzx0XaTYdJv7Yjz4NHQP5VqMS/xu50iQdo/G+53D56sRRprqlmL13H+rbfcaUadpMYnphqlPS1TWASblZGp4ABAOwG3b2IxXLHZd96mkZt92/hBMxxeMyS5kA6dJMkuV1Tp2m4F/brg2mTShTVqaQhDDkBCguS2ozIsCTf1HQYD+IMjlydCVSHg7jkJG40uCo/O84a/D9XzMnoY6opwWJABEG9tisD2GA06ZADZ/nNdPfUHSOm7I9wTNGrRRmENEMN4I9fx+eMwM8IZglq9NviDhoAgAMsREn7yMfnjMbtEl9Nrj1Lz9ZuSo5o60z12lsT0hiugvOIuKcUTL0y7z/KouzHsB/XYdcduIAkqNoJMBX61dUBZiAB3/AC9/TAU+J01HWpWnMBzv7legwn5rO5zNVL0+QAEK0gSW+7FyR3Pb2j3L5oqNVWFO9vhCk76mNz9LRjJr492aKf8AVr0fp7cs1Ne/TfkmDxhkFzGXqUzdXUiR6jcH8cc/8OZ+o2WqU2E18uQhQ6hrKiA+oSVGi5O0+923IZoiF1Eo8qFIkhr/AA9rC47+uB9DLrQzZzH/AMlJkkbGSGBgG+xG/XEzqzK9DPpCibSfh6+TWUMy2RqqoaVpqxsQNQG8iUrLAmfufXEmbopS5iG0MA2uosgklZKmEWICmXJsze2DHF6Xm1EKmSpEKCUlgQwJEzEA29ce5XL0RrFSp+7tILIFdz021St5HwzbtijTAc7s3v3Wi55DZJvvx9PJVcjn2VyzhmpaBpqUoKsFAuUJaF1MRzA6YF9zhgbPrVDU6dUmprFmGoI8HlGoTNpiOWdxhPzeTyxrLURyUY81TR5TgrAlSCquYkyVJGI+J8LqalejmzVLGRrQg3uYdCO9yQNjF7GxxAJyR57/AGoxhw8DOYPdv9I/U0ZWqKr1KpjlqIxJApsRMDUSwUsCDv0NzhF8ScNWjnMwgAAaolRQJh1qQT0sdWrr09hjzI8dqq6rVIVCdJMyoBJEcxtJ/ri14qXXl6VZjBpt5TEwSAHheYfytEixkdxhUnOe1zCOUjn3p1KYo1WOBm+U8tdEe4VlUesoV2pqVQg1E1BTUAB+L4TPmJEgcx36W8rw51DKjr5YBbUVvKlQNLEybbsJ+pxU4bxtNdD93pGtFFFe8Q0tpMzECSCRN2HW4KUcr5spVDHQ5UauZhYnRpAKEaSbcwMdyIiawZQpaj3Bx/aibJl6YJmFvdQYYhtZLoWs0oYiV+dhLZYU6inydCusTfZTEiekNvcGDuIJMUM62moqIwKIulii00Agw0yda3g7QOgnF3iOSDLQpoQIeFChj9my6rsRYwsb7EQQTbrhgtt2LgVix3S7fwk2hWGWzD0bNSzB0jaAyqdLT1DAafUhe+FzinEGVWQWZWC3gyFtv0BCKemG3xZwFBQZkTRFxqkVAUOnVcDSNWxkiwja6MM81UEt8dlfbSWE6WII+9Nr7kD37B0aZIG/jyUZ+/O3/qx70eq8UV61QeYISlSCAwQ55SwAFp+0eSew9Jkz9UmmoLnTTBEjYjS0+pg3jtIG16X+CUndhUQKajTSZolhFzoBMA6bEb4hfwxXpqpRmVipYAwGtpWDN/vxvhgMkQUZnwZGqx5e7w6kwXRhqDGIBVoBvFoPxG+Hv9ntTUpVlq2khyRpIsNMbiL9SDHtjnzcNr0wy1KbHUSZAgBwI1QYB23v+OGTwx4gp5dwGYqIVWBG56FT7n2OOa1RoIA91Iym97Cecd39Trm8kaFdc3SJiClamL+YsHSR1DK5Bn+FmxmCWWzdOqFNIhgJEC8jpv8A3aMe4mp13NbDYIWdUoBzpdMqTjfG1y4AADVG+FJO38TQCQLfP6wsVKb1WFaozEwbdomwHRZA+t8D+OcX05yq5WQGUEegVQGgb3n6nFjhnGtbanDKDcH/AKbKB6fEQzGwM2HS2IcUX1ahbMAblWsLTbSpB4FzuEXo1gFLqwMELsYJuYIiNzMyDMbwMVq9emf8wosERJ3CnVqgnuxv3xRzbnUzamVkqaXSUAVeWTI3032k2EztgNxTO6lI1BabKCZE62YlYI5v5O4HtBPDKMmFKXxJV7iudEikpN4PmAalFywEAg/IDtitmOIUqapqUPTLSyqXcKs3Jp/EALGFa17bAhmosPKFWm77rNNZWIi6m4MIeYAb9onytwcx9nUCzMatVJwVF5VviuLG+433FwUsn2m3qq3FFSzxceIT1XzVNl8ommitTuWVkYRqbSCVhhpgASSINjbC7mMirtzOVaJk86HoNOzAR6k8u20oacYzuVcUgzIoIVWDMRMyBq2PUi3Ttgm/Gq+spVMsJL8sGRAMsI6Ge5t8676Tmi4BVjD12k9Ekfoq3m6ValOn4Qd1LW2syEAi8C4F/UYr/wCLuWBVyrqdS9ASIFxtN7D32viA8cqPLu6lASNAYsOoGsAxeTykGR+JT/E6FddTITaOdQNO42AkrF99iO2IKjA25Cv062e0/ICX8zmMyhp+YFIqEkuAZKhuY7wwGneOn1ZeBA5ihXV21U6lixNw5BFxFhaB7DFNqehQaVYWY6UYixImQpgBeUjcnae+CL1kpeYouKgBHliVdzpYaQZA1AFbd/THXHykFo31dkqGphw5pa46+Y7e1UspnKlLL06dNvtKbvTYmBuZiJuNSgRezdb4acjmwKyVFU+a1IF9LECQYdhTBOuINwARBAHQq2tTWYNA/eAARIEONJ1+tlPzjYHDIlJTl6UL9pl9QKn7IsZDEjSPhADnUDBIG5tiRpbmtpr57KgcHZRmF9D4bB8Ve4Trd6lKnWZVl20eWrB9QjRT5m0g/FEE85O4wT4dmQaULTINMaeZiAD5ZJSnb4RE22AMAbYBsxTNI3nMoqQ0kg6fMCjcHchQARJPrM4zLZ+oRmFpUzqtPN8Ol4Y6Ou5mYgzbHMwD2T6JOaHHvg+diivHayvpBGt2RRBgQNTSASD0uQTJt645Txan+6VrnVSfUjGRMajBMG15Ye5jHQK2ZJpUAZ1bFgSLBiQNXe+09Dthf8UZAuIZAFqMRqnbc6mgco2E+3bCp1anEmLb+V2+gw0i3ny75/iXOF5yp5kiYJtEKwG0au9vztvg9luI05ANTRDTzgnft6ktv1GFnw1QqsTT0sHpsYKqfM5fiEwQYEzNr4c8nwivmUdj9otMmEFiU7iF5hsAYJttieqG5oUVAvySfVWMtxc6FVCTIHUzJM85Jjbp3OL54Gj0HrVKagwJBdlkEwpJWeaJtB6e+J+FJQy6gqtLUrlgDaQQYpm4AnvDbGQcBPEfiXMvUAq09KBbIoYATMGCb/dE9htipBy5tdY/qtAkuyiwtJ9gnbhGbyNJVakAIHNIPLIEaVLGBuJE7xjMJWS4rrYEXbSFImBAG5nHuIv9hZYN8k3/AE8PMlxPeVe8UUwudamRAqoWB9UtBPs5t741y6tp8oKZCkhgoIggiDYkXK3Ha+DH7UctpRcyBPktqa08jAq9usKxPyGAwdUZeYEMAVYGBGkmZBBEi0z1xfxjC2pnAmVn4Crmp5DyUR4lUooJdwVEH4IEH+S2kEKI0jfpNtHZ6/P/APTs0csVdFQb76lBRr3Bjpbqa9SulXlLlFSDHMRJ6/h6mxPrjM8KY/ysxQkgFg66CVkA2qMoPUAA/niNj5dAH791bcyGyfb2/KG8XyNVRrRahAjXUFUPBt/DAW8QDaF2HKcWcrmGQFZX4QFRgfhJIGorIk7abAAjvi9wQCq/l+VqKQQan2amL3FmAtbpeQIvgvm8kjsgyaqHg2qwwiBKqSQHWwtcxMReZi4g5XWUADCMzRM71m3kgea4YtZDTqPzxBSBFttKmQtyN4JOxNpF8HzLTVFVpamxKxIBQqSIUgTBB6QNA3wb4jRp02qOo8ioFWPLqGqmnYLzAC8DlkdpsML/ABzJVmXzqTc1JDqCoV1oWUfBELeSCNQaN8D2uNgfHq/qVMsHScL9XWPhSVcnSqAoNCsSZZDB0jrc7xBss2MzvjWtk3pAmnzIIQBtwxkhGC+5IvcTYRAEZVqhppUDI5iwAgxPUjY3j0v2wQyVbQalFnOllnzNRUK4hgZJE2kSSLH6V3ExFirjHAEOE3RLI5JarVKT0yrNC05ZYkkaAT0UiRbv1jE68HRkMEoyfE06SFmxB35WkR6r3OK+XllFm8wbPYEpIse0XI/1GRi1TrWDOXa/2zRMn/T7ANHcjrii5xBgHf8AVcIm+9kKxn+AfvGWqBdSkc6NIgGDBsdrsvffuMQeG84+ZohVSXQhSLEqyaiQBsQVLQdwCT1wY4dxoOCinUATpfbUDY8hJ3IU+nzgI/EeJHJ5z94QzNSKimx5esenf1OLNCSeHueapVrDiHY5JqzJrtRpOQfsgULRuF1HVAg7hl32Ydr+5MgV9BYN5ssCxJLecpNQ6WuxDkibjofhtWoZunnUdC5Q/FT0lv4wNRAvMlmAIIv2k43zPD2pU0WjUK6NRmA73YQHbWkmSQJ6MO17VP7sp18lXqfbmGnnqsp+HdYSorBAoElOWBpgqACNVyLXnab80VTg2Zpq4DOQxEyQ0HT90EWAG/qNsUcvlK6+YEZRPcsCdLaryRo7yDF+2CuZzubGl2psGQrqZG8xTpUapVSQCRA6jc+uJKhc37hKVAB4lv5QCpTzOWr0np1dBNpVo1FSG0ki1wTb+WO0Fzx/Meb5wQUHKkHSNEmJYydi1p/0jfbGmb4rQqsUqK0VIGplCaSSTq09TJUiSel7mRFHib0XajUTUKZkKAdBm/mADps0n8xiAucdRvforLabGmFYymacNrYtTEGCBynlE3Akgwp9bb4nFdm0VQwi8W0sLbEdOtvT1xZydJXkjT7SI2jaf/UDFn9wRAStiZmAhBJk3Mgj6bkzveE1RPUpuHCj4PkBUIrMRSaIMMBEg9D19bdcZjfM8UbUil6ZIkHVT0jrsBae/eesYzEbqTyZv6o4jeZC6pxvLLUpsjCQwII7gjHI8hl9JOTc89B4WT8VBjKEdyPh90x2vMU5GOaftG8MO4GYy5KVqYN13ZdysGx2tPXG9XpZ2wNV5jD1eG6UEzGQZtTQAgAMz/ESIj2A+sYDNl3Zi6+a6xAUJPN1DJPNdelri5mMNOQzauiaG1K6/PUtjqHQy2NMuAoapRqumhgpVWUm4lj5bkAi2+82Mg3yqTodMfC2n3Zln5UfhjhxYkvUSkGXU6VF2nWVDBtQDFbETMr7YKP4cpUxrDMqhphXaxNwVFRdS7T3FrEkjEy11KmFFSStR2q61d2kEayCVUBoF5FokYGt4grZcTVpMtImQVQPTgQBzLY+x+kYmLpkxPWuKdN0AAx1DTfiiHFlpZdAKOQ/eH0kDzGRn3+IUxeL6pAHxDtYVwzxNT01AxZW06WDWA+HlJN+lrW+ZxeyXGmziqlKpLW3MkwRBJO0QSRHS+17XG+G5dkAq1AzhdckqwggkansTcfD6dJnHDi1322XbRks+89t1xviFYUc5UGrkch1I25r9Om4wwZTIio6uxGqmure/UiBckWgna95wB8TcHqNUNRUYJ8M2IBE6bz8JtBP6ST8GcZVSKVSxgi/WBsf12/HBWYRTDmXIEFKhUHFdTfpMie/cI/XzTa6Lbg2ZSOoESZjUIG/Ukb3wcy6Co7U+UrUQnVqAhtJGkahfc9bQMCleiyPqX4RySAbmIICyZ6fj6418tlBqMWHlgaV3AsAW3k/D7794xnWdEf3crULSJBPwrWd4fmIhSWaiY0goNQWeYxEmYn0VY3gpfiMVKiszTAILKIgGDAjoYt6/kzZjj2lhVBLaWlhcIATyyhIXmUESeg+QEcdKs4YVQlKqdftJEiPQneZjFqjmaQSFVqw5pEob4L4hc0w0MJKzsbERcxta/e5GGFOOvThPKPmtUJLEM0gxupGkxYneItJEhZ4BkETNVTqIFFdWkDmceYikC4EAGT6T74ccjnKZOo8pZQNYJLC/NNwQsSLR9SY0HZCZIWbTbUAyh0QbqTK8TQMdSG0vqBOn4pnVJ3KjqZkwcMPC62Xq1Fq1WhKckU5gVGaIEASdp7GYuCYWs7xZCXZ9DqACJHOd2uwUtAkR1M7ziajkqeYGqnSdQRJK6QB/td5YbfeGIXhzNPVW2GnUEE69St5zMM+rXSlizP8IOhHkwFiw2hhPwgSOi3x+satbzaiv5kf9NrlTawmWhvumBDNEgTi1UylUEeWaddQT9mzQyhfvLqg3v8ACdVjvi7ro10qEI9KqqECkp+IwQCGMmbXBIn6Y4DnNHS0UlRrXWbqELoA6ZVlgrMOApNpj+FrW3mb4KZGjUn7SnVS1nRSw6dRci179vXC/wCH87mGXyjSWoASokrrFpHIbwQRsR1wYr8WqUoUa6P8Krbv84tv/wCsRVbdGAu2OzdIE/hEarlSF81WA+6VKsojsQCb/wA2Mwv8Uz71tJ1FiZud9+p69cZisGSLwFKXjcey+iCuK2ay4Ig4myNfWit3F/fr+OJ3THpivHhcj41wIZLMHMJAo1DFQHamxI5x2B2PyPfAzi3B9RmnCsygyN4Fj77b7/I46vxjILURkYAhhBB7Y5ulVstUOUq3BvQY/fAI5Jj4gAfcQehxSxFG+dvj7rQwuIjoO8PZJGZ4w9KqKZqMCPiBFyDMXgydhtOHXhfHVKrsC8KgpqDPNB5VPPLSNJ3g74o8U4ajzYR1ELcC+kllMQdjeNR74pf4HTHlgCtTbUSkEkCYJifYkBT0271nXi8H8rRpkmbSPwmfinBEBULAqOrErTZEAlekKBYSGN9gLThd4plsxTXTRcwWsKupFhZj4U0tMAg64uLCZxHQrVsu3mFBmU2LAnUo35ljVG1+pA7Yp5/xEawsXGmdNM3i0zp9jOwMCY2wEEO6QkJgnJAMHe/dVsrxkhtNekxQKxMEkEvNjPST6dMRcW4Mj0hmaABiQy+nb/nFXOVXLaKizI+IGCDEAFumx2vYfNo8NvRo6tIJQ09BUgDU8kqxO9jIt64XEp0jPI7lM0qldsf9N09kB4HxhmjS/wANiGAJAEQCD2vgvk82yMXYiodMHe89CLAz6GN+1hni3ww9HTnMtemw1Edu6n1BkH2OJPD+eSskEXA2U3FxBjqOnzxFiaJb0m3CsYTEtqdB9nCx/CuoVUOHAakVll06oMhpjuDPci8b4B8Q4IjguvxETvYERuPXv6YY6/DEcBg9gWDibEk7zNjYg2MxgLxFTSACC2k39AIjrHt6YhpVHF3RddTVWMynMLJVrGqmYp1GN+UTPWADPvf64cK2Ypv5bam6O700Aem0jlI2uTGze4nlTc9Vd7RcHtN5B/DDNkOMBqaiZIHMFJUSCSSx7nvtcxbbWlwaLLByt4hAcr2WpKlUVMq1OpTmQlYBCYE6SrFb3IDAEWBgE49zXiGrqbUppsVIK2WmRe4ULB+IdDcjqcQ+ZrHwssgReOUxa1xIYXHY74k/cnMAfZSQZLARcAGSLtGkbTEXjELqjJurTKFQCW/C3SoKiagBESdJF7C5g2iBtHxXxVy2YdVLEhSzMTuWOwEsd9t9xqtsILZfhlMNFZ9LRGrSZNiBv0tGx9rYIVadKiqsKaeYv3iwI9gjiGPqk4olx0Gh3uVpQ3U6je4SbxSu9A08wqsU+F52IN+1yCTf698W6fEkqc6nUCRH8S72J3+96CwJ2EGc3klr02SoCgqSSQgt1BG2x09dgcc0yr1cvWIEhlbSy9DBuD9MTUmNrAgG49QqWIqPoPBI6LvQ8/dPrIilrlb9I3FiJnlEk/T1xmIafFMq9MNUbTtKRzfIAHrJJ2sMZiIUidQfKVIa7RoR5rt3hjOXaket1/qP6/XDKMc884owYbgyMPWQza1UV12Iv6HqMegcF5gLaumE7xl4fXM0ihEHcMLFSNmU9wYw7sMVMzQkY5C6C4d4cqVmqVMrmuZ6JEE7MGJhvoD6X98Q+LK9TLjzlL6Wb7QT1JG97wdj/N88PHjHhzUWXN0VlktUAE6qRnUI3kAkiPUdcDM0KddJB5HUdiCDcFW69P1xm4lvDeCdFrYR5ewga7hKHDvECV1BaWcEt94lQBEjoov+HrON8/SpiSyEPvJPQenQgAR7ddsVMxlmytbToBJ+8REjtKwAf1PtifK5PVDVBqQAuJJEkGB0uJt6wMVKkB1iYWpTzOb0mgnSyizOYowjqhdxSICiTLMwIDR0AuSTY7b4n4PxAs9qXlyl9camAG8bKPT19L75HgqIjBr8oO02dokxtvew6DpgyOBc6BDLCnI1QvLoBkEDl2Btfe4nENRzCMt+8rtjXg5rdw31Ji4QVFNEqwaGYZlAJ/y32nbYkAdN8c+8deDamQq/vFEE05kgbr6g4aUyrvTFMDUitLWOrmG295jsPnhk4FxRaqLlc1Lahppuw+PfkZurQLHrFyTc28BiGlvBf4e2+5Ucfh3tca9PWb/o+WvmuScL4kXl5IBENHUyP+2/fviznM7TqKVgyDJEx6/FePp3xX8a8FPDc4dEihVuN+U++0jce57YGVuKUqwioFDRAqKWVgxNwY3BAII9Z6Ylfg2tdIXNP6gXtg6obxDTMERbcnfew0jrbawtvibwhlnNVmUEqqksAT0vNuoiR6jFSjkGqvop6qhm8CQPXUOl/wC5x1zwZ4XagoJAvfpI236n+++LLnZYbrPos0vl+fqWlCtQUKKCEVBILVFV0c+syF7xE79sSZasQOZToIvF0AvEA3T0FjcnsSFqcLSlXeg9QgFp2B1LbTPWwIWZ6T7b5tlpOVJClryF5CbHZetvfGdWDWksvO981u0jma16OZ5UdQikPvaedTbmXTDKLbGQfwwIdTT5fursKgmZ6yDNv64FjMlGvcm+qYmSRYQI+Y64q1OIsSwLT0UmTG8+1veJxV4dQmxsrHEptAnVFMvnoFwFWSIU8p2iQSf6fjgpwrwdTzlY11YcyxUG/NtPvGnCzRp+YgXZWJBEnWL3YiOW07/rh98A5sJWFO4VgVANpYDVsPQHfFjDEUq7Z5234qriwa2HcRyuP36Ijwn9nmWpGXBqH+aIHtj3DyqYzG/AXmcxSjxGjGIvDHHvKrGm3+U3U7Bu/wCQPyxb4wbbXO2FfM0tIvjrVcLrytjVhhL8GeJwxGWqtzD4CfvAfd9x+I9sOgOOIXSoZzLggiMcw4plHyFeIBylZrTtSc/dPTQbkHoZHUY6464GcU4WlZGp1FDKwgg4jq0hUblKlo1jTdmC5dx/hrVU5NI0xzWbSDEn1idpwL4in7xWdhKJqSlTUAiFULAII5drehHXBfyqmQzH7vWdjQqWpVGkiIPIT/EPXcEfLbj+Q5xUpkKAQxZQsaojUQRA3/4xhVmupS0nfsvSYV7aoBG/lCcznEpVmpNqGoCmpUSpcaRebXAYyLSva2GU1EQ0B8TFEB6EggiJ72jfp64gyWQpV1c6ArUwsNDAGSZLwxkExuelo3xbz9ajRSkzeaWjSgAhiyGQdIktHQH09YhFPOBG7qcvgkGdhe5OgVo1Cx+LQZBlgA3NPycxvNze+NM7S8xFiUgwhUHlYHli1oMX2k9MeU8lWYkgli86GqgLPUKBIJI2Ije94nFrJ1DTim66WOokagYMmTpSwmZ3/O8ooua2d96gNYZu3YhWOL8Mp8UyjJUGmsAJjoejr79ulx78M4p4XzFCocu6/afcMGHv0IEdhfaR8uztxQ0KgqhWhZBEjmXYqD26/wC0dcN+bp03VamlH1QVYD7u4IO+0XxpUsVmpknVuqxsXheE8EfadPZCeA8ApZaiKdFY0hdTIILMARqe0sbb+uLObpSJYdAAY/SPxBwQRS91UgjbTHy1elt9/TG+QybAlng6RZRfe8GLdNsYtXNVcAAb8+Xf4XPXZJsNErmP7Unp0qmVVeWsRociJKk2DW77H1+iTmqrsdBBC6hqJG5jfSTEevrjs3FvD+WzImtSRmPXSJHsRcfXCpxnwNUQfZNK3nWTN/WDNu/1OFSxjCBI08gOWnZ1rRouEZC6Eg1qN9TNBg8oJg3jV3EevXGU8lTXmaFJtO23r/cnrhgy3hLiDuQtNQpMlgwP5gEdvh6YYuE/s5UMGzTkntc//l2xabXYbZwB3gLmpVY02ElKPDmLvpy1FnJ67Ce5tJ/DHWfBvhk0F8yrBrMLkAco6qvWNpveB2wb4TwejSUCkigdx+uCURjVw+Gp0+kLnrWbiMZVqjKTA6lpGMxscZi6qaXc1l9V8BOJ8OBw3vTwMztL0wwkuc8SyTIZFiLgjcEdQemHXwZ4wFYCjWMVRsej+o9e4+Y7AXxvJyIAucKudyBQapNr26H3wFC7iGxvjmvhPx5EUcybdKnT/d2P823fvjolKoCJUyO+EmqHHuCUszSalUWVP1BGzA9CMcjWpVyVc5XNMZH+TVIIFRJEcwFzcAqdj8p7cHwJ8R8AoZykaVZAw3U9VaIDKehE4gr4dtZsHXrVjDYl1F0i45hIPDs8aZKsupGJmwEhthO1oG/bfpi/lsxTE09BYKdSkRpTVEhRBmIBnf1wn5qjWyGY/dq7FkMFakEAjYEgH29j8iTVGuKbEnmDLAj4R2v0xhuLsO/K9ejZkxLMzEbq+e+lgEXT8LsAWAkE9TZhrB9+m+InVp8whkJpsmkxaDGowYnlU3veLbDWnmi2nfSOoudgIN/Sf/WKFbKVXVwNQZSNGxjSDEBhGzH6Yf8AoDhZcChl1VWjTqsArnUdQW7TqjSs2FidiI3A98Vch4zq5KmqczDW0TeFaDpAHwgEE7n4sGqWSC3gB2idWoAlhFjEGZB9YN5GAWfzyJVkJTJVgzKFXmg3W4iDcX9b9cAgiHGJ6l3Up8RhaLwiOZ/aTWqLCap/lWPzx0XwzUYZWkzzrddbSZMn9MRtwuiElKaAESIUdceZriKpTWAWYCNIt174dbBOoHOzpGDr3jmeyVhcYVBliFPXy33l+Y2+eBOd8QqrClThmiWO4Uf1P9+mLlFXZJcgk7gbLP3Y9O5/4xRzHDEYi2k9/wBfTbHnH4zJVLWgtnn+1bptBHSutaGbLxe30wb4fUOohjyBRE/xEk/lgSOFNTIHTr6YgbMVGU+WrFncwLjlAAEn7o2/HFvAU6rKpzAz1b8FzWc1zbIhTz+msQpHM0Be/cx29cMLkRJsMK2RyaZNGr5l1DEXPbsoH9MJ/iLxjUzRNOnKUduzP79h6fXtj0/03CHD0zmJuZjkOwLPrvDzbkmPj/iTzT5VFoQbsPvEdj29ev55hZ4UlgcZjUDVAupub4hrUsWEoxc741rMBvjiUIFxWhtA98IXHsyajnL0EY1LajHKgPUnv6Y6Jn8s9blQlF6tFz6LP54jo8ISihCjmO7G5J7knDBQuarwUUhDGTGCPCPENbLHkOpP4Dt8j0/LBrP8P1STvhb4hRCb/LAhdI4N4noZiwbQ/wDCbH6dflgzq+nfpjgzozX6emDeQ8YZjLxz61HR7mP9W/1nAhdC8V+G6Oep6KlmX4HESpt33BgSDaw7DHI83k6+QZkrBdAvMwryY1J2i2pem+OhcO/aNlnhaoNNj6SPqtvqBgrn6GTz9LSWSovQzse4ZbqfURiGvQZWbBVjDYl9B0tXMOHeIUQ85ZabbESY5twOsiwt1G+GWnxkMnI4ibxGohTuNyRA6QRf3wt8f/ZjmaZZstUFRJkIbH/uWZPrAPc4h4R4O4nWPOBQUfecBn+QFvqTjPOAeLNWsPqVF4l6u8f44kkEhEIsxYCSTcBB8XXbEHhrg1XO1ROXYUTGqs2pXI/lEze1yemH7w94Dy1AipUBrVutSpzH5DZR6DDjRQKIAjE9H6e1l3GSqtf6o93Rp2HqoaeTimqAQFAUewEdMUM5w/SQ0aoHTp6x1wcDY0qEdSMWqlMPblKzWuIMpXXNhWmbGxH97HE9Yge3T2xtxvPZNATVqqreh5vpufphOq+NaC02AkspIQQQHB2vHLfeem048j9R+h1TemJ+dytCjiWTey6UgQ01Z4+ETPW2FLxF4/oUJSgBUf0soPqw/pOOc8U8RZjMWqVDp/hFlj2G/wA8DcvT1HHrKVMMYBzgeKoOMlXOI8Wr5urNVi3UDZV9h/XfBPh+RnpjThXC5qDthxyeRg2HTFhoXJUGQyUdMZhhymUttGMx3K4hMLk4jpUQvMxk9z/QYsse2K1SmZE4gXa1Z5Iiw648MHGmZzA+EETtifL0Qqgf2cCELzNAMbrgHn+BI12UHrhveniJ8tOHKFzniOQ0iwthazHBWY3sPS2OocYy5sFTUZ7xgTm8hacNC5//AIXB2jFc0dBnVB6EGD9Rg9Wou1QoJAuJtviNeBrMsC0974EIRQ8U5lCFSu/a5Df/ALA4OUvHOcSJqKegLLH5EYrZvw/SF9Ate1sDKPDpY6pIXaf6YEJlX9ouY21UidoE/wDljKv7Q81BPJ9D/wCWFUcDpAnluTPz74hz3CzEBiAd4O+BCZV8d5upYVI9lH/9AzilnOK5ip8deofTUQPoIGB2TyhAAvbri41HCTQV6hDEQffviNqhLAEH3wZORZtt8W+F+GWdgz9MJCo5XhxaDhk4Xwa4tgvkfDxptIuvb9MH8rk1mQL47CUqLJ8JAAEYLrkR9MT5ddpGL6pbBKSH00jGYtKN8ZgQpabYizT7Y2GNaqzbHMIVVcsGIJm39/PBFVx4i43wJgqOoMRuYGJK9UKJJwM84uRp2Jvfp6YSa1zVRfhmXOw/r6D1xQq8MqNvE+mw+uGCnlwL49qdbYcpJTHAFUhhJPUnv1xlThMbYYmy7NF49saVMoe+BNJPF+HkATtgbVylrDbHRqnD1YQwnA9+DgNI+H8sMJLmy0iTsY9sY+VM7Y6RU4MvQYo1OAgkemBEpGp5Zp2wQy/CNV8OuW4Iq9MW0yAGwwQiUs5HglgCMMGS4eB0wSpZeMWKdLAlKrplxjbygDOLTCBio1cYEKenUGLKnA9alr27Yky+eptYOCYmJv8ATBCF7m303An23x7jyrUnGYaFuDjAb4zGYEKfGTjMZjhCqZkSQDjKKDGYzD5Jq4mMbGYzCTWqjGsY9xmBCwjFWsemPcZhhJeJjRFGo48xmGUgpwLY2Ax5jMIIWy43OMxmGELw4C55itakBYM5B9R5bn8wPpjMZgKbdVeqi2AmgDPWH3fzGMxmGkEdq74zGYzAhf/Z',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          'La Brasserie Bistro',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Gambar restoran
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.network(
                'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=1200',
                fit: BoxFit.cover,
              ),
            ),

            // Informasi utama
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(28, 24, 28, 18),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'La Brasserie Bistro',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff17345f),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Rating dan kategori
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 21,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '4.8',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '(1250 Ulasan)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(width: 15),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffe5f4ef),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.restaurant,
                              size: 15,
                              color: Colors.teal,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Western • Bistro',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Alamat
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 18,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Jl. Kemang Raya No.45, Jakarta Selatan',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Statistik
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          blurRadius: 8,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Row(
                      children: [
                        Statistik(
                          icon: Icons.navigation,
                          nilai: '2.5 km',
                          label: 'Jarak',
                        ),
                        Statistik(
                          icon: Icons.access_time,
                          nilai: '10.00 - 22.00',
                          label: 'Waktu Buka',
                        ),
                        Statistik(
                          icon: Icons.account_balance_wallet,
                          nilai: 'Rp 100.000',
                          label: 'Harga Rata-rata',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Deskripsi
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.12),
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: const Text(
                      'La Brasserie Bistro menghadirkan pengalaman bersantap '
                      'dengan cita rasa khas Eropa dalam suasana yang hangat '
                      'dan elegan. Menggunakan bahan-bahan segar pilihan dan '
                      'racikan chef berpengalaman untuk setiap hidangan istimewa.',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Menu populer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Menu Populer',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff17345f),
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Lihat Semua',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.teal,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Tiga card menu
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      menu.length,
                      (index) => Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: index == menu.length - 1 ? 0 : 7,
                          ),
                          child: CardMenu(
                            nama: menu[index]['nama']!,
                            harga: menu[index]['harga']!,
                            gambar: menu[index]['gambar']!,
                            isFavorit: favorit[index],
                            onFavorit: () {
                              setState(() {
                                favorit[index] = !favorit[index];
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 90),
                ],
              ),
            ),
          ],
        ),
      ),

      // Tombol reservasi
      floatingActionButton: SizedBox(
        width: 270,
        height: 55,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          elevation: 5,
          icon: const Icon(Icons.calendar_month),
          label: const Text(
            'Reservasi Sekarang',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
    );
  }
}

// Widget statistik
class Statistik extends StatelessWidget {
  final IconData icon;
  final String nilai;
  final String label;

  const Statistik({
    super.key,
    required this.icon,
    required this.nilai,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.teal,
            size: 22,
          ),
          const SizedBox(height: 6),
          Text(
            nilai,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xff17345f),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// Card menu
class CardMenu extends StatelessWidget {
  final String nama;
  final String harga;
  final String gambar;
  final bool isFavorit;
  final VoidCallback onFavorit;

  const CardMenu({
    super.key,
    required this.nama,
    required this.harga,
    required this.gambar,
    required this.isFavorit,
    required this.onFavorit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 105,
                width: double.infinity,
                child: Image.network(
                  gambar,
                  fit: BoxFit.cover,
                ),
              ),

              // Tombol favorit
              Positioned(
                top: 7,
                right: 7,
                child: GestureDetector(
                  onTap: onFavorit,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      isFavorit
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: isFavorit
                          ? Colors.red
                          : Colors.grey,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(9, 8, 7, 9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff17345f),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  harga,
                  style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}