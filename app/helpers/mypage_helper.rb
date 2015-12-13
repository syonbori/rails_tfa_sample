module MypageHelper
  def readable_kh(reg)
    kh_readable = TwoFactorAuth::websafe_base64_encode(reg.key_handle)
    kh_readable
  end

  def readable_pkey(reg)
    pkey_readable = TwoFactorAuth::websafe_base64_encode(reg.public_key)
    pkey_readable
  end

  def readable_cert(reg)
    cert_readable = OpenSSL::X509::Certificate.new(reg.certificate)
    cert_readable.to_text
  end
end
