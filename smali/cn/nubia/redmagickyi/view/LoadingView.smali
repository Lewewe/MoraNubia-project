.class public Lcn/nubia/redmagickyi/view/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"


# instance fields
.field private ivRotate:Landroid/widget/ImageView;

.field private loadingAnimation:Landroid/view/animation/Animation;

.field private loadingLayout:Landroid/view/View;

.field private text:Ljava/lang/CharSequence;

.field private textColor:Landroid/content/res/ColorStateList;

.field private textSize:I

.field private tvConetnt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {p3, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/redmagickyi/view/LoadingView;->loadingAnimation:Landroid/view/animation/Animation;

    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/LoadingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 49
    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->LoadingView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 50
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->LoadingView_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->text:Ljava/lang/CharSequence;

    .line 51
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->LoadingView_textSize:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textSize:I

    .line 52
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->LoadingView_textColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textColor:Landroid/content/res/ColorStateList;

    .line 53
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/LoadingView;->text:Ljava/lang/CharSequence;

    if-nez p2, :cond_1

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->mail_loading_content:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/LoadingView;->text:Ljava/lang/CharSequence;

    .line 58
    :cond_1
    iget p2, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textSize:I

    if-nez p2, :cond_2

    .line 59
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->loading_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textSize:I

    .line 61
    :cond_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textColor:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_3

    .line 62
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/LoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->loading_text:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textColor:Landroid/content/res/ColorStateList;

    .line 64
    :cond_3
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/LoadingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->layout_loading:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->loadingLayout:Landroid/view/View;

    .line 70
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->ivRotate:Landroid/widget/ImageView;

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/LoadingView;->tvConetnt:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/LoadingView;->tvConetnt:Landroid/widget/TextView;

    iget v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/LoadingView;->tvConetnt:Landroid/widget/TextView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->loadingLayout:Landroid/view/View;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 92
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->ivRotate:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->loadingAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 84
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/LoadingView;->ivRotate:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method
