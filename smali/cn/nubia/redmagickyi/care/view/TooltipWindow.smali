.class public Lcn/nubia/redmagickyi/care/view/TooltipWindow;
.super Ljava/lang/Object;
.source "TooltipWindow.java"


# static fields
.field public static final DRAW_ARROW_DEFAULT_CENTER:I = 0x1

.field public static final DRAW_ARROW_TOP_RIGHT:I = 0x2

.field public static final DRAW_BOTTOM:I = 0x4

.field public static final DRAW_LEFT:I = 0x1

.field public static final DRAW_RIGHT:I = 0x2

.field public static final DRAW_TOP:I = 0x3

.field private static final MSG_DISMISS_TOOLTIP:I = 0x64


# instance fields
.field contentView:Landroid/view/View;

.field private ctx:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field mImageArrow:Landroid/widget/ImageView;

.field mInfoText:Landroid/widget/TextView;

.field private position:I

.field private tipWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/view/TooltipWindow$1;-><init>(Lcn/nubia/redmagickyi/care/view/TooltipWindow;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->handler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->position:I

    .line 57
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    .line 59
    const-string v0, "layout_inflater"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->care_tooltip_layout:I

    goto :goto_0

    .line 67
    :cond_1
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->care_tooltip_layout:I

    goto :goto_0

    .line 73
    :cond_2
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->care_tooltip_layout:I

    goto :goto_0

    .line 70
    :cond_3
    sget p1, Lcn/nubia/redmagickyi/main/R$layout;->care_tooltip_layout:I

    .line 78
    :goto_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->contentView:Landroid/view/View;

    .line 79
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->tooltip_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->mInfoText:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/view/TooltipWindow;)Landroid/widget/PopupWindow;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method


# virtual methods
.method public dismissTooltip()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getView()Landroid/widget/PopupWindow;
    .locals 0

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public isTooltipShown()Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showToolTip(Landroid/view/View;IZ)V
    .locals 10

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0xa

    .line 91
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 92
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :goto_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 101
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 102
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 103
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 106
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 107
    iget-object p2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 108
    new-array p2, v3, [I

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    new-instance v4, Landroid/graphics/Rect;

    aget v5, p2, v2

    aget v6, p2, v1

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    aget v8, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    iget-object v5, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v5, v0, v0}, Landroid/view/View;->measure(II)V

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 130
    iget v5, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->position:I

    if-eq v5, v1, :cond_6

    if-eq v5, v3, :cond_5

    const/4 v0, 0x3

    const/high16 v4, 0x41200000    # 10.0f

    if-eq v5, v0, :cond_3

    const/4 v0, 0x4

    if-eq v5, v0, :cond_1

    move p2, v2

    move v0, p2

    goto :goto_3

    .line 132
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    aget v0, p2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/care/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 135
    :cond_2
    aget v0, p2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcn/nubia/redmagickyi/care/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v0, v3

    .line 138
    :goto_1
    aget p2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_3

    .line 141
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    aget v0, p2, v2

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 144
    :cond_4
    aget v0, p2, v2

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v5, v4}, Lcn/nubia/redmagickyi/care/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v0, v4

    .line 147
    :goto_2
    aget p2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    sub-int/2addr p2, v1

    goto :goto_3

    .line 155
    :cond_5
    iget v0, v4, Landroid/graphics/Rect;->right:I

    .line 156
    iget p2, v4, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 151
    :cond_6
    iget p2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v0

    add-int/lit8 v0, p2, -0x1e

    .line 152
    iget p2, v4, Landroid/graphics/Rect;->top:I

    .line 161
    :goto_3
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result v1

    .line 163
    iget-object v2, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, v0

    const v0, 0x800035

    invoke-virtual {v2, p1, v0, v1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4

    .line 165
    :cond_7
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1, v2, v0, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_4
    if-eqz p3, :cond_8

    .line 172
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/TooltipWindow;->handler:Landroid/os/Handler;

    const/16 p1, 0x64

    const-wide/16 p2, 0xfa0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method
