.class Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;
.source "NBAnswerAndDeclineIcon.java"


# instance fields
.field final CLIP_SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapBg:Landroid/graphics/Bitmap;

.field private mBitmapFg:Landroid/graphics/Bitmap;

.field private mBitmapPDX:Landroid/graphics/Bitmap;

.field private mClipRadius:I

.field private mClipScale:F

.field private mIsVisibilityF:Z

.field private final mXfermodeSrc:Landroid/graphics/PorterDuffXfermode;

.field private final mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;

    .line 29
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mXfermodeSrc:Landroid/graphics/PorterDuffXfermode;

    .line 31
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon$1;

    const-class v0, Ljava/lang/Float;

    const-string v1, "NBAnswerAndDeclineIcon_ClipScale"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon$1;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->CLIP_SCALE:Landroid/util/Property;

    .line 46
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->initDrawableEx(Z)V

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->initDefaultValueEx()V

    return-void
.end method

.method private drawIconB(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 133
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mPositionX:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 134
    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mPositionY:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapBg:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawIconF(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 140
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 144
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->redmagic_call_ringing_answer_decline_fg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 148
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    .line 151
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 154
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$color;->redmagic_call_ringing_answer_decline_canvas_pdx_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mXfermodeSrc:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v6, v3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-direct {v4, v5, v6, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v4, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mXfermodeSrcIn:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 158
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapFg:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mPositionX:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 164
    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mPositionY:I

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 165
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private initDefaultValueEx()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapFg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipRadius:I

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipScale:F

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mIsVisibilityF:Z

    return-void
.end method

.method private initDrawableEx(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 76
    sget p1, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_ringing_anwer_background:I

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->redmagic_call_ringing_answer_fg_bg:I

    .line 78
    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->redmagic_call_ringing_answer_fg_fg:I

    goto :goto_0

    .line 80
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_ringing_decline_background:I

    .line 81
    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->redmagic_call_ringing_decline_fg_bg:I

    .line 82
    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_ringing_decline_fg_fg:I

    .line 85
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 87
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapBg:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 91
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 93
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mergeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapFg:Landroid/graphics/Bitmap;

    .line 97
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapFg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 126
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->drawIconB(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 127
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mIsVisibilityF:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->drawIconF(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method getClipScale()F
    .locals 0

    .line 109
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipScale:F

    return p0
.end method

.method protected initDrawable()V
    .locals 0

    return-void
.end method

.method protected recycle()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapFg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mBitmapPDX:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method setClipScale(F)V
    .locals 1

    .line 113
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipScale:F

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mClipScale:F

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method

.method setVisibilityF(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->mIsVisibilityF:Z

    return-void
.end method
