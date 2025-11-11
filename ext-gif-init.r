Rebol [
    title: "GIF Codec Extension"
    name: GIF
    type: module
    version: 1.0.0
    license: "Apache 2.0"
]

sys.util/register-codec 'gif %.gif
    identify-gif?/
    decode-gif/
    ^void  ; currently no GIF encoder
