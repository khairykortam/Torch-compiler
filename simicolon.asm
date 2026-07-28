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
    jmp addr_5
addr_1:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3:
addr_4:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_5:
    jmp addr_14
addr_6:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_7:
addr_8:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_9:
addr_10:
addr_11:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_12:
addr_13:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_14:
    jmp addr_19
addr_15:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_16:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_17:
addr_18:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_19:
    jmp addr_23
addr_20:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_21:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_22:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_23:
    jmp addr_27
addr_24:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_25:
    pop rax
    pop rbx
    mov [rax], rbx
addr_26:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_27:
    jmp addr_31
addr_28:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_29:
    pop rax
    pop rbx
    mov [rax], rbx
addr_30:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_31:
    jmp addr_35
addr_32:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_33:
    pop rax
    pop rbx
    mov [rax], rbx
addr_34:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_35:
    jmp addr_44
addr_36:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_37:
    pop rax
    pop rbx
    push rax
    push rbx
addr_38:
addr_39:
    pop rax
    pop rbx
    push rax
    push rbx
addr_40:
addr_41:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_42:
addr_43:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_44:
    jmp addr_53
addr_45:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_46:
    pop rax
    pop rbx
    push rax
    push rbx
addr_47:
addr_48:
    pop rax
    pop rbx
    push rax
    push rbx
addr_49:
addr_50:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_51:
addr_52:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_53:
    jmp addr_61
addr_54:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_55:
    pop rax
    pop rbx
    push rax
    push rbx
addr_56:
addr_57:
    pop rax
    pop rbx
    push rax
    push rbx
addr_58:
addr_59:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_60:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_61:
    jmp addr_69
addr_62:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_63:
    pop rax
    pop rbx
    push rax
    push rbx
addr_64:
addr_65:
    pop rax
    pop rbx
    push rax
    push rbx
addr_66:
addr_67:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_68:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_69:
    jmp addr_75
addr_70:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_71:
addr_72:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_73:
addr_74:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_75:
    jmp addr_83
addr_76:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_77:
    pop rax
    pop rbx
    push rax
    push rbx
addr_78:
addr_79:
    pop rax
    pop rbx
    push rax
    push rbx
addr_80:
addr_81:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_82:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_83:
    jmp addr_94
addr_84:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_85:
    mov rax, 0
    push rax
addr_86:
addr_87:
    pop rax
    pop rbx
    push rax
    push rbx
addr_88:
addr_89:
    pop rax
    pop rbx
    push rax
    push rbx
addr_90:
addr_91:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_92:
addr_93:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_94:
    jmp addr_105
addr_95:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_96:
    mov rax, 8
    push rax
addr_97:
addr_98:
    pop rax
    pop rbx
    push rax
    push rbx
addr_99:
addr_100:
    pop rax
    pop rbx
    push rax
    push rbx
addr_101:
addr_102:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_103:
addr_104:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_105:
    jmp addr_116
addr_106:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_107:
    mov rax, 24
    push rax
addr_108:
addr_109:
    pop rax
    pop rbx
    push rax
    push rbx
addr_110:
addr_111:
    pop rax
    pop rbx
    push rax
    push rbx
addr_112:
addr_113:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_114:
addr_115:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_116:
    jmp addr_127
addr_117:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_118:
    mov rax, 16
    push rax
addr_119:
addr_120:
    pop rax
    pop rbx
    push rax
    push rbx
addr_121:
addr_122:
    pop rax
    pop rbx
    push rax
    push rbx
addr_123:
addr_124:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_125:
addr_126:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_127:
    jmp addr_138
addr_128:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_129:
    mov rax, 28
    push rax
addr_130:
addr_131:
    pop rax
    pop rbx
    push rax
    push rbx
addr_132:
addr_133:
    pop rax
    pop rbx
    push rax
    push rbx
addr_134:
addr_135:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_136:
addr_137:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_138:
    jmp addr_149
addr_139:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_140:
    mov rax, 32
    push rax
addr_141:
addr_142:
    pop rax
    pop rbx
    push rax
    push rbx
addr_143:
addr_144:
    pop rax
    pop rbx
    push rax
    push rbx
addr_145:
addr_146:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_147:
addr_148:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_149:
    jmp addr_160
addr_150:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_151:
    mov rax, 40
    push rax
addr_152:
addr_153:
    pop rax
    pop rbx
    push rax
    push rbx
addr_154:
addr_155:
    pop rax
    pop rbx
    push rax
    push rbx
addr_156:
addr_157:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_158:
addr_159:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_160:
    jmp addr_171
addr_161:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_162:
    mov rax, 48
    push rax
addr_163:
addr_164:
    pop rax
    pop rbx
    push rax
    push rbx
addr_165:
addr_166:
    pop rax
    pop rbx
    push rax
    push rbx
addr_167:
addr_168:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_169:
addr_170:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_171:
    jmp addr_184
addr_172:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_173:
addr_174:
    mov rax, 48
    push rax
addr_175:
addr_176:
    pop rax
    pop rbx
    push rax
    push rbx
addr_177:
addr_178:
    pop rax
    pop rbx
    push rax
    push rbx
addr_179:
addr_180:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_181:
addr_182:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_183:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_184:
    jmp addr_195
addr_185:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_186:
    mov rax, 56
    push rax
addr_187:
addr_188:
    pop rax
    pop rbx
    push rax
    push rbx
addr_189:
addr_190:
    pop rax
    pop rbx
    push rax
    push rbx
addr_191:
addr_192:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_193:
addr_194:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_195:
    jmp addr_206
addr_196:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_197:
    mov rax, 64
    push rax
addr_198:
addr_199:
    pop rax
    pop rbx
    push rax
    push rbx
addr_200:
addr_201:
    pop rax
    pop rbx
    push rax
    push rbx
addr_202:
addr_203:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_204:
addr_205:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_206:
    jmp addr_217
addr_207:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_208:
    mov rax, 72
    push rax
addr_209:
addr_210:
    pop rax
    pop rbx
    push rax
    push rbx
addr_211:
addr_212:
    pop rax
    pop rbx
    push rax
    push rbx
addr_213:
addr_214:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_215:
addr_216:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_217:
    jmp addr_228
addr_218:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_219:
    mov rax, 88
    push rax
addr_220:
addr_221:
    pop rax
    pop rbx
    push rax
    push rbx
addr_222:
addr_223:
    pop rax
    pop rbx
    push rax
    push rbx
addr_224:
addr_225:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_226:
addr_227:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_228:
    jmp addr_239
addr_229:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_230:
    mov rax, 104
    push rax
addr_231:
addr_232:
    pop rax
    pop rbx
    push rax
    push rbx
addr_233:
addr_234:
    pop rax
    pop rbx
    push rax
    push rbx
addr_235:
addr_236:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_237:
addr_238:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_239:
    jmp addr_244
addr_240:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_241:
    mov rax, 1
    push rax
addr_242:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_243:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_244:
    jmp addr_249
addr_245:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_246:
    mov rax, 0
    push rax
addr_247:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_248:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_249:
    jmp addr_254
addr_250:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_251:
    mov rax, 257
    push rax
addr_252:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_253:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_254:
    jmp addr_259
addr_255:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_256:
    mov rax, 16
    push rax
addr_257:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_258:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_259:
    jmp addr_264
addr_260:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_261:
    mov rax, 5
    push rax
addr_262:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_263:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_264:
    jmp addr_269
addr_265:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_266:
    mov rax, 4
    push rax
addr_267:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_268:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_269:
    jmp addr_274
addr_270:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_271:
    mov rax, 3
    push rax
addr_272:
    pop rax
    pop rdi
    syscall
    push rax
addr_273:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_274:
    jmp addr_280
addr_275:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_276:
    mov rax, 60
    push rax
addr_277:
    pop rax
    pop rdi
    syscall
    push rax
addr_278:
    pop rax
addr_279:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_280:
    jmp addr_285
addr_281:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_282:
    mov rax, 9
    push rax
addr_283:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    pop r8
    pop r9
    syscall
    push rax
addr_284:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_285:
    jmp addr_290
addr_286:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_287:
    mov rax, 230
    push rax
addr_288:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_289:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_290:
    jmp addr_295
addr_291:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_292:
    mov rax, 228
    push rax
addr_293:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_294:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_295:
    jmp addr_300
addr_296:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_297:
    mov rax, 57
    push rax
addr_298:
    pop rax
    syscall
    push rax
addr_299:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_300:
    jmp addr_305
addr_301:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_302:
    mov rax, 39
    push rax
addr_303:
    pop rax
    syscall
    push rax
addr_304:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_305:
    jmp addr_310
addr_306:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_307:
    mov rax, 59
    push rax
addr_308:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_309:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_310:
    jmp addr_315
addr_311:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_312:
    mov rax, 61
    push rax
addr_313:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_314:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_315:
    jmp addr_320
addr_316:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_317:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_318:
    pop rax
addr_319:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_320:
    jmp addr_326
addr_321:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_322:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_323:
    pop rax
    pop rbx
    push rax
    push rbx
addr_324:
    pop rax
addr_325:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_326:
    jmp addr_333
addr_327:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_328:
addr_329:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_330:
    pop rax
    pop rbx
    push rax
    push rbx
addr_331:
    pop rax
addr_332:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_333:
    jmp addr_339
addr_334:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_335:
addr_336:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_337:
    pop rax
addr_338:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_339:
    jmp addr_351
addr_340:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_341:
    mov rax, 8
    push rax
addr_342:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_343:
    mov rax, [args_ptr]
    add rax, 8
    push rax
addr_344:
addr_345:
addr_346:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_347:
addr_348:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_349:
addr_350:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_351:
    jmp addr_358
addr_352:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_353:
addr_354:
    mov rax, 1
    push rax
addr_355:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_356:
addr_357:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_358:
    jmp addr_367
addr_359:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_360:
    pop rax
    pop rbx
    push rax
    push rbx
addr_361:
addr_362:
    pop rax
    pop rbx
    push rax
    push rbx
addr_363:
addr_364:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_365:
addr_366:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_367:
    jmp addr_376
addr_368:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_369:
    pop rax
    pop rbx
    push rax
    push rbx
addr_370:
addr_371:
    pop rax
    pop rbx
    push rax
    push rbx
addr_372:
addr_373:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_374:
addr_375:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_376:
    jmp addr_384
addr_377:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_378:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_379:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_380:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_381:
    pop rax
    pop rbx
    push rax
    push rbx
addr_382:
    pop rax
    pop rbx
    mov [rax], rbx
addr_383:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_384:
    jmp addr_393
addr_385:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_386:
    pop rax
    push rax
    push rax
addr_387:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_388:
    mov rax, 1
    push rax
addr_389:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_390:
    pop rax
    pop rbx
    push rax
    push rbx
addr_391:
    pop rax
    pop rbx
    mov [rax], rbx
addr_392:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_393:
    jmp addr_402
addr_394:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_395:
    pop rax
    push rax
    push rax
addr_396:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_397:
    mov rax, 1
    push rax
addr_398:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_399:
    pop rax
    pop rbx
    push rax
    push rbx
addr_400:
    pop rax
    pop rbx
    mov [rax], rbx
addr_401:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_402:
    jmp addr_411
addr_403:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_404:
    pop rax
    push rax
    push rax
addr_405:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_406:
    mov rax, 1
    push rax
addr_407:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_408:
    pop rax
    pop rbx
    push rax
    push rbx
addr_409:
    pop rax
    pop rbx
    mov [rax], bl
addr_410:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_411:
    jmp addr_420
addr_412:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_413:
    pop rax
    push rax
    push rax
addr_414:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_415:
    mov rax, 1
    push rax
addr_416:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_417:
    pop rax
    pop rbx
    push rax
    push rbx
addr_418:
    pop rax
    pop rbx
    mov [rax], bl
addr_419:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_420:
    jmp addr_439
addr_421:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_422:
    pop rax
    push rax
    push rax
addr_423:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_424:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_425:
    pop rax
    pop rbx
    mov [rax], rbx
addr_426:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_427:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_428:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_429:
    pop rax
    pop rbx
    mov [rax], rbx
addr_430:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_431:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_432:
    pop rax
    pop rbx
    push rax
    push rbx
addr_433:
    pop rax
    pop rbx
    mov [rax], rbx
addr_434:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_435:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_436:
    pop rax
    pop rbx
    push rax
    push rbx
addr_437:
    pop rax
    pop rbx
    mov [rax], rbx
addr_438:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_439:
    jmp addr_444
addr_440:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_441:
    mov rax, mem
    add rax, 0
    push rax
addr_442:
    pop rax
    pop rbx
    mov [rax], rbx
addr_443:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_444:
    jmp addr_456
addr_445:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_446:
    mov rax, mem
    add rax, 0
    push rax
addr_447:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_448:
    mov rax, 6364136223846793005
    push rax
addr_449:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_450:
    mov rax, 1442695040888963407
    push rax
addr_451:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_452:
    pop rax
    push rax
    push rax
addr_453:
    mov rax, mem
    add rax, 0
    push rax
addr_454:
    pop rax
    pop rbx
    mov [rax], rbx
addr_455:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_456:
    jmp addr_482
addr_457:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_458:
    pop rax
    push rax
    push rax
addr_459:
addr_460:
    pop rax
    push rax
    push rax
addr_461:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_462:
    mov rax, 0
    push rax
addr_463:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_464:
    pop rax
    test rax, rax
    jz addr_474
addr_465:
    mov rax, 1
    push rax
addr_466:
addr_467:
    pop rax
    pop rbx
    push rax
    push rbx
addr_468:
addr_469:
    pop rax
    pop rbx
    push rax
    push rbx
addr_470:
addr_471:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_472:
addr_473:
    jmp addr_459
addr_474:
    pop rax
    pop rbx
    push rax
    push rbx
addr_475:
addr_476:
    pop rax
    pop rbx
    push rax
    push rbx
addr_477:
addr_478:
    pop rax
    pop rbx
    push rax
    push rbx
addr_479:
addr_480:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_481:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_482:
    jmp addr_543
addr_483:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_484:
addr_485:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_486:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_487:
    mov rax, 0
    push rax
addr_488:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_489:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_490:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_491:
    mov rax, 0
    push rax
addr_492:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_493:
addr_494:
    pop rax
    pop rbx
    push rax
    push rbx
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
    and rbx, rax
    push rbx
addr_499:
addr_500:
    pop rax
    test rax, rax
    jz addr_507
addr_501:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_502:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_503:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_504:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_505:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_506:
    jmp addr_508
addr_507:
    mov rax, 0
    push rax
addr_508:
    jmp addr_509
addr_509:
    pop rax
    test rax, rax
    jz addr_528
addr_510:
    mov rax, 1
    push rax
addr_511:
addr_512:
    pop rax
    pop rbx
    push rax
    push rbx
addr_513:
addr_514:
    pop rax
    pop rbx
    push rax
    push rbx
addr_515:
addr_516:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_517:
addr_518:
    pop rax
    pop rbx
    push rax
    push rbx
addr_519:
    mov rax, 1
    push rax
addr_520:
addr_521:
    pop rax
    pop rbx
    push rax
    push rbx
addr_522:
addr_523:
    pop rax
    pop rbx
    push rax
    push rbx
addr_524:
addr_525:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_526:
addr_527:
    jmp addr_484
addr_528:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_529:
    mov rax, 0
    push rax
addr_530:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_531:
    pop rax
    pop rbx
    push rax
    push rbx
addr_532:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_533:
    mov rax, 0
    push rax
addr_534:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_535:
addr_536:
    pop rax
    pop rbx
    push rax
    push rbx
addr_537:
addr_538:
    pop rax
    pop rbx
    push rax
    push rbx
addr_539:
addr_540:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_541:
addr_542:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_543:
    jmp addr_549
addr_544:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_545:
    pop rax
    push rax
    push rax
addr_546:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_547:
    pop rax
    pop rbx
    push rax
    push rbx
addr_548:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_549:
    jmp addr_556
addr_550:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_551:
addr_552:
    mov rax, 1
    push rax
addr_553:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_554:
    pop rax
addr_555:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_556:
    jmp addr_565
addr_557:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_558:
    mov rax, 1
    push rax
addr_559:
addr_560:
addr_561:
    mov rax, 1
    push rax
addr_562:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_563:
    pop rax
addr_564:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_565:
    jmp addr_574
addr_566:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_567:
    mov rax, 2
    push rax
addr_568:
addr_569:
addr_570:
    mov rax, 1
    push rax
addr_571:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_572:
    pop rax
addr_573:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_574:
    jmp addr_581
addr_575:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_576:
    mov rax, 127
    push rax
addr_577:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_578:
    mov rax, 0
    push rax
addr_579:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_580:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_581:
    jmp addr_588
addr_582:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_583:
    mov rax, 65280
    push rax
addr_584:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_585:
    mov rax, 8
    push rax
addr_586:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_587:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_588:
    jmp addr_599
addr_589:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_590:
    mov rax, 0
    push rax
addr_591:
addr_592:
    pop rax
    pop rbx
    push rax
    push rbx
addr_593:
addr_594:
    pop rax
    pop rbx
    push rax
    push rbx
addr_595:
addr_596:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_597:
addr_598:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_599:
    jmp addr_610
addr_600:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_601:
    mov rax, 8
    push rax
addr_602:
addr_603:
    pop rax
    pop rbx
    push rax
    push rbx
addr_604:
addr_605:
    pop rax
    pop rbx
    push rax
    push rbx
addr_606:
addr_607:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_608:
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
    mov rax, 0
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
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_622:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_623:
    jmp addr_637
addr_624:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_625:
addr_626:
    mov rax, 8
    push rax
addr_627:
addr_628:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_633:
addr_634:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_635:
addr_636:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_637:
    jmp addr_650
addr_638:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_639:
addr_640:
    mov rax, 0
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
    pop rbx
    mov [rax], rbx
addr_649:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_650:
    jmp addr_663
addr_651:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_652:
addr_653:
    mov rax, 8
    push rax
addr_654:
addr_655:
    pop rax
    pop rbx
    push rax
    push rbx
addr_656:
addr_657:
    pop rax
    pop rbx
    push rax
    push rbx
addr_658:
addr_659:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_660:
addr_661:
    pop rax
    pop rbx
    mov [rax], rbx
addr_662:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_663:
    jmp addr_691
addr_664:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_665:
    pop rax
    push rax
    push rax
addr_666:
addr_667:
addr_668:
    mov rax, 0
    push rax
addr_669:
addr_670:
    pop rax
    pop rbx
    push rax
    push rbx
addr_671:
addr_672:
    pop rax
    pop rbx
    push rax
    push rbx
addr_673:
addr_674:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_675:
addr_676:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_677:
    pop rax
    pop rbx
    push rax
    push rbx
addr_678:
addr_679:
addr_680:
    mov rax, 8
    push rax
addr_681:
addr_682:
    pop rax
    pop rbx
    push rax
    push rbx
addr_683:
addr_684:
    pop rax
    pop rbx
    push rax
    push rbx
addr_685:
addr_686:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_687:
addr_688:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_689:
addr_690:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_691:
    jmp addr_719
addr_692:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_693:
    pop rax
    push rax
    push rax
addr_694:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_695:
    pop rax
    pop rbx
    push rax
    push rbx
addr_696:
addr_697:
addr_698:
    mov rax, 8
    push rax
addr_699:
addr_700:
    pop rax
    pop rbx
    push rax
    push rbx
addr_701:
addr_702:
    pop rax
    pop rbx
    push rax
    push rbx
addr_703:
addr_704:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_705:
addr_706:
    pop rax
    pop rbx
    mov [rax], rbx
addr_707:
addr_708:
addr_709:
    mov rax, 0
    push rax
addr_710:
addr_711:
    pop rax
    pop rbx
    push rax
    push rbx
addr_712:
addr_713:
    pop rax
    pop rbx
    push rax
    push rbx
addr_714:
addr_715:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_716:
addr_717:
    pop rax
    pop rbx
    mov [rax], rbx
addr_718:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_719:
    jmp addr_755
addr_720:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_721:
    pop rax
    push rax
    push rax
addr_722:
addr_723:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_728:
addr_729:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_730:
addr_731:
addr_732:
    pop rax
    push rax
    push rax
addr_733:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_734:
    mov rax, 1
    push rax
addr_735:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_736:
    pop rax
    pop rbx
    push rax
    push rbx
addr_737:
    pop rax
    pop rbx
    mov [rax], rbx
addr_738:
addr_739:
    mov rax, 8
    push rax
addr_740:
addr_741:
    pop rax
    pop rbx
    push rax
    push rbx
addr_742:
addr_743:
    pop rax
    pop rbx
    push rax
    push rbx
addr_744:
addr_745:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_746:
addr_747:
addr_748:
    pop rax
    push rax
    push rax
addr_749:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_750:
    mov rax, 1
    push rax
addr_751:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_752:
    pop rax
    pop rbx
    push rax
    push rbx
addr_753:
    pop rax
    pop rbx
    mov [rax], rbx
addr_754:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_755:
    jmp addr_831
addr_756:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_757:
addr_758:
    pop rax
    push rax
    push rax
addr_759:
addr_760:
addr_761:
    mov rax, 0
    push rax
addr_762:
addr_763:
    pop rax
    pop rbx
    push rax
    push rbx
addr_764:
addr_765:
    pop rax
    pop rbx
    push rax
    push rbx
addr_766:
addr_767:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_768:
addr_769:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_770:
    mov rax, 0
    push rax
addr_771:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_772:
    pop rax
    test rax, rax
    jz addr_790
addr_773:
    pop rax
    push rax
    push rax
addr_774:
addr_775:
addr_776:
    mov rax, 8
    push rax
addr_777:
addr_778:
    pop rax
    pop rbx
    push rax
    push rbx
addr_779:
addr_780:
    pop rax
    pop rbx
    push rax
    push rbx
addr_781:
addr_782:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_783:
addr_784:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_785:
addr_786:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_787:
    mov rax, 32
    push rax
addr_788:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_789:
    jmp addr_791
addr_790:
    mov rax, 0
    push rax
addr_791:
    jmp addr_792
addr_792:
    pop rax
    test rax, rax
    jz addr_829
addr_793:
    pop rax
    push rax
    push rax
addr_794:
addr_795:
    pop rax
    push rax
    push rax
addr_796:
addr_797:
    mov rax, 0
    push rax
addr_798:
addr_799:
    pop rax
    pop rbx
    push rax
    push rbx
addr_800:
addr_801:
    pop rax
    pop rbx
    push rax
    push rbx
addr_802:
addr_803:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_804:
addr_805:
addr_806:
    pop rax
    push rax
    push rax
addr_807:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_808:
    mov rax, 1
    push rax
addr_809:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_810:
    pop rax
    pop rbx
    push rax
    push rbx
addr_811:
    pop rax
    pop rbx
    mov [rax], rbx
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
addr_822:
    pop rax
    push rax
    push rax
addr_823:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_824:
    mov rax, 1
    push rax
addr_825:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_826:
    pop rax
    pop rbx
    push rax
    push rbx
addr_827:
    pop rax
    pop rbx
    mov [rax], rbx
addr_828:
    jmp addr_757
addr_829:
    pop rax
addr_830:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_831:
    jmp addr_1022
addr_832:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_833:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_834:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_835:
    pop rax
    pop rbx
    mov [rax], rbx
addr_836:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_837:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_838:
addr_839:
addr_840:
    mov rax, 8
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
addr_850:
    pop rax
    pop rbx
    push rax
    push rbx
addr_851:
addr_852:
addr_853:
    mov rax, 8
    push rax
addr_854:
addr_855:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_860:
addr_861:
    pop rax
    pop rbx
    mov [rax], rbx
addr_862:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_863:
    mov rax, 0
    push rax
addr_864:
    pop rax
    pop rbx
    push rax
    push rbx
addr_865:
addr_866:
addr_867:
    mov rax, 0
    push rax
addr_868:
addr_869:
    pop rax
    pop rbx
    push rax
    push rbx
addr_870:
addr_871:
    pop rax
    pop rbx
    push rax
    push rbx
addr_872:
addr_873:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_874:
addr_875:
    pop rax
    pop rbx
    mov [rax], rbx
addr_876:
addr_877:
    pop rax
    push rax
    push rax
addr_878:
addr_879:
addr_880:
    mov rax, 0
    push rax
addr_881:
addr_882:
    pop rax
    pop rbx
    push rax
    push rbx
addr_883:
addr_884:
    pop rax
    pop rbx
    push rax
    push rbx
addr_885:
addr_886:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_887:
addr_888:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_889:
    mov rax, 0
    push rax
addr_890:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_891:
    pop rax
    test rax, rax
    jz addr_910
addr_892:
    pop rax
    push rax
    push rax
addr_893:
addr_894:
addr_895:
    mov rax, 8
    push rax
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
    push rax
    push rbx
addr_900:
addr_901:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_902:
addr_903:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_904:
addr_905:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_906:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_907:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_908:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_909:
    jmp addr_911
addr_910:
    mov rax, 0
    push rax
addr_911:
    jmp addr_912
addr_912:
    pop rax
    test rax, rax
    jz addr_968
addr_913:
    pop rax
    push rax
    push rax
addr_914:
addr_915:
    pop rax
    push rax
    push rax
addr_916:
addr_917:
    mov rax, 0
    push rax
addr_918:
addr_919:
    pop rax
    pop rbx
    push rax
    push rbx
addr_920:
addr_921:
    pop rax
    pop rbx
    push rax
    push rbx
addr_922:
addr_923:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_924:
addr_925:
addr_926:
    pop rax
    push rax
    push rax
addr_927:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_928:
    mov rax, 1
    push rax
addr_929:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_930:
    pop rax
    pop rbx
    push rax
    push rbx
addr_931:
    pop rax
    pop rbx
    mov [rax], rbx
addr_932:
addr_933:
    mov rax, 8
    push rax
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
    push rax
    push rbx
addr_938:
addr_939:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_940:
addr_941:
addr_942:
    pop rax
    push rax
    push rax
addr_943:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_944:
    mov rax, 1
    push rax
addr_945:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_946:
    pop rax
    pop rbx
    push rax
    push rbx
addr_947:
    pop rax
    pop rbx
    mov [rax], rbx
addr_948:
    pop rax
    pop rbx
    push rax
    push rbx
addr_949:
    pop rax
    push rax
    push rax
addr_950:
addr_951:
    mov rax, 0
    push rax
addr_952:
addr_953:
    pop rax
    pop rbx
    push rax
    push rbx
addr_954:
addr_955:
    pop rax
    pop rbx
    push rax
    push rbx
addr_956:
addr_957:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_958:
addr_959:
addr_960:
    pop rax
    push rax
    push rax
addr_961:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_962:
    mov rax, 1
    push rax
addr_963:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_964:
    pop rax
    pop rbx
    push rax
    push rbx
addr_965:
    pop rax
    pop rbx
    mov [rax], rbx
addr_966:
    pop rax
    pop rbx
    push rax
    push rbx
addr_967:
    jmp addr_876
addr_968:
    pop rax
    push rax
    push rax
addr_969:
addr_970:
addr_971:
    mov rax, 0
    push rax
addr_972:
addr_973:
    pop rax
    pop rbx
    push rax
    push rbx
addr_974:
addr_975:
    pop rax
    pop rbx
    push rax
    push rbx
addr_976:
addr_977:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_978:
addr_979:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_980:
    mov rax, 0
    push rax
addr_981:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_982:
    pop rax
    test rax, rax
    jz addr_1018
addr_983:
    pop rax
    push rax
    push rax
addr_984:
addr_985:
    pop rax
    push rax
    push rax
addr_986:
addr_987:
    mov rax, 0
    push rax
addr_988:
addr_989:
    pop rax
    pop rbx
    push rax
    push rbx
addr_990:
addr_991:
    pop rax
    pop rbx
    push rax
    push rbx
addr_992:
addr_993:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_994:
addr_995:
addr_996:
    pop rax
    push rax
    push rax
addr_997:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_998:
    mov rax, 1
    push rax
addr_999:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1000:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1001:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1002:
addr_1003:
    mov rax, 8
    push rax
addr_1004:
addr_1005:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1006:
addr_1007:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1008:
addr_1009:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1010:
addr_1011:
addr_1012:
    pop rax
    push rax
    push rax
addr_1013:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1014:
    mov rax, 1
    push rax
addr_1015:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1016:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1017:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1018:
    jmp addr_1019
addr_1019:
    pop rax
addr_1020:
    pop rax
addr_1021:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_1022:
    jmp addr_1184
addr_1023:
    sub rsp, 32
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1024:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1025:
addr_1026:
    pop rax
    push rax
    push rax
addr_1027:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1028:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1029:
addr_1030:
addr_1031:
    mov rax, 8
    push rax
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
    push rax
    push rbx
addr_1036:
addr_1037:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1038:
addr_1039:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1040:
addr_1041:
addr_1042:
    mov rax, 0
    push rax
addr_1043:
addr_1044:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1045:
addr_1046:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1047:
addr_1048:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1049:
addr_1050:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1051:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1052:
addr_1053:
    pop rax
    push rax
    push rax
addr_1054:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1055:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1056:
addr_1057:
addr_1058:
    mov rax, 8
    push rax
addr_1059:
addr_1060:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1061:
addr_1062:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1063:
addr_1064:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1065:
addr_1066:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1067:
addr_1068:
addr_1069:
    mov rax, 0
    push rax
addr_1070:
addr_1071:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1072:
addr_1073:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1074:
addr_1075:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1076:
addr_1077:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1078:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1079:
addr_1080:
addr_1081:
    mov rax, 0
    push rax
addr_1082:
addr_1083:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1084:
addr_1085:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1086:
addr_1087:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1088:
addr_1089:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1090:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1091:
addr_1092:
addr_1093:
    mov rax, 0
    push rax
addr_1094:
addr_1095:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1096:
addr_1097:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1098:
addr_1099:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1100:
addr_1101:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1102:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1103:
    pop rax
    test rax, rax
    jz addr_1181
addr_1104:
    mov rax, 0
    push rax
addr_1105:
addr_1106:
    pop rax
    push rax
    push rax
addr_1107:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1108:
addr_1109:
addr_1110:
    mov rax, 0
    push rax
addr_1111:
addr_1112:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1113:
addr_1114:
    pop rax
    pop rbx
    push rax
    push rbx
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
    mov rbx, [rax]
    push rbx
addr_1119:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_1120:
    pop rax
    test rax, rax
    jz addr_1161
addr_1121:
    pop rax
    push rax
    push rax
addr_1122:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1123:
addr_1124:
addr_1125:
    mov rax, 8
    push rax
addr_1126:
addr_1127:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1128:
addr_1129:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1130:
addr_1131:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1132:
addr_1133:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1134:
addr_1135:
addr_1136:
addr_1137:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1138:
addr_1139:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1140:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1141:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1142:
addr_1143:
addr_1144:
    mov rax, 8
    push rax
addr_1145:
addr_1146:
    pop rax
    pop rbx
    push rax
    push rbx
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
    add rax, rbx
    push rax
addr_1151:
addr_1152:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1153:
addr_1154:
addr_1155:
addr_1156:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1157:
addr_1158:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1159:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1160:
    jmp addr_1162
addr_1161:
    mov rax, 0
    push rax
addr_1162:
    jmp addr_1163
addr_1163:
    pop rax
    test rax, rax
    jz addr_1167
addr_1164:
    mov rax, 1
    push rax
addr_1165:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1166:
    jmp addr_1105
addr_1167:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1168:
addr_1169:
addr_1170:
    mov rax, 0
    push rax
addr_1171:
addr_1172:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1173:
addr_1174:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1175:
addr_1176:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1177:
addr_1178:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1179:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1180:
    jmp addr_1182
addr_1181:
    mov rax, 0
    push rax
addr_1182:
    jmp addr_1183
addr_1183:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 32
    ret
addr_1184:
    jmp addr_1198
addr_1185:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1186:
    mov rax, 0
    push rax
addr_1187:
addr_1188:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1189:
addr_1190:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1191:
addr_1192:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1193:
addr_1194:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1195:
    mov rax, 0
    push rax
addr_1196:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1197:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1198:
    jmp addr_1360
addr_1199:
    sub rsp, 32
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1200:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1201:
addr_1202:
    pop rax
    push rax
    push rax
addr_1203:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1204:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1205:
addr_1206:
addr_1207:
    mov rax, 8
    push rax
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
    push rax
    push rbx
addr_1212:
addr_1213:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1214:
addr_1215:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1216:
addr_1217:
addr_1218:
    mov rax, 0
    push rax
addr_1219:
addr_1220:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1221:
addr_1222:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1223:
addr_1224:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1225:
addr_1226:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1227:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1228:
addr_1229:
    pop rax
    push rax
    push rax
addr_1230:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1231:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1232:
addr_1233:
addr_1234:
    mov rax, 8
    push rax
addr_1235:
addr_1236:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1237:
addr_1238:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1239:
addr_1240:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1241:
addr_1242:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1243:
addr_1244:
addr_1245:
    mov rax, 0
    push rax
addr_1246:
addr_1247:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1248:
addr_1249:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1250:
addr_1251:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1252:
addr_1253:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1254:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1255:
addr_1256:
addr_1257:
    mov rax, 0
    push rax
addr_1258:
addr_1259:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1260:
addr_1261:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1262:
addr_1263:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1264:
addr_1265:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1266:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1267:
addr_1268:
addr_1269:
    mov rax, 0
    push rax
addr_1270:
addr_1271:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1272:
addr_1273:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1274:
addr_1275:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1276:
addr_1277:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1278:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1279:
    pop rax
    test rax, rax
    jz addr_1357
addr_1280:
    mov rax, 0
    push rax
addr_1281:
addr_1282:
    pop rax
    push rax
    push rax
addr_1283:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1284:
addr_1285:
addr_1286:
    mov rax, 0
    push rax
addr_1287:
addr_1288:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1289:
addr_1290:
    pop rax
    pop rbx
    push rax
    push rbx
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
    mov rbx, [rax]
    push rbx
addr_1295:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_1296:
    pop rax
    test rax, rax
    jz addr_1337
addr_1297:
    pop rax
    push rax
    push rax
addr_1298:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1299:
addr_1300:
addr_1301:
    mov rax, 8
    push rax
addr_1302:
addr_1303:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1304:
addr_1305:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1306:
addr_1307:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1308:
addr_1309:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1310:
addr_1311:
addr_1312:
addr_1313:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1314:
addr_1315:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1316:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1317:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1318:
addr_1319:
addr_1320:
    mov rax, 8
    push rax
addr_1321:
addr_1322:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1323:
addr_1324:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1325:
addr_1326:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1327:
addr_1328:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1329:
addr_1330:
addr_1331:
addr_1332:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1333:
addr_1334:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1335:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1336:
    jmp addr_1338
addr_1337:
    mov rax, 0
    push rax
addr_1338:
    jmp addr_1339
addr_1339:
    pop rax
    test rax, rax
    jz addr_1343
addr_1340:
    mov rax, 1
    push rax
addr_1341:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1342:
    jmp addr_1281
addr_1343:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1344:
addr_1345:
addr_1346:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_1351:
addr_1352:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1353:
addr_1354:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1355:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1356:
    jmp addr_1358
addr_1357:
    mov rax, 0
    push rax
addr_1358:
    jmp addr_1359
addr_1359:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 32
    ret
addr_1360:
    jmp addr_1376
addr_1361:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1362:
    pop rax
    push rax
    push rax
addr_1363:
    mov rax, 48
    push rax
addr_1364:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1365:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1366:
    mov rax, 57
    push rax
addr_1367:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
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
    push rax
    push rbx
addr_1372:
addr_1373:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1374:
addr_1375:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1376:
    jmp addr_1414
addr_1377:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1378:
    pop rax
    push rax
    push rax
addr_1379:
    pop rax
    push rax
    push rax
addr_1380:
    mov rax, 97
    push rax
addr_1381:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1382:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1383:
    mov rax, 122
    push rax
addr_1384:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1385:
addr_1386:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1387:
addr_1388:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1389:
addr_1390:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1391:
addr_1392:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1393:
    pop rax
    push rax
    push rax
addr_1394:
    mov rax, 65
    push rax
addr_1395:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1396:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1397:
    mov rax, 90
    push rax
addr_1398:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1399:
addr_1400:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1401:
addr_1402:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1403:
addr_1404:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1405:
addr_1406:
addr_1407:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1408:
addr_1409:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1410:
addr_1411:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1412:
addr_1413:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1414:
    jmp addr_1476
addr_1415:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1416:
    pop rax
    push rax
    push rax
addr_1417:
addr_1418:
    pop rax
    push rax
    push rax
addr_1419:
    mov rax, 48
    push rax
addr_1420:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1421:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1422:
    mov rax, 57
    push rax
addr_1423:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1424:
addr_1425:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1426:
addr_1427:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1428:
addr_1429:
    pop rax
    pop rbx
    and rbx, rax
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
    push rax
    push rax
addr_1434:
    pop rax
    push rax
    push rax
addr_1435:
    mov rax, 97
    push rax
addr_1436:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1437:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1438:
    mov rax, 122
    push rax
addr_1439:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1440:
addr_1441:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1442:
addr_1443:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1444:
addr_1445:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1446:
addr_1447:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1448:
    pop rax
    push rax
    push rax
addr_1449:
    mov rax, 65
    push rax
addr_1450:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1451:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1452:
    mov rax, 90
    push rax
addr_1453:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1454:
addr_1455:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1456:
addr_1457:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1458:
addr_1459:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1460:
addr_1461:
addr_1462:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1463:
addr_1464:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1465:
addr_1466:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1467:
addr_1468:
addr_1469:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1470:
addr_1471:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1472:
addr_1473:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1474:
addr_1475:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1476:
    jmp addr_1624
addr_1477:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1478:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1479:
addr_1480:
    pop rax
    push rax
    push rax
addr_1481:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1482:
    pop rax
    pop rbx
    push rax
    push rbx
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
    pop rbx
    mov [rax], rbx
addr_1494:
addr_1495:
addr_1496:
    mov rax, 0
    push rax
addr_1497:
addr_1498:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1499:
addr_1500:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1501:
addr_1502:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1503:
addr_1504:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1505:
    mov rax, 0
    push rax
addr_1506:
addr_1507:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1508:
addr_1509:
addr_1510:
    mov rax, 0
    push rax
addr_1511:
addr_1512:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1513:
addr_1514:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1515:
addr_1516:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1517:
addr_1518:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1519:
    mov rax, 0
    push rax
addr_1520:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1521:
    pop rax
    test rax, rax
    jz addr_1551
addr_1522:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1523:
addr_1524:
addr_1525:
    mov rax, 8
    push rax
addr_1526:
addr_1527:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1528:
addr_1529:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1530:
addr_1531:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1532:
addr_1533:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1534:
addr_1535:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1536:
addr_1537:
    pop rax
    push rax
    push rax
addr_1538:
    mov rax, 48
    push rax
addr_1539:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_1540:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1541:
    mov rax, 57
    push rax
addr_1542:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1543:
addr_1544:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1545:
addr_1546:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1547:
addr_1548:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_1549:
addr_1550:
    jmp addr_1552
addr_1551:
    mov rax, 0
    push rax
addr_1552:
    jmp addr_1553
addr_1553:
    pop rax
    test rax, rax
    jz addr_1609
addr_1554:
    mov rax, 10
    push rax
addr_1555:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_1556:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1557:
addr_1558:
addr_1559:
    mov rax, 8
    push rax
addr_1560:
addr_1561:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1562:
addr_1563:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1564:
addr_1565:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1566:
addr_1567:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1568:
addr_1569:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1570:
    mov rax, 48
    push rax
addr_1571:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1572:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1573:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1574:
addr_1575:
    pop rax
    push rax
    push rax
addr_1576:
addr_1577:
    mov rax, 0
    push rax
addr_1578:
addr_1579:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1580:
addr_1581:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1582:
addr_1583:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1584:
addr_1585:
addr_1586:
    pop rax
    push rax
    push rax
addr_1587:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1588:
    mov rax, 1
    push rax
addr_1589:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1590:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1591:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1592:
addr_1593:
    mov rax, 8
    push rax
addr_1594:
addr_1595:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1596:
addr_1597:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1598:
addr_1599:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1600:
addr_1601:
addr_1602:
    pop rax
    push rax
    push rax
addr_1603:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1604:
    mov rax, 1
    push rax
addr_1605:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1606:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1607:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1608:
    jmp addr_1506
addr_1609:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1610:
addr_1611:
addr_1612:
    mov rax, 0
    push rax
addr_1613:
addr_1614:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1615:
addr_1616:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1617:
addr_1618:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1619:
addr_1620:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1621:
    mov rax, 0
    push rax
addr_1622:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_1623:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_1624:
    jmp addr_1703
addr_1625:
    sub rsp, 40
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1626:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1627:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1628:
    pop rax
    push rax
    push rax
addr_1629:
    mov rax, 0
    push rax
addr_1630:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_1631:
    pop rax
    test rax, rax
    jz addr_1641
addr_1632:
    mov rax, 1
    push rax
    push str_0
addr_1633:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1634:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1635:
addr_1636:
addr_1637:
    mov rax, 1
    push rax
addr_1638:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1639:
    pop rax
addr_1640:
    jmp addr_1700
addr_1641:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1642:
    mov rax, 32
    push rax
addr_1643:
addr_1644:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1645:
addr_1646:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1647:
addr_1648:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1649:
addr_1650:
addr_1651:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1652:
    mov rax, 0
    push rax
addr_1653:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1654:
    pop rax
    test rax, rax
    jz addr_1675
addr_1655:
    mov rax, 1
    push rax
addr_1656:
addr_1657:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1658:
addr_1659:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1660:
addr_1661:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1662:
addr_1663:
    pop rax
    push rax
    push rax
addr_1664:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1665:
    mov rax, 10
    push rax
addr_1666:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1667:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1668:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1669:
    mov rax, 48
    push rax
addr_1670:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1671:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1672:
    pop rax
    pop rbx
    mov [rax], bl
addr_1673:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1674:
    jmp addr_1650
addr_1675:
    pop rax
    push rax
    push rax
addr_1676:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1677:
    mov rax, 32
    push rax
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
    push rax
    push rbx
addr_1682:
addr_1683:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1684:
addr_1685:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1686:
addr_1687:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1688:
addr_1689:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1690:
addr_1691:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1692:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1693:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1694:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1695:
addr_1696:
addr_1697:
    mov rax, 1
    push rax
addr_1698:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1699:
    pop rax
addr_1700:
    jmp addr_1701
addr_1701:
    pop rax
addr_1702:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 40
    ret
addr_1703:
    jmp addr_1802
addr_1704:
    sub rsp, 56
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1705:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1706:
addr_1707:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1708:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1709:
addr_1710:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1711:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1712:
addr_1713:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1714:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1715:
    mov rax, 32
    push rax
addr_1716:
addr_1717:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1718:
addr_1719:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1720:
addr_1721:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1722:
addr_1723:
addr_1724:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1725:
addr_1726:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1727:
    mov rax, 0
    push rax
addr_1728:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1729:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1730:
addr_1731:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1732:
    mov rax, 0
    push rax
addr_1733:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1734:
addr_1735:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1736:
addr_1737:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1738:
addr_1739:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_1740:
addr_1741:
    pop rax
    test rax, rax
    jz addr_1776
addr_1742:
    mov rax, 1
    push rax
addr_1743:
addr_1744:
    pop rax
    pop rbx
    push rax
    push rbx
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
    sub rbx, rax
    push rbx
addr_1749:
addr_1750:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1751:
addr_1752:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1753:
    mov rax, 10
    push rax
addr_1754:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_1755:
    mov rax, 48
    push rax
addr_1756:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1757:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1758:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1759:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_1760:
    pop rax
    pop rbx
    mov [rax], bl
addr_1761:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1762:
    mov rax, [ret_stack_rsp]
    add rax, 48
    push rax
addr_1763:
addr_1764:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1765:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1766:
    pop rax
addr_1767:
    mov rax, [ret_stack_rsp]
    add rax, 40
    push rax
addr_1768:
addr_1769:
    pop rax
    push rax
    push rax
addr_1770:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1771:
    mov rax, 1
    push rax
addr_1772:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1773:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1774:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1775:
    jmp addr_1723
addr_1776:
    pop rax
    push rax
    push rax
addr_1777:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1778:
    mov rax, 32
    push rax
addr_1779:
addr_1780:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1781:
addr_1782:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1783:
addr_1784:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1785:
addr_1786:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1787:
addr_1788:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1789:
addr_1790:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1791:
addr_1792:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1793:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1794:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1795:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1796:
addr_1797:
addr_1798:
    mov rax, 1
    push rax
addr_1799:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_1800:
    pop rax
addr_1801:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 56
    ret
addr_1802:
    jmp addr_1807
addr_1803:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1804:
    mov rax, 1
    push rax
addr_1805:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1625
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1806:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1807:
    jmp addr_1812
addr_1808:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1809:
    mov rax, 1
    push rax
addr_1810:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1704
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1811:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1812:
    jmp addr_1817
addr_1813:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1814:
    mov rax, 2
    push rax
addr_1815:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1625
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1816:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_1817:
    jmp addr_1864
addr_1818:
    sub rsp, 24
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1819:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1820:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1821:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1822:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1823:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1824:
addr_1825:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1826:
addr_1827:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1828:
addr_1829:
    pop rax
    push rax
    push rax
addr_1830:
    mov rax, 0
    push rax
addr_1831:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1832:
    pop rax
    test rax, rax
    jz addr_1862
addr_1833:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1834:
addr_1835:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1836:
addr_1837:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_1838:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1839:
addr_1840:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1841:
addr_1842:
    pop rax
    pop rbx
    mov [rax], bl
addr_1843:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1844:
addr_1845:
    pop rax
    push rax
    push rax
addr_1846:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1847:
    mov rax, 1
    push rax
addr_1848:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1849:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1850:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1851:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1852:
addr_1853:
    pop rax
    push rax
    push rax
addr_1854:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1855:
    mov rax, 1
    push rax
addr_1856:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1857:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1858:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1859:
    mov rax, 1
    push rax
addr_1860:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1861:
    jmp addr_1828
addr_1862:
    pop rax
addr_1863:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 24
    ret
addr_1864:
    jmp addr_1900
addr_1865:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1866:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1867:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1868:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1869:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1870:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1871:
addr_1872:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1873:
addr_1874:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1875:
addr_1876:
    pop rax
    push rax
    push rax
addr_1877:
    mov rax, 0
    push rax
addr_1878:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_1879:
    pop rax
    test rax, rax
    jz addr_1898
addr_1880:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_1881:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1882:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1883:
addr_1884:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1885:
addr_1886:
    pop rax
    pop rbx
    mov [rax], bl
addr_1887:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1888:
addr_1889:
    pop rax
    push rax
    push rax
addr_1890:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1891:
    mov rax, 1
    push rax
addr_1892:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1893:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1894:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1895:
    mov rax, 1
    push rax
addr_1896:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_1897:
    jmp addr_1875
addr_1898:
    pop rax
addr_1899:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_1900:
    jmp addr_2080
addr_1901:
    sub rsp, 48
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1902:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_1903:
addr_1904:
    pop rax
    push rax
    push rax
addr_1905:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1906:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1907:
addr_1908:
addr_1909:
    mov rax, 8
    push rax
addr_1910:
addr_1911:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1912:
addr_1913:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1914:
addr_1915:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1916:
addr_1917:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1918:
addr_1919:
addr_1920:
    mov rax, 0
    push rax
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
    push rax
    push rbx
addr_1925:
addr_1926:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1927:
addr_1928:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1929:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_1930:
addr_1931:
    pop rax
    push rax
    push rax
addr_1932:
addr_1933:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1934:
addr_1935:
    mov rax, 0
    push rax
addr_1936:
addr_1937:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1938:
addr_1939:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1940:
addr_1941:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_1942:
    pop rax
    test rax, rax
    jz addr_2043
addr_1943:
    pop rax
    push rax
    push rax
addr_1944:
addr_1945:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1946:
addr_1947:
addr_1948:
    pop rax
    push rax
    push rax
addr_1949:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1950:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1951:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1952:
addr_1953:
    pop rax
    push rax
    push rax
addr_1954:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_1955:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1956:
addr_1957:
addr_1958:
    mov rax, 8
    push rax
addr_1959:
addr_1960:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1961:
addr_1962:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1963:
addr_1964:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1965:
addr_1966:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1967:
addr_1968:
addr_1969:
    mov rax, 0
    push rax
addr_1970:
addr_1971:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1972:
addr_1973:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1974:
addr_1975:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1976:
addr_1977:
    pop rax
    pop rbx
    mov [rax], rbx
addr_1978:
    mov rax, 61
    push rax
addr_1979:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1980:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_1981:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_832
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_1982:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_1983:
addr_1984:
    pop rax
    push rax
    push rax
addr_1985:
addr_1986:
addr_1987:
    mov rax, 0
    push rax
addr_1988:
addr_1989:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1990:
addr_1991:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1992:
addr_1993:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_1994:
addr_1995:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_1996:
    pop rax
    pop rbx
    push rax
    push rbx
addr_1997:
addr_1998:
addr_1999:
    mov rax, 8
    push rax
addr_2000:
addr_2001:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2002:
addr_2003:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2004:
addr_2005:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2006:
addr_2007:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2008:
addr_2009:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2010:
addr_2011:
    pop rax
    push rax
    push rax
addr_2012:
addr_2013:
addr_2014:
    mov rax, 0
    push rax
addr_2015:
addr_2016:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2017:
addr_2018:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2019:
addr_2020:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2021:
addr_2022:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2023:
    pop rax
    pop rbx
    push rax
    push rbx
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
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1199
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2037:
addr_2038:
addr_2039:
    mov rax, 1
    push rax
addr_2040:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2041:
addr_2042:
    jmp addr_2044
addr_2043:
    mov rax, 0
    push rax
addr_2044:
    jmp addr_2045
addr_2045:
    pop rax
    test rax, rax
    jz addr_2055
addr_2046:
    mov rax, 8
    push rax
addr_2047:
addr_2048:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2049:
addr_2050:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2051:
addr_2052:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2053:
addr_2054:
    jmp addr_1930
addr_2055:
    mov rax, 0
    push rax
addr_2056:
addr_2057:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2058:
addr_2059:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2060:
addr_2061:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2062:
    pop rax
    test rax, rax
    jz addr_2077
addr_2063:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2064:
addr_2065:
addr_2066:
    mov rax, 8
    push rax
addr_2067:
addr_2068:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2069:
addr_2070:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2071:
addr_2072:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2073:
addr_2074:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2075:
addr_2076:
    jmp addr_2078
addr_2077:
    mov rax, 0
    push rax
addr_2078:
    jmp addr_2079
addr_2079:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 48
    ret
addr_2080:
    jmp addr_2086
addr_2081:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2082:
    mov rax, 0
    push rax
addr_2083:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2084:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2085:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2086:
    jmp addr_2099
addr_2087:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2088:
    mov rax, mem
    add rax, 8
    push rax
addr_2089:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2090:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2091:
addr_2092:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2093:
addr_2094:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2095:
addr_2096:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2097:
addr_2098:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2099:
    jmp addr_2112
addr_2100:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2101:
    mov rax, mem
    add rax, 8
    push rax
addr_2102:
addr_2103:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2104:
addr_2105:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2106:
addr_2107:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2108:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2109:
addr_2110:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2111:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2112:
    jmp addr_2164
addr_2113:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2114:
    pop rax
    push rax
    push rax
addr_2115:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2116:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2117:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2118:
    mov rax, 8388608
    push rax
addr_2119:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2120:
    pop rax
    test rax, rax
    jz addr_2142
addr_2121:
    mov rax, 15
    push rax
    push str_1
addr_2122:
addr_2123:
    mov rax, 2
    push rax
addr_2124:
addr_2125:
addr_2126:
    mov rax, 1
    push rax
addr_2127:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2128:
    pop rax
addr_2129:
    mov rax, 79
    push rax
    push str_2
addr_2130:
addr_2131:
    mov rax, 2
    push rax
addr_2132:
addr_2133:
addr_2134:
    mov rax, 1
    push rax
addr_2135:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2136:
    pop rax
addr_2137:
    mov rax, 1
    push rax
addr_2138:
addr_2139:
    mov rax, 60
    push rax
addr_2140:
    pop rax
    pop rdi
    syscall
    push rax
addr_2141:
    pop rax
addr_2142:
    jmp addr_2143
addr_2143:
    pop rax
    push rax
    push rax
addr_2144:
    mov rax, 0
    push rax
addr_2145:
addr_2146:
    mov rax, mem
    add rax, 8
    push rax
addr_2147:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2148:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2149:
addr_2150:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2151:
addr_2152:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2153:
addr_2154:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2155:
addr_2156:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1865
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2157:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2158:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2159:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2160:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2161:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2162:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2163:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2164:
    jmp addr_2172
addr_2165:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2166:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2167:
    mov rax, 1
    push rax
addr_2168:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2169:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2170:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2171:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2172:
    jmp addr_2178
addr_2173:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2174:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2175:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2176:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2177:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2178:
    jmp addr_2185
addr_2179:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2180:
    mov rax, 8
    push rax
addr_2181:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2182:
addr_2183:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2184:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_2185:
    jmp addr_2405
addr_2186:
    sub rsp, 48
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2187:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2188:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2189:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2190:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2191:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_2192:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2193:
addr_2194:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2195:
addr_2196:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2197:
addr_2198:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2199:
addr_2200:
addr_2201:
    mov rax, 59
    push rax
addr_2202:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2203:
    pop rax
addr_2204:
    mov rax, 4
    push rax
    push str_3
addr_2205:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1901
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2206:
    pop rax
    push rax
    push rax
addr_2207:
    mov rax, 0
    push rax
addr_2208:
addr_2209:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2210:
addr_2211:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2212:
addr_2213:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2214:
    pop rax
    test rax, rax
    jz addr_2229
addr_2215:
    mov rax, 21
    push rax
    push str_4
addr_2216:
addr_2217:
    mov rax, 2
    push rax
addr_2218:
addr_2219:
addr_2220:
    mov rax, 1
    push rax
addr_2221:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2222:
    pop rax
addr_2223:
    mov rax, 1
    push rax
addr_2224:
addr_2225:
    mov rax, 60
    push rax
addr_2226:
    pop rax
    pop rdi
    syscall
    push rax
addr_2227:
    pop rax
addr_2228:
    jmp addr_2358
addr_2229:
    pop rax
    push rax
    push rax
addr_2230:
addr_2231:
    pop rax
    push rax
    push rax
addr_2232:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2233:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2234:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2235:
addr_2236:
    pop rax
    push rax
    push rax
addr_2237:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2238:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2239:
addr_2240:
addr_2241:
    mov rax, 8
    push rax
addr_2242:
addr_2243:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2244:
addr_2245:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2246:
addr_2247:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2248:
addr_2249:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2250:
addr_2251:
addr_2252:
    mov rax, 0
    push rax
addr_2253:
addr_2254:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2255:
addr_2256:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2257:
addr_2258:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2259:
addr_2260:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2261:
addr_2262:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2263:
addr_2264:
addr_2265:
    mov rax, 0
    push rax
addr_2266:
addr_2267:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2268:
addr_2269:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2270:
addr_2271:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2272:
addr_2273:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2274:
    mov rax, 0
    push rax
addr_2275:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2276:
    pop rax
    test rax, rax
    jz addr_2358
addr_2277:
    mov rax, 58
    push rax
addr_2278:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2279:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2280:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_832
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2281:
addr_2282:
    mov rax, mem
    add rax, 8
    push rax
addr_2283:
    mov rax, mem
    add rax, 8388616
    push rax
addr_2284:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2285:
addr_2286:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2287:
addr_2288:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2289:
addr_2290:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2291:
addr_2292:
    mov rax, [ret_stack_rsp]
    add rax, 32
    push rax
addr_2293:
addr_2294:
    pop rax
    push rax
    push rax
addr_2295:
addr_2296:
addr_2297:
    mov rax, 0
    push rax
addr_2298:
addr_2299:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2300:
addr_2301:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2302:
addr_2303:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2304:
addr_2305:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2306:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2307:
addr_2308:
addr_2309:
    mov rax, 8
    push rax
addr_2310:
addr_2311:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2312:
addr_2313:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2314:
addr_2315:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2316:
addr_2317:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2318:
addr_2319:
addr_2320:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2321:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2322:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2323:
    pop rax
addr_2324:
    mov rax, 1
    push rax
    push str_5
addr_2325:
addr_2326:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2327:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2328:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2329:
    pop rax
addr_2330:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2331:
addr_2332:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2333:
addr_2334:
addr_2335:
    pop rax
    push rax
    push rax
addr_2336:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2337:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2338:
addr_2339:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2340:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2341:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2342:
    pop rax
addr_2343:
    mov rax, 1
    push rax
addr_2344:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2345:
    pop rax
addr_2346:
    mov rax, [args_ptr]
    mov rax, [rax]
    add rax, 2
    shl rax, 3
    mov rbx, [args_ptr]
    add rbx, rax
    push rbx
addr_2347:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2348:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2349:
addr_2350:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2351:
addr_2352:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2353:
addr_2354:
    mov rax, 59
    push rax
addr_2355:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2356:
    pop rax
addr_2357:
    jmp addr_2261
addr_2358:
    jmp addr_2359
addr_2359:
    pop rax
addr_2360:
    mov rax, 15
    push rax
    push str_6
addr_2361:
addr_2362:
    mov rax, 2
    push rax
addr_2363:
addr_2364:
addr_2365:
    mov rax, 1
    push rax
addr_2366:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2367:
    pop rax
addr_2368:
    mov rax, 36
    push rax
    push str_7
addr_2369:
addr_2370:
    mov rax, 2
    push rax
addr_2371:
addr_2372:
addr_2373:
    mov rax, 1
    push rax
addr_2374:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2375:
    pop rax
addr_2376:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2377:
addr_2378:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2379:
addr_2380:
addr_2381:
    pop rax
    push rax
    push rax
addr_2382:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2383:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2384:
addr_2385:
    mov rax, 2
    push rax
addr_2386:
addr_2387:
addr_2388:
    mov rax, 1
    push rax
addr_2389:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2390:
    pop rax
addr_2391:
    mov rax, 2
    push rax
    push str_8
addr_2392:
addr_2393:
    mov rax, 2
    push rax
addr_2394:
addr_2395:
addr_2396:
    mov rax, 1
    push rax
addr_2397:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2398:
    pop rax
addr_2399:
    mov rax, 1
    push rax
addr_2400:
addr_2401:
    mov rax, 60
    push rax
addr_2402:
    pop rax
    pop rdi
    syscall
    push rax
addr_2403:
    pop rax
addr_2404:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 48
    ret
addr_2405:
    jmp addr_2464
addr_2406:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2407:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2408:
addr_2409:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2410:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2411:
addr_2412:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2413:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2414:
addr_2415:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2416:
addr_2417:
addr_2418:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2419:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2420:
    pop rax
    test rax, rax
    jz addr_2458
addr_2421:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2422:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2423:
addr_2424:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2425:
addr_2426:
addr_2427:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2428:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_2429:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2430:
addr_2431:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2432:
addr_2433:
addr_2434:
addr_2435:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2436:
addr_2437:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2438:
    pop rax
addr_2439:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2440:
addr_2441:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2442:
addr_2443:
addr_2444:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2445:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2446:
addr_2447:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2448:
addr_2449:
addr_2450:
    pop rax
    push rax
    push rax
addr_2451:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2452:
    mov rax, 1
    push rax
addr_2453:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2454:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2455:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2456:
    mov rax, 1
    push rax
addr_2457:
    jmp addr_2462
addr_2458:
    pop rax
addr_2459:
    pop rax
addr_2460:
    mov rax, 0
    push rax
addr_2461:
    mov rax, 0
    push rax
addr_2462:
    jmp addr_2463
addr_2463:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_2464:
    jmp addr_2564
addr_2465:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2466:
    mov rax, 32
    push rax
addr_2467:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2468:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2469:
addr_2470:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2471:
    pop rax
    push rax
    push rax
addr_2472:
    mov rax, 0
    push rax
addr_2473:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2474:
    pop rax
    test rax, rax
    jz addr_2502
addr_2475:
    pop rax
addr_2476:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2477:
addr_2478:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2479:
addr_2480:
    mov rax, 32
    push rax
addr_2481:
addr_2482:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2483:
addr_2484:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2485:
addr_2486:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2487:
addr_2488:
    mov rax, 1
    push rax
addr_2489:
addr_2490:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2491:
addr_2492:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2493:
addr_2494:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2495:
addr_2496:
    mov rax, 48
    push rax
addr_2497:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2498:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2499:
    mov rax, 1
    push rax
addr_2500:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2501:
    jmp addr_2562
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
addr_2515:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2516:
    mov rax, 0
    push rax
addr_2517:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2518:
    pop rax
    test rax, rax
    jz addr_2539
addr_2519:
    mov rax, 1
    push rax
addr_2520:
addr_2521:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2522:
addr_2523:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2524:
addr_2525:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2526:
addr_2527:
    pop rax
    push rax
    push rax
addr_2528:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2529:
    mov rax, 10
    push rax
addr_2530:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_2531:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_2532:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2533:
    mov rax, 48
    push rax
addr_2534:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2535:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2536:
    pop rax
    pop rbx
    mov [rax], bl
addr_2537:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2538:
    jmp addr_2514
addr_2539:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2540:
    pop rax
addr_2541:
    pop rax
    push rax
    push rax
addr_2542:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2543:
addr_2544:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2545:
addr_2546:
    mov rax, 32
    push rax
addr_2547:
addr_2548:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2549:
addr_2550:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2551:
addr_2552:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2553:
addr_2554:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2555:
addr_2556:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2557:
addr_2558:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2559:
addr_2560:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2561:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2562:
    jmp addr_2563
addr_2563:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_2564:
    jmp addr_2828
addr_2565:
    sub rsp, 176
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2566:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2567:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2568:
    mov rax, 0
    push rax
addr_2569:
    mov rax, 0
    push rax
addr_2570:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2571:
addr_2572:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2573:
addr_2574:
    mov rax, 0
    push rax
addr_2575:
    mov rax, 100
    push rax
addr_2576:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2577:
addr_2578:
    mov rax, 257
    push rax
addr_2579:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_2580:
    pop rax
    push rax
    push rax
addr_2581:
    mov rax, 0
    push rax
addr_2582:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2583:
    pop rax
    test rax, rax
    jz addr_2620
addr_2584:
    mov rax, 27
    push rax
    push str_9
addr_2585:
addr_2586:
    mov rax, 2
    push rax
addr_2587:
addr_2588:
addr_2589:
    mov rax, 1
    push rax
addr_2590:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2591:
    pop rax
addr_2592:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2593:
addr_2594:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2595:
addr_2596:
addr_2597:
    pop rax
    push rax
    push rax
addr_2598:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2599:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2600:
addr_2601:
    mov rax, 2
    push rax
addr_2602:
addr_2603:
addr_2604:
    mov rax, 1
    push rax
addr_2605:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2606:
    pop rax
addr_2607:
    mov rax, 1
    push rax
    push str_10
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
addr_2616:
addr_2617:
    mov rax, 60
    push rax
addr_2618:
    pop rax
    pop rdi
    syscall
    push rax
addr_2619:
    pop rax
addr_2620:
    jmp addr_2621
addr_2621:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2622:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2623:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2624:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2625:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2626:
addr_2627:
    mov rax, 5
    push rax
addr_2628:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_2629:
    mov rax, 0
    push rax
addr_2630:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2631:
    pop rax
    test rax, rax
    jz addr_2668
addr_2632:
    mov rax, 44
    push rax
    push str_11
addr_2633:
addr_2634:
    mov rax, 2
    push rax
addr_2635:
addr_2636:
addr_2637:
    mov rax, 1
    push rax
addr_2638:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2639:
    pop rax
addr_2640:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2641:
addr_2642:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2643:
addr_2644:
addr_2645:
    pop rax
    push rax
    push rax
addr_2646:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2647:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2648:
addr_2649:
    mov rax, 2
    push rax
addr_2650:
addr_2651:
addr_2652:
    mov rax, 1
    push rax
addr_2653:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2654:
    pop rax
addr_2655:
    mov rax, 1
    push rax
    push str_12
addr_2656:
addr_2657:
    mov rax, 2
    push rax
addr_2658:
addr_2659:
addr_2660:
    mov rax, 1
    push rax
addr_2661:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2662:
    pop rax
addr_2663:
    mov rax, 1
    push rax
addr_2664:
addr_2665:
    mov rax, 60
    push rax
addr_2666:
    pop rax
    pop rdi
    syscall
    push rax
addr_2667:
    pop rax
addr_2668:
    jmp addr_2669
addr_2669:
    mov rax, [ret_stack_rsp]
    add rax, 16
    push rax
addr_2670:
addr_2671:
addr_2672:
    mov rax, 48
    push rax
addr_2673:
addr_2674:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2675:
addr_2676:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2677:
addr_2678:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2679:
addr_2680:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2681:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2682:
addr_2683:
addr_2684:
    mov rax, 0
    push rax
addr_2685:
addr_2686:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2687:
addr_2688:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2689:
addr_2690:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2691:
addr_2692:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2693:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2694:
addr_2695:
addr_2696:
    mov rax, 0
    push rax
addr_2697:
addr_2698:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2699:
addr_2700:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2701:
addr_2702:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2703:
addr_2704:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2705:
    mov rax, 0
    push rax
addr_2706:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2707:
    pop rax
    test rax, rax
    jz addr_2824
addr_2708:
    mov rax, 0
    push rax
addr_2709:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_2710:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2711:
    mov rax, 2
    push rax
addr_2712:
    mov rax, 1
    push rax
addr_2713:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2714:
addr_2715:
addr_2716:
    mov rax, 0
    push rax
addr_2717:
addr_2718:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2719:
addr_2720:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2721:
addr_2722:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2723:
addr_2724:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2725:
    mov rax, 0
    push rax
addr_2726:
addr_2727:
    mov rax, 9
    push rax
addr_2728:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    pop r8
    pop r9
    syscall
    push rax
addr_2729:
addr_2730:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2731:
addr_2732:
addr_2733:
    mov rax, 8
    push rax
addr_2734:
addr_2735:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2736:
addr_2737:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2738:
addr_2739:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2740:
addr_2741:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2742:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2743:
addr_2744:
addr_2745:
    mov rax, 8
    push rax
addr_2746:
addr_2747:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2748:
addr_2749:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2750:
addr_2751:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2752:
addr_2753:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2754:
addr_2755:
addr_2756:
    mov rax, 0
    push rax
addr_2757:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_2758:
    pop rax
    test rax, rax
    jz addr_2795
addr_2759:
    mov rax, 33
    push rax
    push str_13
addr_2760:
addr_2761:
    mov rax, 2
    push rax
addr_2762:
addr_2763:
addr_2764:
    mov rax, 1
    push rax
addr_2765:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2766:
    pop rax
addr_2767:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2768:
addr_2769:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2770:
addr_2771:
addr_2772:
    pop rax
    push rax
    push rax
addr_2773:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2774:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2775:
addr_2776:
    mov rax, 2
    push rax
addr_2777:
addr_2778:
addr_2779:
    mov rax, 1
    push rax
addr_2780:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2781:
    pop rax
addr_2782:
    mov rax, 1
    push rax
    push str_14
addr_2783:
addr_2784:
    mov rax, 2
    push rax
addr_2785:
addr_2786:
addr_2787:
    mov rax, 1
    push rax
addr_2788:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2789:
    pop rax
addr_2790:
    mov rax, 1
    push rax
addr_2791:
addr_2792:
    mov rax, 60
    push rax
addr_2793:
    pop rax
    pop rdi
    syscall
    push rax
addr_2794:
    pop rax
addr_2795:
    jmp addr_2796
addr_2796:
    mov rax, [ret_stack_rsp]
    add rax, 160
    push rax
addr_2797:
addr_2798:
    pop rax
    push rax
    push rax
addr_2799:
addr_2800:
addr_2801:
    mov rax, 0
    push rax
addr_2802:
addr_2803:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2804:
addr_2805:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2806:
addr_2807:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2808:
addr_2809:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2810:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2811:
addr_2812:
addr_2813:
    mov rax, 8
    push rax
addr_2814:
addr_2815:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2816:
addr_2817:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2818:
addr_2819:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2820:
addr_2821:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2822:
addr_2823:
    jmp addr_2826
addr_2824:
    mov rax, 0
    push rax
addr_2825:
    mov rax, 0
    push rax
addr_2826:
    jmp addr_2827
addr_2827:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 176
    ret
addr_2828:
    jmp addr_2876
addr_2829:
    sub rsp, 144
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2830:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2831:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2832:
addr_2833:
    mov rax, 4
    push rax
addr_2834:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_2835:
    pop rax
    push rax
    push rax
addr_2836:
    mov rax, 0
    push rax
addr_2837:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2838:
    pop rax
    test rax, rax
    jz addr_2842
addr_2839:
    pop rax
addr_2840:
    mov rax, 1
    push rax
addr_2841:
    jmp addr_2850
addr_2842:
    pop rax
    push rax
    push rax
addr_2843:
    mov rax, 0
    push rax
addr_2844:
    mov rax, 2
    push rax
addr_2845:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2846:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_2847:
    pop rax
    test rax, rax
    jz addr_2851
addr_2848:
    pop rax
addr_2849:
    mov rax, 0
    push rax
addr_2850:
    jmp addr_2874
addr_2851:
    pop rax
addr_2852:
    mov rax, 0
    push rax
addr_2853:
    mov rax, 15
    push rax
    push str_15
addr_2854:
addr_2855:
    mov rax, 2
    push rax
addr_2856:
addr_2857:
addr_2858:
    mov rax, 1
    push rax
addr_2859:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2860:
    pop rax
addr_2861:
    mov rax, 28
    push rax
    push str_16
addr_2862:
addr_2863:
    mov rax, 2
    push rax
addr_2864:
addr_2865:
addr_2866:
    mov rax, 1
    push rax
addr_2867:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_2868:
    pop rax
addr_2869:
    mov rax, 1
    push rax
addr_2870:
addr_2871:
    mov rax, 60
    push rax
addr_2872:
    pop rax
    pop rdi
    syscall
    push rax
addr_2873:
    pop rax
addr_2874:
    jmp addr_2875
addr_2875:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 144
    ret
addr_2876:
    jmp addr_2984
addr_2877:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2878:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2879:
addr_2880:
    pop rax
    pop rbx
    mov [rax], rbx
addr_2881:
    mov rax, 10
    push rax
    push str_17
addr_2882:
addr_2883:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2884:
    mov rax, 0
    push rax
addr_2885:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2886:
    pop rax
    test rax, rax
    jz addr_2894
addr_2887:
    pop rax
    push rax
    push rax
addr_2888:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_2889:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2890:
addr_2891:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2892:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_2893:
    jmp addr_2895
addr_2894:
    mov rax, 0
    push rax
addr_2895:
    jmp addr_2896
addr_2896:
    pop rax
    test rax, rax
    jz addr_2910
addr_2897:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2898:
    mov rax, 1
    push rax
addr_2899:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_2900:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2901:
    mov rax, 1
    push rax
addr_2902:
addr_2903:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2904:
addr_2905:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2906:
addr_2907:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_2908:
addr_2909:
    jmp addr_2882
addr_2910:
    pop rax
addr_2911:
    mov rax, 0
    push rax
addr_2912:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2913:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_2914:
addr_2915:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_2916:
addr_2917:
    pop rax
    push rax
    push rax
addr_2918:
addr_2919:
    pop rax
    push rax
    push rax
addr_2920:
    mov rax, 48
    push rax
addr_2921:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2922:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2923:
    mov rax, 57
    push rax
addr_2924:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2925:
addr_2926:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2927:
addr_2928:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2929:
addr_2930:
    pop rax
    pop rbx
    and rbx, rax
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
    push rax
    push rax
addr_2935:
    pop rax
    push rax
    push rax
addr_2936:
    mov rax, 97
    push rax
addr_2937:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2938:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2939:
    mov rax, 122
    push rax
addr_2940:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2941:
addr_2942:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2943:
addr_2944:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2945:
addr_2946:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2947:
addr_2948:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2949:
    pop rax
    push rax
    push rax
addr_2950:
    mov rax, 65
    push rax
addr_2951:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovge rcx, rdx
    push rcx
addr_2952:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2953:
    mov rax, 90
    push rax
addr_2954:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovle rcx, rdx
    push rcx
addr_2955:
addr_2956:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2957:
addr_2958:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2959:
addr_2960:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_2961:
addr_2962:
addr_2963:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2964:
addr_2965:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2966:
addr_2967:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2968:
addr_2969:
addr_2970:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2971:
addr_2972:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2973:
addr_2974:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2975:
addr_2976:
addr_2977:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2978:
addr_2979:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2980:
addr_2981:
    pop rax
    pop rbx
    or rbx, rax
    push rbx
addr_2982:
addr_2983:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_2984:
    jmp addr_3015
addr_2985:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2986:
addr_2987:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_2988:
    mov rax, 0
    push rax
addr_2989:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_2990:
    pop rax
    test rax, rax
    jz addr_2995
addr_2991:
    pop rax
    push rax
    push rax
addr_2992:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_2993:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2877
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_2994:
    jmp addr_2996
addr_2995:
    mov rax, 0
    push rax
addr_2996:
    jmp addr_2997
addr_2997:
    pop rax
    test rax, rax
    jz addr_3011
addr_2998:
    pop rax
    pop rbx
    push rax
    push rbx
addr_2999:
    mov rax, 1
    push rax
addr_3000:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3001:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3002:
    mov rax, 1
    push rax
addr_3003:
addr_3004:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3005:
addr_3006:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3007:
addr_3008:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3009:
addr_3010:
    jmp addr_2986
addr_3011:
    pop rax
addr_3012:
    mov rax, 0
    push rax
addr_3013:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3014:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3015:
    jmp addr_3117
addr_3016:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3017:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3018:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3019:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2985
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3020:
addr_3021:
addr_3022:
    mov rax, 1
    push rax
addr_3023:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3024:
addr_3025:
    pop rax
    test rax, rax
    jz addr_3115
addr_3026:
addr_3027:
    mov rax, mem
    add rax, 8
    push rax
addr_3028:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3029:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3030:
addr_3031:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3032:
addr_3033:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3034:
addr_3035:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3036:
addr_3037:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3038:
addr_3039:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3040:
    mov rax, 1
    push rax
    push str_18
addr_3041:
addr_3042:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3043:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3044:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3045:
    pop rax
addr_3046:
addr_3047:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3048:
    mov rax, 0
    push rax
addr_3049:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3050:
    pop rax
    test rax, rax
    jz addr_3082
addr_3051:
    pop rax
    push rax
    push rax
addr_3052:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3053:
    pop rax
    push rax
    push rax
addr_3054:
    mov rax, 39
    push rax
addr_3055:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3056:
    pop rax
    test rax, rax
    jz addr_3065
addr_3057:
    pop rax
addr_3058:
    mov rax, 5
    push rax
    push str_19
addr_3059:
addr_3060:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3061:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3062:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3063:
    pop rax
addr_3064:
    jmp addr_3068
addr_3065:
    mov rax, 1
    push rax
addr_3066:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3067:
    pop rax
    pop rbx
    mov [rax], bl
addr_3068:
    jmp addr_3069
addr_3069:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3070:
    mov rax, 1
    push rax
addr_3071:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3072:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3073:
    mov rax, 1
    push rax
addr_3074:
addr_3075:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3076:
addr_3077:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3078:
addr_3079:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3080:
addr_3081:
    jmp addr_3046
addr_3082:
    pop rax
addr_3083:
    pop rax
addr_3084:
    mov rax, 1
    push rax
    push str_20
addr_3085:
addr_3086:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3087:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2113
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3088:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1818
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3089:
    pop rax
addr_3090:
addr_3091:
    mov rax, mem
    add rax, 8
    push rax
addr_3092:
    mov rax, mem
    add rax, 8388616
    push rax
addr_3093:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3094:
addr_3095:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3096:
addr_3097:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3098:
addr_3099:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3100:
addr_3101:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3102:
addr_3103:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3104:
addr_3105:
addr_3106:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3107:
addr_3108:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3109:
addr_3110:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3111:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3112:
addr_3113:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3114:
addr_3115:
    jmp addr_3116
addr_3116:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3117:
    jmp addr_3142
addr_3118:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3119:
    mov rax, mem
    add rax, 8388624
    push rax
addr_3120:
    mov rax, 1
    push rax
addr_3121:
addr_3122:
    mov rax, 228
    push rax
addr_3123:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_3124:
    mov rax, 0
    push rax
addr_3125:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3126:
    pop rax
    test rax, rax
    jz addr_3140
addr_3127:
    mov rax, 64
    push rax
    push str_21
addr_3128:
addr_3129:
    mov rax, 2
    push rax
addr_3130:
addr_3131:
addr_3132:
    mov rax, 1
    push rax
addr_3133:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3134:
    pop rax
addr_3135:
    mov rax, 1
    push rax
addr_3136:
addr_3137:
    mov rax, 60
    push rax
addr_3138:
    pop rax
    pop rdi
    syscall
    push rax
addr_3139:
    pop rax
addr_3140:
    jmp addr_3141
addr_3141:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3142:
    jmp addr_3276
addr_3143:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3144:
addr_3145:
addr_3146:
    mov rax, 1
    push rax
addr_3147:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3148:
addr_3149:
    pop rax
    test rax, rax
    jz addr_3272
addr_3150:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3151:
    mov rax, 1
    push rax
addr_3152:
addr_3153:
    mov rax, 228
    push rax
addr_3154:
    pop rax
    pop rdi
    pop rsi
    syscall
    push rax
addr_3155:
    mov rax, 0
    push rax
addr_3156:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3157:
    pop rax
    test rax, rax
    jz addr_3171
addr_3158:
    mov rax, 62
    push rax
    push str_22
addr_3159:
addr_3160:
    mov rax, 2
    push rax
addr_3161:
addr_3162:
addr_3163:
    mov rax, 1
    push rax
addr_3164:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3165:
    pop rax
addr_3166:
    mov rax, 1
    push rax
addr_3167:
addr_3168:
    mov rax, 60
    push rax
addr_3169:
    pop rax
    pop rdi
    syscall
    push rax
addr_3170:
    pop rax
addr_3171:
    jmp addr_3172
addr_3172:
addr_3173:
    mov rax, 1
    push rax
addr_3174:
addr_3175:
addr_3176:
    mov rax, 1
    push rax
addr_3177:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3178:
    pop rax
addr_3179:
    mov rax, 6
    push rax
    push str_23
addr_3180:
addr_3181:
    mov rax, 1
    push rax
addr_3182:
addr_3183:
addr_3184:
    mov rax, 1
    push rax
addr_3185:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3186:
    pop rax
addr_3187:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3188:
    mov rax, 0
    push rax
addr_3189:
addr_3190:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3191:
addr_3192:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3193:
addr_3194:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3195:
addr_3196:
addr_3197:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3198:
    mov rax, mem
    add rax, 8388624
    push rax
addr_3199:
    mov rax, 0
    push rax
addr_3200:
addr_3201:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3202:
addr_3203:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3204:
addr_3205:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3206:
addr_3207:
addr_3208:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3209:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3210:
    mov rax, 1000000000
    push rax
addr_3211:
    pop rax
    pop rbx
    mul rbx
    push rax
addr_3212:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3213:
    mov rax, 8
    push rax
addr_3214:
addr_3215:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3216:
addr_3217:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3218:
addr_3219:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3220:
addr_3221:
addr_3222:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3223:
    mov rax, mem
    add rax, 8388624
    push rax
addr_3224:
    mov rax, 8
    push rax
addr_3225:
addr_3226:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3227:
addr_3228:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3229:
addr_3230:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3231:
addr_3232:
addr_3233:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3234:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3235:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3236:
    pop rax
    push rax
    push rax
addr_3237:
    mov rax, 1000000000
    push rax
addr_3238:
addr_3239:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_3240:
    pop rax
addr_3241:
addr_3242:
    mov rax, 1
    push rax
addr_3243:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1625
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3244:
    mov rax, 1
    push rax
    push str_24
addr_3245:
addr_3246:
    mov rax, 1
    push rax
addr_3247:
addr_3248:
addr_3249:
    mov rax, 1
    push rax
addr_3250:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3251:
    pop rax
addr_3252:
    pop rax
    push rax
    push rax
addr_3253:
    mov rax, 1000000000
    push rax
addr_3254:
addr_3255:
    xor rdx, rdx
    pop rbx
    pop rax
    div rbx
    push rax
    push rdx
addr_3256:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3257:
    pop rax
addr_3258:
    mov rax, 9
    push rax
addr_3259:
addr_3260:
    mov rax, 1
    push rax
addr_3261:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_1704
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3262:
    mov rax, 6
    push rax
    push str_25
addr_3263:
addr_3264:
    mov rax, 1
    push rax
addr_3265:
addr_3266:
addr_3267:
    mov rax, 1
    push rax
addr_3268:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3269:
    pop rax
addr_3270:
    pop rax
addr_3271:
    jmp addr_3274
addr_3272:
    pop rax
addr_3273:
    pop rax
addr_3274:
    jmp addr_3275
addr_3275:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_3276:
    jmp addr_3335
addr_3277:
    sub rsp, 0
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3278:
addr_3279:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3280:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3281:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3282:
    pop rax
    push rax
    push rax
addr_3283:
    mov rax, 0
    push rax
addr_3284:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3285:
    pop rax
    test rax, rax
    jz addr_3299
addr_3286:
    mov rax, 1
    push rax
addr_3287:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3288:
addr_3289:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3290:
addr_3291:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3292:
addr_3293:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3294:
addr_3295:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3296:
    mov rax, 47
    push rax
addr_3297:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3298:
    jmp addr_3302
addr_3299:
    pop rax
addr_3300:
    pop rax
addr_3301:
    mov rax, 0
    push rax
addr_3302:
    jmp addr_3303
addr_3303:
    pop rax
    test rax, rax
    jz addr_3309
addr_3304:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3305:
    mov rax, 1
    push rax
addr_3306:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3307:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3308:
    jmp addr_3278
addr_3309:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3310:
    pop rax
    push rax
    push rax
addr_3311:
    mov rax, 0
    push rax
addr_3312:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3313:
    pop rax
    test rax, rax
    jz addr_3332
addr_3314:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3315:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3316:
    mov rax, 1
    push rax
addr_3317:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3318:
addr_3319:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3320:
addr_3321:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3322:
addr_3323:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3324:
addr_3325:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3326:
    mov rax, 47
    push rax
addr_3327:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3328:
    pop rax
    test rax, rax
    jz addr_3331
addr_3329:
    mov rax, 1
    push rax
addr_3330:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3331:
    jmp addr_3332
addr_3332:
    jmp addr_3333
addr_3333:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3334:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 0
    ret
addr_3335:
    jmp addr_3471
addr_3336:
    sub rsp, 24
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3337:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3338:
addr_3339:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3340:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3341:
addr_3342:
    pop rax
    push rax
    push rax
addr_3343:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_3344:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3345:
addr_3346:
addr_3347:
    mov rax, 8
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
    pop rbx
    mov [rax], rbx
addr_3356:
addr_3357:
addr_3358:
    mov rax, 0
    push rax
addr_3359:
addr_3360:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3361:
addr_3362:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3363:
addr_3364:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3365:
addr_3366:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3367:
    mov rax, 0
    push rax
addr_3368:
addr_3369:
    pop rax
    push rax
    push rax
addr_3370:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3371:
addr_3372:
addr_3373:
    mov rax, 0
    push rax
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
    mov rbx, [rax]
    push rbx
addr_3382:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3383:
    pop rax
    test rax, rax
    jz addr_3427
addr_3384:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3385:
addr_3386:
addr_3387:
    mov rax, 0
    push rax
addr_3388:
addr_3389:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3390:
addr_3391:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3392:
addr_3393:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3394:
addr_3395:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3396:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3397:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3398:
    mov rax, 1
    push rax
addr_3399:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3400:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3401:
addr_3402:
addr_3403:
    mov rax, 8
    push rax
addr_3404:
addr_3405:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3406:
addr_3407:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3408:
addr_3409:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3410:
addr_3411:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
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
    push rax
    push rbx
addr_3418:
addr_3419:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3420:
addr_3421:
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
addr_3422:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3423:
addr_3424:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3425:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3426:
    jmp addr_3428
addr_3427:
    mov rax, 0
    push rax
addr_3428:
    jmp addr_3429
addr_3429:
    pop rax
    test rax, rax
    jz addr_3433
addr_3430:
    mov rax, 1
    push rax
addr_3431:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3432:
    jmp addr_3368
addr_3433:
    pop rax
    push rax
    push rax
addr_3434:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3435:
addr_3436:
addr_3437:
    mov rax, 0
    push rax
addr_3438:
addr_3439:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3440:
addr_3441:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3442:
addr_3443:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3444:
addr_3445:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3446:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3447:
    pop rax
    test rax, rax
    jz addr_3465
addr_3448:
    mov rax, [ret_stack_rsp]
    add rax, 8
    push rax
addr_3449:
addr_3450:
addr_3451:
    mov rax, 0
    push rax
addr_3452:
addr_3453:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3454:
addr_3455:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3456:
addr_3457:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3458:
addr_3459:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3460:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3461:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3462:
    mov rax, 1
    push rax
addr_3463:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3464:
    jmp addr_3469
addr_3465:
    pop rax
addr_3466:
    mov rax, 0
    push rax
addr_3467:
    mov rax, 1
    push rax
addr_3468:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3469:
    jmp addr_3470
addr_3470:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 24
    ret
addr_3471:
    jmp addr_3485
addr_3472:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3473:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3474:
    pop rax
    pop rbx
    mov [rax], bl
addr_3475:
    mov rax, 1
    push rax
addr_3476:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3477:
addr_3478:
    mov rax, 1
    push rax
addr_3479:
addr_3480:
addr_3481:
    mov rax, 1
    push rax
addr_3482:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3483:
    pop rax
addr_3484:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3485:
    jmp addr_3623
addr_3486:
    sub rsp, 16
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3487:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3488:
addr_3489:
    pop rax
    push rax
    push rax
addr_3490:
    pop rax
    pop rbx
    pop rcx
    push rbx
    push rax
    push rcx
addr_3491:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3492:
addr_3493:
addr_3494:
    mov rax, 8
    push rax
addr_3495:
addr_3496:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3497:
addr_3498:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3499:
addr_3500:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3501:
addr_3502:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3503:
addr_3504:
addr_3505:
    mov rax, 0
    push rax
addr_3506:
addr_3507:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3508:
addr_3509:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3510:
addr_3511:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3512:
addr_3513:
    pop rax
    pop rbx
    mov [rax], rbx
addr_3514:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3515:
addr_3516:
    pop rax
    push rax
    push rax
addr_3517:
addr_3518:
addr_3519:
    mov rax, 0
    push rax
addr_3520:
addr_3521:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3522:
addr_3523:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3524:
addr_3525:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3526:
addr_3527:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3528:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3529:
addr_3530:
addr_3531:
    mov rax, 8
    push rax
addr_3532:
addr_3533:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3534:
addr_3535:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3536:
addr_3537:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3538:
addr_3539:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3540:
addr_3541:
    mov rax, 47
    push rax
addr_3542:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3336
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3543:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3544:
addr_3545:
    pop rax
    push rax
    push rax
addr_3546:
addr_3547:
addr_3548:
    mov rax, 0
    push rax
addr_3549:
addr_3550:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3551:
addr_3552:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3553:
addr_3554:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3555:
addr_3556:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3557:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3558:
addr_3559:
addr_3560:
    mov rax, 8
    push rax
addr_3561:
addr_3562:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3563:
addr_3564:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3565:
addr_3566:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3567:
addr_3568:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3569:
addr_3570:
    mov rax, 46
    push rax
addr_3571:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3336
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3572:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3573:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
addr_3574:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3575:
    pop rax
    test rax, rax
    jz addr_3592
addr_3576:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3577:
    pop rax
addr_3578:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3579:
addr_3580:
addr_3581:
    mov rax, 8
    push rax
addr_3582:
addr_3583:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3584:
addr_3585:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3586:
addr_3587:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3588:
addr_3589:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3590:
addr_3591:
    jmp addr_3621
addr_3592:
    pop rax
addr_3593:
    pop rax
addr_3594:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3595:
addr_3596:
    pop rax
    push rax
    push rax
addr_3597:
addr_3598:
addr_3599:
    mov rax, 0
    push rax
addr_3600:
addr_3601:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3602:
addr_3603:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3604:
addr_3605:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3606:
addr_3607:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3608:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3609:
addr_3610:
addr_3611:
    mov rax, 8
    push rax
addr_3612:
addr_3613:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3614:
addr_3615:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3616:
addr_3617:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3618:
addr_3619:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3620:
addr_3621:
    jmp addr_3622
addr_3622:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 16
    ret
addr_3623:
    jmp addr_3777
addr_3624:
    sub rsp, 8
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3625:
    pop rax
    test rax, rax
    jz addr_3682
addr_3626:
    mov rax, 5
    push rax
    push str_26
addr_3627:
addr_3628:
    mov rax, 1
    push rax
addr_3629:
addr_3630:
addr_3631:
    mov rax, 1
    push rax
addr_3632:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3633:
    pop rax
addr_3634:
    pop rax
    push rax
    push rax
addr_3635:
addr_3636:
    pop rax
    push rax
    push rax
addr_3637:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3638:
    mov rax, 0
    push rax
addr_3639:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
addr_3640:
    pop rax
    test rax, rax
    jz addr_3673
addr_3641:
    mov rax, 1
    push rax
    push str_27
addr_3642:
addr_3643:
    mov rax, 1
    push rax
addr_3644:
addr_3645:
addr_3646:
    mov rax, 1
    push rax
addr_3647:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3648:
    pop rax
addr_3649:
    pop rax
    push rax
    push rax
addr_3650:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3651:
addr_3652:
addr_3653:
    pop rax
    push rax
    push rax
addr_3654:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_457
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3655:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3656:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_3016
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3657:
addr_3658:
    mov rax, 1
    push rax
addr_3659:
addr_3660:
addr_3661:
    mov rax, 1
    push rax
addr_3662:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3663:
    pop rax
addr_3664:
    mov rax, 8
    push rax
addr_3665:
addr_3666:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3667:
addr_3668:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3669:
addr_3670:
    pop rax
    pop rbx
    add rax, rbx
    push rax
addr_3671:
addr_3672:
    jmp addr_3635
addr_3673:
    pop rax
addr_3674:
    mov rax, 1
    push rax
    push str_28
addr_3675:
addr_3676:
    mov rax, 1
    push rax
addr_3677:
addr_3678:
addr_3679:
    mov rax, 1
    push rax
addr_3680:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3681:
    pop rax
addr_3682:
    jmp addr_3683
addr_3683:
addr_3684:
    mov rax, 57
    push rax
addr_3685:
    pop rax
    syscall
    push rax
addr_3686:
    pop rax
    push rax
    push rax
addr_3687:
    mov rax, 0
    push rax
addr_3688:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3689:
    pop rax
    test rax, rax
    jz addr_3698
addr_3690:
    pop rax
addr_3691:
    pop rax
    push rax
    push rax
addr_3692:
addr_3693:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3694:
addr_3695:
    pop rax
    pop rbx
    push rax
    push rbx
addr_3696:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    call addr_2186
    mov [ret_stack_rsp], rsp
    mov rsp, rax
addr_3697:
    jmp addr_3759
addr_3698:
    pop rax
    push rax
    push rax
addr_3699:
    mov rax, 0
    push rax
addr_3700:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3701:
    pop rax
    test rax, rax
    jz addr_3760
addr_3702:
    pop rax
addr_3703:
    pop rax
addr_3704:
    mov rax, 0
    push rax
addr_3705:
    mov rax, 0
    push rax
addr_3706:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3707:
    mov rax, 0
    push rax
addr_3708:
    mov rax, 1
    push rax
addr_3709:
    pop rax
    pop rbx
    sub rbx, rax
    push rbx
addr_3710:
addr_3711:
    mov rax, 61
    push rax
addr_3712:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    pop r10
    syscall
    push rax
addr_3713:
    mov rax, 0
    push rax
addr_3714:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
addr_3715:
    pop rax
    test rax, rax
    jz addr_3729
addr_3716:
    mov rax, 70
    push rax
    push str_29
addr_3717:
addr_3718:
    mov rax, 2
    push rax
addr_3719:
addr_3720:
addr_3721:
    mov rax, 1
    push rax
addr_3722:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3723:
    pop rax
addr_3724:
    mov rax, 1
    push rax
addr_3725:
addr_3726:
    mov rax, 60
    push rax
addr_3727:
    pop rax
    pop rdi
    syscall
    push rax
addr_3728:
    pop rax
addr_3729:
    jmp addr_3730
addr_3730:
    mov rax, [ret_stack_rsp]
    add rax, 0
    push rax
addr_3731:
addr_3732:
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
addr_3733:
    pop rax
    push rax
    push rax
addr_3734:
addr_3735:
    mov rax, 127
    push rax
addr_3736:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3737:
    mov rax, 0
    push rax
addr_3738:
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
addr_3739:
    pop rax
    test rax, rax
    jz addr_3757
addr_3740:
    pop rax
    push rax
    push rax
addr_3741:
addr_3742:
    mov rax, 65280
    push rax
addr_3743:
    pop rax
    pop rbx
    and rbx, rax
    push rbx
addr_3744:
    mov rax, 8
    push rax
addr_3745:
    pop rcx
    pop rbx
    shr rbx, cl
    push rbx
addr_3746:
    pop rax
    push rax
    push rax
addr_3747:
    mov rax, 0
    push rax
addr_3748:
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
addr_3749:
    pop rax
    test rax, rax
    jz addr_3755
addr_3750:
    pop rax
    push rax
    push rax
addr_3751:
addr_3752:
    mov rax, 60
    push rax
addr_3753:
    pop rax
    pop rdi
    syscall
    push rax
addr_3754:
    pop rax
addr_3755:
    jmp addr_3756
addr_3756:
    pop rax
addr_3757:
    jmp addr_3758
addr_3758:
    pop rax
addr_3759:
    jmp addr_3775
addr_3760:
    pop rax
addr_3761:
    pop rax
addr_3762:
    mov rax, 31
    push rax
    push str_30
addr_3763:
addr_3764:
    mov rax, 2
    push rax
addr_3765:
addr_3766:
addr_3767:
    mov rax, 1
    push rax
addr_3768:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3769:
    pop rax
addr_3770:
    mov rax, 1
    push rax
addr_3771:
addr_3772:
    mov rax, 60
    push rax
addr_3773:
    pop rax
    pop rdi
    syscall
    push rax
addr_3774:
    pop rax
addr_3775:
    jmp addr_3776
addr_3776:
    mov rax, rsp
    mov rsp, [ret_stack_rsp]
    add rsp, 8
    ret
addr_3777:
    mov rax, 18
    push rax
    push str_31
addr_3778:
addr_3779:
    mov rax, 2
    push rax
addr_3780:
addr_3781:
addr_3782:
    mov rax, 1
    push rax
addr_3783:
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
addr_3784:
    pop rax
addr_3785:
    mov rax, 60
    mov rdi, 0
    syscall
segment .data
str_0: db 48
str_1: db 115,116,100,46,116,111,114,99,104,58,53,55,52,58,53
str_2: db 58,32,84,101,109,112,111,114,97,114,121,32,109,101,109,111,114,121,32,98,117,102,102,101,114,32,99,97,112,97,99,105,116,121,32,101,120,99,101,101,100,101,100,46,32,78,101,101,100,32,116,111,32,99,97,108,108,32,116,109,112,45,99,108,101,97,110,32,109,111,114,101,32,111,102,116,101,110,10
str_3: db 80,65,84,72
str_4: db 67,111,117,108,100,32,110,111,116,32,102,105,110,100,32,36,80,65,84,72,10
str_5: db 47
str_6: db 115,116,100,46,116,111,114,99,104,58,54,50,57,58,51
str_7: db 58,32,69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,102,105,110,100,32,101,120,101,99,117,116,97,98,108,101,32,96
str_8: db 96,10
str_9: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,111,112,101,110,32,102,105,108,101,32
str_10: db 10
str_11: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,100,101,116,101,114,109,105,110,101,32,116,104,101,32,115,105,122,101,32,111,102,32,102,105,108,101,32
str_12: db 10
str_13: db 69,82,82,79,82,58,32,99,111,117,108,100,32,110,111,116,32,109,101,109,111,114,121,32,109,97,112,32,102,105,108,101,32
str_14: db 10
str_15: db 115,116,100,46,116,111,114,99,104,58,55,54,49,58,53
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
str_31: db 72,101,108,108,111,44,32,115,105,109,105,99,111,108,111,110,33,10
segment .bss
args_ptr: resq 1
ret_stack_rsp: resq 1
ret_stack: resb 640000
ret_stack_end:
mem: resb 8388640
