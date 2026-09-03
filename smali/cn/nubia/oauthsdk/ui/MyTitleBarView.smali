.class public Lcn/nubia/oauthsdk/ui/MyTitleBarView;
.super Landroid/view/View;
.source "MyTitleBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnVoiceClickListener;,
        Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;
    }
.end annotation


# static fields
.field private static final MARGIN:I = 0x23

.field private static final MIN_HEIGHT:I = 0x90

.field private static final WIDTH:I = 0x438


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mLeftText:Ljava/lang/String;

.field private mLeftTextSize:F

.field private mListener:Landroid/view/View$OnClickListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRightText:Ljava/lang/String;

.field private mRightTextSize:F

.field private mRightTextX:F

.field private mRightTitleListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;

.field private mVoiceBitmap:Landroid/graphics/Bitmap;

.field private mVoiceClickListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnVoiceClickListener;

.field private mVoiceStatus:I

.field private mVoiceX:F

.field startRawX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceStatus:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceX:F

    .line 36
    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextX:F

    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceStatus:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceX:F

    .line 36
    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextX:F

    .line 61
    sget-object v0, Lcn/nubia/mergesdk/R$styleable;->MyTitleBarView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 62
    sget v0, Lcn/nubia/mergesdk/R$styleable;->MyTitleBarView_leftTextSize:I

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftTextSize:F

    .line 63
    sget v0, Lcn/nubia/mergesdk/R$styleable;->MyTitleBarView_rightTextSize:I

    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextSize:F

    .line 64
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getTextBaseline(Landroid/graphics/Paint;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p0, v1

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr p0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p0, p1

    cmpg-float p1, p0, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 69
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    .line 72
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mIsInit:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mListener:Landroid/view/View$OnClickListener;

    .line 298
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTitleListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;

    .line 299
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    .line 300
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public dp2px(F)I
    .locals 0

    .line 237
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method protected getBackResId()I
    .locals 0

    .line 88
    sget p0, Lcn/nubia/mergesdk/R$mipmap;->back:I

    return p0
.end method

.method protected getDividerColorResId()I
    .locals 0

    .line 186
    sget p0, Lcn/nubia/mergesdk/R$color;->main_bg:I

    return p0
.end method

.method protected getTextColorResId()I
    .locals 0

    .line 182
    sget p0, Lcn/nubia/mergesdk/R$color;->color_start_title:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-boolean v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mIsInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getMeasuredWidth()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getMeasuredHeight()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getBackResId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDraw width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyTitleBarView"

    invoke-static {v3, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v4, v1, v2

    .line 130
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1

    move v4, v5

    .line 134
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDraw bitmapHeight:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bitmapTop:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mBitmap:Landroid/graphics/Bitmap;

    const/high16 v5, 0x420c0000    # 35.0f

    iget-object v6, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 137
    const-string v2, "nubiafont-medium"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 138
    iget-object v4, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 139
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftTextSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getTextColorResId()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getTextBaseline(Landroid/graphics/Paint;)F

    move-result v2

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDraw leftTextBaseline:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x41f00000    # 30.0f

    .line 143
    invoke-virtual {p0, v4}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDraw leftTextX:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v5, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftText:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    :cond_2
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getTextBaseline(Landroid/graphics/Paint;)F

    move-result v2

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onDraw rightTextBaseline:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v4, v0

    const/high16 v5, 0x41800000    # 16.0f

    .line 151
    invoke-virtual {p0, v5}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 152
    iput v4, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextX:F

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onDraw rightTextX:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightText:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onDraw mVoiceStatus:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->getDividerColorResId()I

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v2, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v8, v1

    int-to-float v7, v0

    .line 177
    iget-object v9, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/16 v2, 0x90

    const/16 v3, 0x438

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    if-ne v1, v4, :cond_0

    .line 104
    invoke-virtual {p0, v3, v2}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 107
    invoke-virtual {p0, v3, p2}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 109
    invoke-virtual {p0, p1, v2}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onTouchEvent startRawX:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->startRawX:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MyTitleBarView"

    invoke-static {v1, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->startRawX:I

    const/high16 v3, 0x43160000    # 150.0f

    invoke-virtual {p0, v3}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->dp2px(F)I

    move-result v4

    if-ge p1, v4, :cond_1

    invoke-virtual {p0, v3}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->dp2px(F)I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 256
    iget-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_1

    .line 257
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 260
    :cond_1
    iget p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->startRawX:I

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-virtual {p0, v3}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->dp2px(F)I

    move-result v4

    if-le p1, v4, :cond_5

    invoke-virtual {p0, v3}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->dp2px(F)I

    move-result p1

    if-le v0, p1, :cond_5

    .line 261
    iget p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceStatus:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent mVoiceX:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextX:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ",mRightTextX:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextX:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->startRawX:I

    int-to-float p1, p1

    iget v1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceX:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    iget p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTextX:F

    cmpg-float v3, v1, p1

    if-gez v3, :cond_2

    int-to-float v0, v0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    .line 264
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceClickListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnVoiceClickListener;

    if-eqz p0, :cond_5

    .line 265
    invoke-interface {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnVoiceClickListener;->onClick()V

    goto :goto_0

    .line 268
    :cond_2
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTitleListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;

    if-eqz p0, :cond_5

    .line 269
    invoke-interface {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;->onClick()V

    goto :goto_0

    .line 273
    :cond_3
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTitleListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;

    if-eqz p0, :cond_5

    .line 274
    invoke-interface {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;->onClick()V

    goto :goto_0

    .line 249
    :cond_4
    iput v1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->startRawX:I

    :cond_5
    :goto_0
    return v2
.end method

.method public setLeftTextOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnRightTitleClickListener(Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightTitleListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnRightTitleClickListener;

    return-void
.end method

.method public setOnVoiceClickListener(Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnVoiceClickListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceClickListener:Lcn/nubia/oauthsdk/ui/MyTitleBarView$OnVoiceClickListener;

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mIsInit:Z

    .line 220
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->invalidate()V

    return-void
.end method

.method public setText(II)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftText:Ljava/lang/String;

    .line 231
    iget-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mRightText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 232
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mIsInit:Z

    .line 233
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mLeftText:Ljava/lang/String;

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mIsInit:Z

    .line 209
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->invalidate()V

    return-void
.end method

.method public setVoiceStatus(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceStatus:I

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDraw setVoiceStatus mVoiceStatus:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->mVoiceStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyTitleBarView"

    invoke-static {v0, p1}, Lcn/nubia/nbaccount/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->invalidate()V

    return-void
.end method
