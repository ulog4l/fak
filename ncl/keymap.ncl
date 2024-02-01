let { tap, hold, td, combo, .. } = import "./fak/keycode.ncl" in
let util = import "./fak/util_functions.ncl" in

let kc = tap.reg.kc in
let kp = tap.reg.kc in
let ks = tap.reg.ks in
let MO = hold.reg.layer in
let tm = tap.reg.mod in
let mod = hold.reg.mod in
let X = tap.trans & hold.trans in

let tapme = {
    Q = td.make 200[kc.Q & MO 4 & hold.reg.behavior {timeout_ms = 150}, kc.ESC & hold.trans], 
    W = kc.W & MO 4 & hold.reg.behavior {timeout_ms = 300},
    S = kc.S & MO 1 & hold.reg.behavior {timeout_ms = 130},
    R = kc.R & mod.lalt & hold.reg.behavior {timeout_ms = 150},
    A = kc.A & mod.lsft & hold.reg.behavior {timeout_ms = 150},
    N = kc.N,
    E = kc.E & mod.lsft & hold.reg.behavior {timeout_ms = 150},
    I = kc.I & mod.ralt & hold.reg.behavior {timeout_ms = 150},
    SLASH = kc.SLSH & mod.lctl & hold.reg.behavior {timeout_ms = 150},
    TLL = MO 3,
    TLR = kc.SPC,
    TRL = kc.ENT & MO 2 & hold.reg.behavior {timeout_ms = 120}, 
    TRR = kc.BSPC,
} in
{
  virtual_keys = [
    combo.make 50 [7, 8],   #q
    combo.make 50 [2, 10],  #b
    combo.make 50 [11, 3],  #j
    combo.make 50 [13, 14], #;position
    combo.make 50 [11, 12], #BSPC
    combo.make 50 [9, 10],  #ENT
    combo.make 50 [0, 1, 4, 5] # wfuy
  ],
  layers = [
    [
            tapme.W, kc.F, kc.P,                           kc.L, kc.U, kc.Y,
      tapme.A, tapme.R, tapme.S, kc.T, kc.G,           kc.M,  tapme.N, tapme.E, tapme.I,kc.O, 
      tapme.SLASH, kc.X, kc.C, kc.D, kc.V,   kc.K,  kc.H, kc.COMM, kc.Z, kc.SCLN,
                           tapme.TLL, tapme.TLR,    tapme.TRL, tapme.TRR,
      #virtuals
      tapme.Q, kc.B, kc.J, kc.SCLN, mod.lgui, kc.ENT,
      #bootme
      tap.custom.fak.BOOT,
      
    ],
    [
      kc.MINS, X, kc.EQL, kc.N2, kc.N3, kc.N4,
      kc.QUOT & hold.trans, ks.TILD & hold.trans, X, kc.SLSH & hold.trans, kc.BSLS, kc.N6, kc.N7, kc.N8 & hold.trans, kc.N9 & hold.trans, kc.N0,
      X, kc.LBRC, kc.RBRC, kc.LBRC, kc.RBRC, kc.INS, kc.DEL, kc.DOT, X, X,
      X, X, X, kc.BSPC,
      # Combo [12, 13]
      X, X, kc.N1, kc.N5,  tap.custom.media.MUTE, X, X,
    ],
    [
      X, kc.UP, X, kp.KP_2, kp.KP_3, kp.KP_4,
      kc.TAB, kc.LEFT, kc.DOWN, kc.RIGHT, X, kp.KP_6, kp.KP_7, kp.KP_8, kp.KP_9, kp.KP_0, #KP_ is right syntax
      X,X,kc.DOWN,X,X ,X,X,kc.KP_COMMA,X,X,
      X,X,X,X,
      #virt
      X,X,kp.N1,kc.N5,X,X,X,
    ],
    [
      X, kc.UP, X, kp.N2, kp.N3, kp.N4,
      kc.TAB, kc.LEFT, kc.DOWN, kc.RIGHT, X, kp.N6, kp.N7, kp.N8, kp.N9, kp.N0,
      X,X,X,X,X,X,X,X,X,X,
      X,X,X,X,
      #virt
      X,X,kp.N1,kc.N5,X,X,X,
    ],
    [
      X, kc.UP, X, kp.N2, kp.F3, kp.F4,
      kc.TAB, kc.LEFT, kc.DOWN, kc.RIGHT, X, kp.F6, kp.F7, kp.F8, kp.F9, kp.F10,
      X,X,X,X,X,kc.F11,kc.F12,X,X,X,
      X,X,X,X,
      #virt
      X,X,kp.F1,kc.N5,X,X,X,
    ]
  ]
}
                            