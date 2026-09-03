.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;
.super Landroid/widget/FrameLayout;
.source "OperatorPanel.java"


# instance fields
.field private isIconAtRight:Z

.field private isLargeIcon:Z

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isLargeIcon:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isIconAtRight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isLargeIcon:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isIconAtRight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isLargeIcon:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isIconAtRight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isLargeIcon:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isIconAtRight:Z

    return-void
.end method

.method private getPath()Landroid/graphics/Path;
    .locals 12

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_24_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v2, v0

    .line 56
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isLargeIcon:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v3, 0x3f2aaaab

    .line 57
    :goto_1
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isIconAtRight:Z

    if-eqz v4, :cond_2

    .line 58
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v3

    sub-float v6, v4, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getWidth()I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getHeight()I

    move-result v4

    int-to-float v9, v4

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 59
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    mul-float/2addr v2, v3

    mul-float/2addr v0, v3

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v2, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_2

    .line 61
    :cond_2
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getHeight()I

    move-result v4

    int-to-float v10, v4

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 62
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    mul-float/2addr v2, v3

    mul-float/2addr v0, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 64
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->path:Landroid/graphics/Path;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setIconState(ZZ)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isLargeIcon:Z

    .line 37
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->isIconAtRight:Z

    .line 38
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/output/OperatorPanel;->invalidate()V

    return-void
.end method
