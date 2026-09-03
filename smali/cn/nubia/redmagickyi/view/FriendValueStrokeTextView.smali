.class public Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;
.super Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;
.source "FriendValueStrokeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FriendValueStrokeTextView"

.field public static final TYPE_DOWN:I = 0x1

.field public static final TYPE_UP:I


# instance fields
.field private outlineTextView:Landroid/widget/TextView;

.field private shadowInnerColorDown:I

.field private shadowInnerColorUp:I

.field private shadowOuterColorDown:I

.field private shadowOuterColorUp:I

.field private strokeColorDown:I

.field private strokeColorUp:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorUp:I

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorUp:I

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorUp:I

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF77A7A:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorDown:I

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFFC7676:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorDown:I

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF8A0A0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorDown:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    .line 46
    new-instance v0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorUp:I

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorUp:I

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorUp:I

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF77A7A:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorDown:I

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFFC7676:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorDown:I

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF8A0A0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorDown:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    .line 52
    new-instance v0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-direct {v0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorUp:I

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorUp:I

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorUp:I

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF77A7A:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorDown:I

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFFC7676:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorDown:I

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->red_FFF8A0A0:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorDown:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FF867AF7:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorUp:I

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FF7976FC:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorUp:I

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->purple_FFB0A0F8:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorUp:I

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->red_FFF77A7A:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorDown:I

    .line 39
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->red_FFFC7676:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorDown:I

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$color;->red_FFF8A0A0:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorDown:I

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    .line 64
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->isSingleLine()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->isHorizontallyScrollable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const-string v0, "FriendValueStrokeTextView"

    const-string v1, "StrokeTextView cannot be singleline"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setTextColor(I)V

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_7_dp:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    if-nez v2, :cond_2

    iget v2, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorUp:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowOuterColorDown:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setShadowLayer(FFFI)V

    .line 73
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->initPadding()V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 76
    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 77
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    if-nez v1, :cond_3

    iget v1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorUp:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->strokeColorDown:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p5_dp:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    if-nez v4, :cond_4

    iget v4, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorUp:I

    goto :goto_2

    :cond_4
    iget v4, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->shadowInnerColorDown:I

    :goto_2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method private initPadding()V
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingRight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingRight()I

    move-result v1

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingEnd()I

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingEnd()I

    move-result v1

    .line 96
    :cond_3
    :goto_1
    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_7_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingTop()I

    move-result v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_5_dp:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_7_dp:I

    invoke-virtual {p0, v3}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getPaddingBottom()I

    move-result v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_9_dp:I

    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getDimension(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public getDimension(I)I
    .locals 0

    .line 114
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 146
    invoke-super/range {p0 .. p5}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onLayout(ZIIII)V

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 135
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->onMeasure(II)V

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->postInvalidate()V

    .line 141
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 102
    const-string p0, "FriendValueStrokeTextView"

    const-string p1, "StrokeTextView cannot be singleline"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setSingleLine(Z)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->outlineTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->type:I

    .line 110
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FriendValueStrokeTextView;->init()V

    return-void
.end method
