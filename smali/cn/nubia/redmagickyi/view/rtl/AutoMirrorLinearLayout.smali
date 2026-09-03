.class public Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;
.super Landroid/widget/LinearLayout;
.source "AutoMirrorLinearLayout.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private forground:Landroid/graphics/drawable/Drawable;

.field private needReverseGrivity:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;)Ljava/lang/Boolean;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->needReverseGrivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 15
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->forground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 41
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->AutoMirrorTextView_autoMirror:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->needReverseGrivity:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->needReverseGrivity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 46
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->forground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_3
    new-instance p1, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout$1;-><init>(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;)V

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 129
    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 131
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v0

    .line 132
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_0

    .line 133
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 134
    :cond_0
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_1

    .line 135
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 136
    :cond_1
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_2

    .line 137
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 138
    :cond_2
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_3

    .line 139
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 140
    :cond_3
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_4

    .line 141
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    .line 142
    :cond_4
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-ne v0, v1, :cond_5

    .line 143
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 145
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_6
    return-object p1
.end method


# virtual methods
.method public isAutoMirror()Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->needReverseGrivity:Ljava/lang/Boolean;

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

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 88
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->background:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 99
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 106
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->isAutoMirror()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->mirrorGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 124
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorLinearLayout;->forground:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
