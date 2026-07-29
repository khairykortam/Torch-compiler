BITS 64
segment .text
print:
    mov     r9, -3689348814741910323
    sub     rsp, 40
    mov     BYTE [rsp+31], 10
    lea     rcx, [rsp+30]
.L2:
    mov     rax, rdi
    lea     r8, [rsp+32]
    mul     r9
    mov     rax, rdi
    sub     r8, rcx
    shr     rdx, 3
    lea     rsi, [rdx+rdx*4]
    add     rsi, rsi
    sub     rax, rsi
    add     eax, 48
    mov     BYTE [rcx], al
    mov     rax, rdi
    mov     rdi, rdx
    mov     rdx, rcx
    sub     rcx, 1
    cmp     rax, 9
    ja      .L2
    lea     rax, [rsp+32]
    mov     edi, 1
    sub     rdx, rax
    xor     eax, eax
    lea     rsi, [rsp+32+rdx]
    mov     rdx, r8
    mov     rax, 1
    syscall
    add     rsp, 40
    ret
global _start
_start:
    mov [args_ptr], rsp
    mov rax, ret_stack_end
    mov [ret_stack_rsp], rax
addr_0:
addr_1:
    jmp addr_6
addr_2:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_4:
addr_5:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_6:
    jmp addr_15
addr_7:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_8:
addr_9:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_10:
addr_11:
addr_12:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_13:
addr_14:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_15:
    jmp addr_20
addr_16:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_17:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_18:
addr_19:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_20:
    jmp addr_24
addr_21:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_22:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_23:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_24:
    jmp addr_28
addr_25:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_26:
    pop rax
    pop rbx
    mov [rax], rbx
addr_27:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_28:
    jmp addr_32
addr_29:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_30:
    pop rax
    pop rbx
    mov [rax], rbx
addr_31:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_32:
    jmp addr_36
addr_33:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_34:
    pop rax
    pop rbx
    mov [rax], rbx
addr_35:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_36:
    jmp addr_45
addr_37:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_38:
    pop rax
    pop rbx
    push rax
    push rbx
addr_39:
addr_40:
    pop rax
    pop rbx
    push rax
    push rbx
addr_41:
addr_42:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_43:
addr_44:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_45:
    jmp addr_54
addr_46:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_47:
    pop rax
    pop rbx
    push rax
    push rbx
addr_48:
addr_49:
    pop rax
    pop rbx
    push rax
    push rbx
addr_50:
addr_51:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_52:
addr_53:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_54:
    jmp addr_62
addr_55:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_56:
    pop rax
    pop rbx
    push rax
    push rbx
addr_57:
addr_58:
    pop rax
    pop rbx
    push rax
    push rbx
addr_59:
addr_60:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_61:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_62:
    jmp addr_70
addr_63:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_64:
    pop rax
    pop rbx
    push rax
    push rbx
addr_65:
addr_66:
    pop rax
    pop rbx
    push rax
    push rbx
addr_67:
addr_68:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_69:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_70:
    jmp addr_76
addr_71:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_72:
addr_73:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_74:
addr_75:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_76:
    jmp addr_84
addr_77:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_78:
    pop rax
    pop rbx
    push rax
    push rbx
addr_79:
addr_80:
    pop rax
    pop rbx
    push rax
    push rbx
addr_81:
addr_82:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_83:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_84:
    jmp addr_95
addr_85:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_86:
    mov rax, 0
    push rax
addr_87:
addr_88:
    pop rax
    pop rbx
    push rax
    push rbx
addr_89:
addr_90:
    pop rax
    pop rbx
    push rax
    push rbx
addr_91:
addr_92:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_93:
addr_94:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_95:
    jmp addr_106
addr_96:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_97:
    mov rax, 8
    push rax
addr_98:
addr_99:
    pop rax
    pop rbx
    push rax
    push rbx
addr_100:
addr_101:
    pop rax
    pop rbx
    push rax
    push rbx
addr_102:
addr_103:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_104:
addr_105:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_106:
    jmp addr_117
addr_107:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_108:
    mov rax, 24
    push rax
addr_109:
addr_110:
    pop rax
    pop rbx
    push rax
    push rbx
addr_111:
addr_112:
    pop rax
    pop rbx
    push rax
    push rbx
addr_113:
addr_114:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_115:
addr_116:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_117:
    jmp addr_128
addr_118:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_119:
    mov rax, 16
    push rax
addr_120:
addr_121:
    pop rax
    pop rbx
    push rax
    push rbx
addr_122:
addr_123:
    pop rax
    pop rbx
    push rax
    push rbx
addr_124:
addr_125:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_126:
addr_127:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_128:
    jmp addr_139
addr_129:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_130:
    mov rax, 28
    push rax
addr_131:
addr_132:
    pop rax
    pop rbx
    push rax
    push rbx
addr_133:
addr_134:
    pop rax
    pop rbx
    push rax
    push rbx
addr_135:
addr_136:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_137:
addr_138:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_139:
    jmp addr_150
addr_140:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_141:
    mov rax, 32
    push rax
addr_142:
addr_143:
    pop rax
    pop rbx
    push rax
    push rbx
addr_144:
addr_145:
    pop rax
    pop rbx
    push rax
    push rbx
addr_146:
addr_147:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_148:
addr_149:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_150:
    jmp addr_161
addr_151:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_152:
    mov rax, 40
    push rax
addr_153:
addr_154:
    pop rax
    pop rbx
    push rax
    push rbx
addr_155:
addr_156:
    pop rax
    pop rbx
    push rax
    push rbx
addr_157:
addr_158:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_159:
addr_160:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_161:
    jmp addr_172
addr_162:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_163:
    mov rax, 48
    push rax
addr_164:
addr_165:
    pop rax
    pop rbx
    push rax
    push rbx
addr_166:
addr_167:
    pop rax
    pop rbx
    push rax
    push rbx
addr_168:
addr_169:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_170:
addr_171:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_172:
    jmp addr_185
addr_173:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_174:
addr_175:
    mov rax, 48
    push rax
addr_176:
addr_177:
    pop rax
    pop rbx
    push rax
    push rbx
addr_178:
addr_179:
    pop rax
    pop rbx
    push rax
    push rbx
addr_180:
addr_181:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_182:
addr_183:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_184:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_185:
    jmp addr_196
addr_186:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_187:
    mov rax, 56
    push rax
addr_188:
addr_189:
    pop rax
    pop rbx
    push rax
    push rbx
addr_190:
addr_191:
    pop rax
    pop rbx
    push rax
    push rbx
addr_192:
addr_193:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_194:
addr_195:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_196:
    jmp addr_207
addr_197:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_198:
    mov rax, 64
    push rax
addr_199:
addr_200:
    pop rax
    pop rbx
    push rax
    push rbx
addr_201:
addr_202:
    pop rax
    pop rbx
    push rax
    push rbx
addr_203:
addr_204:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_205:
addr_206:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_207:
    jmp addr_218
addr_208:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_209:
    mov rax, 72
    push rax
addr_210:
addr_211:
    pop rax
    pop rbx
    push rax
    push rbx
addr_212:
addr_213:
    pop rax
    pop rbx
    push rax
    push rbx
addr_214:
addr_215:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_216:
addr_217:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_218:
    jmp addr_229
addr_219:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_220:
    mov rax, 88
    push rax
addr_221:
addr_222:
    pop rax
    pop rbx
    push rax
    push rbx
addr_223:
addr_224:
    pop rax
    pop rbx
    push rax
    push rbx
addr_225:
addr_226:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_227:
addr_228:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_229:
    jmp addr_240
addr_230:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_231:
    mov rax, 104
    push rax
addr_232:
addr_233:
    pop rax
    pop rbx
    push rax
    push rbx
addr_234:
addr_235:
    pop rax
    pop rbx
    push rax
    push rbx
addr_236:
addr_237:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_238:
addr_239:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_240:
    jmp addr_245
addr_241:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_242:
    mov rax, 1
    push rax
addr_243:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_244:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_245:
    jmp addr_250
addr_246:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_247:
    mov rax, 0
    push rax
addr_248:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_249:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_250:
    jmp addr_255
addr_251:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_252:
    mov rax, 257
    push rax
addr_253:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_254:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_255:
    jmp addr_260
addr_256:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_257:
    mov rax, 16
    push rax
addr_258:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_259:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_260:
    jmp addr_265
addr_261:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_262:
    mov rax, 5
    push rax
addr_263:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_264:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_265:
    jmp addr_270
addr_266:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_267:
    mov rax, 4
    push rax
addr_268:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_269:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_270:
    jmp addr_275
addr_271:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_272:
    mov rax, 3
    push rax
addr_273:
    pop rax
    pop rdi
    syscall
    push rax
addr_274:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_275:
    jmp addr_281
addr_276:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_277:
    mov rax, 60
    push rax
addr_278:
    pop rax
    pop rdi
    syscall
    push rax
addr_279:
    pop rax
addr_280:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_281:
    jmp addr_286
addr_282:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_283:
    mov rax, 9
    push rax
addr_284:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    pop r8
    pop r9
    syscall
    push rax
addr_285:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_286:
    jmp addr_291
addr_287:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_288:
    mov rax, 230
    push rax
addr_289:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_290:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_291:
    jmp addr_296
addr_292:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_293:
    mov rax, 228
    push rax
addr_294:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_295:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_296:
    jmp addr_301
addr_297:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_298:
    mov rax, 57
    push rax
addr_299:
    pop rax
    syscall
    push rax
addr_300:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_301:
    jmp addr_306
addr_302:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_303:
    mov rax, 39
    push rax
addr_304:
    pop rax
    syscall
    push rax
addr_305:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_306:
    jmp addr_311
addr_307:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_308:
    mov rax, 59
    push rax
addr_309:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_310:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_311:
    jmp addr_316
addr_312:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_313:
    mov rax, 61
    push rax
addr_314:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_315:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_316:
    jmp addr_321
addr_317:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_318:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_319:
    pop rax
addr_320:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_321:
    jmp addr_327
addr_322:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_323:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_324:
    pop rax
    pop rbx
    push rax
    push rbx
addr_325:
    pop rax
addr_326:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_327:
    jmp addr_334
addr_328:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_329:
addr_330:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_331:
    pop rax
    pop rbx
    push rax
    push rbx
addr_332:
    pop rax
addr_333:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_334:
    jmp addr_340
addr_335:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_336:
addr_337:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_338:
    pop rax
addr_339:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_340:
    jmp addr_352
addr_341:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_342:
    mov rax, 8
    push rax
addr_343:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_344:
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_345:
addr_346:
addr_347:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_348:
addr_349:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_350:
addr_351:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_352:
    jmp addr_359
addr_353:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_354:
addr_355:
    mov rax, 1
    push rax
addr_356:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_357:
addr_358:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_359:
    jmp addr_368
addr_360:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_361:
    pop rax
    pop rbx
    push rax
    push rbx
addr_362:
addr_363:
    pop rax
    pop rbx
    push rax
    push rbx
addr_364:
addr_365:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_366:
addr_367:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_368:
    jmp addr_377
addr_369:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_370:
    pop rax
    pop rbx
    push rax
    push rbx
addr_371:
addr_372:
    pop rax
    pop rbx
    push rax
    push rbx
addr_373:
addr_374:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_375:
addr_376:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_377:
    jmp addr_385
addr_378:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_379:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_380:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_381:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_382:
    pop rax
    pop rbx
    push rax
    push rbx
addr_383:
    pop rax
    pop rbx
    mov [rax], rbx
addr_384:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_385:
    jmp addr_394
addr_386:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_387:
    pop rax
    push rax
    push rax
addr_388:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_389:
    mov rax, 1
    push rax
addr_390:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_391:
    pop rax
    pop rbx
    push rax
    push rbx
addr_392:
    pop rax
    pop rbx
    mov [rax], rbx
addr_393:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_394:
    jmp addr_403
addr_395:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_396:
    pop rax
    push rax
    push rax
addr_397:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_398:
    mov rax, 1
    push rax
addr_399:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_400:
    pop rax
    pop rbx
    push rax
    push rbx
addr_401:
    pop rax
    pop rbx
    mov [rax], rbx
addr_402:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_403:
    jmp addr_412
addr_404:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_405:
    pop rax
    push rax
    push rax
addr_406:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_407:
    mov rax, 1
    push rax
addr_408:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_409:
    pop rax
    pop rbx
    push rax
    push rbx
addr_410:
    pop rax
    pop rbx
    mov [rax], bl
addr_411:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_412:
    jmp addr_421
addr_413:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_414:
    pop rax
    push rax
    push rax
addr_415:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_416:
    mov rax, 1
    push rax
addr_417:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_418:
    pop rax
    pop rbx
    push rax
    push rbx
addr_419:
    pop rax
    pop rbx
    mov [rax], bl
addr_420:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_421:
    jmp addr_440
addr_422:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_423:
    pop rax
    push rax
    push rax
addr_424:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_425:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_426:
    pop rax
    pop rbx
    mov [rax], rbx
addr_427:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_428:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_429:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_430:
    pop rax
    pop rbx
    mov [rax], rbx
addr_431:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_432:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_433:
    pop rax
    pop rbx
    push rax
    push rbx
addr_434:
    pop rax
    pop rbx
    mov [rax], rbx
addr_435:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_436:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_437:
    pop rax
    pop rbx
    push rax
    push rbx
addr_438:
    pop rax
    pop rbx
    mov [rax], rbx
addr_439:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_440:
    jmp addr_445
addr_441:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_442:
    mov rax, mem
    add rax, 0
    push rax
addr_443:
    pop rax
    pop rbx
    mov [rax], rbx
addr_444:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_445:
    jmp addr_457
addr_446:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_447:
    mov rax, mem
    add rax, 0
    push rax
addr_448:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_449:
    mov rax, 6364136223846793005
    push rax
addr_450:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_451:
    mov rax, 1442695040888963407
    push rax
addr_452:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_453:
    pop rax
    push rax
    push rax
addr_454:
    mov rax, mem
    add rax, 0
    push rax
addr_455:
    pop rax
    pop rbx
    mov [rax], rbx
addr_456:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_457:
    jmp addr_483
addr_458:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_459:
    pop rax
    push rax
    push rax
addr_460:
addr_461:
    pop rax
    push rax
    push rax
addr_462:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_463:
    mov rax, 0
    push rax
addr_464:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_465:
    pop rax
    test rax, rax
    jz addr_475
addr_466:
    mov rax, 1
    push rax
addr_467:
addr_468:
    pop rax
    pop rbx
    push rax
    push rbx
addr_469:
addr_470:
    pop rax
    pop rbx
    push rax
    push rbx
addr_471:
addr_472:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_473:
addr_474:
    jmp addr_460
addr_475:
    pop rax
    pop rbx
    push rax
    push rbx
addr_476:
addr_477:
    pop rax
    pop rbx
    push rax
    push rbx
addr_478:
addr_479:
    pop rax
    pop rbx
    push rax
    push rbx
addr_480:
addr_481:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_482:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_483:
    jmp addr_544
addr_484:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_485:
addr_486:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_487:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_488:
    mov rax, 0
    push rax
addr_489:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_490:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_491:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_492:
    mov rax, 0
    push rax
addr_493:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_494:
addr_495:
    pop rax
    pop rbx
    push rax
    push rbx
addr_496:
addr_497:
    pop rax
    pop rbx
    push rax
    push rbx
addr_498:
addr_499:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_500:
addr_501:
    pop rax
    test rax, rax
    jz addr_508
addr_502:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_503:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_504:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_505:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_506:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_507:
    jmp addr_509
addr_508:
    mov rax, 0
    push rax
addr_509:
    jmp addr_510
addr_510:
    pop rax
    test rax, rax
    jz addr_529
addr_511:
    mov rax, 1
    push rax
addr_512:
addr_513:
    pop rax
    pop rbx
    push rax
    push rbx
addr_514:
addr_515:
    pop rax
    pop rbx
    push rax
    push rbx
addr_516:
addr_517:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_518:
addr_519:
    pop rax
    pop rbx
    push rax
    push rbx
addr_520:
    mov rax, 1
    push rax
addr_521:
addr_522:
    pop rax
    pop rbx
    push rax
    push rbx
addr_523:
addr_524:
    pop rax
    pop rbx
    push rax
    push rbx
addr_525:
addr_526:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_527:
addr_528:
    jmp addr_485
addr_529:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_530:
    mov rax, 0
    push rax
addr_531:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_532:
    pop rax
    pop rbx
    push rax
    push rbx
addr_533:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_534:
    mov rax, 0
    push rax
addr_535:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_536:
addr_537:
    pop rax
    pop rbx
    push rax
    push rbx
addr_538:
addr_539:
    pop rax
    pop rbx
    push rax
    push rbx
addr_540:
addr_541:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_542:
addr_543:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_544:
    jmp addr_550
addr_545:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_546:
    pop rax
    push rax
    push rax
addr_547:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_548:
    pop rax
    pop rbx
    push rax
    push rbx
addr_549:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_550:
    jmp addr_557
addr_551:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_552:
addr_553:
    mov rax, 1
    push rax
addr_554:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_555:
    pop rax
addr_556:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_557:
    jmp addr_566
addr_558:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_559:
    mov rax, 1
    push rax
addr_560:
addr_561:
addr_562:
    mov rax, 1
    push rax
addr_563:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_564:
    pop rax
addr_565:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_566:
    jmp addr_575
addr_567:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_568:
    mov rax, 2
    push rax
addr_569:
addr_570:
addr_571:
    mov rax, 1
    push rax
addr_572:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_573:
    pop rax
addr_574:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_575:
    jmp addr_582
addr_576:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_577:
    mov rax, 127
    push rax
addr_578:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_579:
    mov rax, 0
    push rax
addr_580:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_581:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_582:
    jmp addr_589
addr_583:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_584:
    mov rax, 65280
    push rax
addr_585:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_586:
    mov rax, 8
    push rax
addr_587:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_588:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_589:
    jmp addr_600
addr_590:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_591:
    mov rax, 0
    push rax
addr_592:
addr_593:
    pop rax
    pop rbx
    push rax
    push rbx
addr_594:
addr_595:
    pop rax
    pop rbx
    push rax
    push rbx
addr_596:
addr_597:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_598:
addr_599:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_600:
    jmp addr_611
addr_601:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_602:
    mov rax, 8
    push rax
addr_603:
addr_604:
    pop rax
    pop rbx
    push rax
    push rbx
addr_605:
addr_606:
    pop rax
    pop rbx
    push rax
    push rbx
addr_607:
addr_608:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_609:
addr_610:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_611:
    jmp addr_624
addr_612:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_613:
addr_614:
    mov rax, 0
    push rax
addr_615:
addr_616:
    pop rax
    pop rbx
    push rax
    push rbx
addr_617:
addr_618:
    pop rax
    pop rbx
    push rax
    push rbx
addr_619:
addr_620:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_621:
addr_622:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_623:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_624:
    jmp addr_638
addr_625:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_626:
addr_627:
    mov rax, 8
    push rax
addr_628:
addr_629:
    pop rax
    pop rbx
    push rax
    push rbx
addr_630:
addr_631:
    pop rax
    pop rbx
    push rax
    push rbx
addr_632:
addr_633:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_634:
addr_635:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_636:
addr_637:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_638:
    jmp addr_651
addr_639:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_640:
addr_641:
    mov rax, 0
    push rax
addr_642:
addr_643:
    pop rax
    pop rbx
    push rax
    push rbx
addr_644:
addr_645:
    pop rax
    pop rbx
    push rax
    push rbx
addr_646:
addr_647:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_648:
addr_649:
    pop rax
    pop rbx
    mov [rax], rbx
addr_650:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_651:
    jmp addr_664
addr_652:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_653:
addr_654:
    mov rax, 8
    push rax
addr_655:
addr_656:
    pop rax
    pop rbx
    push rax
    push rbx
addr_657:
addr_658:
    pop rax
    pop rbx
    push rax
    push rbx
addr_659:
addr_660:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_661:
addr_662:
    pop rax
    pop rbx
    mov [rax], rbx
addr_663:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_664:
    jmp addr_692
addr_665:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_666:
    pop rax
    push rax
    push rax
addr_667:
addr_668:
addr_669:
    mov rax, 0
    push rax
addr_670:
addr_671:
    pop rax
    pop rbx
    push rax
    push rbx
addr_672:
addr_673:
    pop rax
    pop rbx
    push rax
    push rbx
addr_674:
addr_675:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_676:
addr_677:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_678:
    pop rax
    pop rbx
    push rax
    push rbx
addr_679:
addr_680:
addr_681:
    mov rax, 8
    push rax
addr_682:
addr_683:
    pop rax
    pop rbx
    push rax
    push rbx
addr_684:
addr_685:
    pop rax
    pop rbx
    push rax
    push rbx
addr_686:
addr_687:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_688:
addr_689:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_690:
addr_691:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_692:
    jmp addr_720
addr_693:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_694:
    pop rax
    push rax
    push rax
addr_695:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_696:
    pop rax
    pop rbx
    push rax
    push rbx
addr_697:
addr_698:
addr_699:
    mov rax, 8
    push rax
addr_700:
addr_701:
    pop rax
    pop rbx
    push rax
    push rbx
addr_702:
addr_703:
    pop rax
    pop rbx
    push rax
    push rbx
addr_704:
addr_705:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_706:
addr_707:
    pop rax
    pop rbx
    mov [rax], rbx
addr_708:
addr_709:
addr_710:
    mov rax, 0
    push rax
addr_711:
addr_712:
    pop rax
    pop rbx
    push rax
    push rbx
addr_713:
addr_714:
    pop rax
    pop rbx
    push rax
    push rbx
addr_715:
addr_716:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_717:
addr_718:
    pop rax
    pop rbx
    mov [rax], rbx
addr_719:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_720:
    jmp addr_756
addr_721:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_722:
    pop rax
    push rax
    push rax
addr_723:
addr_724:
    mov rax, 0
    push rax
addr_725:
addr_726:
    pop rax
    pop rbx
    push rax
    push rbx
addr_727:
addr_728:
    pop rax
    pop rbx
    push rax
    push rbx
addr_729:
addr_730:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_731:
addr_732:
addr_733:
    pop rax
    push rax
    push rax
addr_734:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_735:
    mov rax, 1
    push rax
addr_736:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_737:
    pop rax
    pop rbx
    push rax
    push rbx
addr_738:
    pop rax
    pop rbx
    mov [rax], rbx
addr_739:
addr_740:
    mov rax, 8
    push rax
addr_741:
addr_742:
    pop rax
    pop rbx
    push rax
    push rbx
addr_743:
addr_744:
    pop rax
    pop rbx
    push rax
    push rbx
addr_745:
addr_746:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_747:
addr_748:
addr_749:
    pop rax
    push rax
    push rax
addr_750:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_751:
    mov rax, 1
    push rax
addr_752:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_753:
    pop rax
    pop rbx
    push rax
    push rbx
addr_754:
    pop rax
    pop rbx
    mov [rax], rbx
addr_755:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_756:
    jmp addr_832
addr_757:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_758:
addr_759:
    pop rax
    push rax
    push rax
addr_760:
addr_761:
addr_762:
    mov rax, 0
    push rax
addr_763:
addr_764:
    pop rax
    pop rbx
    push rax
    push rbx
addr_765:
addr_766:
    pop rax
    pop rbx
    push rax
    push rbx
addr_767:
addr_768:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_769:
addr_770:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_771:
    mov rax, 0
    push rax
addr_772:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_773:
    pop rax
    test rax, rax
    jz addr_791
addr_774:
    pop rax
    push rax
    push rax
addr_775:
addr_776:
addr_777:
    mov rax, 8
    push rax
addr_778:
addr_779:
    pop rax
    pop rbx
    push rax
    push rbx
addr_780:
addr_781:
    pop rax
    pop rbx
    push rax
    push rbx
addr_782:
addr_783:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_784:
addr_785:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_786:
addr_787:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_788:
    mov rax, 32
    push rax
addr_789:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_790:
    jmp addr_792
addr_791:
    mov rax, 0
    push rax
addr_792:
    jmp addr_793
addr_793:
    pop rax
    test rax, rax
    jz addr_830
addr_794:
    pop rax
    push rax
    push rax
addr_795:
addr_796:
    pop rax
    push rax
    push rax
addr_797:
addr_798:
    mov rax, 0
    push rax
addr_799:
addr_800:
    pop rax
    pop rbx
    push rax
    push rbx
addr_801:
addr_802:
    pop rax
    pop rbx
    push rax
    push rbx
addr_803:
addr_804:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_805:
addr_806:
addr_807:
    pop rax
    push rax
    push rax
addr_808:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_809:
    mov rax, 1
    push rax
addr_810:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_811:
    pop rax
    pop rbx
    push rax
    push rbx
addr_812:
    pop rax
    pop rbx
    mov [rax], rbx
addr_813:
addr_814:
    mov rax, 8
    push rax
addr_815:
addr_816:
    pop rax
    pop rbx
    push rax
    push rbx
addr_817:
addr_818:
    pop rax
    pop rbx
    push rax
    push rbx
addr_819:
addr_820:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_821:
addr_822:
addr_823:
    pop rax
    push rax
    push rax
addr_824:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_825:
    mov rax, 1
    push rax
addr_826:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_827:
    pop rax
    pop rbx
    push rax
    push rbx
addr_828:
    pop rax
    pop rbx
    mov [rax], rbx
addr_829:
    jmp addr_758
addr_830:
    pop rax
addr_831:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_832:
    jmp addr_1023
addr_833:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_834:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_835:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_836:
    pop rax
    pop rbx
    mov [rax], rbx
addr_837:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_838:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_839:
addr_840:
addr_841:
    mov rax, 8
    push rax
addr_842:
addr_843:
    pop rax
    pop rbx
    push rax
    push rbx
addr_844:
addr_845:
    pop rax
    pop rbx
    push rax
    push rbx
addr_846:
addr_847:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_848:
addr_849:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_850:
addr_851:
    pop rax
    pop rbx
    push rax
    push rbx
addr_852:
addr_853:
addr_854:
    mov rax, 8
    push rax
addr_855:
addr_856:
    pop rax
    pop rbx
    push rax
    push rbx
addr_857:
addr_858:
    pop rax
    pop rbx
    push rax
    push rbx
addr_859:
addr_860:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_861:
addr_862:
    pop rax
    pop rbx
    mov [rax], rbx
addr_863:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_864:
    mov rax, 0
    push rax
addr_865:
    pop rax
    pop rbx
    push rax
    push rbx
addr_866:
addr_867:
addr_868:
    mov rax, 0
    push rax
addr_869:
addr_870:
    pop rax
    pop rbx
    push rax
    push rbx
addr_871:
addr_872:
    pop rax
    pop rbx
    push rax
    push rbx
addr_873:
addr_874:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_875:
addr_876:
    pop rax
    pop rbx
    mov [rax], rbx
addr_877:
addr_878:
    pop rax
    push rax
    push rax
addr_879:
addr_880:
addr_881:
    mov rax, 0
    push rax
addr_882:
addr_883:
    pop rax
    pop rbx
    push rax
    push rbx
addr_884:
addr_885:
    pop rax
    pop rbx
    push rax
    push rbx
addr_886:
addr_887:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_888:
addr_889:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_890:
    mov rax, 0
    push rax
addr_891:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_892:
    pop rax
    test rax, rax
    jz addr_911
addr_893:
    pop rax
    push rax
    push rax
addr_894:
addr_895:
addr_896:
    mov rax, 8
    push rax
addr_897:
addr_898:
    pop rax
    pop rbx
    push rax
    push rbx
addr_899:
addr_900:
    pop rax
    pop rbx
    push rax
    push rbx
addr_901:
addr_902:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_903:
addr_904:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_905:
addr_906:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_907:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_908:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_909:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_910:
    jmp addr_912
addr_911:
    mov rax, 0
    push rax
addr_912:
    jmp addr_913
addr_913:
    pop rax
    test rax, rax
    jz addr_969
addr_914:
    pop rax
    push rax
    push rax
addr_915:
addr_916:
    pop rax
    push rax
    push rax
addr_917:
addr_918:
    mov rax, 0
    push rax
addr_919:
addr_920:
    pop rax
    pop rbx
    push rax
    push rbx
addr_921:
addr_922:
    pop rax
    pop rbx
    push rax
    push rbx
addr_923:
addr_924:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_925:
addr_926:
addr_927:
    pop rax
    push rax
    push rax
addr_928:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_929:
    mov rax, 1
    push rax
addr_930:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_931:
    pop rax
    pop rbx
    push rax
    push rbx
addr_932:
    pop rax
    pop rbx
    mov [rax], rbx
addr_933:
addr_934:
    mov rax, 8
    push rax
addr_935:
addr_936:
    pop rax
    pop rbx
    push rax
    push rbx
addr_937:
addr_938:
    pop rax
    pop rbx
    push rax
    push rbx
addr_939:
addr_940:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_941:
addr_942:
addr_943:
    pop rax
    push rax
    push rax
addr_944:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_945:
    mov rax, 1
    push rax
addr_946:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_947:
    pop rax
    pop rbx
    push rax
    push rbx
addr_948:
    pop rax
    pop rbx
    mov [rax], rbx
addr_949:
    pop rax
    pop rbx
    push rax
    push rbx
addr_950:
    pop rax
    push rax
    push rax
addr_951:
addr_952:
    mov rax, 0
    push rax
addr_953:
addr_954:
    pop rax
    pop rbx
    push rax
    push rbx
addr_955:
addr_956:
    pop rax
    pop rbx
    push rax
    push rbx
addr_957:
addr_958:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_959:
addr_960:
addr_961:
    pop rax
    push rax
    push rax
addr_962:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_963:
    mov rax, 1
    push rax
addr_964:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_965:
    pop rax
    pop rbx
    push rax
    push rbx
addr_966:
    pop rax
    pop rbx
    mov [rax], rbx
addr_967:
    pop rax
    pop rbx
    push rax
    push rbx
addr_968:
    jmp addr_877
addr_969:
    pop rax
    push rax
    push rax
addr_970:
addr_971:
addr_972:
    mov rax, 0
    push rax
addr_973:
addr_974:
    pop rax
    pop rbx
    push rax
    push rbx
addr_975:
addr_976:
    pop rax
    pop rbx
    push rax
    push rbx
addr_977:
addr_978:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_979:
addr_980:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_981:
    mov rax, 0
    push rax
addr_982:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_983:
    pop rax
    test rax, rax
    jz addr_1019
addr_984:
    pop rax
    push rax
    push rax
addr_985:
addr_986:
    pop rax
    push rax
    push rax
addr_987:
addr_988:
    mov rax, 0
    push rax
addr_989:
addr_990:
    pop rax
    pop rbx
    push rax
    push rbx
addr_991:
addr_992:
    pop rax
    pop rbx
    push rax
    push rbx
addr_993:
addr_994:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_995:
addr_996:
addr_997:
    pop rax
    push rax
    push rax
addr_998:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_999:
    mov rax, 1
    push rax
addr_1000:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1001:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1002:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1003:
addr_1004:
    mov rax, 8
    push rax
addr_1005:
addr_1006:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1007:
addr_1008:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1009:
addr_1010:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1011:
addr_1012:
addr_1013:
    pop rax
    push rax
    push rax
addr_1014:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1015:
    mov rax, 1
    push rax
addr_1016:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1017:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1018:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1019:
    jmp addr_1020
addr_1020:
    pop rax
addr_1021:
    pop rax
addr_1022:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_1023:
    jmp addr_1185
addr_1024:
    sub rsp, 32
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1025:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1026:
addr_1027:
    pop rax
    push rax
    push rax
addr_1028:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1029:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1030:
addr_1031:
addr_1032:
    mov rax, 8
    push rax
addr_1033:
addr_1034:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1035:
addr_1036:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1037:
addr_1038:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1039:
addr_1040:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1041:
addr_1042:
addr_1043:
    mov rax, 0
    push rax
addr_1044:
addr_1045:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1046:
addr_1047:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1048:
addr_1049:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1050:
addr_1051:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1052:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1053:
addr_1054:
    pop rax
    push rax
    push rax
addr_1055:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1056:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1057:
addr_1058:
addr_1059:
    mov rax, 8
    push rax
addr_1060:
addr_1061:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1062:
addr_1063:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1064:
addr_1065:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1066:
addr_1067:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1068:
addr_1069:
addr_1070:
    mov rax, 0
    push rax
addr_1071:
addr_1072:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1073:
addr_1074:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1075:
addr_1076:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1077:
addr_1078:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1079:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1080:
addr_1081:
addr_1082:
    mov rax, 0
    push rax
addr_1083:
addr_1084:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1085:
addr_1086:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1087:
addr_1088:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1089:
addr_1090:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1091:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1092:
addr_1093:
addr_1094:
    mov rax, 0
    push rax
addr_1095:
addr_1096:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1097:
addr_1098:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1099:
addr_1100:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1101:
addr_1102:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1103:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1104:
    pop rax
    test rax, rax
    jz addr_1182
addr_1105:
    mov rax, 0
    push rax
addr_1106:
addr_1107:
    pop rax
    push rax
    push rax
addr_1108:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1109:
addr_1110:
addr_1111:
    mov rax, 0
    push rax
addr_1112:
addr_1113:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1114:
addr_1115:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1116:
addr_1117:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1118:
addr_1119:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1120:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_1121:
    pop rax
    test rax, rax
    jz addr_1162
addr_1122:
    pop rax
    push rax
    push rax
addr_1123:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1124:
addr_1125:
addr_1126:
    mov rax, 8
    push rax
addr_1127:
addr_1128:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1129:
addr_1130:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1131:
addr_1132:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1133:
addr_1134:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1135:
addr_1136:
addr_1137:
addr_1138:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1139:
addr_1140:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1141:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1142:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1143:
addr_1144:
addr_1145:
    mov rax, 8
    push rax
addr_1146:
addr_1147:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1148:
addr_1149:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1150:
addr_1151:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1152:
addr_1153:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1154:
addr_1155:
addr_1156:
addr_1157:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1158:
addr_1159:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1160:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1161:
    jmp addr_1163
addr_1162:
    mov rax, 0
    push rax
addr_1163:
    jmp addr_1164
addr_1164:
    pop rax
    test rax, rax
    jz addr_1168
addr_1165:
    mov rax, 1
    push rax
addr_1166:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1167:
    jmp addr_1106
addr_1168:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1169:
addr_1170:
addr_1171:
    mov rax, 0
    push rax
addr_1172:
addr_1173:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1174:
addr_1175:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1176:
addr_1177:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1178:
addr_1179:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1180:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1181:
    jmp addr_1183
addr_1182:
    mov rax, 0
    push rax
addr_1183:
    jmp addr_1184
addr_1184:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 32
    ret
addr_1185:
    jmp addr_1199
addr_1186:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1187:
    mov rax, 0
    push rax
addr_1188:
addr_1189:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1190:
addr_1191:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1192:
addr_1193:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1194:
addr_1195:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1196:
    mov rax, 0
    push rax
addr_1197:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1198:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1199:
    jmp addr_1361
addr_1200:
    sub rsp, 32
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1201:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1202:
addr_1203:
    pop rax
    push rax
    push rax
addr_1204:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1205:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1206:
addr_1207:
addr_1208:
    mov rax, 8
    push rax
addr_1209:
addr_1210:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1211:
addr_1212:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1213:
addr_1214:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1215:
addr_1216:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1217:
addr_1218:
addr_1219:
    mov rax, 0
    push rax
addr_1220:
addr_1221:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1222:
addr_1223:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1224:
addr_1225:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1226:
addr_1227:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1228:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1229:
addr_1230:
    pop rax
    push rax
    push rax
addr_1231:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1232:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1233:
addr_1234:
addr_1235:
    mov rax, 8
    push rax
addr_1236:
addr_1237:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1238:
addr_1239:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1240:
addr_1241:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1242:
addr_1243:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1244:
addr_1245:
addr_1246:
    mov rax, 0
    push rax
addr_1247:
addr_1248:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1249:
addr_1250:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1251:
addr_1252:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1253:
addr_1254:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1255:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1256:
addr_1257:
addr_1258:
    mov rax, 0
    push rax
addr_1259:
addr_1260:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1261:
addr_1262:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1263:
addr_1264:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1265:
addr_1266:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1267:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1268:
addr_1269:
addr_1270:
    mov rax, 0
    push rax
addr_1271:
addr_1272:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1273:
addr_1274:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1275:
addr_1276:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1277:
addr_1278:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1279:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1280:
    pop rax
    test rax, rax
    jz addr_1358
addr_1281:
    mov rax, 0
    push rax
addr_1282:
addr_1283:
    pop rax
    push rax
    push rax
addr_1284:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1285:
addr_1286:
addr_1287:
    mov rax, 0
    push rax
addr_1288:
addr_1289:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1290:
addr_1291:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1292:
addr_1293:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1294:
addr_1295:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1296:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_1297:
    pop rax
    test rax, rax
    jz addr_1338
addr_1298:
    pop rax
    push rax
    push rax
addr_1299:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1300:
addr_1301:
addr_1302:
    mov rax, 8
    push rax
addr_1303:
addr_1304:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1305:
addr_1306:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1307:
addr_1308:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1309:
addr_1310:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1311:
addr_1312:
addr_1313:
addr_1314:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1315:
addr_1316:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1317:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1318:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1319:
addr_1320:
addr_1321:
    mov rax, 8
    push rax
addr_1322:
addr_1323:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1324:
addr_1325:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1326:
addr_1327:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1328:
addr_1329:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1330:
addr_1331:
addr_1332:
addr_1333:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1334:
addr_1335:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1336:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1337:
    jmp addr_1339
addr_1338:
    mov rax, 0
    push rax
addr_1339:
    jmp addr_1340
addr_1340:
    pop rax
    test rax, rax
    jz addr_1344
addr_1341:
    mov rax, 1
    push rax
addr_1342:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1343:
    jmp addr_1282
addr_1344:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1345:
addr_1346:
addr_1347:
    mov rax, 0
    push rax
addr_1348:
addr_1349:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1350:
addr_1351:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1352:
addr_1353:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1354:
addr_1355:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1356:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1357:
    jmp addr_1359
addr_1358:
    mov rax, 0
    push rax
addr_1359:
    jmp addr_1360
addr_1360:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 32
    ret
addr_1361:
    jmp addr_1377
addr_1362:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1363:
    pop rax
    push rax
    push rax
addr_1364:
    mov rax, 48
    push rax
addr_1365:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1366:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1367:
    mov rax, 57
    push rax
addr_1368:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1369:
addr_1370:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1371:
addr_1372:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1373:
addr_1374:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1375:
addr_1376:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1377:
    jmp addr_1415
addr_1378:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1379:
    pop rax
    push rax
    push rax
addr_1380:
    pop rax
    push rax
    push rax
addr_1381:
    mov rax, 97
    push rax
addr_1382:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1383:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1384:
    mov rax, 122
    push rax
addr_1385:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1386:
addr_1387:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1388:
addr_1389:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1390:
addr_1391:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1392:
addr_1393:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1394:
    pop rax
    push rax
    push rax
addr_1395:
    mov rax, 65
    push rax
addr_1396:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1397:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1398:
    mov rax, 90
    push rax
addr_1399:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1400:
addr_1401:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1402:
addr_1403:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1404:
addr_1405:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1406:
addr_1407:
addr_1408:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1409:
addr_1410:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1411:
addr_1412:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1413:
addr_1414:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1415:
    jmp addr_1477
addr_1416:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1417:
    pop rax
    push rax
    push rax
addr_1418:
addr_1419:
    pop rax
    push rax
    push rax
addr_1420:
    mov rax, 48
    push rax
addr_1421:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1422:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1423:
    mov rax, 57
    push rax
addr_1424:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1425:
addr_1426:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1427:
addr_1428:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1429:
addr_1430:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1431:
addr_1432:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1433:
addr_1434:
    pop rax
    push rax
    push rax
addr_1435:
    pop rax
    push rax
    push rax
addr_1436:
    mov rax, 97
    push rax
addr_1437:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1438:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1439:
    mov rax, 122
    push rax
addr_1440:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1441:
addr_1442:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1443:
addr_1444:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1445:
addr_1446:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1447:
addr_1448:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1449:
    pop rax
    push rax
    push rax
addr_1450:
    mov rax, 65
    push rax
addr_1451:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1452:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1453:
    mov rax, 90
    push rax
addr_1454:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1455:
addr_1456:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1457:
addr_1458:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1459:
addr_1460:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1461:
addr_1462:
addr_1463:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1464:
addr_1465:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1466:
addr_1467:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1468:
addr_1469:
addr_1470:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1471:
addr_1472:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1473:
addr_1474:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1475:
addr_1476:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1477:
    jmp addr_1625
addr_1478:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1479:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1480:
addr_1481:
    pop rax
    push rax
    push rax
addr_1482:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1483:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1484:
addr_1485:
addr_1486:
    mov rax, 8
    push rax
addr_1487:
addr_1488:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1489:
addr_1490:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1491:
addr_1492:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1493:
addr_1494:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1495:
addr_1496:
addr_1497:
    mov rax, 0
    push rax
addr_1498:
addr_1499:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1500:
addr_1501:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1502:
addr_1503:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1504:
addr_1505:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1506:
    mov rax, 0
    push rax
addr_1507:
addr_1508:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1509:
addr_1510:
addr_1511:
    mov rax, 0
    push rax
addr_1512:
addr_1513:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1514:
addr_1515:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1516:
addr_1517:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1518:
addr_1519:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1520:
    mov rax, 0
    push rax
addr_1521:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1522:
    pop rax
    test rax, rax
    jz addr_1552
addr_1523:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1524:
addr_1525:
addr_1526:
    mov rax, 8
    push rax
addr_1527:
addr_1528:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1529:
addr_1530:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1531:
addr_1532:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1533:
addr_1534:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1535:
addr_1536:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1537:
addr_1538:
    pop rax
    push rax
    push rax
addr_1539:
    mov rax, 48
    push rax
addr_1540:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1541:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1542:
    mov rax, 57
    push rax
addr_1543:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1544:
addr_1545:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1546:
addr_1547:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1548:
addr_1549:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1550:
addr_1551:
    jmp addr_1553
addr_1552:
    mov rax, 0
    push rax
addr_1553:
    jmp addr_1554
addr_1554:
    pop rax
    test rax, rax
    jz addr_1610
addr_1555:
    mov rax, 10
    push rax
addr_1556:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_1557:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1558:
addr_1559:
addr_1560:
    mov rax, 8
    push rax
addr_1561:
addr_1562:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1563:
addr_1564:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1565:
addr_1566:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1567:
addr_1568:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1569:
addr_1570:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1571:
    mov rax, 48
    push rax
addr_1572:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1573:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1574:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1575:
addr_1576:
    pop rax
    push rax
    push rax
addr_1577:
addr_1578:
    mov rax, 0
    push rax
addr_1579:
addr_1580:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1581:
addr_1582:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1583:
addr_1584:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1585:
addr_1586:
addr_1587:
    pop rax
    push rax
    push rax
addr_1588:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1589:
    mov rax, 1
    push rax
addr_1590:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1591:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1592:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1593:
addr_1594:
    mov rax, 8
    push rax
addr_1595:
addr_1596:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1597:
addr_1598:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1599:
addr_1600:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1601:
addr_1602:
addr_1603:
    pop rax
    push rax
    push rax
addr_1604:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1605:
    mov rax, 1
    push rax
addr_1606:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1607:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1608:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1609:
    jmp addr_1507
addr_1610:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1611:
addr_1612:
addr_1613:
    mov rax, 0
    push rax
addr_1614:
addr_1615:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1616:
addr_1617:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1618:
addr_1619:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1620:
addr_1621:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1622:
    mov rax, 0
    push rax
addr_1623:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1624:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_1625:
    jmp addr_1704
addr_1626:
    sub rsp, 40
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1627:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1628:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1629:
    pop rax
    push rax
    push rax
addr_1630:
    mov rax, 0
    push rax
addr_1631:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1632:
    pop rax
    test rax, rax
    jz addr_1642
addr_1633:
    mov rax, 1
    push rax
    push str_0
addr_1634:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1635:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1636:
addr_1637:
addr_1638:
    mov rax, 1
    push rax
addr_1639:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1640:
    pop rax
addr_1641:
    jmp addr_1701
addr_1642:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1643:
    mov rax, 32
    push rax
addr_1644:
addr_1645:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1646:
addr_1647:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1648:
addr_1649:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1650:
addr_1651:
addr_1652:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1653:
    mov rax, 0
    push rax
addr_1654:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1655:
    pop rax
    test rax, rax
    jz addr_1676
addr_1656:
    mov rax, 1
    push rax
addr_1657:
addr_1658:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1659:
addr_1660:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1661:
addr_1662:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1663:
addr_1664:
    pop rax
    push rax
    push rax
addr_1665:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1666:
    mov rax, 10
    push rax
addr_1667:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1668:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1669:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1670:
    mov rax, 48
    push rax
addr_1671:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1672:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1673:
    pop rax
    pop rbx
    mov [rax], bl
addr_1674:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1675:
    jmp addr_1651
addr_1676:
    pop rax
    push rax
    push rax
addr_1677:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1678:
    mov rax, 32
    push rax
addr_1679:
addr_1680:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1681:
addr_1682:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1683:
addr_1684:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1685:
addr_1686:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1687:
addr_1688:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1689:
addr_1690:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1691:
addr_1692:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1693:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1694:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1695:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1696:
addr_1697:
addr_1698:
    mov rax, 1
    push rax
addr_1699:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1700:
    pop rax
addr_1701:
    jmp addr_1702
addr_1702:
    pop rax
addr_1703:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 40
    ret
addr_1704:
    jmp addr_1803
addr_1705:
    sub rsp, 56
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1706:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1707:
addr_1708:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1709:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1710:
addr_1711:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1712:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1713:
addr_1714:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1715:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1716:
    mov rax, 32
    push rax
addr_1717:
addr_1718:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1719:
addr_1720:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1721:
addr_1722:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1723:
addr_1724:
addr_1725:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1726:
addr_1727:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1728:
    mov rax, 0
    push rax
addr_1729:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1730:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1731:
addr_1732:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1733:
    mov rax, 0
    push rax
addr_1734:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1735:
addr_1736:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1737:
addr_1738:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1739:
addr_1740:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1741:
addr_1742:
    pop rax
    test rax, rax
    jz addr_1777
addr_1743:
    mov rax, 1
    push rax
addr_1744:
addr_1745:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1746:
addr_1747:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1748:
addr_1749:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1750:
addr_1751:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1752:
addr_1753:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1754:
    mov rax, 10
    push rax
addr_1755:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1756:
    mov rax, 48
    push rax
addr_1757:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1758:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1759:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1760:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1761:
    pop rax
    pop rbx
    mov [rax], bl
addr_1762:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1763:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1764:
addr_1765:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1766:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1767:
    pop rax
addr_1768:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1769:
addr_1770:
    pop rax
    push rax
    push rax
addr_1771:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1772:
    mov rax, 1
    push rax
addr_1773:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1774:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1775:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1776:
    jmp addr_1724
addr_1777:
    pop rax
    push rax
    push rax
addr_1778:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1779:
    mov rax, 32
    push rax
addr_1780:
addr_1781:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1782:
addr_1783:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1784:
addr_1785:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1786:
addr_1787:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1788:
addr_1789:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1790:
addr_1791:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1792:
addr_1793:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1794:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1795:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1796:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1797:
addr_1798:
addr_1799:
    mov rax, 1
    push rax
addr_1800:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1801:
    pop rax
addr_1802:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 56
    ret
addr_1803:
    jmp addr_1808
addr_1804:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1805:
    mov rax, 1
    push rax
addr_1806:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1626
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1807:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1808:
    jmp addr_1813
addr_1809:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1810:
    mov rax, 1
    push rax
addr_1811:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1705
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1812:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1813:
    jmp addr_1818
addr_1814:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1815:
    mov rax, 2
    push rax
addr_1816:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1626
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1817:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1818:
    jmp addr_1865
addr_1819:
    sub rsp, 24
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1820:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1821:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1822:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1823:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1824:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1825:
addr_1826:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1827:
addr_1828:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1829:
addr_1830:
    pop rax
    push rax
    push rax
addr_1831:
    mov rax, 0
    push rax
addr_1832:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1833:
    pop rax
    test rax, rax
    jz addr_1863
addr_1834:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1835:
addr_1836:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1837:
addr_1838:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1839:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1840:
addr_1841:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1842:
addr_1843:
    pop rax
    pop rbx
    mov [rax], bl
addr_1844:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1845:
addr_1846:
    pop rax
    push rax
    push rax
addr_1847:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1848:
    mov rax, 1
    push rax
addr_1849:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1850:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1851:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1852:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1853:
addr_1854:
    pop rax
    push rax
    push rax
addr_1855:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1856:
    mov rax, 1
    push rax
addr_1857:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1858:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1859:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1860:
    mov rax, 1
    push rax
addr_1861:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1862:
    jmp addr_1829
addr_1863:
    pop rax
addr_1864:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 24
    ret
addr_1865:
    jmp addr_1901
addr_1866:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1867:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1868:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1869:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1870:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1871:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1872:
addr_1873:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1874:
addr_1875:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1876:
addr_1877:
    pop rax
    push rax
    push rax
addr_1878:
    mov rax, 0
    push rax
addr_1879:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1880:
    pop rax
    test rax, rax
    jz addr_1899
addr_1881:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1882:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1883:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1884:
addr_1885:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1886:
addr_1887:
    pop rax
    pop rbx
    mov [rax], bl
addr_1888:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1889:
addr_1890:
    pop rax
    push rax
    push rax
addr_1891:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1892:
    mov rax, 1
    push rax
addr_1893:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1894:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1895:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1896:
    mov rax, 1
    push rax
addr_1897:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1898:
    jmp addr_1876
addr_1899:
    pop rax
addr_1900:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_1901:
    jmp addr_2081
addr_1902:
    sub rsp, 48
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1903:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1904:
addr_1905:
    pop rax
    push rax
    push rax
addr_1906:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1907:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1908:
addr_1909:
addr_1910:
    mov rax, 8
    push rax
addr_1911:
addr_1912:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1913:
addr_1914:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1915:
addr_1916:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1917:
addr_1918:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1919:
addr_1920:
addr_1921:
    mov rax, 0
    push rax
addr_1922:
addr_1923:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1924:
addr_1925:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1926:
addr_1927:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1928:
addr_1929:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1930:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_1931:
addr_1932:
    pop rax
    push rax
    push rax
addr_1933:
addr_1934:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1935:
addr_1936:
    mov rax, 0
    push rax
addr_1937:
addr_1938:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1939:
addr_1940:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1941:
addr_1942:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1943:
    pop rax
    test rax, rax
    jz addr_2044
addr_1944:
    pop rax
    push rax
    push rax
addr_1945:
addr_1946:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1947:
addr_1948:
addr_1949:
    pop rax
    push rax
    push rax
addr_1950:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1951:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1952:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1953:
addr_1954:
    pop rax
    push rax
    push rax
addr_1955:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1956:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1957:
addr_1958:
addr_1959:
    mov rax, 8
    push rax
addr_1960:
addr_1961:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1962:
addr_1963:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1964:
addr_1965:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1966:
addr_1967:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1968:
addr_1969:
addr_1970:
    mov rax, 0
    push rax
addr_1971:
addr_1972:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1973:
addr_1974:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1975:
addr_1976:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1977:
addr_1978:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1979:
    mov rax, 61
    push rax
addr_1980:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1981:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1982:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_833
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1983:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1984:
addr_1985:
    pop rax
    push rax
    push rax
addr_1986:
addr_1987:
addr_1988:
    mov rax, 0
    push rax
addr_1989:
addr_1990:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1991:
addr_1992:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1993:
addr_1994:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1995:
addr_1996:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1997:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1998:
addr_1999:
addr_2000:
    mov rax, 8
    push rax
addr_2001:
addr_2002:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2003:
addr_2004:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2005:
addr_2006:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2007:
addr_2008:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2009:
addr_2010:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2011:
addr_2012:
    pop rax
    push rax
    push rax
addr_2013:
addr_2014:
addr_2015:
    mov rax, 0
    push rax
addr_2016:
addr_2017:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2018:
addr_2019:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2020:
addr_2021:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2022:
addr_2023:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2024:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2025:
addr_2026:
addr_2027:
    mov rax, 8
    push rax
addr_2028:
addr_2029:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2030:
addr_2031:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2032:
addr_2033:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2034:
addr_2035:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2036:
addr_2037:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1200
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2038:
addr_2039:
addr_2040:
    mov rax, 1
    push rax
addr_2041:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2042:
addr_2043:
    jmp addr_2045
addr_2044:
    mov rax, 0
    push rax
addr_2045:
    jmp addr_2046
addr_2046:
    pop rax
    test rax, rax
    jz addr_2056
addr_2047:
    mov rax, 8
    push rax
addr_2048:
addr_2049:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2050:
addr_2051:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2052:
addr_2053:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2054:
addr_2055:
    jmp addr_1931
addr_2056:
    mov rax, 0
    push rax
addr_2057:
addr_2058:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2059:
addr_2060:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2061:
addr_2062:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2063:
    pop rax
    test rax, rax
    jz addr_2078
addr_2064:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2065:
addr_2066:
addr_2067:
    mov rax, 8
    push rax
addr_2068:
addr_2069:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2070:
addr_2071:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2072:
addr_2073:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2074:
addr_2075:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2076:
addr_2077:
    jmp addr_2079
addr_2078:
    mov rax, 0
    push rax
addr_2079:
    jmp addr_2080
addr_2080:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 48
    ret
addr_2081:
    jmp addr_2087
addr_2082:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2083:
    mov rax, 0
    push rax
addr_2084:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2085:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2086:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2087:
    jmp addr_2100
addr_2088:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2089:
    mov rax, mem
    add rax, 8
    push rax
addr_2090:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2091:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2092:
addr_2093:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2094:
addr_2095:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2096:
addr_2097:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2098:
addr_2099:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2100:
    jmp addr_2113
addr_2101:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2102:
    mov rax, mem
    add rax, 8
    push rax
addr_2103:
addr_2104:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2105:
addr_2106:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2107:
addr_2108:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2109:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2110:
addr_2111:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2112:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2113:
    jmp addr_2165
addr_2114:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2115:
    pop rax
    push rax
    push rax
addr_2116:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2117:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2118:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2119:
    mov rax, 8388608
    push rax
addr_2120:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2121:
    pop rax
    test rax, rax
    jz addr_2143
addr_2122:
    mov rax, 17
    push rax
    push str_1
addr_2123:
addr_2124:
    mov rax, 2
    push rax
addr_2125:
addr_2126:
addr_2127:
    mov rax, 1
    push rax
addr_2128:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2129:
    pop rax
addr_2130:
    mov rax, 79
    push rax
    push str_2
addr_2131:
addr_2132:
    mov rax, 2
    push rax
addr_2133:
addr_2134:
addr_2135:
    mov rax, 1
    push rax
addr_2136:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2137:
    pop rax
addr_2138:
    mov rax, 1
    push rax
addr_2139:
addr_2140:
    mov rax, 60
    push rax
addr_2141:
    pop rax
    pop rdi
    syscall
    push rax
addr_2142:
    pop rax
addr_2143:
    jmp addr_2144
addr_2144:
    pop rax
    push rax
    push rax
addr_2145:
    mov rax, 0
    push rax
addr_2146:
addr_2147:
    mov rax, mem
    add rax, 8
    push rax
addr_2148:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2149:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2150:
addr_2151:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2152:
addr_2153:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2154:
addr_2155:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2156:
addr_2157:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1866
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2158:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2159:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2160:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2161:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2162:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2163:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2164:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2165:
    jmp addr_2173
addr_2166:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2167:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2168:
    mov rax, 1
    push rax
addr_2169:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2170:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2171:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2172:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2173:
    jmp addr_2179
addr_2174:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2175:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2176:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2177:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2178:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2179:
    jmp addr_2186
addr_2180:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2181:
    mov rax, 8
    push rax
addr_2182:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2183:
addr_2184:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2185:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2186:
    jmp addr_2406
addr_2187:
    sub rsp, 48
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2188:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2189:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2190:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2191:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2192:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_2193:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2194:
addr_2195:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2196:
addr_2197:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2198:
addr_2199:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2200:
addr_2201:
addr_2202:
    mov rax, 59
    push rax
addr_2203:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2204:
    pop rax
addr_2205:
    mov rax, 4
    push rax
    push str_3
addr_2206:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1902
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2207:
    pop rax
    push rax
    push rax
addr_2208:
    mov rax, 0
    push rax
addr_2209:
addr_2210:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2211:
addr_2212:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2213:
addr_2214:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2215:
    pop rax
    test rax, rax
    jz addr_2230
addr_2216:
    mov rax, 21
    push rax
    push str_4
addr_2217:
addr_2218:
    mov rax, 2
    push rax
addr_2219:
addr_2220:
addr_2221:
    mov rax, 1
    push rax
addr_2222:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2223:
    pop rax
addr_2224:
    mov rax, 1
    push rax
addr_2225:
addr_2226:
    mov rax, 60
    push rax
addr_2227:
    pop rax
    pop rdi
    syscall
    push rax
addr_2228:
    pop rax
addr_2229:
    jmp addr_2359
addr_2230:
    pop rax
    push rax
    push rax
addr_2231:
addr_2232:
    pop rax
    push rax
    push rax
addr_2233:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2234:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2235:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2236:
addr_2237:
    pop rax
    push rax
    push rax
addr_2238:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2239:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2240:
addr_2241:
addr_2242:
    mov rax, 8
    push rax
addr_2243:
addr_2244:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2245:
addr_2246:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2247:
addr_2248:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2249:
addr_2250:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2251:
addr_2252:
addr_2253:
    mov rax, 0
    push rax
addr_2254:
addr_2255:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2256:
addr_2257:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2258:
addr_2259:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2260:
addr_2261:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2262:
addr_2263:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2264:
addr_2265:
addr_2266:
    mov rax, 0
    push rax
addr_2267:
addr_2268:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2269:
addr_2270:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2271:
addr_2272:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2273:
addr_2274:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2275:
    mov rax, 0
    push rax
addr_2276:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2277:
    pop rax
    test rax, rax
    jz addr_2359
addr_2278:
    mov rax, 58
    push rax
addr_2279:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2280:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2281:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_833
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2282:
addr_2283:
    mov rax, mem
    add rax, 8
    push rax
addr_2284:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2285:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2286:
addr_2287:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2288:
addr_2289:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2290:
addr_2291:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2292:
addr_2293:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2294:
addr_2295:
    pop rax
    push rax
    push rax
addr_2296:
addr_2297:
addr_2298:
    mov rax, 0
    push rax
addr_2299:
addr_2300:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2301:
addr_2302:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2303:
addr_2304:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2305:
addr_2306:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2307:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2308:
addr_2309:
addr_2310:
    mov rax, 8
    push rax
addr_2311:
addr_2312:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2313:
addr_2314:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2315:
addr_2316:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2317:
addr_2318:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2319:
addr_2320:
addr_2321:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2322:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2323:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2324:
    pop rax
addr_2325:
    mov rax, 1
    push rax
    push str_5
addr_2326:
addr_2327:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2328:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2329:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2330:
    pop rax
addr_2331:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2332:
addr_2333:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2334:
addr_2335:
addr_2336:
    pop rax
    push rax
    push rax
addr_2337:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2338:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2339:
addr_2340:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2341:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2342:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2343:
    pop rax
addr_2344:
    mov rax, 1
    push rax
addr_2345:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2346:
    pop rax
addr_2347:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_2348:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2349:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2350:
addr_2351:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2352:
addr_2353:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2354:
addr_2355:
    mov rax, 59
    push rax
addr_2356:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2357:
    pop rax
addr_2358:
    jmp addr_2262
addr_2359:
    jmp addr_2360
addr_2360:
    pop rax
addr_2361:
    mov rax, 17
    push rax
    push str_6
addr_2362:
addr_2363:
    mov rax, 2
    push rax
addr_2364:
addr_2365:
addr_2366:
    mov rax, 1
    push rax
addr_2367:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2368:
    pop rax
addr_2369:
    mov rax, 36
    push rax
    push str_7
addr_2370:
addr_2371:
    mov rax, 2
    push rax
addr_2372:
addr_2373:
addr_2374:
    mov rax, 1
    push rax
addr_2375:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2376:
    pop rax
addr_2377:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2378:
addr_2379:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2380:
addr_2381:
addr_2382:
    pop rax
    push rax
    push rax
addr_2383:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2384:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2385:
addr_2386:
    mov rax, 2
    push rax
addr_2387:
addr_2388:
addr_2389:
    mov rax, 1
    push rax
addr_2390:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2391:
    pop rax
addr_2392:
    mov rax, 2
    push rax
    push str_8
addr_2393:
addr_2394:
    mov rax, 2
    push rax
addr_2395:
addr_2396:
addr_2397:
    mov rax, 1
    push rax
addr_2398:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2399:
    pop rax
addr_2400:
    mov rax, 1
    push rax
addr_2401:
addr_2402:
    mov rax, 60
    push rax
addr_2403:
    pop rax
    pop rdi
    syscall
    push rax
addr_2404:
    pop rax
addr_2405:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 48
    ret
addr_2406:
    jmp addr_2465
addr_2407:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2408:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2409:
addr_2410:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2411:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2412:
addr_2413:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2414:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2415:
addr_2416:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2417:
addr_2418:
addr_2419:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2420:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2421:
    pop rax
    test rax, rax
    jz addr_2459
addr_2422:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2423:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2424:
addr_2425:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2426:
addr_2427:
addr_2428:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2429:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_2430:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2431:
addr_2432:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2433:
addr_2434:
addr_2435:
addr_2436:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2437:
addr_2438:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2439:
    pop rax
addr_2440:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2441:
addr_2442:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2443:
addr_2444:
addr_2445:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2446:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2447:
addr_2448:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2449:
addr_2450:
addr_2451:
    pop rax
    push rax
    push rax
addr_2452:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2453:
    mov rax, 1
    push rax
addr_2454:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2455:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2456:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2457:
    mov rax, 1
    push rax
addr_2458:
    jmp addr_2463
addr_2459:
    pop rax
addr_2460:
    pop rax
addr_2461:
    mov rax, 0
    push rax
addr_2462:
    mov rax, 0
    push rax
addr_2463:
    jmp addr_2464
addr_2464:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_2465:
    jmp addr_2565
addr_2466:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2467:
    mov rax, 32
    push rax
addr_2468:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2469:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2470:
addr_2471:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2472:
    pop rax
    push rax
    push rax
addr_2473:
    mov rax, 0
    push rax
addr_2474:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2475:
    pop rax
    test rax, rax
    jz addr_2503
addr_2476:
    pop rax
addr_2477:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2478:
addr_2479:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2480:
addr_2481:
    mov rax, 32
    push rax
addr_2482:
addr_2483:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2484:
addr_2485:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2486:
addr_2487:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2488:
addr_2489:
    mov rax, 1
    push rax
addr_2490:
addr_2491:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2492:
addr_2493:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2494:
addr_2495:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2496:
addr_2497:
    mov rax, 48
    push rax
addr_2498:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2499:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2500:
    mov rax, 1
    push rax
addr_2501:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2502:
    jmp addr_2563
addr_2503:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2504:
addr_2505:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2506:
addr_2507:
    mov rax, 32
    push rax
addr_2508:
addr_2509:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2510:
addr_2511:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2512:
addr_2513:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2514:
addr_2515:
addr_2516:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2517:
    mov rax, 0
    push rax
addr_2518:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2519:
    pop rax
    test rax, rax
    jz addr_2540
addr_2520:
    mov rax, 1
    push rax
addr_2521:
addr_2522:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2523:
addr_2524:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2525:
addr_2526:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2527:
addr_2528:
    pop rax
    push rax
    push rax
addr_2529:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2530:
    mov rax, 10
    push rax
addr_2531:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_2532:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2533:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2534:
    mov rax, 48
    push rax
addr_2535:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2536:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2537:
    pop rax
    pop rbx
    mov [rax], bl
addr_2538:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2539:
    jmp addr_2515
addr_2540:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2541:
    pop rax
addr_2542:
    pop rax
    push rax
    push rax
addr_2543:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2544:
addr_2545:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2546:
addr_2547:
    mov rax, 32
    push rax
addr_2548:
addr_2549:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2550:
addr_2551:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2552:
addr_2553:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2554:
addr_2555:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2556:
addr_2557:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2558:
addr_2559:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2560:
addr_2561:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2562:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2563:
    jmp addr_2564
addr_2564:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_2565:
    jmp addr_2829
addr_2566:
    sub rsp, 176
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2567:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2568:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2569:
    mov rax, 0
    push rax
addr_2570:
    mov rax, 0
    push rax
addr_2571:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2572:
addr_2573:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2574:
addr_2575:
    mov rax, 0
    push rax
addr_2576:
    mov rax, 100
    push rax
addr_2577:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2578:
addr_2579:
    mov rax, 257
    push rax
addr_2580:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_2581:
    pop rax
    push rax
    push rax
addr_2582:
    mov rax, 0
    push rax
addr_2583:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2584:
    pop rax
    test rax, rax
    jz addr_2621
addr_2585:
    mov rax, 27
    push rax
    push str_9
addr_2586:
addr_2587:
    mov rax, 2
    push rax
addr_2588:
addr_2589:
addr_2590:
    mov rax, 1
    push rax
addr_2591:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2592:
    pop rax
addr_2593:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2594:
addr_2595:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2596:
addr_2597:
addr_2598:
    pop rax
    push rax
    push rax
addr_2599:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2600:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2601:
addr_2602:
    mov rax, 2
    push rax
addr_2603:
addr_2604:
addr_2605:
    mov rax, 1
    push rax
addr_2606:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2607:
    pop rax
addr_2608:
    mov rax, 1
    push rax
    push str_10
addr_2609:
addr_2610:
    mov rax, 2
    push rax
addr_2611:
addr_2612:
addr_2613:
    mov rax, 1
    push rax
addr_2614:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2615:
    pop rax
addr_2616:
    mov rax, 1
    push rax
addr_2617:
addr_2618:
    mov rax, 60
    push rax
addr_2619:
    pop rax
    pop rdi
    syscall
    push rax
addr_2620:
    pop rax
addr_2621:
    jmp addr_2622
addr_2622:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2623:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2624:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2625:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2626:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2627:
addr_2628:
    mov rax, 5
    push rax
addr_2629:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_2630:
    mov rax, 0
    push rax
addr_2631:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2632:
    pop rax
    test rax, rax
    jz addr_2669
addr_2633:
    mov rax, 44
    push rax
    push str_11
addr_2634:
addr_2635:
    mov rax, 2
    push rax
addr_2636:
addr_2637:
addr_2638:
    mov rax, 1
    push rax
addr_2639:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2640:
    pop rax
addr_2641:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2642:
addr_2643:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2644:
addr_2645:
addr_2646:
    pop rax
    push rax
    push rax
addr_2647:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2648:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2649:
addr_2650:
    mov rax, 2
    push rax
addr_2651:
addr_2652:
addr_2653:
    mov rax, 1
    push rax
addr_2654:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2655:
    pop rax
addr_2656:
    mov rax, 1
    push rax
    push str_12
addr_2657:
addr_2658:
    mov rax, 2
    push rax
addr_2659:
addr_2660:
addr_2661:
    mov rax, 1
    push rax
addr_2662:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2663:
    pop rax
addr_2664:
    mov rax, 1
    push rax
addr_2665:
addr_2666:
    mov rax, 60
    push rax
addr_2667:
    pop rax
    pop rdi
    syscall
    push rax
addr_2668:
    pop rax
addr_2669:
    jmp addr_2670
addr_2670:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2671:
addr_2672:
addr_2673:
    mov rax, 48
    push rax
addr_2674:
addr_2675:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2676:
addr_2677:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2678:
addr_2679:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2680:
addr_2681:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2682:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2683:
addr_2684:
addr_2685:
    mov rax, 0
    push rax
addr_2686:
addr_2687:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2688:
addr_2689:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2690:
addr_2691:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2692:
addr_2693:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2694:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2695:
addr_2696:
addr_2697:
    mov rax, 0
    push rax
addr_2698:
addr_2699:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2700:
addr_2701:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2702:
addr_2703:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2704:
addr_2705:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2706:
    mov rax, 0
    push rax
addr_2707:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2708:
    pop rax
    test rax, rax
    jz addr_2825
addr_2709:
    mov rax, 0
    push rax
addr_2710:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2711:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2712:
    mov rax, 2
    push rax
addr_2713:
    mov rax, 1
    push rax
addr_2714:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2715:
addr_2716:
addr_2717:
    mov rax, 0
    push rax
addr_2718:
addr_2719:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2720:
addr_2721:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2722:
addr_2723:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2724:
addr_2725:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2726:
    mov rax, 0
    push rax
addr_2727:
addr_2728:
    mov rax, 9
    push rax
addr_2729:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    pop r8
    pop r9
    syscall
    push rax
addr_2730:
addr_2731:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2732:
addr_2733:
addr_2734:
    mov rax, 8
    push rax
addr_2735:
addr_2736:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2737:
addr_2738:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2739:
addr_2740:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2741:
addr_2742:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2743:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2744:
addr_2745:
addr_2746:
    mov rax, 8
    push rax
addr_2747:
addr_2748:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2749:
addr_2750:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2751:
addr_2752:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2753:
addr_2754:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2755:
addr_2756:
addr_2757:
    mov rax, 0
    push rax
addr_2758:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2759:
    pop rax
    test rax, rax
    jz addr_2796
addr_2760:
    mov rax, 33
    push rax
    push str_13
addr_2761:
addr_2762:
    mov rax, 2
    push rax
addr_2763:
addr_2764:
addr_2765:
    mov rax, 1
    push rax
addr_2766:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2767:
    pop rax
addr_2768:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2769:
addr_2770:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2771:
addr_2772:
addr_2773:
    pop rax
    push rax
    push rax
addr_2774:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2775:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2776:
addr_2777:
    mov rax, 2
    push rax
addr_2778:
addr_2779:
addr_2780:
    mov rax, 1
    push rax
addr_2781:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2782:
    pop rax
addr_2783:
    mov rax, 1
    push rax
    push str_14
addr_2784:
addr_2785:
    mov rax, 2
    push rax
addr_2786:
addr_2787:
addr_2788:
    mov rax, 1
    push rax
addr_2789:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2790:
    pop rax
addr_2791:
    mov rax, 1
    push rax
addr_2792:
addr_2793:
    mov rax, 60
    push rax
addr_2794:
    pop rax
    pop rdi
    syscall
    push rax
addr_2795:
    pop rax
addr_2796:
    jmp addr_2797
addr_2797:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2798:
addr_2799:
    pop rax
    push rax
    push rax
addr_2800:
addr_2801:
addr_2802:
    mov rax, 0
    push rax
addr_2803:
addr_2804:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2805:
addr_2806:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2807:
addr_2808:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2809:
addr_2810:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2811:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2812:
addr_2813:
addr_2814:
    mov rax, 8
    push rax
addr_2815:
addr_2816:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2817:
addr_2818:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2819:
addr_2820:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2821:
addr_2822:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2823:
addr_2824:
    jmp addr_2827
addr_2825:
    mov rax, 0
    push rax
addr_2826:
    mov rax, 0
    push rax
addr_2827:
    jmp addr_2828
addr_2828:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 176
    ret
addr_2829:
    jmp addr_2877
addr_2830:
    sub rsp, 144
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2831:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2832:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2833:
addr_2834:
    mov rax, 4
    push rax
addr_2835:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_2836:
    pop rax
    push rax
    push rax
addr_2837:
    mov rax, 0
    push rax
addr_2838:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2839:
    pop rax
    test rax, rax
    jz addr_2843
addr_2840:
    pop rax
addr_2841:
    mov rax, 1
    push rax
addr_2842:
    jmp addr_2851
addr_2843:
    pop rax
    push rax
    push rax
addr_2844:
    mov rax, 0
    push rax
addr_2845:
    mov rax, 2
    push rax
addr_2846:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2847:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2848:
    pop rax
    test rax, rax
    jz addr_2852
addr_2849:
    pop rax
addr_2850:
    mov rax, 0
    push rax
addr_2851:
    jmp addr_2875
addr_2852:
    pop rax
addr_2853:
    mov rax, 0
    push rax
addr_2854:
    mov rax, 17
    push rax
    push str_15
addr_2855:
addr_2856:
    mov rax, 2
    push rax
addr_2857:
addr_2858:
addr_2859:
    mov rax, 1
    push rax
addr_2860:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2861:
    pop rax
addr_2862:
    mov rax, 28
    push rax
    push str_16
addr_2863:
addr_2864:
    mov rax, 2
    push rax
addr_2865:
addr_2866:
addr_2867:
    mov rax, 1
    push rax
addr_2868:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2869:
    pop rax
addr_2870:
    mov rax, 1
    push rax
addr_2871:
addr_2872:
    mov rax, 60
    push rax
addr_2873:
    pop rax
    pop rdi
    syscall
    push rax
addr_2874:
    pop rax
addr_2875:
    jmp addr_2876
addr_2876:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 144
    ret
addr_2877:
    jmp addr_2985
addr_2878:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2879:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2880:
addr_2881:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2882:
    mov rax, 10
    push rax
    push str_17
addr_2883:
addr_2884:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2885:
    mov rax, 0
    push rax
addr_2886:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2887:
    pop rax
    test rax, rax
    jz addr_2895
addr_2888:
    pop rax
    push rax
    push rax
addr_2889:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_2890:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2891:
addr_2892:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2893:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2894:
    jmp addr_2896
addr_2895:
    mov rax, 0
    push rax
addr_2896:
    jmp addr_2897
addr_2897:
    pop rax
    test rax, rax
    jz addr_2911
addr_2898:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2899:
    mov rax, 1
    push rax
addr_2900:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2901:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2902:
    mov rax, 1
    push rax
addr_2903:
addr_2904:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2905:
addr_2906:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2907:
addr_2908:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2909:
addr_2910:
    jmp addr_2883
addr_2911:
    pop rax
addr_2912:
    mov rax, 0
    push rax
addr_2913:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2914:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2915:
addr_2916:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2917:
addr_2918:
    pop rax
    push rax
    push rax
addr_2919:
addr_2920:
    pop rax
    push rax
    push rax
addr_2921:
    mov rax, 48
    push rax
addr_2922:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2923:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2924:
    mov rax, 57
    push rax
addr_2925:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2926:
addr_2927:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2928:
addr_2929:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2930:
addr_2931:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2932:
addr_2933:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2934:
addr_2935:
    pop rax
    push rax
    push rax
addr_2936:
    pop rax
    push rax
    push rax
addr_2937:
    mov rax, 97
    push rax
addr_2938:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2939:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2940:
    mov rax, 122
    push rax
addr_2941:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2942:
addr_2943:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2944:
addr_2945:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2946:
addr_2947:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2948:
addr_2949:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2950:
    pop rax
    push rax
    push rax
addr_2951:
    mov rax, 65
    push rax
addr_2952:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2953:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2954:
    mov rax, 90
    push rax
addr_2955:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2956:
addr_2957:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2958:
addr_2959:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2960:
addr_2961:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2962:
addr_2963:
addr_2964:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2965:
addr_2966:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2967:
addr_2968:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2969:
addr_2970:
addr_2971:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2972:
addr_2973:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2974:
addr_2975:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2976:
addr_2977:
addr_2978:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2979:
addr_2980:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2981:
addr_2982:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2983:
addr_2984:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_2985:
    jmp addr_3016
addr_2986:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2987:
addr_2988:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2989:
    mov rax, 0
    push rax
addr_2990:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2991:
    pop rax
    test rax, rax
    jz addr_2996
addr_2992:
    pop rax
    push rax
    push rax
addr_2993:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_2994:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2878
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2995:
    jmp addr_2997
addr_2996:
    mov rax, 0
    push rax
addr_2997:
    jmp addr_2998
addr_2998:
    pop rax
    test rax, rax
    jz addr_3012
addr_2999:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3000:
    mov rax, 1
    push rax
addr_3001:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3002:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3003:
    mov rax, 1
    push rax
addr_3004:
addr_3005:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3006:
addr_3007:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3008:
addr_3009:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3010:
addr_3011:
    jmp addr_2987
addr_3012:
    pop rax
addr_3013:
    mov rax, 0
    push rax
addr_3014:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3015:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3016:
    jmp addr_3118
addr_3017:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3018:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3019:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3020:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2986
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3021:
addr_3022:
addr_3023:
    mov rax, 1
    push rax
addr_3024:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3025:
addr_3026:
    pop rax
    test rax, rax
    jz addr_3116
addr_3027:
addr_3028:
    mov rax, mem
    add rax, 8
    push rax
addr_3029:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3030:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3031:
addr_3032:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3033:
addr_3034:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3035:
addr_3036:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3037:
addr_3038:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3039:
addr_3040:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3041:
    mov rax, 1
    push rax
    push str_18
addr_3042:
addr_3043:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3044:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3045:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3046:
    pop rax
addr_3047:
addr_3048:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3049:
    mov rax, 0
    push rax
addr_3050:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3051:
    pop rax
    test rax, rax
    jz addr_3083
addr_3052:
    pop rax
    push rax
    push rax
addr_3053:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3054:
    pop rax
    push rax
    push rax
addr_3055:
    mov rax, 39
    push rax
addr_3056:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3057:
    pop rax
    test rax, rax
    jz addr_3066
addr_3058:
    pop rax
addr_3059:
    mov rax, 5
    push rax
    push str_19
addr_3060:
addr_3061:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3062:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3063:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3064:
    pop rax
addr_3065:
    jmp addr_3069
addr_3066:
    mov rax, 1
    push rax
addr_3067:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3068:
    pop rax
    pop rbx
    mov [rax], bl
addr_3069:
    jmp addr_3070
addr_3070:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3071:
    mov rax, 1
    push rax
addr_3072:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3073:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3074:
    mov rax, 1
    push rax
addr_3075:
addr_3076:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3077:
addr_3078:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3079:
addr_3080:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3081:
addr_3082:
    jmp addr_3047
addr_3083:
    pop rax
addr_3084:
    pop rax
addr_3085:
    mov rax, 1
    push rax
    push str_20
addr_3086:
addr_3087:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3088:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2114
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3089:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1819
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3090:
    pop rax
addr_3091:
addr_3092:
    mov rax, mem
    add rax, 8
    push rax
addr_3093:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3094:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3095:
addr_3096:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3097:
addr_3098:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3099:
addr_3100:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3101:
addr_3102:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3103:
addr_3104:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3105:
addr_3106:
addr_3107:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3108:
addr_3109:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3110:
addr_3111:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3112:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3113:
addr_3114:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3115:
addr_3116:
    jmp addr_3117
addr_3117:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3118:
    jmp addr_3143
addr_3119:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3120:
    mov rax, mem
    add rax, 8388624
    push rax
addr_3121:
    mov rax, 1
    push rax
addr_3122:
addr_3123:
    mov rax, 228
    push rax
addr_3124:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_3125:
    mov rax, 0
    push rax
addr_3126:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3127:
    pop rax
    test rax, rax
    jz addr_3141
addr_3128:
    mov rax, 64
    push rax
    push str_21
addr_3129:
addr_3130:
    mov rax, 2
    push rax
addr_3131:
addr_3132:
addr_3133:
    mov rax, 1
    push rax
addr_3134:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3135:
    pop rax
addr_3136:
    mov rax, 1
    push rax
addr_3137:
addr_3138:
    mov rax, 60
    push rax
addr_3139:
    pop rax
    pop rdi
    syscall
    push rax
addr_3140:
    pop rax
addr_3141:
    jmp addr_3142
addr_3142:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3143:
    jmp addr_3277
addr_3144:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3145:
addr_3146:
addr_3147:
    mov rax, 1
    push rax
addr_3148:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3149:
addr_3150:
    pop rax
    test rax, rax
    jz addr_3273
addr_3151:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3152:
    mov rax, 1
    push rax
addr_3153:
addr_3154:
    mov rax, 228
    push rax
addr_3155:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_3156:
    mov rax, 0
    push rax
addr_3157:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3158:
    pop rax
    test rax, rax
    jz addr_3172
addr_3159:
    mov rax, 62
    push rax
    push str_22
addr_3160:
addr_3161:
    mov rax, 2
    push rax
addr_3162:
addr_3163:
addr_3164:
    mov rax, 1
    push rax
addr_3165:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3166:
    pop rax
addr_3167:
    mov rax, 1
    push rax
addr_3168:
addr_3169:
    mov rax, 60
    push rax
addr_3170:
    pop rax
    pop rdi
    syscall
    push rax
addr_3171:
    pop rax
addr_3172:
    jmp addr_3173
addr_3173:
addr_3174:
    mov rax, 1
    push rax
addr_3175:
addr_3176:
addr_3177:
    mov rax, 1
    push rax
addr_3178:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3179:
    pop rax
addr_3180:
    mov rax, 6
    push rax
    push str_23
addr_3181:
addr_3182:
    mov rax, 1
    push rax
addr_3183:
addr_3184:
addr_3185:
    mov rax, 1
    push rax
addr_3186:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3187:
    pop rax
addr_3188:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3189:
    mov rax, 0
    push rax
addr_3190:
addr_3191:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3192:
addr_3193:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3194:
addr_3195:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3196:
addr_3197:
addr_3198:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3199:
    mov rax, mem
    add rax, 8388624
    push rax
addr_3200:
    mov rax, 0
    push rax
addr_3201:
addr_3202:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3203:
addr_3204:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3205:
addr_3206:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3207:
addr_3208:
addr_3209:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3210:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3211:
    mov rax, 1000000000
    push rax
addr_3212:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_3213:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3214:
    mov rax, 8
    push rax
addr_3215:
addr_3216:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3217:
addr_3218:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3219:
addr_3220:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3221:
addr_3222:
addr_3223:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3224:
    mov rax, mem
    add rax, 8388624
    push rax
addr_3225:
    mov rax, 8
    push rax
addr_3226:
addr_3227:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3228:
addr_3229:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3230:
addr_3231:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3232:
addr_3233:
addr_3234:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3235:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3236:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3237:
    pop rax
    push rax
    push rax
addr_3238:
    mov rax, 1000000000
    push rax
addr_3239:
addr_3240:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_3241:
    pop rax
addr_3242:
addr_3243:
    mov rax, 1
    push rax
addr_3244:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1626
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3245:
    mov rax, 1
    push rax
    push str_24
addr_3246:
addr_3247:
    mov rax, 1
    push rax
addr_3248:
addr_3249:
addr_3250:
    mov rax, 1
    push rax
addr_3251:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3252:
    pop rax
addr_3253:
    pop rax
    push rax
    push rax
addr_3254:
    mov rax, 1000000000
    push rax
addr_3255:
addr_3256:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_3257:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3258:
    pop rax
addr_3259:
    mov rax, 9
    push rax
addr_3260:
addr_3261:
    mov rax, 1
    push rax
addr_3262:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1705
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3263:
    mov rax, 6
    push rax
    push str_25
addr_3264:
addr_3265:
    mov rax, 1
    push rax
addr_3266:
addr_3267:
addr_3268:
    mov rax, 1
    push rax
addr_3269:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3270:
    pop rax
addr_3271:
    pop rax
addr_3272:
    jmp addr_3275
addr_3273:
    pop rax
addr_3274:
    pop rax
addr_3275:
    jmp addr_3276
addr_3276:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_3277:
    jmp addr_3336
addr_3278:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3279:
addr_3280:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3281:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3282:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3283:
    pop rax
    push rax
    push rax
addr_3284:
    mov rax, 0
    push rax
addr_3285:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3286:
    pop rax
    test rax, rax
    jz addr_3300
addr_3287:
    mov rax, 1
    push rax
addr_3288:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3289:
addr_3290:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3291:
addr_3292:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3293:
addr_3294:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3295:
addr_3296:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3297:
    mov rax, 47
    push rax
addr_3298:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3299:
    jmp addr_3303
addr_3300:
    pop rax
addr_3301:
    pop rax
addr_3302:
    mov rax, 0
    push rax
addr_3303:
    jmp addr_3304
addr_3304:
    pop rax
    test rax, rax
    jz addr_3310
addr_3305:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3306:
    mov rax, 1
    push rax
addr_3307:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3308:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3309:
    jmp addr_3279
addr_3310:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3311:
    pop rax
    push rax
    push rax
addr_3312:
    mov rax, 0
    push rax
addr_3313:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3314:
    pop rax
    test rax, rax
    jz addr_3333
addr_3315:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3316:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3317:
    mov rax, 1
    push rax
addr_3318:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3319:
addr_3320:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3321:
addr_3322:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3323:
addr_3324:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3325:
addr_3326:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3327:
    mov rax, 47
    push rax
addr_3328:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3329:
    pop rax
    test rax, rax
    jz addr_3332
addr_3330:
    mov rax, 1
    push rax
addr_3331:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3332:
    jmp addr_3333
addr_3333:
    jmp addr_3334
addr_3334:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3335:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3336:
    jmp addr_3472
addr_3337:
    sub rsp, 24
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3338:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3339:
addr_3340:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3341:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3342:
addr_3343:
    pop rax
    push rax
    push rax
addr_3344:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_3345:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3346:
addr_3347:
addr_3348:
    mov rax, 8
    push rax
addr_3349:
addr_3350:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3351:
addr_3352:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3353:
addr_3354:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3355:
addr_3356:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3357:
addr_3358:
addr_3359:
    mov rax, 0
    push rax
addr_3360:
addr_3361:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3362:
addr_3363:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3364:
addr_3365:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3366:
addr_3367:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3368:
    mov rax, 0
    push rax
addr_3369:
addr_3370:
    pop rax
    push rax
    push rax
addr_3371:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3372:
addr_3373:
addr_3374:
    mov rax, 0
    push rax
addr_3375:
addr_3376:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3377:
addr_3378:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3379:
addr_3380:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3381:
addr_3382:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3383:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3384:
    pop rax
    test rax, rax
    jz addr_3428
addr_3385:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3386:
addr_3387:
addr_3388:
    mov rax, 0
    push rax
addr_3389:
addr_3390:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3391:
addr_3392:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3393:
addr_3394:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3395:
addr_3396:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3397:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3398:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3399:
    mov rax, 1
    push rax
addr_3400:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3401:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3402:
addr_3403:
addr_3404:
    mov rax, 8
    push rax
addr_3405:
addr_3406:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3407:
addr_3408:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3409:
addr_3410:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3411:
addr_3412:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3413:
addr_3414:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3415:
addr_3416:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3417:
addr_3418:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3419:
addr_3420:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3421:
addr_3422:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3423:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3424:
addr_3425:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3426:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3427:
    jmp addr_3429
addr_3428:
    mov rax, 0
    push rax
addr_3429:
    jmp addr_3430
addr_3430:
    pop rax
    test rax, rax
    jz addr_3434
addr_3431:
    mov rax, 1
    push rax
addr_3432:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3433:
    jmp addr_3369
addr_3434:
    pop rax
    push rax
    push rax
addr_3435:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3436:
addr_3437:
addr_3438:
    mov rax, 0
    push rax
addr_3439:
addr_3440:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3441:
addr_3442:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3443:
addr_3444:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3445:
addr_3446:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3447:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3448:
    pop rax
    test rax, rax
    jz addr_3466
addr_3449:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3450:
addr_3451:
addr_3452:
    mov rax, 0
    push rax
addr_3453:
addr_3454:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3455:
addr_3456:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3457:
addr_3458:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3459:
addr_3460:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3461:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3462:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3463:
    mov rax, 1
    push rax
addr_3464:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3465:
    jmp addr_3470
addr_3466:
    pop rax
addr_3467:
    mov rax, 0
    push rax
addr_3468:
    mov rax, 1
    push rax
addr_3469:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3470:
    jmp addr_3471
addr_3471:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 24
    ret
addr_3472:
    jmp addr_3486
addr_3473:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3474:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3475:
    pop rax
    pop rbx
    mov [rax], bl
addr_3476:
    mov rax, 1
    push rax
addr_3477:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3478:
addr_3479:
    mov rax, 1
    push rax
addr_3480:
addr_3481:
addr_3482:
    mov rax, 1
    push rax
addr_3483:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3484:
    pop rax
addr_3485:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3486:
    jmp addr_3624
addr_3487:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3488:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3489:
addr_3490:
    pop rax
    push rax
    push rax
addr_3491:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_3492:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3493:
addr_3494:
addr_3495:
    mov rax, 8
    push rax
addr_3496:
addr_3497:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3498:
addr_3499:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3500:
addr_3501:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3502:
addr_3503:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3504:
addr_3505:
addr_3506:
    mov rax, 0
    push rax
addr_3507:
addr_3508:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3509:
addr_3510:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3511:
addr_3512:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3513:
addr_3514:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3515:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3516:
addr_3517:
    pop rax
    push rax
    push rax
addr_3518:
addr_3519:
addr_3520:
    mov rax, 0
    push rax
addr_3521:
addr_3522:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3523:
addr_3524:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3525:
addr_3526:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3527:
addr_3528:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3529:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3530:
addr_3531:
addr_3532:
    mov rax, 8
    push rax
addr_3533:
addr_3534:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3535:
addr_3536:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3537:
addr_3538:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3539:
addr_3540:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3541:
addr_3542:
    mov rax, 47
    push rax
addr_3543:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3337
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3544:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3545:
addr_3546:
    pop rax
    push rax
    push rax
addr_3547:
addr_3548:
addr_3549:
    mov rax, 0
    push rax
addr_3550:
addr_3551:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3552:
addr_3553:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3554:
addr_3555:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3556:
addr_3557:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3558:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3559:
addr_3560:
addr_3561:
    mov rax, 8
    push rax
addr_3562:
addr_3563:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3564:
addr_3565:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3566:
addr_3567:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3568:
addr_3569:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3570:
addr_3571:
    mov rax, 46
    push rax
addr_3572:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3337
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3573:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3574:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3575:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3576:
    pop rax
    test rax, rax
    jz addr_3593
addr_3577:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3578:
    pop rax
addr_3579:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3580:
addr_3581:
addr_3582:
    mov rax, 8
    push rax
addr_3583:
addr_3584:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3585:
addr_3586:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3587:
addr_3588:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3589:
addr_3590:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3591:
addr_3592:
    jmp addr_3622
addr_3593:
    pop rax
addr_3594:
    pop rax
addr_3595:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3596:
addr_3597:
    pop rax
    push rax
    push rax
addr_3598:
addr_3599:
addr_3600:
    mov rax, 0
    push rax
addr_3601:
addr_3602:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3603:
addr_3604:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3605:
addr_3606:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3607:
addr_3608:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3609:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3610:
addr_3611:
addr_3612:
    mov rax, 8
    push rax
addr_3613:
addr_3614:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3615:
addr_3616:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3617:
addr_3618:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3619:
addr_3620:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3621:
addr_3622:
    jmp addr_3623
addr_3623:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_3624:
    jmp addr_3778
addr_3625:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3626:
    pop rax
    test rax, rax
    jz addr_3683
addr_3627:
    mov rax, 5
    push rax
    push str_26
addr_3628:
addr_3629:
    mov rax, 1
    push rax
addr_3630:
addr_3631:
addr_3632:
    mov rax, 1
    push rax
addr_3633:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3634:
    pop rax
addr_3635:
    pop rax
    push rax
    push rax
addr_3636:
addr_3637:
    pop rax
    push rax
    push rax
addr_3638:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3639:
    mov rax, 0
    push rax
addr_3640:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3641:
    pop rax
    test rax, rax
    jz addr_3674
addr_3642:
    mov rax, 1
    push rax
    push str_27
addr_3643:
addr_3644:
    mov rax, 1
    push rax
addr_3645:
addr_3646:
addr_3647:
    mov rax, 1
    push rax
addr_3648:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3649:
    pop rax
addr_3650:
    pop rax
    push rax
    push rax
addr_3651:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3652:
addr_3653:
addr_3654:
    pop rax
    push rax
    push rax
addr_3655:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_458
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3656:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3657:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3017
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3658:
addr_3659:
    mov rax, 1
    push rax
addr_3660:
addr_3661:
addr_3662:
    mov rax, 1
    push rax
addr_3663:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3664:
    pop rax
addr_3665:
    mov rax, 8
    push rax
addr_3666:
addr_3667:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3668:
addr_3669:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3670:
addr_3671:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3672:
addr_3673:
    jmp addr_3636
addr_3674:
    pop rax
addr_3675:
    mov rax, 1
    push rax
    push str_28
addr_3676:
addr_3677:
    mov rax, 1
    push rax
addr_3678:
addr_3679:
addr_3680:
    mov rax, 1
    push rax
addr_3681:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3682:
    pop rax
addr_3683:
    jmp addr_3684
addr_3684:
addr_3685:
    mov rax, 57
    push rax
addr_3686:
    pop rax
    syscall
    push rax
addr_3687:
    pop rax
    push rax
    push rax
addr_3688:
    mov rax, 0
    push rax
addr_3689:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3690:
    pop rax
    test rax, rax
    jz addr_3699
addr_3691:
    pop rax
addr_3692:
    pop rax
    push rax
    push rax
addr_3693:
addr_3694:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3695:
addr_3696:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3697:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2187
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3698:
    jmp addr_3760
addr_3699:
    pop rax
    push rax
    push rax
addr_3700:
    mov rax, 0
    push rax
addr_3701:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3702:
    pop rax
    test rax, rax
    jz addr_3761
addr_3703:
    pop rax
addr_3704:
    pop rax
addr_3705:
    mov rax, 0
    push rax
addr_3706:
    mov rax, 0
    push rax
addr_3707:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3708:
    mov rax, 0
    push rax
addr_3709:
    mov rax, 1
    push rax
addr_3710:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3711:
addr_3712:
    mov rax, 61
    push rax
addr_3713:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_3714:
    mov rax, 0
    push rax
addr_3715:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3716:
    pop rax
    test rax, rax
    jz addr_3730
addr_3717:
    mov rax, 70
    push rax
    push str_29
addr_3718:
addr_3719:
    mov rax, 2
    push rax
addr_3720:
addr_3721:
addr_3722:
    mov rax, 1
    push rax
addr_3723:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3724:
    pop rax
addr_3725:
    mov rax, 1
    push rax
addr_3726:
addr_3727:
    mov rax, 60
    push rax
addr_3728:
    pop rax
    pop rdi
    syscall
    push rax
addr_3729:
    pop rax
addr_3730:
    jmp addr_3731
addr_3731:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3732:
addr_3733:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3734:
    pop rax
    push rax
    push rax
addr_3735:
addr_3736:
    mov rax, 127
    push rax
addr_3737:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3738:
    mov rax, 0
    push rax
addr_3739:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3740:
    pop rax
    test rax, rax
    jz addr_3758
addr_3741:
    pop rax
    push rax
    push rax
addr_3742:
addr_3743:
    mov rax, 65280
    push rax
addr_3744:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3745:
    mov rax, 8
    push rax
addr_3746:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_3747:
    pop rax
    push rax
    push rax
addr_3748:
    mov rax, 0
    push rax
addr_3749:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3750:
    pop rax
    test rax, rax
    jz addr_3756
addr_3751:
    pop rax
    push rax
    push rax
addr_3752:
addr_3753:
    mov rax, 60
    push rax
addr_3754:
    pop rax
    pop rdi
    syscall
    push rax
addr_3755:
    pop rax
addr_3756:
    jmp addr_3757
addr_3757:
    pop rax
addr_3758:
    jmp addr_3759
addr_3759:
    pop rax
addr_3760:
    jmp addr_3776
addr_3761:
    pop rax
addr_3762:
    pop rax
addr_3763:
    mov rax, 31
    push rax
    push str_30
addr_3764:
addr_3765:
    mov rax, 2
    push rax
addr_3766:
addr_3767:
addr_3768:
    mov rax, 1
    push rax
addr_3769:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3770:
    pop rax
addr_3771:
    mov rax, 1
    push rax
addr_3772:
addr_3773:
    mov rax, 60
    push rax
addr_3774:
    pop rax
    pop rdi
    syscall
    push rax
addr_3775:
    pop rax
addr_3776:
    jmp addr_3777
addr_3777:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3778:
    mov rax, 13
    push rax
    push str_31
addr_3779:
addr_3780:
    mov rax, 1
    push rax
addr_3781:
addr_3782:
addr_3783:
    mov rax, 1
    push rax
addr_3784:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3785:
    pop rax
addr_3786:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 48
str_1: db 46,47,115,116,100,46,116,111,114,99,104,58,53,55,52,58,53
str_2: db 58,32,84,101,109,112,111,114,97,114,121,32,109,101,109,111,114,121,32,98,117,102,102,101,114,32,99,97,112,97,99,105,116,121,32,101,120,99,101,101,100,101,100,46,32,78,101,101,100,32,116,111,32,99,97,108,108,32,116,109,112,45,99,108,101,97,110,32,109,111,114,101,32,111,102,116,101,110,10
str_3: db 80,65,84,72
str_4: db 67,111,117,108,100,32,110,111,116,32,102,105,110,100,32,36,80,65,84,72,10
str_5: db 47
str_6: db 46,47,115,116,100,46,116,111,114,99,104,58,54,50,57,58,51
str_7: db 58,32,69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,102,105,110,100,32,101,120,101,99,117,116,97,98,108,101,32,96
str_8: db 96,10
str_9: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,111,112,101,110,32,102,105,108,101,32
str_10: db 10
str_11: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,100,101,116,101,114,109,105,110,101,32,116,104,101,32,115,105,122,101,32,111,102,32,102,105,108,101,32
str_12: db 10
str_13: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,109,101,109,111,114,121,32,109,97,112,32,102,105,108,101,32
str_14: db 10
str_15: db 46,47,115,116,100,46,116,111,114,99,104,58,55,54,49,58,53
str_16: db 58,32,69,82,82,79,82,58,32,63,102,105,108,101,45,101,120,105,115,116,32,102,97,105,108,101,100,10
str_17: db 64,37,43,61,58,44,46,47,45,95
str_18: db 39
str_19: db 39,34,39,34,39
str_20: db 39
str_21: db 69,82,82,79,82,58,32,116,105,109,101,105,116,47,115,116,97,114,116,58,32,99,111,117,108,100,32,110,111,116,32,103,101,116,32,99,117,114,114,101,110,116,32,116,105,109,101,32,102,111,114,32,115,111,109,101,32,114,101,97,115,111,110,10
str_22: db 69,82,82,79,82,58,32,116,105,109,101,105,116,47,101,110,100,58,32,99,111,117,108,100,32,110,111,116,32,103,101,116,32,99,117,114,114,101,110,116,32,116,105,109,101,32,102,111,114,32,115,111,109,101,32,114,101,97,115,111,110,10
str_23: db 32,116,111,111,107,32
str_24: db 46
str_25: db 32,115,101,99,115,10
str_26: db 91,67,77,68,93
str_27: db 32
str_28: db 10
str_29: db 91,69,82,82,79,82,93,32,99,111,117,108,100,32,110,111,116,32,119,97,105,116,32,117,110,116,105,108,32,116,104,101,32,99,104,105,108,100,32,112,114,111,99,101,115,115,32,104,97,115,32,102,105,110,105,115,104,101,100,32,101,120,101,99,117,116,105,110,103,10
str_30: db 91,69,82,82,79,82,93,32,99,111,117,108,100,32,110,111,116,32,102,111,114,107,32,97,32,99,104,105,108,100,10
str_31: db 72,101,108,108,111,44,32,87,111,114,108,100,10
segment .bss
args_ptr: resq 1
ret_stack_rsp: resq 1
ret_stack: resb 65536
ret_stack_end:
mem: resb 8388640
