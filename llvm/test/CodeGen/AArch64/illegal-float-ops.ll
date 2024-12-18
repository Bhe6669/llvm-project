; RUN: llc -mtriple=aarch64-none-linux-gnu -verify-machineinstrs -o - %s | FileCheck %s
; RUN: llc -mtriple=aarch64-linux-android -verify-machineinstrs -o - %s | FileCheck %s

@varfloat = global float 0.0
@vardouble = global double 0.0
@varfp128 = global fp128 zeroinitializer

declare float @llvm.cos.f32(float)
declare double @llvm.cos.f64(double)
declare fp128 @llvm.cos.f128(fp128)

define void @test_cos(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_cos:

   %cosfloat = call float @llvm.cos.f32(float %float)
   store float %cosfloat, ptr @varfloat
; CHECK: bl cosf

   %cosdouble = call double @llvm.cos.f64(double %double)
   store double %cosdouble, ptr @vardouble
; CHECK: bl cos

   %cosfp128 = call fp128 @llvm.cos.f128(fp128 %fp128)
   store fp128 %cosfp128, ptr @varfp128
; CHECK: bl cosl

  ret void
}

declare float @llvm.exp.f32(float)
declare double @llvm.exp.f64(double)
declare fp128 @llvm.exp.f128(fp128)

define void @test_exp(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_exp:

   %expfloat = call float @llvm.exp.f32(float %float)
   store float %expfloat, ptr @varfloat
; CHECK: bl expf

   %expdouble = call double @llvm.exp.f64(double %double)
   store double %expdouble, ptr @vardouble
; CHECK: bl exp

   %expfp128 = call fp128 @llvm.exp.f128(fp128 %fp128)
   store fp128 %expfp128, ptr @varfp128
; CHECK: bl expl

  ret void
}

declare float @llvm.exp2.f32(float)
declare double @llvm.exp2.f64(double)
declare fp128 @llvm.exp2.f128(fp128)

define void @test_exp2(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_exp2:

   %exp2float = call float @llvm.exp2.f32(float %float)
   store float %exp2float, ptr @varfloat
; CHECK: bl exp2f

   %exp2double = call double @llvm.exp2.f64(double %double)
   store double %exp2double, ptr @vardouble
; CHECK: bl exp2

   %exp2fp128 = call fp128 @llvm.exp2.f128(fp128 %fp128)
   store fp128 %exp2fp128, ptr @varfp128
; CHECK: bl exp2l
  ret void

}

declare float @llvm.log.f32(float)
declare double @llvm.log.f64(double)
declare fp128 @llvm.log.f128(fp128)

define void @test_log(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_log:

   %logfloat = call float @llvm.log.f32(float %float)
   store float %logfloat, ptr @varfloat
; CHECK: bl logf

   %logdouble = call double @llvm.log.f64(double %double)
   store double %logdouble, ptr @vardouble
; CHECK: bl log

   %logfp128 = call fp128 @llvm.log.f128(fp128 %fp128)
   store fp128 %logfp128, ptr @varfp128
; CHECK: bl logl

  ret void
}

declare float @llvm.log2.f32(float)
declare double @llvm.log2.f64(double)
declare fp128 @llvm.log2.f128(fp128)

define void @test_log2(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_log2:

   %log2float = call float @llvm.log2.f32(float %float)
   store float %log2float, ptr @varfloat
; CHECK: bl log2f

   %log2double = call double @llvm.log2.f64(double %double)
   store double %log2double, ptr @vardouble
; CHECK: bl log2

   %log2fp128 = call fp128 @llvm.log2.f128(fp128 %fp128)
   store fp128 %log2fp128, ptr @varfp128
; CHECK: bl log2l
  ret void

}

declare float @llvm.log10.f32(float)
declare double @llvm.log10.f64(double)
declare fp128 @llvm.log10.f128(fp128)

define void @test_log10(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_log10:

   %log10float = call float @llvm.log10.f32(float %float)
   store float %log10float, ptr @varfloat
; CHECK: bl log10f

   %log10double = call double @llvm.log10.f64(double %double)
   store double %log10double, ptr @vardouble
; CHECK: bl log10

   %log10fp128 = call fp128 @llvm.log10.f128(fp128 %fp128)
   store fp128 %log10fp128, ptr @varfp128
; CHECK: bl log10l

  ret void
}

declare float @llvm.sin.f32(float)
declare double @llvm.sin.f64(double)
declare fp128 @llvm.sin.f128(fp128)

define void @test_sin(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_sin:

   %sinfloat = call float @llvm.sin.f32(float %float)
   store float %sinfloat, ptr @varfloat
; CHECK: bl sinf

   %sindouble = call double @llvm.sin.f64(double %double)
   store double %sindouble, ptr @vardouble
; CHECK: bl sin

   %sinfp128 = call fp128 @llvm.sin.f128(fp128 %fp128)
   store fp128 %sinfp128, ptr @varfp128
; CHECK: bl sinl
  ret void

}

declare float @llvm.tan.f32(float)
declare double @llvm.tan.f64(double)
declare fp128 @llvm.tan.f128(fp128)

define void @test_tan(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_tan:

   %tanfloat = call float @llvm.tan.f32(float %float)
   store float %tanfloat, ptr @varfloat
; CHECK: bl tanf

   %tandouble = call double @llvm.tan.f64(double %double)
   store double %tandouble, ptr @vardouble
; CHECK: bl tan

   %tanfp128 = call fp128 @llvm.tan.f128(fp128 %fp128)
   store fp128 %tanfp128, ptr @varfp128
; CHECK: bl tanl
  ret void
}

declare float @llvm.acos.f32(float)
declare double @llvm.acos.f64(double)
declare fp128 @llvm.acos.f128(fp128)

define void @test_acos(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_acos:

   %acosfloat = call float @llvm.acos.f32(float %float)
   store float %acosfloat, ptr @varfloat
; CHECK: bl acosf

   %acosdouble = call double @llvm.acos.f64(double %double)
   store double %acosdouble, ptr @vardouble
; CHECK: bl acos

   %acosfp128 = call fp128 @llvm.acos.f128(fp128 %fp128)
   store fp128 %acosfp128, ptr @varfp128
; CHECK: bl acosl
  ret void
}

declare float @llvm.asin.f32(float)
declare double @llvm.asin.f64(double)
declare fp128 @llvm.asin.f128(fp128)

define void @test_asin(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_asin:

   %asinfloat = call float @llvm.asin.f32(float %float)
   store float %asinfloat, ptr @varfloat
; CHECK: bl asinf

   %asindouble = call double @llvm.asin.f64(double %double)
   store double %asindouble, ptr @vardouble
; CHECK: bl asin

   %asinfp128 = call fp128 @llvm.asin.f128(fp128 %fp128)
   store fp128 %asinfp128, ptr @varfp128
; CHECK: bl asinl
  ret void
}

declare float @llvm.atan.f32(float)
declare double @llvm.atan.f64(double)
declare fp128 @llvm.atan.f128(fp128)

define void @test_atan(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_atan:

   %atanfloat = call float @llvm.atan.f32(float %float)
   store float %atanfloat, ptr @varfloat
; CHECK: bl atanf

   %atandouble = call double @llvm.atan.f64(double %double)
   store double %atandouble, ptr @vardouble
; CHECK: bl atan

   %atanfp128 = call fp128 @llvm.atan.f128(fp128 %fp128)
   store fp128 %atanfp128, ptr @varfp128
; CHECK: bl atanl
  ret void
}

declare float @llvm.atan2.f32(float, float)
declare double @llvm.atan2.f64(double, double)
declare fp128 @llvm.atan2.f128(fp128, fp128)

define void @test_atan2(float %float1, double %double1, fp128 %fp1281, float %float2, double %double2, fp128 %fp1282) {
; CHECK-LABEL: test_atan2:

   %atan2float = call float @llvm.atan2.f32(float %float1, float %float2)
   store float %atan2float, ptr @varfloat
; CHECK: bl atan2f

   %atan2double = call double @llvm.atan2.f64(double %double1, double %double2)
   store double %atan2double, ptr @vardouble
; CHECK: bl atan2

   %atan2fp128 = call fp128 @llvm.atan2.f128(fp128 %fp1281, fp128 %fp1282)
   store fp128 %atan2fp128, ptr @varfp128
; CHECK: bl atan2l
  ret void
}

declare float @llvm.cosh.f32(float)
declare double @llvm.cosh.f64(double)
declare fp128 @llvm.cosh.f128(fp128)

define void @test_cosh(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_cosh:

   %coshfloat = call float @llvm.cosh.f32(float %float)
   store float %coshfloat, ptr @varfloat
; CHECK: bl coshf

   %coshdouble = call double @llvm.cosh.f64(double %double)
   store double %coshdouble, ptr @vardouble
; CHECK: bl cosh

   %coshfp128 = call fp128 @llvm.cosh.f128(fp128 %fp128)
   store fp128 %coshfp128, ptr @varfp128
; CHECK: bl coshl
  ret void
}

declare float @llvm.sinh.f32(float)
declare double @llvm.sinh.f64(double)
declare fp128 @llvm.sinh.f128(fp128)

define void @test_sinh(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_sinh:

   %sinhfloat = call float @llvm.sinh.f32(float %float)
   store float %sinhfloat, ptr @varfloat
; CHECK: bl sinhf

   %sinhdouble = call double @llvm.sinh.f64(double %double)
   store double %sinhdouble, ptr @vardouble
; CHECK: bl sinh

   %sinhfp128 = call fp128 @llvm.sinh.f128(fp128 %fp128)
   store fp128 %sinhfp128, ptr @varfp128
; CHECK: bl sinhl
  ret void
}

declare float @llvm.tanh.f32(float)
declare double @llvm.tanh.f64(double)
declare fp128 @llvm.tanh.f128(fp128)

define void @test_tanh(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_tanh:

   %tanhfloat = call float @llvm.tanh.f32(float %float)
   store float %tanhfloat, ptr @varfloat
; CHECK: bl tanhf

   %tanhdouble = call double @llvm.tanh.f64(double %double)
   store double %tanhdouble, ptr @vardouble
; CHECK: bl tanh

   %tanhfp128 = call fp128 @llvm.tanh.f128(fp128 %fp128)
   store fp128 %tanhfp128, ptr @varfp128
; CHECK: bl tanhl
  ret void
}

declare float @llvm.pow.f32(float, float)
declare double @llvm.pow.f64(double, double)
declare fp128 @llvm.pow.f128(fp128, fp128)

define void @test_pow(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_pow:

   %powfloat = call float @llvm.pow.f32(float %float, float %float)
   store float %powfloat, ptr @varfloat
; CHECK: bl powf

   %powdouble = call double @llvm.pow.f64(double %double, double %double)
   store double %powdouble, ptr @vardouble
; CHECK: bl pow

   %powfp128 = call fp128 @llvm.pow.f128(fp128 %fp128, fp128 %fp128)
   store fp128 %powfp128, ptr @varfp128
; CHECK: bl powl

  ret void
}

declare float @llvm.powi.f32.i32(float, i32)
declare double @llvm.powi.f64.i32(double, i32)
declare fp128 @llvm.powi.f128.i32(fp128, i32)

define void @test_powi(float %float, double %double, i32 %exponent, fp128 %fp128) {
; CHECK-LABEL: test_powi:

   %powifloat = call float @llvm.powi.f32.i32(float %float, i32 %exponent)
   store float %powifloat, ptr @varfloat
; CHECK: bl __powisf2

   %powidouble = call double @llvm.powi.f64.i32(double %double, i32 %exponent)
   store double %powidouble, ptr @vardouble
; CHECK: bl __powidf2

   %powifp128 = call fp128 @llvm.powi.f128.i32(fp128 %fp128, i32 %exponent)
   store fp128 %powifp128, ptr @varfp128
; CHECK: bl __powitf2
  ret void

}

define void @test_frem(float %float, double %double, fp128 %fp128) {
; CHECK-LABEL: test_frem:

  %fremfloat = frem float %float, %float
  store float %fremfloat, ptr @varfloat
; CHECK: bl fmodf

  %fremdouble = frem double %double, %double
  store double %fremdouble, ptr @vardouble
; CHECK: bl fmod

  %fremfp128 = frem fp128 %fp128, %fp128
  store fp128 %fremfp128, ptr @varfp128
; CHECK: bl fmodl

  ret void
}

declare fp128 @llvm.fma.f128(fp128, fp128, fp128)

define void @test_fma(fp128 %fp128) {
; CHECK-LABEL: test_fma:

  %fmafp128 = call fp128 @llvm.fma.f128(fp128 %fp128, fp128 %fp128, fp128 %fp128)
  store fp128 %fmafp128, ptr @varfp128
; CHECK: bl fmal

  ret void
}

declare fp128 @llvm.fmuladd.f128(fp128, fp128, fp128)

define void @test_fmuladd(fp128 %fp128) {
; CHECK-LABEL: test_fmuladd:

  %fmuladdfp128 = call fp128 @llvm.fmuladd.f128(fp128 %fp128, fp128 %fp128, fp128 %fp128)
  store fp128 %fmuladdfp128, ptr @varfp128
; CHECK-NOT: bl fmal
; CHECK: bl __multf3
; CHECK: bl __addtf3

  ret void
}

define i32 @test_fptosi32(fp128 %a) {
; CHECK-LABEL: test_fptosi32:
; CHECK: bl __fixtfsi
  %conv.i = fptosi fp128 %a to i32
  %b = add nsw i32 %conv.i, 48
  ret i32 %b
}

define i64 @test_fptosi64(fp128 %a) {
; CHECK-LABEL: test_fptosi64:
; CHECK: bl __fixtfdi
  %conv.i = fptosi fp128 %a to i64
  %b = add nsw i64 %conv.i, 48
  ret i64 %b
}

define i128 @test_fptosi128(fp128 %a) {
; CHECK-LABEL: test_fptosi128:
; CHECK: bl __fixtfti
  %conv.i = fptosi fp128 %a to i128
  %b = add nsw i128 %conv.i, 48
  ret i128 %b
}

define i32 @test_fptoui32(fp128 %a) {
; CHECK-LABEL: test_fptoui32:
; CHECK: bl __fixunstfsi
  %conv.i = fptoui fp128 %a to i32
  %b = add nsw i32 %conv.i, 48
  ret i32 %b
}

define i64 @test_fptoui64(fp128 %a) {
; CHECK-LABEL: test_fptoui64:
; CHECK: bl __fixunstfdi
  %conv.i = fptoui fp128 %a to i64
  %b = add nsw i64 %conv.i, 48
  ret i64 %b
}

define i128 @test_fptoui128(fp128 %a) {
; CHECK-LABEL: test_fptoui128:
; CHECK: bl __fixunstfti
  %conv.i = fptoui fp128 %a to i128
  %b = add nsw i128 %conv.i, 48
  ret i128 %b
}

define void @test_exp_finite(double %double) #0 {
  %expdouble = call double @llvm.exp.f64(double %double)
  store double %expdouble, ptr @vardouble
  ; ANDROID-AARCH64-NOT: bl __exp_finite
  ; CHECK: bl exp

  ret void
}

define void @test_exp2_finite(double %double) #0 {
  %expdouble = call double @llvm.exp2.f64(double %double)
  store double %expdouble, ptr @vardouble
  ; CHECK-NOT: bl __exp2_finite
  ; CHECK: bl exp2

  ret void
}

define void @test_log_finite(double %double) #0 {
  %logdouble = call double @llvm.log.f64(double %double)
  store double %logdouble, ptr @vardouble
  ; CHECK-NOT: bl __log_finite
  ; CHECK: bl log
  ret void
}

define void @test_log2_finite(double %double) #0 {
  %log2double = call double @llvm.log2.f64(double %double)
  store double %log2double, ptr @vardouble
  ; CHECK-NOT: bl __log2_finite
  ; CHECK: bl log2
  ret void
}

define void @test_log10_finite(double %double) #0 {
  %log10double = call double @llvm.log10.f64(double %double)
  store double %log10double, ptr @vardouble
  ; CHECK-NOT: bl __log10_finite
  ; CHECK: bl log10
  ret void
}

define void @test_pow_finite(double %double) #0 {
  %powdouble = call double @llvm.pow.f64(double %double, double %double)
  store double %powdouble, ptr @vardouble
  ; CHECK-NOT: bl __pow_finite
  ; CHECK: bl pow
  ret void
}

attributes #0 = { "no-infs-fp-math"="true" "no-nans-fp-math"="true" }
