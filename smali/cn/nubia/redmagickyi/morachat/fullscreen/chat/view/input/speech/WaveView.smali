.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;
    }
.end annotation


# static fields
.field private static final RATIO_RADIUS_MOBILE:F = 1.3888888f

.field private static final RATIO_RADIUS_PAD_LANDSCAPE:F = 0.75f

.field private static final RATIO_RADIUS_PAD_PORTRAIT:F = 1.08f

.field private static final SHADOW_HEIGHT:F

.field private static final WAVE_HEIGHT_MOBILE:F

.field private static final WAVE_HEIGHT_PAD_LANDSCAPE:F

.field private static final WAVE_HEIGHT_PAD_PORTRAIT:F


# instance fields
.field private animIn:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

.field private animOut:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

.field private listener:Landroid/view/animation/Animation$AnimationListener;

.field private ratio:F

.field private shadowHeight:F

.field private waveHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_wave_height_mobile:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_MOBILE:F

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_wave_height_pad_portait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_PAD_PORTRAIT:F

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->morachat_fs_chat_input_wave_height_pad_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_PAD_LANDSCAPE:F

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_25_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->SHADOW_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)Landroid/view/animation/Animation$AnimationListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->listener:Landroid/view/animation/Animation$AnimationListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->waveHeight:F

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)F
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->shadowHeight:F

    return p0
.end method

.method private init()V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    .line 63
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->setAlpha(F)V

    .line 64
    sget v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_MOBILE:F

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->waveHeight:F

    .line 65
    sget v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->SHADOW_HEIGHT:F

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->shadowHeight:F

    const v0, 0x3fb1c71c

    .line 66
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->ratio:F

    .line 68
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->in(Landroid/view/animation/Animation$AnimationListener;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animIn:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    .line 69
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;)V

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->out(Landroid/view/animation/Animation$AnimationListener;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animOut:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    return-void
.end method


# virtual methods
.method public animIn()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animIn:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->get()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animOut(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->listener:Landroid/view/animation/Animation$AnimationListener;

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animOut:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->get()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->ratio:F

    mul-float/2addr v0, v1

    .line 117
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 118
    const-string v2, "#FF4E3DA5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#FF867AF7"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v9

    .line 119
    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->getHeight()I

    move-result v3

    int-to-float v6, v3

    iget v8, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->waveHeight:F

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->shadowHeight:F

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 121
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->waveHeight:F

    sub-float p0, v0, p0

    add-float/2addr v3, p0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onOrientationChanged(Z)V
    .locals 2

    .line 95
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 96
    sget v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_PAD_PORTRAIT:F

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_PAD_LANDSCAPE:F

    .line 97
    :goto_0
    sget v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->SHADOW_HEIGHT:F

    if-eqz p1, :cond_1

    const p1, 0x3f8a3d71    # 1.08f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f400000    # 0.75f

    .line 98
    :goto_1
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->ratio:F

    goto :goto_2

    .line 100
    :cond_2
    sget v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->WAVE_HEIGHT_MOBILE:F

    .line 101
    sget v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->SHADOW_HEIGHT:F

    const p1, 0x3fb1c71c

    .line 102
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->ratio:F

    .line 104
    :goto_2
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->waveHeight:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_3

    iget p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->shadowHeight:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_4

    .line 105
    :cond_3
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->waveHeight:F

    .line 106
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->shadowHeight:F

    .line 107
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animIn:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->updateTranslateAnimation()V

    .line 108
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView;->animOut:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/input/speech/WaveView$WaveAnimation;->updateTranslateAnimation()V

    :cond_4
    return-void
.end method
