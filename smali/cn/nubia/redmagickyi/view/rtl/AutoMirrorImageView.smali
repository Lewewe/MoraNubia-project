.class public Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;
.super Landroid/widget/ImageView;
.source "AutoMirrorImageView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AutoMirrorImageView"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private forground:Landroid/graphics/drawable/Drawable;

.field private imageDrawable:Landroid/graphics/drawable/Drawable;

.field private mUri:Landroid/net/Uri;

.field private needReverseGrivity:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;)Ljava/lang/Boolean;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->needReverseGrivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->forground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->imageDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView_autoMirror:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->needReverseGrivity:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->needReverseGrivity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 50
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->forground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->imageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_4
    new-instance p1, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView$1;-><init>(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 179
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 180
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 181
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    .line 182
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_0

    .line 183
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 184
    :cond_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_1

    .line 185
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 186
    :cond_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_2

    .line 187
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 188
    :cond_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_3

    .line 189
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 190
    :cond_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_4

    .line 191
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 192
    :cond_4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_5

    .line 193
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 195
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_6
    return-object p1
.end method


# virtual methods
.method public isAutoMirror()Z
    .locals 0

    .line 201
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->needReverseGrivity:Ljava/lang/Boolean;

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

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 98
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->background:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 116
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 134
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->forground:Landroid/graphics/drawable/Drawable;

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->isAutoMirror()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 142
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 146
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->imageDrawable:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 3

    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AutoMirrorImageView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method
