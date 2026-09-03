.class public Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;
.super Landroid/widget/CheckBox;
.source "AutoMirrorCheckBox.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private forground:Landroid/graphics/drawable/Drawable;

.field private needReverseGrivity:Ljava/lang/Boolean;

.field private realGravity:I

.field private useDefaultFontTypeface:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getGravity()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getGravity()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getGravity()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getGravity()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;)Ljava/lang/Boolean;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->needReverseGrivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->forground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private canMarquee()Z
    .locals 5

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getMaxLines()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->isHorizontallyScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 129
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getCompoundPaddingRight()I

    move-result p0

    sub-int/2addr v3, p0

    if-lez v3, :cond_0

    int-to-float p0, v3

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 52
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 53
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView_defaultFontTypeface:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->useDefaultFontTypeface:Z

    .line 54
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView_autoMirror:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->needReverseGrivity:Ljava/lang/Boolean;

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->useDefaultFontTypeface:Z

    if-eqz p1, :cond_1

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->needReverseGrivity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->forground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_4
    new-instance p1, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox$1;-><init>(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 192
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 194
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    .line 195
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_0

    .line 196
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 197
    :cond_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_1

    .line 198
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 199
    :cond_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_2

    .line 200
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 201
    :cond_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_3

    .line 202
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 203
    :cond_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_4

    .line 204
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 205
    :cond_4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_5

    .line 206
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 208
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_6
    return-object p1
.end method

.method private updateGravity()V
    .locals 4

    .line 102
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isTextRtl(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->setGravityInner(I)V

    goto :goto_1

    .line 106
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    .line 107
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->canMarquee()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    goto :goto_0

    :cond_1
    const v1, 0x800003

    and-int v2, v0, v1

    const v3, 0x800005

    if-ne v2, v1, :cond_2

    const v1, -0x800004

    and-int/2addr v0, v1

    or-int/2addr v0, v3

    goto :goto_0

    :cond_2
    and-int v2, v0, v3

    if-ne v2, v3, :cond_3

    const v2, -0x800006

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->setGravityInner(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->updateGravity()V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isAutoMirror()Z
    .locals 0

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->needReverseGrivity:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 151
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->background:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 162
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 169
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 187
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->forground:Landroid/graphics/drawable/Drawable;

    .line 188
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getGravity()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->realGravity:I

    return-void
.end method

.method public setGravityInner(I)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorCheckBox;->getGravity()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 97
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setGravity(I)V

    :cond_0
    return-void
.end method
