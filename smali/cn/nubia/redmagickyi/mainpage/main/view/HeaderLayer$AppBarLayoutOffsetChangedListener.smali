.class Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;
.super Ljava/lang/Object;
.source "HeaderLayer.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBarLayoutOffsetChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

.field private thumbnailClose:Landroid/view/View;

.field private titleClose:Landroid/view/View;

.field private titleOpen:Landroid/view/View;

.field private toolbarClose:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->layout_close:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->toolbarClose:Landroid/view/View;

    .line 59
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->tv_header_close_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleClose:Landroid/view/View;

    .line 60
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->iv_header_close_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->thumbnailClose:Landroid/view/View;

    .line 61
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_header_open_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleOpen:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;-><init>(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 6

    .line 67
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 68
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    cmpg-float p2, p1, p2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    .line 69
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->toolbarClose:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleClose:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleOpen:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 73
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->toolbarClose:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_60_dp:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {p2}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_25_dp:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 75
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->toolbarClose:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 76
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleClose:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleOpen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_116_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 81
    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_114_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 82
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_68_dp:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 83
    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {v4}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_43_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr p2, p1

    mul-float/2addr v3, p2

    add-float/2addr v4, v3

    .line 84
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v2, v1

    .line 85
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 86
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 87
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 89
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->titleClose:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->thumbnailClose:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_63_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 94
    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->this$0:Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;->access$100(Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_38_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    .line 95
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 96
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p2, v0, :cond_3

    .line 97
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/main/view/HeaderLayer$AppBarLayoutOffsetChangedListener;->thumbnailClose:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method
