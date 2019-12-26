<?php

return [
    'alipay' => [
        'app_id'         => '2016092500589684',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsHcpiBd4UlsKhr+5TLjoPB0C9vfF1sy04XA4vDfJKfn3iol7xfL7VnaCcDw9/yIVk+qcmGjbSFbFihSBFDE8tpZH+YoncNgJIzFAhFH+sb4d/g6fG8lUN0ifyeQ7S9khKfxa4YAOISzDkgrOrcY8DrJsfjVrEfkPlCK+Es+TksOsKcQrSfTw3Hzqoc6EygXSEKN0iIsAt61w6ZRIOj67bQa2kBkUrKoEslry7AJbJ2ISKF61vtHYQodTuVOpqbI0HyTVJdET8TMLTbyKV/LySRuZQMFmxJp+OmCiX+D1ZZTdBLFeXYasOpupT56ILCa2XTKkWYpB0fCVl0NcDsmsCQIDAQAB',
        'private_key'    => 'MIIEogIBAAKCAQEAtHsG+540rLHu8vOKb4aiEEL79GAsbipJ0PktFXEiw1FadMHWqjHzdtL374GodiWpmpA64ukoXdpz/KByan82aJnONRO8kRsuRC+rA/+XHdyZr6lkHrgZySbOwwTrgZr35GL3E6p1zkHtDchp1HIRBbobq5HB40/NVNuQjV7FUZdQ9pYXVVEz7CryrpO6gIMW6Y5JLvB5tDFmlnxU6q7utv4WLG6+s7oMR5IVpUjYAU01wVmHhy5nMD6r9dlJkwablxTTrefevNXq1CLTM++jdJ8KohnPc7zx9xm9V6KTGLk6q/FN0BwlQ3QhjHs3YvUGTgqvlKk/D/qnnpR/Ibw5GQIDAQABAoIBAGP2fHCjONOqHgoswDFzZZISN9Er74/5FjeLu9/TcQizp6Fht48+6XWX9kGPFAqUY7M7TZJex7/r/jAfgh/gY/ddsSwOyXOplV+o81TcnQuqIul7rfuhxo52UzELKZH4jnLOKcGXuXZLZ4wpxAwqPalpYmgN7FEF41mr3w2ePzYn5lCc7N67H0Voa+2fjwI2kBlv7A8rDikLo3N0maBTUyPyZcS1qJxU0HIzCvaZY66+noYydRK7TnCUVptBR7L6sBe7ipdzEpvhYZvlx2oBBPYiQEvd/MOOSb40uSfEnJE0r+3SVncXAKX3+PfVPL4EYr/7SLQ/88ra5sCrnYGjCIECgYEA1x98fJ6+C9wojyHEjkkfqOx+tidAze5V8ZusNkFssKyIug5FdvM0a2vcHMmaHPekr9P7DTMlcs2orXAJPbQCrPnATQq0etgYtNZcnp6DF5I/v/mzjjTXze1G7y70AC5zaajDci3s84GWQqbcImawm2P59gstGahrHQiA51kUVCkCgYEA1sZiQZQfjSLABaqWtKY3CB8nE7IjXZLaz8mbaJYciUSxybh0IGfwa18o21Tpw/Gy3gktZbgr16H5xa6gYrp1lxqOvgkFRCZ/PKAyziIOOd6G8B3URutNDsrrKYcx0bggnQZLYogLWu/vv9Mp2cVBrtIShn58RAVdBQ55jqYk23ECgYBFsKaUfJyWnQDqtYbGjXvbLpoyCm9dBzwCZGsavIEojwxQMfVg/pLZxfxtuwXZIoTQjTzEXvBfy648WZI00g8X2GTq0G/9Z+pBEzy4CiPvy+opGAyKIiZTSO306GIVePbcoNaIM8aScEWsW//uiRPnkzDT+3Tl3gCtTCbuS5ZhWQKBgHbg+fPYfBpPuL+qK560PdO2ApgpSt/5cDoBGo8qP4NPTaUc/tINFgsoceHtPzMg7mNt6v3ZkhLZ6fmcbdQX5wyLO6U+MvcE4/p3pYdpXDx1ynTP3fafOVjNwpqK5W1yoEKqAEH6kWZ1Vlv0Er8iKvgL+QsOqdOwsEsjNu9ZUR9RAoGAXeQIXwLb0g+qgshO1D9CVjU5Oq7aIkQyzZWlPlHDFEmSqkqnB+v9uXVFu/6LEZgxKt7lHpnZuFUAX/fDv/TNvViJ1wfakh828QHJRqsPsCpdGsI0vKurxxS8NAJUZg1oNJsM3UYHAlPwCYcyj3xKNiVkGp7F3wfPc8gmRNbvpPc=',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];