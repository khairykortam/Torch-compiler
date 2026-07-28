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
    mov rax, 5
    push rax
addr_258:
    pop rax
    pop rdi
    pop rsi
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
    mov rax, 4
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
    mov rax, 3
    push rax
addr_268:
    pop rax
    pop rdi
    syscall
    push rax
addr_269:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_270:
    jmp addr_276
addr_271:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_272:
    mov rax, 60
    push rax
addr_273:
    pop rax
    pop rdi
    syscall
    push rax
addr_274:
    pop rax
addr_275:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_276:
    jmp addr_281
addr_277:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_278:
    mov rax, 9
    push rax
addr_279:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    pop r8
    pop r9
    syscall
    push rax
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
    mov rax, 230
    push rax
addr_284:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
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
    mov rax, 228
    push rax
addr_289:
    pop rax
    pop rdi
    pop rsi
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
    mov rax, 57
    push rax
addr_294:
    pop rax
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
    mov rax, 39
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
    mov rax, 59
    push rax
addr_304:
    pop rax
    pop rdi
    pop rsi
    pop rdx
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
    mov rax, 61
    push rax
addr_309:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
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
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_314:
    pop rax
addr_315:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_316:
    jmp addr_322
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
    pop rbx
    push rax
    push rbx
addr_320:
    pop rax
addr_321:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_322:
    jmp addr_329
addr_323:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_324:
addr_325:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_326:
    pop rax
    pop rbx
    push rax
    push rbx
addr_327:
    pop rax
addr_328:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_329:
    jmp addr_335
addr_330:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_331:
addr_332:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_333:
    pop rax
addr_334:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_335:
    jmp addr_347
addr_336:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_337:
    mov rax, 8
    push rax
addr_338:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_339:
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_340:
addr_341:
addr_342:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_343:
addr_344:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_345:
addr_346:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_347:
    jmp addr_354
addr_348:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_349:
addr_350:
    mov rax, 1
    push rax
addr_351:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_352:
addr_353:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_354:
    jmp addr_363
addr_355:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_356:
    pop rax
    pop rbx
    push rax
    push rbx
addr_357:
addr_358:
    pop rax
    pop rbx
    push rax
    push rbx
addr_359:
addr_360:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_361:
addr_362:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_363:
    jmp addr_372
addr_364:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_365:
    pop rax
    pop rbx
    push rax
    push rbx
addr_366:
addr_367:
    pop rax
    pop rbx
    push rax
    push rbx
addr_368:
addr_369:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_370:
addr_371:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_372:
    jmp addr_380
addr_373:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_374:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_375:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_376:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_377:
    pop rax
    pop rbx
    push rax
    push rbx
addr_378:
    pop rax
    pop rbx
    mov [rax], rbx
addr_379:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_380:
    jmp addr_389
addr_381:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_382:
    pop rax
    push rax
    push rax
addr_383:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_384:
    mov rax, 1
    push rax
addr_385:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_386:
    pop rax
    pop rbx
    push rax
    push rbx
addr_387:
    pop rax
    pop rbx
    mov [rax], rbx
addr_388:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_389:
    jmp addr_398
addr_390:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_391:
    pop rax
    push rax
    push rax
addr_392:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_393:
    mov rax, 1
    push rax
addr_394:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_395:
    pop rax
    pop rbx
    push rax
    push rbx
addr_396:
    pop rax
    pop rbx
    mov [rax], rbx
addr_397:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_398:
    jmp addr_407
addr_399:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_400:
    pop rax
    push rax
    push rax
addr_401:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_402:
    mov rax, 1
    push rax
addr_403:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_404:
    pop rax
    pop rbx
    push rax
    push rbx
addr_405:
    pop rax
    pop rbx
    mov [rax], bl
addr_406:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_407:
    jmp addr_416
addr_408:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_409:
    pop rax
    push rax
    push rax
addr_410:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_411:
    mov rax, 1
    push rax
addr_412:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_413:
    pop rax
    pop rbx
    push rax
    push rbx
addr_414:
    pop rax
    pop rbx
    mov [rax], bl
addr_415:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_416:
    jmp addr_442
addr_417:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_418:
    pop rax
    push rax
    push rax
addr_419:
addr_420:
    pop rax
    push rax
    push rax
addr_421:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_422:
    mov rax, 0
    push rax
addr_423:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_424:
    pop rax
    test rax, rax
    jz addr_434
addr_425:
    mov rax, 1
    push rax
addr_426:
addr_427:
    pop rax
    pop rbx
    push rax
    push rbx
addr_428:
addr_429:
    pop rax
    pop rbx
    push rax
    push rbx
addr_430:
addr_431:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_432:
addr_433:
    jmp addr_419
addr_434:
    pop rax
    pop rbx
    push rax
    push rbx
addr_435:
addr_436:
    pop rax
    pop rbx
    push rax
    push rbx
addr_437:
addr_438:
    pop rax
    pop rbx
    push rax
    push rbx
addr_439:
addr_440:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_441:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_442:
    jmp addr_503
addr_443:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_444:
addr_445:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_446:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_447:
    mov rax, 0
    push rax
addr_448:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_449:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_450:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_451:
    mov rax, 0
    push rax
addr_452:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_453:
addr_454:
    pop rax
    pop rbx
    push rax
    push rbx
addr_455:
addr_456:
    pop rax
    pop rbx
    push rax
    push rbx
addr_457:
addr_458:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_459:
addr_460:
    pop rax
    test rax, rax
    jz addr_467
addr_461:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_462:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_463:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_464:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_465:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_466:
    jmp addr_468
addr_467:
    mov rax, 0
    push rax
addr_468:
    jmp addr_469
addr_469:
    pop rax
    test rax, rax
    jz addr_488
addr_470:
    mov rax, 1
    push rax
addr_471:
addr_472:
    pop rax
    pop rbx
    push rax
    push rbx
addr_473:
addr_474:
    pop rax
    pop rbx
    push rax
    push rbx
addr_475:
addr_476:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_477:
addr_478:
    pop rax
    pop rbx
    push rax
    push rbx
addr_479:
    mov rax, 1
    push rax
addr_480:
addr_481:
    pop rax
    pop rbx
    push rax
    push rbx
addr_482:
addr_483:
    pop rax
    pop rbx
    push rax
    push rbx
addr_484:
addr_485:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_486:
addr_487:
    jmp addr_444
addr_488:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_489:
    mov rax, 0
    push rax
addr_490:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_491:
    pop rax
    pop rbx
    push rax
    push rbx
addr_492:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_493:
    mov rax, 0
    push rax
addr_494:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_495:
addr_496:
    pop rax
    pop rbx
    push rax
    push rbx
addr_497:
addr_498:
    pop rax
    pop rbx
    push rax
    push rbx
addr_499:
addr_500:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_501:
addr_502:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_503:
    jmp addr_509
addr_504:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_505:
    pop rax
    push rax
    push rax
addr_506:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_507:
    pop rax
    pop rbx
    push rax
    push rbx
addr_508:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_509:
    jmp addr_516
addr_510:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_511:
addr_512:
    mov rax, 1
    push rax
addr_513:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_514:
    pop rax
addr_515:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_516:
    jmp addr_525
addr_517:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_518:
    mov rax, 1
    push rax
addr_519:
addr_520:
addr_521:
    mov rax, 1
    push rax
addr_522:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_523:
    pop rax
addr_524:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_525:
    jmp addr_534
addr_526:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_527:
    mov rax, 2
    push rax
addr_528:
addr_529:
addr_530:
    mov rax, 1
    push rax
addr_531:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_532:
    pop rax
addr_533:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_534:
    jmp addr_541
addr_535:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_536:
    mov rax, 127
    push rax
addr_537:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_538:
    mov rax, 0
    push rax
addr_539:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_540:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_541:
    jmp addr_548
addr_542:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_543:
    mov rax, 65280
    push rax
addr_544:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_545:
    mov rax, 8
    push rax
addr_546:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_547:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_548:
    jmp addr_559
addr_549:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_550:
    mov rax, 0
    push rax
addr_551:
addr_552:
    pop rax
    pop rbx
    push rax
    push rbx
addr_553:
addr_554:
    pop rax
    pop rbx
    push rax
    push rbx
addr_555:
addr_556:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_557:
addr_558:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_559:
    jmp addr_570
addr_560:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_561:
    mov rax, 8
    push rax
addr_562:
addr_563:
    pop rax
    pop rbx
    push rax
    push rbx
addr_564:
addr_565:
    pop rax
    pop rbx
    push rax
    push rbx
addr_566:
addr_567:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_568:
addr_569:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_570:
    jmp addr_583
addr_571:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_572:
addr_573:
    mov rax, 0
    push rax
addr_574:
addr_575:
    pop rax
    pop rbx
    push rax
    push rbx
addr_576:
addr_577:
    pop rax
    pop rbx
    push rax
    push rbx
addr_578:
addr_579:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_580:
addr_581:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_582:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_583:
    jmp addr_597
addr_584:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_585:
addr_586:
    mov rax, 8
    push rax
addr_587:
addr_588:
    pop rax
    pop rbx
    push rax
    push rbx
addr_589:
addr_590:
    pop rax
    pop rbx
    push rax
    push rbx
addr_591:
addr_592:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_593:
addr_594:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_595:
addr_596:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_597:
    jmp addr_610
addr_598:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_599:
addr_600:
    mov rax, 0
    push rax
addr_601:
addr_602:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_607:
addr_608:
    pop rax
    pop rbx
    mov [rax], rbx
addr_609:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_610:
    jmp addr_623
addr_611:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_612:
addr_613:
    mov rax, 8
    push rax
addr_614:
addr_615:
    pop rax
    pop rbx
    push rax
    push rbx
addr_616:
addr_617:
    pop rax
    pop rbx
    push rax
    push rbx
addr_618:
addr_619:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_620:
addr_621:
    pop rax
    pop rbx
    mov [rax], rbx
addr_622:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_623:
    jmp addr_651
addr_624:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_625:
    pop rax
    push rax
    push rax
addr_626:
addr_627:
addr_628:
    mov rax, 0
    push rax
addr_629:
addr_630:
    pop rax
    pop rbx
    push rax
    push rbx
addr_631:
addr_632:
    pop rax
    pop rbx
    push rax
    push rbx
addr_633:
addr_634:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_635:
addr_636:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_637:
    pop rax
    pop rbx
    push rax
    push rbx
addr_638:
addr_639:
addr_640:
    mov rax, 8
    push rax
addr_641:
addr_642:
    pop rax
    pop rbx
    push rax
    push rbx
addr_643:
addr_644:
    pop rax
    pop rbx
    push rax
    push rbx
addr_645:
addr_646:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_647:
addr_648:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_649:
addr_650:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_651:
    jmp addr_679
addr_652:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_653:
    pop rax
    push rax
    push rax
addr_654:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_655:
    pop rax
    pop rbx
    push rax
    push rbx
addr_656:
addr_657:
addr_658:
    mov rax, 8
    push rax
addr_659:
addr_660:
    pop rax
    pop rbx
    push rax
    push rbx
addr_661:
addr_662:
    pop rax
    pop rbx
    push rax
    push rbx
addr_663:
addr_664:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_665:
addr_666:
    pop rax
    pop rbx
    mov [rax], rbx
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
    pop rbx
    mov [rax], rbx
addr_678:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_679:
    jmp addr_715
addr_680:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_681:
    pop rax
    push rax
    push rax
addr_682:
addr_683:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_688:
addr_689:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_690:
addr_691:
addr_692:
    pop rax
    push rax
    push rax
addr_693:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_694:
    mov rax, 1
    push rax
addr_695:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_696:
    pop rax
    pop rbx
    push rax
    push rbx
addr_697:
    pop rax
    pop rbx
    mov [rax], rbx
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
addr_708:
    pop rax
    push rax
    push rax
addr_709:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_710:
    mov rax, 1
    push rax
addr_711:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_712:
    pop rax
    pop rbx
    push rax
    push rbx
addr_713:
    pop rax
    pop rbx
    mov [rax], rbx
addr_714:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_715:
    jmp addr_791
addr_716:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_717:
addr_718:
    pop rax
    push rax
    push rax
addr_719:
addr_720:
addr_721:
    mov rax, 0
    push rax
addr_722:
addr_723:
    pop rax
    pop rbx
    push rax
    push rbx
addr_724:
addr_725:
    pop rax
    pop rbx
    push rax
    push rbx
addr_726:
addr_727:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_728:
addr_729:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_730:
    mov rax, 0
    push rax
addr_731:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_732:
    pop rax
    test rax, rax
    jz addr_750
addr_733:
    pop rax
    push rax
    push rax
addr_734:
addr_735:
addr_736:
    mov rax, 8
    push rax
addr_737:
addr_738:
    pop rax
    pop rbx
    push rax
    push rbx
addr_739:
addr_740:
    pop rax
    pop rbx
    push rax
    push rbx
addr_741:
addr_742:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_743:
addr_744:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_745:
addr_746:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_747:
    mov rax, 32
    push rax
addr_748:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_749:
    jmp addr_751
addr_750:
    mov rax, 0
    push rax
addr_751:
    jmp addr_752
addr_752:
    pop rax
    test rax, rax
    jz addr_789
addr_753:
    pop rax
    push rax
    push rax
addr_754:
addr_755:
    pop rax
    push rax
    push rax
addr_756:
addr_757:
    mov rax, 0
    push rax
addr_758:
addr_759:
    pop rax
    pop rbx
    push rax
    push rbx
addr_760:
addr_761:
    pop rax
    pop rbx
    push rax
    push rbx
addr_762:
addr_763:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_764:
addr_765:
addr_766:
    pop rax
    push rax
    push rax
addr_767:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_768:
    mov rax, 1
    push rax
addr_769:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_770:
    pop rax
    pop rbx
    push rax
    push rbx
addr_771:
    pop rax
    pop rbx
    mov [rax], rbx
addr_772:
addr_773:
    mov rax, 8
    push rax
addr_774:
addr_775:
    pop rax
    pop rbx
    push rax
    push rbx
addr_776:
addr_777:
    pop rax
    pop rbx
    push rax
    push rbx
addr_778:
addr_779:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_780:
addr_781:
addr_782:
    pop rax
    push rax
    push rax
addr_783:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_784:
    mov rax, 1
    push rax
addr_785:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_786:
    pop rax
    pop rbx
    push rax
    push rbx
addr_787:
    pop rax
    pop rbx
    mov [rax], rbx
addr_788:
    jmp addr_717
addr_789:
    pop rax
addr_790:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_791:
    jmp addr_982
addr_792:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_793:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_794:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_795:
    pop rax
    pop rbx
    mov [rax], rbx
addr_796:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_797:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_798:
addr_799:
addr_800:
    mov rax, 8
    push rax
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
    push rax
    push rbx
addr_805:
addr_806:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_807:
addr_808:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_809:
addr_810:
    pop rax
    pop rbx
    push rax
    push rbx
addr_811:
addr_812:
addr_813:
    mov rax, 8
    push rax
addr_814:
addr_815:
    pop rax
    pop rbx
    push rax
    push rbx
addr_816:
addr_817:
    pop rax
    pop rbx
    push rax
    push rbx
addr_818:
addr_819:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_820:
addr_821:
    pop rax
    pop rbx
    mov [rax], rbx
addr_822:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_823:
    mov rax, 0
    push rax
addr_824:
    pop rax
    pop rbx
    push rax
    push rbx
addr_825:
addr_826:
addr_827:
    mov rax, 0
    push rax
addr_828:
addr_829:
    pop rax
    pop rbx
    push rax
    push rbx
addr_830:
addr_831:
    pop rax
    pop rbx
    push rax
    push rbx
addr_832:
addr_833:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_834:
addr_835:
    pop rax
    pop rbx
    mov [rax], rbx
addr_836:
addr_837:
    pop rax
    push rax
    push rax
addr_838:
addr_839:
addr_840:
    mov rax, 0
    push rax
addr_841:
addr_842:
    pop rax
    pop rbx
    push rax
    push rbx
addr_843:
addr_844:
    pop rax
    pop rbx
    push rax
    push rbx
addr_845:
addr_846:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_847:
addr_848:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_849:
    mov rax, 0
    push rax
addr_850:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_851:
    pop rax
    test rax, rax
    jz addr_870
addr_852:
    pop rax
    push rax
    push rax
addr_853:
addr_854:
addr_855:
    mov rax, 8
    push rax
addr_856:
addr_857:
    pop rax
    pop rbx
    push rax
    push rbx
addr_858:
addr_859:
    pop rax
    pop rbx
    push rax
    push rbx
addr_860:
addr_861:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_862:
addr_863:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_864:
addr_865:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_866:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_867:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_868:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_869:
    jmp addr_871
addr_870:
    mov rax, 0
    push rax
addr_871:
    jmp addr_872
addr_872:
    pop rax
    test rax, rax
    jz addr_928
addr_873:
    pop rax
    push rax
    push rax
addr_874:
addr_875:
    pop rax
    push rax
    push rax
addr_876:
addr_877:
    mov rax, 0
    push rax
addr_878:
addr_879:
    pop rax
    pop rbx
    push rax
    push rbx
addr_880:
addr_881:
    pop rax
    pop rbx
    push rax
    push rbx
addr_882:
addr_883:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_884:
addr_885:
addr_886:
    pop rax
    push rax
    push rax
addr_887:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_888:
    mov rax, 1
    push rax
addr_889:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_890:
    pop rax
    pop rbx
    push rax
    push rbx
addr_891:
    pop rax
    pop rbx
    mov [rax], rbx
addr_892:
addr_893:
    mov rax, 8
    push rax
addr_894:
addr_895:
    pop rax
    pop rbx
    push rax
    push rbx
addr_896:
addr_897:
    pop rax
    pop rbx
    push rax
    push rbx
addr_898:
addr_899:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_900:
addr_901:
addr_902:
    pop rax
    push rax
    push rax
addr_903:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_904:
    mov rax, 1
    push rax
addr_905:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_906:
    pop rax
    pop rbx
    push rax
    push rbx
addr_907:
    pop rax
    pop rbx
    mov [rax], rbx
addr_908:
    pop rax
    pop rbx
    push rax
    push rbx
addr_909:
    pop rax
    push rax
    push rax
addr_910:
addr_911:
    mov rax, 0
    push rax
addr_912:
addr_913:
    pop rax
    pop rbx
    push rax
    push rbx
addr_914:
addr_915:
    pop rax
    pop rbx
    push rax
    push rbx
addr_916:
addr_917:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_918:
addr_919:
addr_920:
    pop rax
    push rax
    push rax
addr_921:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_922:
    mov rax, 1
    push rax
addr_923:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_924:
    pop rax
    pop rbx
    push rax
    push rbx
addr_925:
    pop rax
    pop rbx
    mov [rax], rbx
addr_926:
    pop rax
    pop rbx
    push rax
    push rbx
addr_927:
    jmp addr_836
addr_928:
    pop rax
    push rax
    push rax
addr_929:
addr_930:
addr_931:
    mov rax, 0
    push rax
addr_932:
addr_933:
    pop rax
    pop rbx
    push rax
    push rbx
addr_934:
addr_935:
    pop rax
    pop rbx
    push rax
    push rbx
addr_936:
addr_937:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_938:
addr_939:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_940:
    mov rax, 0
    push rax
addr_941:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_942:
    pop rax
    test rax, rax
    jz addr_978
addr_943:
    pop rax
    push rax
    push rax
addr_944:
addr_945:
    pop rax
    push rax
    push rax
addr_946:
addr_947:
    mov rax, 0
    push rax
addr_948:
addr_949:
    pop rax
    pop rbx
    push rax
    push rbx
addr_950:
addr_951:
    pop rax
    pop rbx
    push rax
    push rbx
addr_952:
addr_953:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_954:
addr_955:
addr_956:
    pop rax
    push rax
    push rax
addr_957:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_958:
    mov rax, 1
    push rax
addr_959:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_960:
    pop rax
    pop rbx
    push rax
    push rbx
addr_961:
    pop rax
    pop rbx
    mov [rax], rbx
addr_962:
addr_963:
    mov rax, 8
    push rax
addr_964:
addr_965:
    pop rax
    pop rbx
    push rax
    push rbx
addr_966:
addr_967:
    pop rax
    pop rbx
    push rax
    push rbx
addr_968:
addr_969:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_970:
addr_971:
addr_972:
    pop rax
    push rax
    push rax
addr_973:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_974:
    mov rax, 1
    push rax
addr_975:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_976:
    pop rax
    pop rbx
    push rax
    push rbx
addr_977:
    pop rax
    pop rbx
    mov [rax], rbx
addr_978:
    jmp addr_979
addr_979:
    pop rax
addr_980:
    pop rax
addr_981:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_982:
    jmp addr_1144
addr_983:
    sub rsp, 32
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_984:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_985:
addr_986:
    pop rax
    push rax
    push rax
addr_987:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_988:
    pop rax
    pop rbx
    push rax
    push rbx
addr_989:
addr_990:
addr_991:
    mov rax, 8
    push rax
addr_992:
addr_993:
    pop rax
    pop rbx
    push rax
    push rbx
addr_994:
addr_995:
    pop rax
    pop rbx
    push rax
    push rbx
addr_996:
addr_997:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_998:
addr_999:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1000:
addr_1001:
addr_1002:
    mov rax, 0
    push rax
addr_1003:
addr_1004:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_1009:
addr_1010:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1011:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1012:
addr_1013:
    pop rax
    push rax
    push rax
addr_1014:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1015:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1016:
addr_1017:
addr_1018:
    mov rax, 8
    push rax
addr_1019:
addr_1020:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1021:
addr_1022:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1023:
addr_1024:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1025:
addr_1026:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1027:
addr_1028:
addr_1029:
    mov rax, 0
    push rax
addr_1030:
addr_1031:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1032:
addr_1033:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1034:
addr_1035:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1036:
addr_1037:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1038:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1039:
addr_1040:
addr_1041:
    mov rax, 0
    push rax
addr_1042:
addr_1043:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_1048:
addr_1049:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1050:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1051:
addr_1052:
addr_1053:
    mov rax, 0
    push rax
addr_1054:
addr_1055:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1056:
addr_1057:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1058:
addr_1059:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1060:
addr_1061:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1062:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1063:
    pop rax
    test rax, rax
    jz addr_1141
addr_1064:
    mov rax, 0
    push rax
addr_1065:
addr_1066:
    pop rax
    push rax
    push rax
addr_1067:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1079:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_1080:
    pop rax
    test rax, rax
    jz addr_1121
addr_1081:
    pop rax
    push rax
    push rax
addr_1082:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1083:
addr_1084:
addr_1085:
    mov rax, 8
    push rax
addr_1086:
addr_1087:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1088:
addr_1089:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1090:
addr_1091:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1092:
addr_1093:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1094:
addr_1095:
addr_1096:
addr_1097:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1098:
addr_1099:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1100:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1101:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1102:
addr_1103:
addr_1104:
    mov rax, 8
    push rax
addr_1105:
addr_1106:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1107:
addr_1108:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1109:
addr_1110:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1111:
addr_1112:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1113:
addr_1114:
addr_1115:
addr_1116:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1117:
addr_1118:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1119:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1120:
    jmp addr_1122
addr_1121:
    mov rax, 0
    push rax
addr_1122:
    jmp addr_1123
addr_1123:
    pop rax
    test rax, rax
    jz addr_1127
addr_1124:
    mov rax, 1
    push rax
addr_1125:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1126:
    jmp addr_1065
addr_1127:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1128:
addr_1129:
addr_1130:
    mov rax, 0
    push rax
addr_1131:
addr_1132:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1133:
addr_1134:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1135:
addr_1136:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1137:
addr_1138:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1139:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1140:
    jmp addr_1142
addr_1141:
    mov rax, 0
    push rax
addr_1142:
    jmp addr_1143
addr_1143:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 32
    ret
addr_1144:
    jmp addr_1158
addr_1145:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1146:
    mov rax, 0
    push rax
addr_1147:
addr_1148:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1149:
addr_1150:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1151:
addr_1152:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1153:
addr_1154:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1155:
    mov rax, 0
    push rax
addr_1156:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1157:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1158:
    jmp addr_1320
addr_1159:
    sub rsp, 32
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1160:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1161:
addr_1162:
    pop rax
    push rax
    push rax
addr_1163:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1164:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1165:
addr_1166:
addr_1167:
    mov rax, 8
    push rax
addr_1168:
addr_1169:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1170:
addr_1171:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1172:
addr_1173:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1174:
addr_1175:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1176:
addr_1177:
addr_1178:
    mov rax, 0
    push rax
addr_1179:
addr_1180:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1181:
addr_1182:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1183:
addr_1184:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1185:
addr_1186:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1187:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1188:
addr_1189:
    pop rax
    push rax
    push rax
addr_1190:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1191:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1192:
addr_1193:
addr_1194:
    mov rax, 8
    push rax
addr_1195:
addr_1196:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1197:
addr_1198:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1199:
addr_1200:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1201:
addr_1202:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1203:
addr_1204:
addr_1205:
    mov rax, 0
    push rax
addr_1206:
addr_1207:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1208:
addr_1209:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1210:
addr_1211:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1212:
addr_1213:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1214:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1215:
addr_1216:
addr_1217:
    mov rax, 0
    push rax
addr_1218:
addr_1219:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_1224:
addr_1225:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1226:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1227:
addr_1228:
addr_1229:
    mov rax, 0
    push rax
addr_1230:
addr_1231:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1232:
addr_1233:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1234:
addr_1235:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1236:
addr_1237:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1238:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1239:
    pop rax
    test rax, rax
    jz addr_1317
addr_1240:
    mov rax, 0
    push rax
addr_1241:
addr_1242:
    pop rax
    push rax
    push rax
addr_1243:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1255:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_1256:
    pop rax
    test rax, rax
    jz addr_1297
addr_1257:
    pop rax
    push rax
    push rax
addr_1258:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1259:
addr_1260:
addr_1261:
    mov rax, 8
    push rax
addr_1262:
addr_1263:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1264:
addr_1265:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1266:
addr_1267:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1268:
addr_1269:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1270:
addr_1271:
addr_1272:
addr_1273:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1274:
addr_1275:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1276:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1277:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1278:
addr_1279:
addr_1280:
    mov rax, 8
    push rax
addr_1281:
addr_1282:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1283:
addr_1284:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1285:
addr_1286:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1287:
addr_1288:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1289:
addr_1290:
addr_1291:
addr_1292:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1293:
addr_1294:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1295:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1296:
    jmp addr_1298
addr_1297:
    mov rax, 0
    push rax
addr_1298:
    jmp addr_1299
addr_1299:
    pop rax
    test rax, rax
    jz addr_1303
addr_1300:
    mov rax, 1
    push rax
addr_1301:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1302:
    jmp addr_1241
addr_1303:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1304:
addr_1305:
addr_1306:
    mov rax, 0
    push rax
addr_1307:
addr_1308:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1309:
addr_1310:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1311:
addr_1312:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1313:
addr_1314:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1315:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1316:
    jmp addr_1318
addr_1317:
    mov rax, 0
    push rax
addr_1318:
    jmp addr_1319
addr_1319:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 32
    ret
addr_1320:
    jmp addr_1336
addr_1321:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1322:
    pop rax
    push rax
    push rax
addr_1323:
    mov rax, 48
    push rax
addr_1324:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1325:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1326:
    mov rax, 57
    push rax
addr_1327:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1328:
addr_1329:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1330:
addr_1331:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1332:
addr_1333:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1334:
addr_1335:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1336:
    jmp addr_1374
addr_1337:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1338:
    pop rax
    push rax
    push rax
addr_1339:
    pop rax
    push rax
    push rax
addr_1340:
    mov rax, 97
    push rax
addr_1341:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1342:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1343:
    mov rax, 122
    push rax
addr_1344:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1345:
addr_1346:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1347:
addr_1348:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1349:
addr_1350:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1351:
addr_1352:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1353:
    pop rax
    push rax
    push rax
addr_1354:
    mov rax, 65
    push rax
addr_1355:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1356:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1357:
    mov rax, 90
    push rax
addr_1358:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1359:
addr_1360:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1361:
addr_1362:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1363:
addr_1364:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1365:
addr_1366:
addr_1367:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1368:
addr_1369:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1370:
addr_1371:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1372:
addr_1373:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1374:
    jmp addr_1436
addr_1375:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1376:
    pop rax
    push rax
    push rax
addr_1377:
addr_1378:
    pop rax
    push rax
    push rax
addr_1379:
    mov rax, 48
    push rax
addr_1380:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1381:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1382:
    mov rax, 57
    push rax
addr_1383:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1384:
addr_1385:
    pop rax
    pop rbx
    push rax
    push rbx
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
    and rbx, rax
    push rbx
addr_1390:
addr_1391:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1392:
addr_1393:
    pop rax
    push rax
    push rax
addr_1394:
    pop rax
    push rax
    push rax
addr_1395:
    mov rax, 97
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
    mov rax, 122
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
    pop rax
    pop rbx
    push rax
    push rbx
addr_1408:
    pop rax
    push rax
    push rax
addr_1409:
    mov rax, 65
    push rax
addr_1410:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1411:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1412:
    mov rax, 90
    push rax
addr_1413:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1414:
addr_1415:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1416:
addr_1417:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1418:
addr_1419:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1420:
addr_1421:
addr_1422:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1423:
addr_1424:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1425:
addr_1426:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1427:
addr_1428:
addr_1429:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1430:
addr_1431:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1432:
addr_1433:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1434:
addr_1435:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1436:
    jmp addr_1584
addr_1437:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1438:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1439:
addr_1440:
    pop rax
    push rax
    push rax
addr_1441:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1442:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1443:
addr_1444:
addr_1445:
    mov rax, 8
    push rax
addr_1446:
addr_1447:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1448:
addr_1449:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1450:
addr_1451:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1452:
addr_1453:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1454:
addr_1455:
addr_1456:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_1461:
addr_1462:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1463:
addr_1464:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1465:
    mov rax, 0
    push rax
addr_1466:
addr_1467:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1468:
addr_1469:
addr_1470:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_1475:
addr_1476:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1477:
addr_1478:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1479:
    mov rax, 0
    push rax
addr_1480:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1481:
    pop rax
    test rax, rax
    jz addr_1511
addr_1482:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1483:
addr_1484:
addr_1485:
    mov rax, 8
    push rax
addr_1486:
addr_1487:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1488:
addr_1489:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1490:
addr_1491:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1492:
addr_1493:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1494:
addr_1495:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1496:
addr_1497:
    pop rax
    push rax
    push rax
addr_1498:
    mov rax, 48
    push rax
addr_1499:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1500:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1501:
    mov rax, 57
    push rax
addr_1502:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1503:
addr_1504:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1505:
addr_1506:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1507:
addr_1508:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1509:
addr_1510:
    jmp addr_1512
addr_1511:
    mov rax, 0
    push rax
addr_1512:
    jmp addr_1513
addr_1513:
    pop rax
    test rax, rax
    jz addr_1569
addr_1514:
    mov rax, 10
    push rax
addr_1515:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_1516:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1517:
addr_1518:
addr_1519:
    mov rax, 8
    push rax
addr_1520:
addr_1521:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1522:
addr_1523:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1524:
addr_1525:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1526:
addr_1527:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1528:
addr_1529:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1530:
    mov rax, 48
    push rax
addr_1531:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1532:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1533:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1534:
addr_1535:
    pop rax
    push rax
    push rax
addr_1536:
addr_1537:
    mov rax, 0
    push rax
addr_1538:
addr_1539:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1540:
addr_1541:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1542:
addr_1543:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1544:
addr_1545:
addr_1546:
    pop rax
    push rax
    push rax
addr_1547:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1548:
    mov rax, 1
    push rax
addr_1549:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1550:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1551:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1552:
addr_1553:
    mov rax, 8
    push rax
addr_1554:
addr_1555:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1556:
addr_1557:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1558:
addr_1559:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1560:
addr_1561:
addr_1562:
    pop rax
    push rax
    push rax
addr_1563:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1564:
    mov rax, 1
    push rax
addr_1565:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1566:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1567:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1568:
    jmp addr_1466
addr_1569:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1570:
addr_1571:
addr_1572:
    mov rax, 0
    push rax
addr_1573:
addr_1574:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1575:
addr_1576:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1577:
addr_1578:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1579:
addr_1580:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1581:
    mov rax, 0
    push rax
addr_1582:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1583:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_1584:
    jmp addr_1663
addr_1585:
    sub rsp, 40
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1586:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1587:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1588:
    pop rax
    push rax
    push rax
addr_1589:
    mov rax, 0
    push rax
addr_1590:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1591:
    pop rax
    test rax, rax
    jz addr_1601
addr_1592:
    mov rax, 1
    push rax
    push str_0
addr_1593:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1594:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1595:
addr_1596:
addr_1597:
    mov rax, 1
    push rax
addr_1598:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1599:
    pop rax
addr_1600:
    jmp addr_1660
addr_1601:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1602:
    mov rax, 32
    push rax
addr_1603:
addr_1604:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1605:
addr_1606:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1607:
addr_1608:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1609:
addr_1610:
addr_1611:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1612:
    mov rax, 0
    push rax
addr_1613:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1614:
    pop rax
    test rax, rax
    jz addr_1635
addr_1615:
    mov rax, 1
    push rax
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
    push rax
    push rbx
addr_1620:
addr_1621:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1622:
addr_1623:
    pop rax
    push rax
    push rax
addr_1624:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1625:
    mov rax, 10
    push rax
addr_1626:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1627:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1628:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1629:
    mov rax, 48
    push rax
addr_1630:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1631:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1632:
    pop rax
    pop rbx
    mov [rax], bl
addr_1633:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1634:
    jmp addr_1610
addr_1635:
    pop rax
    push rax
    push rax
addr_1636:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1637:
    mov rax, 32
    push rax
addr_1638:
addr_1639:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1640:
addr_1641:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1642:
addr_1643:
    pop rax
    pop rbx
    add rax, rbx
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
    push rax
    push rbx
addr_1650:
addr_1651:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1652:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1653:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1654:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1655:
addr_1656:
addr_1657:
    mov rax, 1
    push rax
addr_1658:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1659:
    pop rax
addr_1660:
    jmp addr_1661
addr_1661:
    pop rax
addr_1662:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 40
    ret
addr_1663:
    jmp addr_1762
addr_1664:
    sub rsp, 56
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1665:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1666:
addr_1667:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1668:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1669:
addr_1670:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1671:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1672:
addr_1673:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1674:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1675:
    mov rax, 32
    push rax
addr_1676:
addr_1677:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1678:
addr_1679:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1680:
addr_1681:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1682:
addr_1683:
addr_1684:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1685:
addr_1686:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1687:
    mov rax, 0
    push rax
addr_1688:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1689:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1690:
addr_1691:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1692:
    mov rax, 0
    push rax
addr_1693:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1694:
addr_1695:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1696:
addr_1697:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1698:
addr_1699:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1700:
addr_1701:
    pop rax
    test rax, rax
    jz addr_1736
addr_1702:
    mov rax, 1
    push rax
addr_1703:
addr_1704:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1705:
addr_1706:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1707:
addr_1708:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1709:
addr_1710:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1711:
addr_1712:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1713:
    mov rax, 10
    push rax
addr_1714:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1715:
    mov rax, 48
    push rax
addr_1716:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1717:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1718:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1719:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1720:
    pop rax
    pop rbx
    mov [rax], bl
addr_1721:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1722:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1723:
addr_1724:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1725:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1726:
    pop rax
addr_1727:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1728:
addr_1729:
    pop rax
    push rax
    push rax
addr_1730:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1731:
    mov rax, 1
    push rax
addr_1732:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1733:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1734:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1735:
    jmp addr_1683
addr_1736:
    pop rax
    push rax
    push rax
addr_1737:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1738:
    mov rax, 32
    push rax
addr_1739:
addr_1740:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1741:
addr_1742:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1743:
addr_1744:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1745:
addr_1746:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1747:
addr_1748:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1749:
addr_1750:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1751:
addr_1752:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1753:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1754:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1755:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1756:
addr_1757:
addr_1758:
    mov rax, 1
    push rax
addr_1759:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1760:
    pop rax
addr_1761:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 56
    ret
addr_1762:
    jmp addr_1767
addr_1763:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1764:
    mov rax, 1
    push rax
addr_1765:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1585
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1766:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1767:
    jmp addr_1772
addr_1768:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1769:
    mov rax, 1
    push rax
addr_1770:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1664
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1771:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1772:
    jmp addr_1777
addr_1773:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1774:
    mov rax, 2
    push rax
addr_1775:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1585
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1776:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1777:
    jmp addr_1824
addr_1778:
    sub rsp, 24
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1779:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1780:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1781:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1782:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1783:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1784:
addr_1785:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1786:
addr_1787:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1788:
addr_1789:
    pop rax
    push rax
    push rax
addr_1790:
    mov rax, 0
    push rax
addr_1791:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1792:
    pop rax
    test rax, rax
    jz addr_1822
addr_1793:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1794:
addr_1795:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1796:
addr_1797:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1798:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1799:
addr_1800:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1801:
addr_1802:
    pop rax
    pop rbx
    mov [rax], bl
addr_1803:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1804:
addr_1805:
    pop rax
    push rax
    push rax
addr_1806:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1807:
    mov rax, 1
    push rax
addr_1808:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1809:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1810:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1811:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1812:
addr_1813:
    pop rax
    push rax
    push rax
addr_1814:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1815:
    mov rax, 1
    push rax
addr_1816:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1817:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1818:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1819:
    mov rax, 1
    push rax
addr_1820:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1821:
    jmp addr_1788
addr_1822:
    pop rax
addr_1823:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 24
    ret
addr_1824:
    jmp addr_1860
addr_1825:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1826:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1827:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1828:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1829:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1830:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1831:
addr_1832:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1833:
addr_1834:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1835:
addr_1836:
    pop rax
    push rax
    push rax
addr_1837:
    mov rax, 0
    push rax
addr_1838:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1839:
    pop rax
    test rax, rax
    jz addr_1858
addr_1840:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1841:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1842:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1843:
addr_1844:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1845:
addr_1846:
    pop rax
    pop rbx
    mov [rax], bl
addr_1847:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1848:
addr_1849:
    pop rax
    push rax
    push rax
addr_1850:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1851:
    mov rax, 1
    push rax
addr_1852:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1853:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1854:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1855:
    mov rax, 1
    push rax
addr_1856:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1857:
    jmp addr_1835
addr_1858:
    pop rax
addr_1859:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_1860:
    jmp addr_2040
addr_1861:
    sub rsp, 48
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1862:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1863:
addr_1864:
    pop rax
    push rax
    push rax
addr_1865:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1866:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1867:
addr_1868:
addr_1869:
    mov rax, 8
    push rax
addr_1870:
addr_1871:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1872:
addr_1873:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1874:
addr_1875:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1876:
addr_1877:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1878:
addr_1879:
addr_1880:
    mov rax, 0
    push rax
addr_1881:
addr_1882:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1883:
addr_1884:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1885:
addr_1886:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1887:
addr_1888:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1889:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_1890:
addr_1891:
    pop rax
    push rax
    push rax
addr_1892:
addr_1893:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1894:
addr_1895:
    mov rax, 0
    push rax
addr_1896:
addr_1897:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1898:
addr_1899:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1900:
addr_1901:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1902:
    pop rax
    test rax, rax
    jz addr_2003
addr_1903:
    pop rax
    push rax
    push rax
addr_1904:
addr_1905:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1906:
addr_1907:
addr_1908:
    pop rax
    push rax
    push rax
addr_1909:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1910:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1911:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1912:
addr_1913:
    pop rax
    push rax
    push rax
addr_1914:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1915:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1916:
addr_1917:
addr_1918:
    mov rax, 8
    push rax
addr_1919:
addr_1920:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1921:
addr_1922:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1923:
addr_1924:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1925:
addr_1926:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1927:
addr_1928:
addr_1929:
    mov rax, 0
    push rax
addr_1930:
addr_1931:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1932:
addr_1933:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1934:
addr_1935:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1936:
addr_1937:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1938:
    mov rax, 61
    push rax
addr_1939:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1940:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1941:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_792
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1942:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1943:
addr_1944:
    pop rax
    push rax
    push rax
addr_1945:
addr_1946:
addr_1947:
    mov rax, 0
    push rax
addr_1948:
addr_1949:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1950:
addr_1951:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1952:
addr_1953:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1954:
addr_1955:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1968:
addr_1969:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1970:
addr_1971:
    pop rax
    push rax
    push rax
addr_1972:
addr_1973:
addr_1974:
    mov rax, 0
    push rax
addr_1975:
addr_1976:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1977:
addr_1978:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1979:
addr_1980:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1981:
addr_1982:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1983:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1984:
addr_1985:
addr_1986:
    mov rax, 8
    push rax
addr_1987:
addr_1988:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_1993:
addr_1994:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1995:
addr_1996:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1159
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1997:
addr_1998:
addr_1999:
    mov rax, 1
    push rax
addr_2000:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2001:
addr_2002:
    jmp addr_2004
addr_2003:
    mov rax, 0
    push rax
addr_2004:
    jmp addr_2005
addr_2005:
    pop rax
    test rax, rax
    jz addr_2015
addr_2006:
    mov rax, 8
    push rax
addr_2007:
addr_2008:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2009:
addr_2010:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2011:
addr_2012:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2013:
addr_2014:
    jmp addr_1890
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
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2022:
    pop rax
    test rax, rax
    jz addr_2037
addr_2023:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2024:
addr_2025:
addr_2026:
    mov rax, 8
    push rax
addr_2027:
addr_2028:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2029:
addr_2030:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2031:
addr_2032:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2033:
addr_2034:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2035:
addr_2036:
    jmp addr_2038
addr_2037:
    mov rax, 0
    push rax
addr_2038:
    jmp addr_2039
addr_2039:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 48
    ret
addr_2040:
    jmp addr_2046
addr_2041:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2042:
    mov rax, 0
    push rax
addr_2043:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2044:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2045:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2046:
    jmp addr_2059
addr_2047:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2048:
    mov rax, mem
    add rax, 0
    push rax
addr_2049:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2050:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2051:
addr_2052:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2053:
addr_2054:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2055:
addr_2056:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2057:
addr_2058:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2059:
    jmp addr_2072
addr_2060:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2061:
    mov rax, mem
    add rax, 0
    push rax
addr_2062:
addr_2063:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2064:
addr_2065:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2066:
addr_2067:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2068:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2069:
addr_2070:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2071:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2072:
    jmp addr_2124
addr_2073:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2074:
    pop rax
    push rax
    push rax
addr_2075:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2076:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2077:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2078:
    mov rax, 8388608
    push rax
addr_2079:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2080:
    pop rax
    test rax, rax
    jz addr_2102
addr_2081:
    mov rax, 17
    push rax
    push str_1
addr_2082:
addr_2083:
    mov rax, 2
    push rax
addr_2084:
addr_2085:
addr_2086:
    mov rax, 1
    push rax
addr_2087:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2088:
    pop rax
addr_2089:
    mov rax, 79
    push rax
    push str_2
addr_2090:
addr_2091:
    mov rax, 2
    push rax
addr_2092:
addr_2093:
addr_2094:
    mov rax, 1
    push rax
addr_2095:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2096:
    pop rax
addr_2097:
    mov rax, 1
    push rax
addr_2098:
addr_2099:
    mov rax, 60
    push rax
addr_2100:
    pop rax
    pop rdi
    syscall
    push rax
addr_2101:
    pop rax
addr_2102:
    jmp addr_2103
addr_2103:
    pop rax
    push rax
    push rax
addr_2104:
    mov rax, 0
    push rax
addr_2105:
addr_2106:
    mov rax, mem
    add rax, 0
    push rax
addr_2107:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2108:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2109:
addr_2110:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2111:
addr_2112:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2113:
addr_2114:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2115:
addr_2116:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1825
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2117:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2118:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2119:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2120:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2121:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2122:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2123:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2124:
    jmp addr_2132
addr_2125:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2126:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2127:
    mov rax, 1
    push rax
addr_2128:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2129:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2130:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2131:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2132:
    jmp addr_2138
addr_2133:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2134:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2135:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2136:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2137:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2138:
    jmp addr_2145
addr_2139:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2140:
    mov rax, 8
    push rax
addr_2141:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2142:
addr_2143:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2144:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2145:
    jmp addr_2365
addr_2146:
    sub rsp, 48
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2147:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2148:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2149:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2150:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2151:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_2152:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2153:
addr_2154:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2155:
addr_2156:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2157:
addr_2158:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2159:
addr_2160:
addr_2161:
    mov rax, 59
    push rax
addr_2162:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2163:
    pop rax
addr_2164:
    mov rax, 4
    push rax
    push str_3
addr_2165:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1861
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2166:
    pop rax
    push rax
    push rax
addr_2167:
    mov rax, 0
    push rax
addr_2168:
addr_2169:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2170:
addr_2171:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2172:
addr_2173:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2174:
    pop rax
    test rax, rax
    jz addr_2189
addr_2175:
    mov rax, 21
    push rax
    push str_4
addr_2176:
addr_2177:
    mov rax, 2
    push rax
addr_2178:
addr_2179:
addr_2180:
    mov rax, 1
    push rax
addr_2181:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2182:
    pop rax
addr_2183:
    mov rax, 1
    push rax
addr_2184:
addr_2185:
    mov rax, 60
    push rax
addr_2186:
    pop rax
    pop rdi
    syscall
    push rax
addr_2187:
    pop rax
addr_2188:
    jmp addr_2318
addr_2189:
    pop rax
    push rax
    push rax
addr_2190:
addr_2191:
    pop rax
    push rax
    push rax
addr_2192:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2193:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2194:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2195:
addr_2196:
    pop rax
    push rax
    push rax
addr_2197:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2198:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2199:
addr_2200:
addr_2201:
    mov rax, 8
    push rax
addr_2202:
addr_2203:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2204:
addr_2205:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2206:
addr_2207:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2208:
addr_2209:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2210:
addr_2211:
addr_2212:
    mov rax, 0
    push rax
addr_2213:
addr_2214:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2215:
addr_2216:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2217:
addr_2218:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2219:
addr_2220:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2221:
addr_2222:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2223:
addr_2224:
addr_2225:
    mov rax, 0
    push rax
addr_2226:
addr_2227:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2228:
addr_2229:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2230:
addr_2231:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2232:
addr_2233:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2234:
    mov rax, 0
    push rax
addr_2235:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2236:
    pop rax
    test rax, rax
    jz addr_2318
addr_2237:
    mov rax, 58
    push rax
addr_2238:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2239:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2240:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_792
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2241:
addr_2242:
    mov rax, mem
    add rax, 0
    push rax
addr_2243:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2244:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
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
    push rax
    push rbx
addr_2249:
addr_2250:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2251:
addr_2252:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2253:
addr_2254:
    pop rax
    push rax
    push rax
addr_2255:
addr_2256:
addr_2257:
    mov rax, 0
    push rax
addr_2258:
addr_2259:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2260:
addr_2261:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2262:
addr_2263:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2264:
addr_2265:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2266:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2267:
addr_2268:
addr_2269:
    mov rax, 8
    push rax
addr_2270:
addr_2271:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2272:
addr_2273:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2274:
addr_2275:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2276:
addr_2277:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2278:
addr_2279:
addr_2280:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2281:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2282:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2283:
    pop rax
addr_2284:
    mov rax, 1
    push rax
    push str_5
addr_2285:
addr_2286:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2287:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2288:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2289:
    pop rax
addr_2290:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2291:
addr_2292:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2293:
addr_2294:
addr_2295:
    pop rax
    push rax
    push rax
addr_2296:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2297:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2298:
addr_2299:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2300:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2301:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2302:
    pop rax
addr_2303:
    mov rax, 1
    push rax
addr_2304:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2305:
    pop rax
addr_2306:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_2307:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2308:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2309:
addr_2310:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2311:
addr_2312:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2313:
addr_2314:
    mov rax, 59
    push rax
addr_2315:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2316:
    pop rax
addr_2317:
    jmp addr_2221
addr_2318:
    jmp addr_2319
addr_2319:
    pop rax
addr_2320:
    mov rax, 17
    push rax
    push str_6
addr_2321:
addr_2322:
    mov rax, 2
    push rax
addr_2323:
addr_2324:
addr_2325:
    mov rax, 1
    push rax
addr_2326:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2327:
    pop rax
addr_2328:
    mov rax, 36
    push rax
    push str_7
addr_2329:
addr_2330:
    mov rax, 2
    push rax
addr_2331:
addr_2332:
addr_2333:
    mov rax, 1
    push rax
addr_2334:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2335:
    pop rax
addr_2336:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2337:
addr_2338:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2339:
addr_2340:
addr_2341:
    pop rax
    push rax
    push rax
addr_2342:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2343:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2344:
addr_2345:
    mov rax, 2
    push rax
addr_2346:
addr_2347:
addr_2348:
    mov rax, 1
    push rax
addr_2349:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2350:
    pop rax
addr_2351:
    mov rax, 2
    push rax
    push str_8
addr_2352:
addr_2353:
    mov rax, 2
    push rax
addr_2354:
addr_2355:
addr_2356:
    mov rax, 1
    push rax
addr_2357:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2358:
    pop rax
addr_2359:
    mov rax, 1
    push rax
addr_2360:
addr_2361:
    mov rax, 60
    push rax
addr_2362:
    pop rax
    pop rdi
    syscall
    push rax
addr_2363:
    pop rax
addr_2364:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 48
    ret
addr_2365:
    jmp addr_2424
addr_2366:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2367:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2368:
addr_2369:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2370:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2371:
addr_2372:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2373:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2374:
addr_2375:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2376:
addr_2377:
addr_2378:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2379:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2380:
    pop rax
    test rax, rax
    jz addr_2418
addr_2381:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2382:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2383:
addr_2384:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2385:
addr_2386:
addr_2387:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2388:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_2389:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2390:
addr_2391:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2392:
addr_2393:
addr_2394:
addr_2395:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2396:
addr_2397:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2398:
    pop rax
addr_2399:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2400:
addr_2401:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2402:
addr_2403:
addr_2404:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2405:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2406:
addr_2407:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2408:
addr_2409:
addr_2410:
    pop rax
    push rax
    push rax
addr_2411:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2412:
    mov rax, 1
    push rax
addr_2413:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2414:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2415:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2416:
    mov rax, 1
    push rax
addr_2417:
    jmp addr_2422
addr_2418:
    pop rax
addr_2419:
    pop rax
addr_2420:
    mov rax, 0
    push rax
addr_2421:
    mov rax, 0
    push rax
addr_2422:
    jmp addr_2423
addr_2423:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_2424:
    jmp addr_2524
addr_2425:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2426:
    mov rax, 32
    push rax
addr_2427:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2428:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2429:
addr_2430:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2431:
    pop rax
    push rax
    push rax
addr_2432:
    mov rax, 0
    push rax
addr_2433:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2434:
    pop rax
    test rax, rax
    jz addr_2462
addr_2435:
    pop rax
addr_2436:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2437:
addr_2438:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2439:
addr_2440:
    mov rax, 32
    push rax
addr_2441:
addr_2442:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2443:
addr_2444:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2445:
addr_2446:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2447:
addr_2448:
    mov rax, 1
    push rax
addr_2449:
addr_2450:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2451:
addr_2452:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2453:
addr_2454:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2455:
addr_2456:
    mov rax, 48
    push rax
addr_2457:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2458:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2459:
    mov rax, 1
    push rax
addr_2460:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2461:
    jmp addr_2522
addr_2462:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2463:
addr_2464:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2465:
addr_2466:
    mov rax, 32
    push rax
addr_2467:
addr_2468:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2469:
addr_2470:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2471:
addr_2472:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2473:
addr_2474:
addr_2475:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2476:
    mov rax, 0
    push rax
addr_2477:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2478:
    pop rax
    test rax, rax
    jz addr_2499
addr_2479:
    mov rax, 1
    push rax
addr_2480:
addr_2481:
    pop rax
    pop rbx
    push rax
    push rbx
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
    sub rbx, rax
    push rbx
addr_2486:
addr_2487:
    pop rax
    push rax
    push rax
addr_2488:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2489:
    mov rax, 10
    push rax
addr_2490:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_2491:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2492:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2493:
    mov rax, 48
    push rax
addr_2494:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2495:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2496:
    pop rax
    pop rbx
    mov [rax], bl
addr_2497:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2498:
    jmp addr_2474
addr_2499:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2500:
    pop rax
addr_2501:
    pop rax
    push rax
    push rax
addr_2502:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2503:
addr_2504:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2505:
addr_2506:
    mov rax, 32
    push rax
addr_2507:
addr_2508:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2509:
addr_2510:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2511:
addr_2512:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2513:
addr_2514:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2515:
addr_2516:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2517:
addr_2518:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2519:
addr_2520:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2521:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2522:
    jmp addr_2523
addr_2523:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_2524:
    jmp addr_2788
addr_2525:
    sub rsp, 176
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2526:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2527:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2528:
    mov rax, 0
    push rax
addr_2529:
    mov rax, 0
    push rax
addr_2530:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2531:
addr_2532:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2533:
addr_2534:
    mov rax, 0
    push rax
addr_2535:
    mov rax, 100
    push rax
addr_2536:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2537:
addr_2538:
    mov rax, 257
    push rax
addr_2539:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_2540:
    pop rax
    push rax
    push rax
addr_2541:
    mov rax, 0
    push rax
addr_2542:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2543:
    pop rax
    test rax, rax
    jz addr_2580
addr_2544:
    mov rax, 27
    push rax
    push str_9
addr_2545:
addr_2546:
    mov rax, 2
    push rax
addr_2547:
addr_2548:
addr_2549:
    mov rax, 1
    push rax
addr_2550:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2551:
    pop rax
addr_2552:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2553:
addr_2554:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2555:
addr_2556:
addr_2557:
    pop rax
    push rax
    push rax
addr_2558:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2559:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2560:
addr_2561:
    mov rax, 2
    push rax
addr_2562:
addr_2563:
addr_2564:
    mov rax, 1
    push rax
addr_2565:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2566:
    pop rax
addr_2567:
    mov rax, 1
    push rax
    push str_10
addr_2568:
addr_2569:
    mov rax, 2
    push rax
addr_2570:
addr_2571:
addr_2572:
    mov rax, 1
    push rax
addr_2573:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2574:
    pop rax
addr_2575:
    mov rax, 1
    push rax
addr_2576:
addr_2577:
    mov rax, 60
    push rax
addr_2578:
    pop rax
    pop rdi
    syscall
    push rax
addr_2579:
    pop rax
addr_2580:
    jmp addr_2581
addr_2581:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2582:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2583:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2584:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2585:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2586:
addr_2587:
    mov rax, 5
    push rax
addr_2588:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_2589:
    mov rax, 0
    push rax
addr_2590:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2591:
    pop rax
    test rax, rax
    jz addr_2628
addr_2592:
    mov rax, 44
    push rax
    push str_11
addr_2593:
addr_2594:
    mov rax, 2
    push rax
addr_2595:
addr_2596:
addr_2597:
    mov rax, 1
    push rax
addr_2598:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2599:
    pop rax
addr_2600:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2601:
addr_2602:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2603:
addr_2604:
addr_2605:
    pop rax
    push rax
    push rax
addr_2606:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2607:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2608:
addr_2609:
    mov rax, 2
    push rax
addr_2610:
addr_2611:
addr_2612:
    mov rax, 1
    push rax
addr_2613:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2614:
    pop rax
addr_2615:
    mov rax, 1
    push rax
    push str_12
addr_2616:
addr_2617:
    mov rax, 2
    push rax
addr_2618:
addr_2619:
addr_2620:
    mov rax, 1
    push rax
addr_2621:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2622:
    pop rax
addr_2623:
    mov rax, 1
    push rax
addr_2624:
addr_2625:
    mov rax, 60
    push rax
addr_2626:
    pop rax
    pop rdi
    syscall
    push rax
addr_2627:
    pop rax
addr_2628:
    jmp addr_2629
addr_2629:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2630:
addr_2631:
addr_2632:
    mov rax, 48
    push rax
addr_2633:
addr_2634:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2635:
addr_2636:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2637:
addr_2638:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2639:
addr_2640:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2641:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2642:
addr_2643:
addr_2644:
    mov rax, 0
    push rax
addr_2645:
addr_2646:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2647:
addr_2648:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2649:
addr_2650:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2651:
addr_2652:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2653:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2654:
addr_2655:
addr_2656:
    mov rax, 0
    push rax
addr_2657:
addr_2658:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2659:
addr_2660:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2661:
addr_2662:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2663:
addr_2664:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2665:
    mov rax, 0
    push rax
addr_2666:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2667:
    pop rax
    test rax, rax
    jz addr_2784
addr_2668:
    mov rax, 0
    push rax
addr_2669:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2670:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2671:
    mov rax, 2
    push rax
addr_2672:
    mov rax, 1
    push rax
addr_2673:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2674:
addr_2675:
addr_2676:
    mov rax, 0
    push rax
addr_2677:
addr_2678:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2679:
addr_2680:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2681:
addr_2682:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2683:
addr_2684:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2685:
    mov rax, 0
    push rax
addr_2686:
addr_2687:
    mov rax, 9
    push rax
addr_2688:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    pop r8
    pop r9
    syscall
    push rax
addr_2689:
addr_2690:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2691:
addr_2692:
addr_2693:
    mov rax, 8
    push rax
addr_2694:
addr_2695:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2696:
addr_2697:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2698:
addr_2699:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2700:
addr_2701:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2702:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2703:
addr_2704:
addr_2705:
    mov rax, 8
    push rax
addr_2706:
addr_2707:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2708:
addr_2709:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2710:
addr_2711:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2712:
addr_2713:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2714:
addr_2715:
addr_2716:
    mov rax, 0
    push rax
addr_2717:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2718:
    pop rax
    test rax, rax
    jz addr_2755
addr_2719:
    mov rax, 33
    push rax
    push str_13
addr_2720:
addr_2721:
    mov rax, 2
    push rax
addr_2722:
addr_2723:
addr_2724:
    mov rax, 1
    push rax
addr_2725:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2726:
    pop rax
addr_2727:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2728:
addr_2729:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2730:
addr_2731:
addr_2732:
    pop rax
    push rax
    push rax
addr_2733:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2734:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2735:
addr_2736:
    mov rax, 2
    push rax
addr_2737:
addr_2738:
addr_2739:
    mov rax, 1
    push rax
addr_2740:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2741:
    pop rax
addr_2742:
    mov rax, 1
    push rax
    push str_14
addr_2743:
addr_2744:
    mov rax, 2
    push rax
addr_2745:
addr_2746:
addr_2747:
    mov rax, 1
    push rax
addr_2748:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2749:
    pop rax
addr_2750:
    mov rax, 1
    push rax
addr_2751:
addr_2752:
    mov rax, 60
    push rax
addr_2753:
    pop rax
    pop rdi
    syscall
    push rax
addr_2754:
    pop rax
addr_2755:
    jmp addr_2756
addr_2756:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2757:
addr_2758:
    pop rax
    push rax
    push rax
addr_2759:
addr_2760:
addr_2761:
    mov rax, 0
    push rax
addr_2762:
addr_2763:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2764:
addr_2765:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2766:
addr_2767:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2768:
addr_2769:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2770:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2771:
addr_2772:
addr_2773:
    mov rax, 8
    push rax
addr_2774:
addr_2775:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2776:
addr_2777:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2778:
addr_2779:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2780:
addr_2781:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2782:
addr_2783:
    jmp addr_2786
addr_2784:
    mov rax, 0
    push rax
addr_2785:
    mov rax, 0
    push rax
addr_2786:
    jmp addr_2787
addr_2787:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 176
    ret
addr_2788:
    jmp addr_2836
addr_2789:
    sub rsp, 144
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2790:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2791:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2792:
addr_2793:
    mov rax, 4
    push rax
addr_2794:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_2795:
    pop rax
    push rax
    push rax
addr_2796:
    mov rax, 0
    push rax
addr_2797:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2798:
    pop rax
    test rax, rax
    jz addr_2802
addr_2799:
    pop rax
addr_2800:
    mov rax, 1
    push rax
addr_2801:
    jmp addr_2810
addr_2802:
    pop rax
    push rax
    push rax
addr_2803:
    mov rax, 0
    push rax
addr_2804:
    mov rax, 2
    push rax
addr_2805:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2806:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2807:
    pop rax
    test rax, rax
    jz addr_2811
addr_2808:
    pop rax
addr_2809:
    mov rax, 0
    push rax
addr_2810:
    jmp addr_2834
addr_2811:
    pop rax
addr_2812:
    mov rax, 0
    push rax
addr_2813:
    mov rax, 17
    push rax
    push str_15
addr_2814:
addr_2815:
    mov rax, 2
    push rax
addr_2816:
addr_2817:
addr_2818:
    mov rax, 1
    push rax
addr_2819:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2820:
    pop rax
addr_2821:
    mov rax, 28
    push rax
    push str_16
addr_2822:
addr_2823:
    mov rax, 2
    push rax
addr_2824:
addr_2825:
addr_2826:
    mov rax, 1
    push rax
addr_2827:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2828:
    pop rax
addr_2829:
    mov rax, 1
    push rax
addr_2830:
addr_2831:
    mov rax, 60
    push rax
addr_2832:
    pop rax
    pop rdi
    syscall
    push rax
addr_2833:
    pop rax
addr_2834:
    jmp addr_2835
addr_2835:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 144
    ret
addr_2836:
    jmp addr_2944
addr_2837:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2838:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2839:
addr_2840:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2841:
    mov rax, 10
    push rax
    push str_17
addr_2842:
addr_2843:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2844:
    mov rax, 0
    push rax
addr_2845:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2846:
    pop rax
    test rax, rax
    jz addr_2854
addr_2847:
    pop rax
    push rax
    push rax
addr_2848:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_2849:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2850:
addr_2851:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2852:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2853:
    jmp addr_2855
addr_2854:
    mov rax, 0
    push rax
addr_2855:
    jmp addr_2856
addr_2856:
    pop rax
    test rax, rax
    jz addr_2870
addr_2857:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2858:
    mov rax, 1
    push rax
addr_2859:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2860:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2861:
    mov rax, 1
    push rax
addr_2862:
addr_2863:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2864:
addr_2865:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2866:
addr_2867:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2868:
addr_2869:
    jmp addr_2842
addr_2870:
    pop rax
addr_2871:
    mov rax, 0
    push rax
addr_2872:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2873:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2874:
addr_2875:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2876:
addr_2877:
    pop rax
    push rax
    push rax
addr_2878:
addr_2879:
    pop rax
    push rax
    push rax
addr_2880:
    mov rax, 48
    push rax
addr_2881:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2882:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2883:
    mov rax, 57
    push rax
addr_2884:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2885:
addr_2886:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2887:
addr_2888:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2889:
addr_2890:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2891:
addr_2892:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2893:
addr_2894:
    pop rax
    push rax
    push rax
addr_2895:
    pop rax
    push rax
    push rax
addr_2896:
    mov rax, 97
    push rax
addr_2897:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2898:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2899:
    mov rax, 122
    push rax
addr_2900:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2901:
addr_2902:
    pop rax
    pop rbx
    push rax
    push rbx
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
    and rbx, rax
    push rbx
addr_2907:
addr_2908:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2909:
    pop rax
    push rax
    push rax
addr_2910:
    mov rax, 65
    push rax
addr_2911:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2912:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2913:
    mov rax, 90
    push rax
addr_2914:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2915:
addr_2916:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2917:
addr_2918:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2919:
addr_2920:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2921:
addr_2922:
addr_2923:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2924:
addr_2925:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2926:
addr_2927:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2928:
addr_2929:
addr_2930:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2931:
addr_2932:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2933:
addr_2934:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2935:
addr_2936:
addr_2937:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2938:
addr_2939:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2940:
addr_2941:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2942:
addr_2943:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_2944:
    jmp addr_2975
addr_2945:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2946:
addr_2947:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2948:
    mov rax, 0
    push rax
addr_2949:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2950:
    pop rax
    test rax, rax
    jz addr_2955
addr_2951:
    pop rax
    push rax
    push rax
addr_2952:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_2953:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2837
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2954:
    jmp addr_2956
addr_2955:
    mov rax, 0
    push rax
addr_2956:
    jmp addr_2957
addr_2957:
    pop rax
    test rax, rax
    jz addr_2971
addr_2958:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2959:
    mov rax, 1
    push rax
addr_2960:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2961:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2962:
    mov rax, 1
    push rax
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
    add rax, rbx
    push rax
addr_2969:
addr_2970:
    jmp addr_2946
addr_2971:
    pop rax
addr_2972:
    mov rax, 0
    push rax
addr_2973:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2974:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2975:
    jmp addr_3077
addr_2976:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2977:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2978:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2979:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2945
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2980:
addr_2981:
addr_2982:
    mov rax, 1
    push rax
addr_2983:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2984:
addr_2985:
    pop rax
    test rax, rax
    jz addr_3075
addr_2986:
addr_2987:
    mov rax, mem
    add rax, 0
    push rax
addr_2988:
    mov rax, mem
    add rax, 8388608
    push rax
addr_2989:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2990:
addr_2991:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2992:
addr_2993:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2994:
addr_2995:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2996:
addr_2997:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2998:
addr_2999:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3000:
    mov rax, 1
    push rax
    push str_18
addr_3001:
addr_3002:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3003:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3004:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3005:
    pop rax
addr_3006:
addr_3007:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3008:
    mov rax, 0
    push rax
addr_3009:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3010:
    pop rax
    test rax, rax
    jz addr_3042
addr_3011:
    pop rax
    push rax
    push rax
addr_3012:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3013:
    pop rax
    push rax
    push rax
addr_3014:
    mov rax, 39
    push rax
addr_3015:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3016:
    pop rax
    test rax, rax
    jz addr_3025
addr_3017:
    pop rax
addr_3018:
    mov rax, 5
    push rax
    push str_19
addr_3019:
addr_3020:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3021:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3022:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3023:
    pop rax
addr_3024:
    jmp addr_3028
addr_3025:
    mov rax, 1
    push rax
addr_3026:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3027:
    pop rax
    pop rbx
    mov [rax], bl
addr_3028:
    jmp addr_3029
addr_3029:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3030:
    mov rax, 1
    push rax
addr_3031:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3032:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3033:
    mov rax, 1
    push rax
addr_3034:
addr_3035:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3036:
addr_3037:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3038:
addr_3039:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3040:
addr_3041:
    jmp addr_3006
addr_3042:
    pop rax
addr_3043:
    pop rax
addr_3044:
    mov rax, 1
    push rax
    push str_20
addr_3045:
addr_3046:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3047:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2073
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3048:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1778
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3049:
    pop rax
addr_3050:
addr_3051:
    mov rax, mem
    add rax, 0
    push rax
addr_3052:
    mov rax, mem
    add rax, 8388608
    push rax
addr_3053:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3054:
addr_3055:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3056:
addr_3057:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3058:
addr_3059:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3060:
addr_3061:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3062:
addr_3063:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3064:
addr_3065:
addr_3066:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3067:
addr_3068:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3069:
addr_3070:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3071:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3072:
addr_3073:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3074:
addr_3075:
    jmp addr_3076
addr_3076:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3077:
    jmp addr_3102
addr_3078:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3079:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3080:
    mov rax, 1
    push rax
addr_3081:
addr_3082:
    mov rax, 228
    push rax
addr_3083:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_3084:
    mov rax, 0
    push rax
addr_3085:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3086:
    pop rax
    test rax, rax
    jz addr_3100
addr_3087:
    mov rax, 64
    push rax
    push str_21
addr_3088:
addr_3089:
    mov rax, 2
    push rax
addr_3090:
addr_3091:
addr_3092:
    mov rax, 1
    push rax
addr_3093:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3094:
    pop rax
addr_3095:
    mov rax, 1
    push rax
addr_3096:
addr_3097:
    mov rax, 60
    push rax
addr_3098:
    pop rax
    pop rdi
    syscall
    push rax
addr_3099:
    pop rax
addr_3100:
    jmp addr_3101
addr_3101:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3102:
    jmp addr_3236
addr_3103:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3104:
addr_3105:
addr_3106:
    mov rax, 1
    push rax
addr_3107:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3108:
addr_3109:
    pop rax
    test rax, rax
    jz addr_3232
addr_3110:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3111:
    mov rax, 1
    push rax
addr_3112:
addr_3113:
    mov rax, 228
    push rax
addr_3114:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_3115:
    mov rax, 0
    push rax
addr_3116:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3117:
    pop rax
    test rax, rax
    jz addr_3131
addr_3118:
    mov rax, 62
    push rax
    push str_22
addr_3119:
addr_3120:
    mov rax, 2
    push rax
addr_3121:
addr_3122:
addr_3123:
    mov rax, 1
    push rax
addr_3124:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3125:
    pop rax
addr_3126:
    mov rax, 1
    push rax
addr_3127:
addr_3128:
    mov rax, 60
    push rax
addr_3129:
    pop rax
    pop rdi
    syscall
    push rax
addr_3130:
    pop rax
addr_3131:
    jmp addr_3132
addr_3132:
addr_3133:
    mov rax, 1
    push rax
addr_3134:
addr_3135:
addr_3136:
    mov rax, 1
    push rax
addr_3137:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3138:
    pop rax
addr_3139:
    mov rax, 6
    push rax
    push str_23
addr_3140:
addr_3141:
    mov rax, 1
    push rax
addr_3142:
addr_3143:
addr_3144:
    mov rax, 1
    push rax
addr_3145:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3146:
    pop rax
addr_3147:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3148:
    mov rax, 0
    push rax
addr_3149:
addr_3150:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3151:
addr_3152:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3153:
addr_3154:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3155:
addr_3156:
addr_3157:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3158:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3159:
    mov rax, 0
    push rax
addr_3160:
addr_3161:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3162:
addr_3163:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3164:
addr_3165:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3166:
addr_3167:
addr_3168:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3169:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3170:
    mov rax, 1000000000
    push rax
addr_3171:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_3172:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3173:
    mov rax, 8
    push rax
addr_3174:
addr_3175:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3176:
addr_3177:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3178:
addr_3179:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3180:
addr_3181:
addr_3182:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3183:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3184:
    mov rax, 8
    push rax
addr_3185:
addr_3186:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3187:
addr_3188:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3189:
addr_3190:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3191:
addr_3192:
addr_3193:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3194:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3195:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3196:
    pop rax
    push rax
    push rax
addr_3197:
    mov rax, 1000000000
    push rax
addr_3198:
addr_3199:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_3200:
    pop rax
addr_3201:
addr_3202:
    mov rax, 1
    push rax
addr_3203:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1585
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3204:
    mov rax, 1
    push rax
    push str_24
addr_3205:
addr_3206:
    mov rax, 1
    push rax
addr_3207:
addr_3208:
addr_3209:
    mov rax, 1
    push rax
addr_3210:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3211:
    pop rax
addr_3212:
    pop rax
    push rax
    push rax
addr_3213:
    mov rax, 1000000000
    push rax
addr_3214:
addr_3215:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_3216:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3217:
    pop rax
addr_3218:
    mov rax, 9
    push rax
addr_3219:
addr_3220:
    mov rax, 1
    push rax
addr_3221:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1664
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3222:
    mov rax, 6
    push rax
    push str_25
addr_3223:
addr_3224:
    mov rax, 1
    push rax
addr_3225:
addr_3226:
addr_3227:
    mov rax, 1
    push rax
addr_3228:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3229:
    pop rax
addr_3230:
    pop rax
addr_3231:
    jmp addr_3234
addr_3232:
    pop rax
addr_3233:
    pop rax
addr_3234:
    jmp addr_3235
addr_3235:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_3236:
    jmp addr_3295
addr_3237:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3238:
addr_3239:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3240:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3241:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3242:
    pop rax
    push rax
    push rax
addr_3243:
    mov rax, 0
    push rax
addr_3244:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3245:
    pop rax
    test rax, rax
    jz addr_3259
addr_3246:
    mov rax, 1
    push rax
addr_3247:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3248:
addr_3249:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3250:
addr_3251:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3252:
addr_3253:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3254:
addr_3255:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3256:
    mov rax, 47
    push rax
addr_3257:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3258:
    jmp addr_3262
addr_3259:
    pop rax
addr_3260:
    pop rax
addr_3261:
    mov rax, 0
    push rax
addr_3262:
    jmp addr_3263
addr_3263:
    pop rax
    test rax, rax
    jz addr_3269
addr_3264:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3265:
    mov rax, 1
    push rax
addr_3266:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3267:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3268:
    jmp addr_3238
addr_3269:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3270:
    pop rax
    push rax
    push rax
addr_3271:
    mov rax, 0
    push rax
addr_3272:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3273:
    pop rax
    test rax, rax
    jz addr_3292
addr_3274:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3275:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3276:
    mov rax, 1
    push rax
addr_3277:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3278:
addr_3279:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3280:
addr_3281:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3282:
addr_3283:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3284:
addr_3285:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3286:
    mov rax, 47
    push rax
addr_3287:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3288:
    pop rax
    test rax, rax
    jz addr_3291
addr_3289:
    mov rax, 1
    push rax
addr_3290:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3291:
    jmp addr_3292
addr_3292:
    jmp addr_3293
addr_3293:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3294:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3295:
    jmp addr_3431
addr_3296:
    sub rsp, 24
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3297:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3298:
addr_3299:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3300:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3301:
addr_3302:
    pop rax
    push rax
    push rax
addr_3303:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_3304:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3305:
addr_3306:
addr_3307:
    mov rax, 8
    push rax
addr_3308:
addr_3309:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3310:
addr_3311:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3312:
addr_3313:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3314:
addr_3315:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3316:
addr_3317:
addr_3318:
    mov rax, 0
    push rax
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
    pop rbx
    mov [rax], rbx
addr_3327:
    mov rax, 0
    push rax
addr_3328:
addr_3329:
    pop rax
    push rax
    push rax
addr_3330:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3331:
addr_3332:
addr_3333:
    mov rax, 0
    push rax
addr_3334:
addr_3335:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3336:
addr_3337:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3338:
addr_3339:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3340:
addr_3341:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3342:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3343:
    pop rax
    test rax, rax
    jz addr_3387
addr_3344:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3345:
addr_3346:
addr_3347:
    mov rax, 0
    push rax
addr_3348:
addr_3349:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3350:
addr_3351:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3352:
addr_3353:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3354:
addr_3355:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3356:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3357:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3358:
    mov rax, 1
    push rax
addr_3359:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3360:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3361:
addr_3362:
addr_3363:
    mov rax, 8
    push rax
addr_3364:
addr_3365:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3366:
addr_3367:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3368:
addr_3369:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3370:
addr_3371:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3372:
addr_3373:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3374:
addr_3375:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3376:
addr_3377:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3378:
addr_3379:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3380:
addr_3381:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3382:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3383:
addr_3384:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3385:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3386:
    jmp addr_3388
addr_3387:
    mov rax, 0
    push rax
addr_3388:
    jmp addr_3389
addr_3389:
    pop rax
    test rax, rax
    jz addr_3393
addr_3390:
    mov rax, 1
    push rax
addr_3391:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3392:
    jmp addr_3328
addr_3393:
    pop rax
    push rax
    push rax
addr_3394:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3395:
addr_3396:
addr_3397:
    mov rax, 0
    push rax
addr_3398:
addr_3399:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3400:
addr_3401:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3402:
addr_3403:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3404:
addr_3405:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3406:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3407:
    pop rax
    test rax, rax
    jz addr_3425
addr_3408:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3409:
addr_3410:
addr_3411:
    mov rax, 0
    push rax
addr_3412:
addr_3413:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3414:
addr_3415:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3416:
addr_3417:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3418:
addr_3419:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3420:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3421:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3422:
    mov rax, 1
    push rax
addr_3423:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3424:
    jmp addr_3429
addr_3425:
    pop rax
addr_3426:
    mov rax, 0
    push rax
addr_3427:
    mov rax, 1
    push rax
addr_3428:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3429:
    jmp addr_3430
addr_3430:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 24
    ret
addr_3431:
    jmp addr_3445
addr_3432:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3433:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3434:
    pop rax
    pop rbx
    mov [rax], bl
addr_3435:
    mov rax, 1
    push rax
addr_3436:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3437:
addr_3438:
    mov rax, 1
    push rax
addr_3439:
addr_3440:
addr_3441:
    mov rax, 1
    push rax
addr_3442:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3443:
    pop rax
addr_3444:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3445:
    jmp addr_3583
addr_3446:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3447:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3448:
addr_3449:
    pop rax
    push rax
    push rax
addr_3450:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_3451:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3452:
addr_3453:
addr_3454:
    mov rax, 8
    push rax
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
    push rax
    push rbx
addr_3459:
addr_3460:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3461:
addr_3462:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3463:
addr_3464:
addr_3465:
    mov rax, 0
    push rax
addr_3466:
addr_3467:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3468:
addr_3469:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3470:
addr_3471:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3472:
addr_3473:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3474:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3475:
addr_3476:
    pop rax
    push rax
    push rax
addr_3477:
addr_3478:
addr_3479:
    mov rax, 0
    push rax
addr_3480:
addr_3481:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3482:
addr_3483:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3484:
addr_3485:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3486:
addr_3487:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3488:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3489:
addr_3490:
addr_3491:
    mov rax, 8
    push rax
addr_3492:
addr_3493:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3494:
addr_3495:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3496:
addr_3497:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3498:
addr_3499:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3500:
addr_3501:
    mov rax, 47
    push rax
addr_3502:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3296
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3503:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3504:
addr_3505:
    pop rax
    push rax
    push rax
addr_3506:
addr_3507:
addr_3508:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_3513:
addr_3514:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3515:
addr_3516:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3517:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3518:
addr_3519:
addr_3520:
    mov rax, 8
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
addr_3530:
    mov rax, 46
    push rax
addr_3531:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3296
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3532:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3533:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3534:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3535:
    pop rax
    test rax, rax
    jz addr_3552
addr_3536:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3537:
    pop rax
addr_3538:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3539:
addr_3540:
addr_3541:
    mov rax, 8
    push rax
addr_3542:
addr_3543:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3544:
addr_3545:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3546:
addr_3547:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3548:
addr_3549:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3550:
addr_3551:
    jmp addr_3581
addr_3552:
    pop rax
addr_3553:
    pop rax
addr_3554:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3555:
addr_3556:
    pop rax
    push rax
    push rax
addr_3557:
addr_3558:
addr_3559:
    mov rax, 0
    push rax
addr_3560:
addr_3561:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_3566:
addr_3567:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3568:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3569:
addr_3570:
addr_3571:
    mov rax, 8
    push rax
addr_3572:
addr_3573:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3574:
addr_3575:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3576:
addr_3577:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3578:
addr_3579:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3580:
addr_3581:
    jmp addr_3582
addr_3582:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_3583:
    jmp addr_3737
addr_3584:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3585:
    pop rax
    test rax, rax
    jz addr_3642
addr_3586:
    mov rax, 5
    push rax
    push str_26
addr_3587:
addr_3588:
    mov rax, 1
    push rax
addr_3589:
addr_3590:
addr_3591:
    mov rax, 1
    push rax
addr_3592:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3593:
    pop rax
addr_3594:
    pop rax
    push rax
    push rax
addr_3595:
addr_3596:
    pop rax
    push rax
    push rax
addr_3597:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3598:
    mov rax, 0
    push rax
addr_3599:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3600:
    pop rax
    test rax, rax
    jz addr_3633
addr_3601:
    mov rax, 1
    push rax
    push str_27
addr_3602:
addr_3603:
    mov rax, 1
    push rax
addr_3604:
addr_3605:
addr_3606:
    mov rax, 1
    push rax
addr_3607:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3608:
    pop rax
addr_3609:
    pop rax
    push rax
    push rax
addr_3610:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3611:
addr_3612:
addr_3613:
    pop rax
    push rax
    push rax
addr_3614:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_417
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3615:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3616:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2976
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3617:
addr_3618:
    mov rax, 1
    push rax
addr_3619:
addr_3620:
addr_3621:
    mov rax, 1
    push rax
addr_3622:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3623:
    pop rax
addr_3624:
    mov rax, 8
    push rax
addr_3625:
addr_3626:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3627:
addr_3628:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3629:
addr_3630:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3631:
addr_3632:
    jmp addr_3595
addr_3633:
    pop rax
addr_3634:
    mov rax, 1
    push rax
    push str_28
addr_3635:
addr_3636:
    mov rax, 1
    push rax
addr_3637:
addr_3638:
addr_3639:
    mov rax, 1
    push rax
addr_3640:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3641:
    pop rax
addr_3642:
    jmp addr_3643
addr_3643:
addr_3644:
    mov rax, 57
    push rax
addr_3645:
    pop rax
    syscall
    push rax
addr_3646:
    pop rax
    push rax
    push rax
addr_3647:
    mov rax, 0
    push rax
addr_3648:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3649:
    pop rax
    test rax, rax
    jz addr_3658
addr_3650:
    pop rax
addr_3651:
    pop rax
    push rax
    push rax
addr_3652:
addr_3653:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3654:
addr_3655:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3656:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2146
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3657:
    jmp addr_3719
addr_3658:
    pop rax
    push rax
    push rax
addr_3659:
    mov rax, 0
    push rax
addr_3660:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3661:
    pop rax
    test rax, rax
    jz addr_3720
addr_3662:
    pop rax
addr_3663:
    pop rax
addr_3664:
    mov rax, 0
    push rax
addr_3665:
    mov rax, 0
    push rax
addr_3666:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3667:
    mov rax, 0
    push rax
addr_3668:
    mov rax, 1
    push rax
addr_3669:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3670:
addr_3671:
    mov rax, 61
    push rax
addr_3672:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_3673:
    mov rax, 0
    push rax
addr_3674:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3675:
    pop rax
    test rax, rax
    jz addr_3689
addr_3676:
    mov rax, 70
    push rax
    push str_29
addr_3677:
addr_3678:
    mov rax, 2
    push rax
addr_3679:
addr_3680:
addr_3681:
    mov rax, 1
    push rax
addr_3682:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3683:
    pop rax
addr_3684:
    mov rax, 1
    push rax
addr_3685:
addr_3686:
    mov rax, 60
    push rax
addr_3687:
    pop rax
    pop rdi
    syscall
    push rax
addr_3688:
    pop rax
addr_3689:
    jmp addr_3690
addr_3690:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3691:
addr_3692:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3693:
    pop rax
    push rax
    push rax
addr_3694:
addr_3695:
    mov rax, 127
    push rax
addr_3696:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3697:
    mov rax, 0
    push rax
addr_3698:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3699:
    pop rax
    test rax, rax
    jz addr_3717
addr_3700:
    pop rax
    push rax
    push rax
addr_3701:
addr_3702:
    mov rax, 65280
    push rax
addr_3703:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3704:
    mov rax, 8
    push rax
addr_3705:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_3706:
    pop rax
    push rax
    push rax
addr_3707:
    mov rax, 0
    push rax
addr_3708:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3709:
    pop rax
    test rax, rax
    jz addr_3715
addr_3710:
    pop rax
    push rax
    push rax
addr_3711:
addr_3712:
    mov rax, 60
    push rax
addr_3713:
    pop rax
    pop rdi
    syscall
    push rax
addr_3714:
    pop rax
addr_3715:
    jmp addr_3716
addr_3716:
    pop rax
addr_3717:
    jmp addr_3718
addr_3718:
    pop rax
addr_3719:
    jmp addr_3735
addr_3720:
    pop rax
addr_3721:
    pop rax
addr_3722:
    mov rax, 31
    push rax
    push str_30
addr_3723:
addr_3724:
    mov rax, 2
    push rax
addr_3725:
addr_3726:
addr_3727:
    mov rax, 1
    push rax
addr_3728:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3729:
    pop rax
addr_3730:
    mov rax, 1
    push rax
addr_3731:
addr_3732:
    mov rax, 60
    push rax
addr_3733:
    pop rax
    pop rdi
    syscall
    push rax
addr_3734:
    pop rax
addr_3735:
    jmp addr_3736
addr_3736:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3737:
    mov rax, mem
    add rax, 8388632
    push rax
addr_3738:
    mov rax, 100
    push rax
addr_3739:
    mov rax, 2
    push rax
addr_3740:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3741:
addr_3742:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3743:
addr_3744:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3745:
addr_3746:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3747:
addr_3748:
    mov rax, 1
    push rax
addr_3749:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3750:
    pop rax
    pop rbx
    mov [rax], bl
addr_3751:
    mov rax, mem
    add rax, 8388732
    push rax
addr_3752:
    mov rax, 100
    push rax
addr_3753:
addr_3754:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3755:
addr_3756:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3757:
addr_3758:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3759:
addr_3760:
    mov rax, 10
    push rax
addr_3761:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3762:
    pop rax
    pop rbx
    mov [rax], bl
addr_3763:
    mov rax, 0
    push rax
addr_3764:
addr_3765:
    pop rax
    push rax
    push rax
addr_3766:
    mov rax, 100
    push rax
addr_3767:
    mov rax, 2
    push rax
addr_3768:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3769:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3770:
    pop rax
    test rax, rax
    jz addr_3889
addr_3771:
    mov rax, 0
    push rax
addr_3772:
addr_3773:
    pop rax
    push rax
    push rax
addr_3774:
    mov rax, 100
    push rax
addr_3775:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3776:
    pop rax
    test rax, rax
    jz addr_3810
addr_3777:
    pop rax
    push rax
    push rax
addr_3778:
    mov rax, mem
    add rax, 8388632
    push rax
addr_3779:
addr_3780:
addr_3781:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3782:
addr_3783:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3784:
    mov rax, 1
    push rax
addr_3785:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3786:
    pop rax
    test rax, rax
    jz addr_3797
addr_3787:
    pop rax
    push rax
    push rax
addr_3788:
    mov rax, mem
    add rax, 8388732
    push rax
addr_3789:
addr_3790:
addr_3791:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3792:
addr_3793:
    mov rax, 42
    push rax
addr_3794:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3795:
    pop rax
    pop rbx
    mov [rax], bl
addr_3796:
    jmp addr_3806
addr_3797:
    pop rax
    push rax
    push rax
addr_3798:
    mov rax, mem
    add rax, 8388732
    push rax
addr_3799:
addr_3800:
addr_3801:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3802:
addr_3803:
    mov rax, 32
    push rax
addr_3804:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3805:
    pop rax
    pop rbx
    mov [rax], bl
addr_3806:
    jmp addr_3807
addr_3807:
    mov rax, 1
    push rax
addr_3808:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3809:
    jmp addr_3772
addr_3810:
    pop rax
addr_3811:
    mov rax, 100
    push rax
addr_3812:
    mov rax, 1
    push rax
addr_3813:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3814:
    mov rax, mem
    add rax, 8388732
    push rax
addr_3815:
addr_3816:
    mov rax, 1
    push rax
addr_3817:
addr_3818:
addr_3819:
    mov rax, 1
    push rax
addr_3820:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3821:
    pop rax
addr_3822:
    mov rax, mem
    add rax, 8388632
    push rax
addr_3823:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3824:
    mov rax, 1
    push rax
addr_3825:
    pop rcx
    pop rbx
    shl rbx, cl
    push rbx
addr_3826:
    mov rax, mem
    add rax, 8388632
    push rax
addr_3827:
    mov rax, 1
    push rax
addr_3828:
addr_3829:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3830:
addr_3831:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3832:
addr_3833:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3834:
addr_3835:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3836:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_3837:
    mov rax, 1
    push rax
addr_3838:
addr_3839:
    pop rax
    push rax
    push rax
addr_3840:
    mov rax, 100
    push rax
addr_3841:
    mov rax, 2
    push rax
addr_3842:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3843:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3844:
    pop rax
    test rax, rax
    jz addr_3884
addr_3845:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3846:
    mov rax, 1
    push rax
addr_3847:
    pop rcx
    pop rbx
    shl rbx, cl
    push rbx
addr_3848:
    mov rax, 7
    push rax
addr_3849:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3850:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3851:
    mov rax, mem
    add rax, 8388632
    push rax
addr_3852:
addr_3853:
addr_3854:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3855:
addr_3856:
    mov rax, 1
    push rax
addr_3857:
addr_3858:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3859:
addr_3860:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3861:
addr_3862:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3863:
addr_3864:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3865:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_3866:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3867:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3868:
    mov rax, 110
    push rax
addr_3869:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3870:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_3871:
    mov rax, 1
    push rax
addr_3872:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3873:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3874:
    mov rax, mem
    add rax, 8388632
    push rax
addr_3875:
addr_3876:
addr_3877:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3878:
addr_3879:
    pop rax
    pop rbx
    mov [rax], bl
addr_3880:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3881:
    mov rax, 1
    push rax
addr_3882:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3883:
    jmp addr_3838
addr_3884:
    pop rax
addr_3885:
    pop rax
addr_3886:
    mov rax, 1
    push rax
addr_3887:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3888:
    jmp addr_3764
addr_3889:
    pop rax
addr_3890:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 48
str_1: db 46,47,115,116,100,46,116,111,114,99,104,58,53,52,52,58,53
str_2: db 58,32,84,101,109,112,111,114,97,114,121,32,109,101,109,111,114,121,32,98,117,102,102,101,114,32,99,97,112,97,99,105,116,121,32,101,120,99,101,101,100,101,100,46,32,78,101,101,100,32,116,111,32,99,97,108,108,32,116,109,112,45,99,108,101,97,110,32,109,111,114,101,32,111,102,116,101,110,10
str_3: db 80,65,84,72
str_4: db 67,111,117,108,100,32,110,111,116,32,102,105,110,100,32,36,80,65,84,72,10
str_5: db 47
str_6: db 46,47,115,116,100,46,116,111,114,99,104,58,53,57,57,58,51
str_7: db 58,32,69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,102,105,110,100,32,101,120,101,99,117,116,97,98,108,101,32,96
str_8: db 96,10
str_9: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,111,112,101,110,32,102,105,108,101,32
str_10: db 10
str_11: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,100,101,116,101,114,109,105,110,101,32,116,104,101,32,115,105,122,101,32,111,102,32,102,105,108,101,32
str_12: db 10
str_13: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,109,101,109,111,114,121,32,109,97,112,32,102,105,108,101,32
str_14: db 10
str_15: db 46,47,115,116,100,46,116,111,114,99,104,58,55,51,49,58,53
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
segment .bss
args_ptr: resq 1
ret_stack_rsp: resq 1
ret_stack: resb 65536
ret_stack_end:
mem: resb 8388833
