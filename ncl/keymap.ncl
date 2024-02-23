let { tap, hold, td, combo, .. } = import "./fak/keycode.ncl" in
let util = import "./fak/util_functions.ncl" in

let kc = tap.reg.kc in
let kp = tap.reg.kc in
let ks = tap.reg.ks in
let MO = hold.reg.layer in
let tm = tap.reg.mod in
let mod = hold.reg.mod in
let me = tap.custom.media in
let X = tap.trans & hold.trans in

let tapme = {
    Q = td.make 200[kc.Q & MO 4 & hold.reg.behavior {timeout_ms = 150}, kc.ESC & hold.trans],

    W = kc.W & MO 3 & hold.reg.behavior {timeout_ms = 300},
  
    A = kc.A & mod.lsft & hold.reg.behavior {timeout_ms = 250},
    R = kc.R & mod.lsft & hold.reg.behavior {timeout_ms = 200},

    S = kc.S & mod.lalt & hold.reg.behavior {timeout_ms = 300},
    T = kc.T & mod.lsft & hold.reg.behavior {timeout_ms = 150},
    
    C = kc.C & mod.lgui & hold.reg.behavior {timeout_ms = 150},

    N = kc.N & mod.lsft & hold.reg.behavior {timeout_ms = 150},
    E = kc.E & mod.lalt & hold.reg.behavior {timeout_ms = 300},
    I = kc.I & mod.rsft & hold.reg.behavior {timeout_ms = 150},
    O = kc.O,

    Z = kc.Z & mod.lctl & hold.reg.behavior {timeout_ms = 150},
    X = kc.X & mod.lctl & hold.reg.behavior {timeout_ms = 150},
    COMM = kc.COMM & mod.lgui & hold.reg.behavior {timeout_ms = 150},

    
    TLL = MO 2,
    TLR = kc.SPC & MO 1 & hold.reg.behavior {timeout_ms = 200},
    TRL = kc.ENT & MO 2 & hold.reg.behavior {timeout_ms = 120}, 
    TRR = kc.BSPC & mod.ralt & hold.reg.behavior {timeout_ms = 200}
} in
{
  virtual_keys = [
    combo.make 50 [0, 1],   #q
    combo.make 50 [1, 2],  #b
    combo.make 50 [3, 4],  #j
    combo.make 50 [4, 5], #quot
    combo.make 50 [11, 12], #WIN
    combo.make 50 [9, 10],  #ENT
    combo.make 50 [17, 16], #slsh
    combo.make 50 [18, 17], #Z
    combo.make 50 [22, 21], #DOT
    combo.make 50 [23, 22], #SCLN

    #combo.make 50 [0, 1, 4, 5] # wfuy
    combo.make 50 [6, 0, 5, 15] #BOOT
  ],
  layers = [
    [
            tapme.W, kc.F, kc.P,                           kc.L, kc.U, kc.Y,
      tapme.A, tapme.R, tapme.S, tapme.T, kc.G,           kc.M,  tapme.N, tapme.E, tapme.I,tapme.O, 
               kc.X, tapme.C, kc.D, kc.V,   kc.K,  kc.H, tapme.COMM, tapme.Z,
                           tapme.TLL, tapme.TLR,    tapme.TRL, tapme.TRR,
      #virtuals
      kc.Q, kc.B, kc.J, kc.QUOT, mod.lgui, kc.ENT, kc.SLSH, kc.Z, kc.DOT, kc.SCLN,
      #bootme
      tap.custom.fak.BOOT,
      
    ],
    [
      kc.ESC, kc.EQL, X, kc.N2, kc.N3, kc.N4,
      kc.QUOT & hold.trans, ks.TILD & hold.trans, kc.MINS & hold.trans, kc.SLSH & hold.trans, kc.BSLS, kc.N6, kc.N7 & hold.trans, kc.N8 & hold.trans, kc.N9 & hold.trans, kc.DOT & hold.trans,
      ks.LPRN, ks.RPRN & hold.trans, kc.LBRC, kc.RBRC, kc.N5, kc.N1, kc.N0 & hold.trans, kc.SCLN,
      X, X, X, X,
      # Combo [12, 13]
      X, X, X, X, me.MUTE, X, X, X, X, X,
      X, 
    ],
    [
      kc.ESC, kc.UP, X, kp.KP_2, kp.KP_3, kp.KP_4,
      kc.TAB, kc.LEFT, kc.DOWN, kc.RIGHT, X, kp.KP_6, kp.KP_7 & hold.trans, kp.KP_8 & hold.trans, kp.KP_9 & hold.trans, kp.KP_5 & hold.trans, #KP_ is right syntax
      X,X,kc.DEL ,kc.INS,kp.KP_1,kp.KP_0,kp.KP_COMMA,X,
      X,X,X,X,
      #virt
      X, X, X, X, me.MUTE, X, X, X, X, X,
      X, 
    ],
    [
      X, X, X, kp.F2, kp.F3, kp.F4,
      X, X, X, X, X, kp.F6, kp.F7, kp.F8, kp.F9, kp.F5,
      X,X,X,X,kc.F1,kc.F10,kc.F11,kc.F12,
      X,X,X,X,
      #virt
      X, X, X, X, X, X, X, X, X, X,
      X,
    ]
  ]
}
                            